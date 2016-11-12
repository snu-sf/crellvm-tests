; ModuleID = './app/core/gimpimage-new.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._TileManager = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkPixbuf = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_new_get_last_template = private unnamed_addr constant [33 x i8] c"gimp_image_new_get_last_template\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"image new values\00", align 1
@__func__.gimp_image_new_set_last_template = private unnamed_addr constant [33 x i8] c"gimp_image_new_set_last_template\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GIMP_IS_TEMPLATE (template)\00", align 1
@__func__.gimp_image_new_from_template = private unnamed_addr constant [29 x i8] c"gimp_image_new_from_template\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@__func__.gimp_image_new_from_drawable = private unnamed_addr constant [29 x i8] c"gimp_image_new_from_drawable\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@__func__.gimp_image_new_from_component = private unnamed_addr constant [30 x i8] c"gimp_image_new_from_component\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"%s Channel Copy\00", align 1
@__func__.gimp_image_new_from_buffer = private unnamed_addr constant [27 x i8] c"gimp_image_new_from_buffer\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"invoke == NULL || GIMP_IS_IMAGE (invoke)\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"GIMP_IS_BUFFER (paste)\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"gimpimage-new.c\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Pasted Layer\00", align 1
@__func__.gimp_image_new_from_pixbuf = private unnamed_addr constant [27 x i8] c"gimp_image_new_from_pixbuf\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"GDK_IS_PIXBUF (pixbuf)\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpTemplate* @gimp_image_new_get_last_template(%struct._Gimp* %gimp, %struct._GimpImage* %image) #0 {
entry:
  %retval = alloca %struct._GimpTemplate*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_new_get_last_template, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #5
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_new_get_last_template, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %call40 = call %struct._GimpTemplate* @gimp_template_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpTemplate* %call40, %struct._GimpTemplate** %template, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool41 = icmp ne %struct._GimpImage* %27, null
  br i1 %tobool41, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %do.end.39
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 1
  %29 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %29, i32 0, i32 35
  %30 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %31 = bitcast %struct._GimpTemplate* %30 to %struct._GTypeInstance*
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call43 to %struct._GObject*
  %33 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %34 = bitcast %struct._GimpTemplate* %33 to %struct._GTypeInstance*
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call44 to %struct._GObject*
  %call45 = call i32 @gimp_config_sync(%struct._GObject* %32, %struct._GObject* %35, i32 0)
  %36 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_template_set_from_image(%struct._GimpTemplate* %36, %struct._GimpImage* %37)
  br label %if.end.50

if.else.46:                                       ; preds = %do.end.39
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %image_new_last_template = getelementptr inbounds %struct._Gimp, %struct._Gimp* %38, i32 0, i32 49
  %39 = load %struct._GimpTemplate*, %struct._GimpTemplate** %image_new_last_template, align 8
  %40 = bitcast %struct._GimpTemplate* %39 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  %42 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %43 = bitcast %struct._GimpTemplate* %42 to %struct._GTypeInstance*
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 80)
  %44 = bitcast %struct._GTypeInstance* %call48 to %struct._GObject*
  %call49 = call i32 @gimp_config_sync(%struct._GObject* %41, %struct._GObject* %44, i32 0)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.46, %if.then.42
  %45 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  store %struct._GimpTemplate* %45, %struct._GimpTemplate** %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.else.37, %if.else.9
  %46 = load %struct._GimpTemplate*, %struct._GimpTemplate** %retval
  ret %struct._GimpTemplate* %46
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

declare %struct._GimpTemplate* @gimp_template_new(i8*) #3

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare void @gimp_template_set_from_image(%struct._GimpTemplate*, %struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_new_set_last_template(%struct._Gimp* %gimp, %struct._GimpTemplate* %template) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_new_set_last_template, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_template_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_new_set_last_template, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %27 = bitcast %struct._GimpTemplate* %26 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %image_new_last_template = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 49
  %30 = load %struct._GimpTemplate*, %struct._GimpTemplate** %image_new_last_template, align 8
  %31 = bitcast %struct._GimpTemplate* %30 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  %call41 = call i32 @gimp_config_sync(%struct._GObject* %28, %struct._GObject* %32, i32 0)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_template_get_type() #1

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_image_new_from_template(%struct._Gimp* %gimp, %struct._GimpTemplate* %template, %struct._GimpContext* %context) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %type = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %comment = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_new_from_template, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_template_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_new_from_template, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = bitcast %struct._GimpContext* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_context_get_type() #5
  store i64 %call44, i64* %__t43, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type54, align 8
  %34 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %33, %34
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %36 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #6
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %37 = load i32, i32* %__r46, align 4
  store i32 %37, i32* %tmp61
  %38 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_new_from_template, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %40 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call67 = call i32 @gimp_template_get_width(%struct._GimpTemplate* %40)
  %41 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call68 = call i32 @gimp_template_get_height(%struct._GimpTemplate* %41)
  %42 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call69 = call i32 @gimp_template_get_image_type(%struct._GimpTemplate* %42)
  %call70 = call %struct._GimpImage* @gimp_create_image(%struct._Gimp* %39, i32 %call67, i32 %call68, i32 %call69, i32 0)
  store %struct._GimpImage* %call70, %struct._GimpImage** %image, align 8
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call71 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %43)
  %44 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call72 = call i8* @gimp_template_get_comment(%struct._GimpTemplate* %44)
  store i8* %call72, i8** %comment, align 8
  %45 = load i8*, i8** %comment, align 8
  %tobool73 = icmp ne i8* %45, null
  br i1 %tobool73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %do.end.66
  %46 = load i8*, i8** %comment, align 8
  %call76 = call i64 @strlen(i8* %46) #6
  %add = add i64 %call76, 1
  %conv = trunc i64 %add to i32
  %47 = load i8*, i8** %comment, align 8
  %call77 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 %conv, i8* %47)
  store %struct._GimpParasite* %call77, %struct._GimpParasite** %parasite, align 8
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %49 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_image_parasite_attach(%struct._GimpImage* %48, %struct._GimpParasite* %49)
  %50 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %50)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %do.end.66
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %52 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call79 = call double @gimp_template_get_resolution_x(%struct._GimpTemplate* %52)
  %53 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call80 = call double @gimp_template_get_resolution_y(%struct._GimpTemplate* %53)
  call void @gimp_image_set_resolution(%struct._GimpImage* %51, double %call79, double %call80)
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %55 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call81 = call i32 @gimp_template_get_resolution_unit(%struct._GimpTemplate* %55)
  call void @gimp_image_set_unit(%struct._GimpImage* %54, i32 %call81)
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call82 = call i32 @gimp_image_get_width(%struct._GimpImage* %56)
  store i32 %call82, i32* %width, align 4
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call83 = call i32 @gimp_image_get_height(%struct._GimpImage* %57)
  store i32 %call83, i32* %height, align 4
  %58 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call84 = call i32 @gimp_template_get_fill_type(%struct._GimpTemplate* %58)
  switch i32 %call84, label %sw.default [
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.78
  %59 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call85 = call i32 @gimp_template_get_image_type(%struct._GimpTemplate* %59)
  %cmp86 = icmp eq i32 %call85, 0
  %cond = select i1 %cmp86, i32 1, i32 3
  store i32 %cond, i32* %type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.78
  %60 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call88 = call i32 @gimp_template_get_image_type(%struct._GimpTemplate* %60)
  %cmp89 = icmp eq i32 %call88, 0
  %cond91 = select i1 %cmp89, i32 0, i32 2
  store i32 %cond91, i32* %type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %62 = load i32, i32* %width, align 4
  %63 = load i32, i32* %height, align 4
  %64 = load i32, i32* %type, align 4
  %call92 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #7
  %call93 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %61, i32 %62, i32 %63, i32 %64, i8* %call92, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call93, %struct._GimpLayer** %layer, align 8
  %65 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %66 = bitcast %struct._GimpLayer* %65 to %struct._GTypeInstance*
  %call94 = call i64 @gimp_drawable_get_type() #5
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call94)
  %67 = bitcast %struct._GTypeInstance* %call95 to %struct._GimpDrawable*
  %68 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %69 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call96 = call i32 @gimp_template_get_fill_type(%struct._GimpTemplate* %69)
  call void @gimp_drawable_fill_by_type(%struct._GimpDrawable* %67, %struct._GimpContext* %68, i32 %call96)
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %71 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call97 = call i32 @gimp_image_add_layer(%struct._GimpImage* %70, %struct._GimpLayer* %71, %struct._GimpLayer* null, i32 0, i32 0)
  %72 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call98 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %72)
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_clean_all(%struct._GimpImage* %73)
  %74 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %76 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %call99 = call i32 @gimp_template_get_unit(%struct._GimpTemplate* %76)
  %call100 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %74, %struct._GimpImage* %75, i32 %call99, double 1.000000e+00)
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %78 = bitcast %struct._GimpImage* %77 to i8*
  call void @g_object_unref(i8* %78)
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %79, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.else.64, %if.else.36, %if.else.9
  %80 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %80
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare %struct._GimpImage* @gimp_create_image(%struct._Gimp*, i32, i32, i32, i32) #3

declare i32 @gimp_template_get_width(%struct._GimpTemplate*) #3

declare i32 @gimp_template_get_height(%struct._GimpTemplate*) #3

declare i32 @gimp_template_get_image_type(%struct._GimpTemplate*) #3

declare i32 @gimp_image_undo_disable(%struct._GimpImage*) #3

declare i8* @gimp_template_get_comment(%struct._GimpTemplate*) #3

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @gimp_image_parasite_attach(%struct._GimpImage*, %struct._GimpParasite*) #3

declare void @gimp_parasite_free(%struct._GimpParasite*) #3

declare void @gimp_image_set_resolution(%struct._GimpImage*, double, double) #3

declare double @gimp_template_get_resolution_x(%struct._GimpTemplate*) #3

declare double @gimp_template_get_resolution_y(%struct._GimpTemplate*) #3

declare void @gimp_image_set_unit(%struct._GimpImage*, i32) #3

declare i32 @gimp_template_get_resolution_unit(%struct._GimpTemplate*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare i32 @gimp_template_get_fill_type(%struct._GimpTemplate*) #3

declare %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage*, i32, i32, i32, i8*, double, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_drawable_fill_by_type(%struct._GimpDrawable*, %struct._GimpContext*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #3

declare i32 @gimp_image_undo_enable(%struct._GimpImage*) #3

declare void @gimp_image_clean_all(%struct._GimpImage*) #3

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #3

declare i32 @gimp_template_get_unit(%struct._GimpTemplate*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_image_new_from_drawable(%struct._Gimp* %gimp, %struct._GimpDrawable* %drawable) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_image = alloca %struct._GimpImage*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
  %new_type = alloca i64, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %type = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst71 = alloca %struct._GTypeInstance*, align 8
  %__t73 = alloca i64, align 8
  %__r76 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_new_from_drawable, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_new_from_drawable, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  store %struct._GimpItem* %28, %struct._GimpItem** %item, align 8
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call41 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %29)
  store %struct._GimpImage* %call41, %struct._GimpImage** %image, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call42 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %30)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.38
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call44 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %31)
  %cmp45 = icmp eq i32 %call44, 1
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end.38
  br label %cond.end.58

cond.false:                                       ; preds = %lor.lhs.false
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call46 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %32)
  %cmp47 = icmp eq i32 %call46, 2
  br i1 %cmp47, label %cond.true.51, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %cond.false
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call49 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %33)
  %cmp50 = icmp eq i32 %call49, 3
  br i1 %cmp50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %lor.lhs.false.48, %cond.false
  br label %cond.end

cond.false.52:                                    ; preds = %lor.lhs.false.48
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call53 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %34)
  %cmp54 = icmp eq i32 %call53, 4
  br i1 %cmp54, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.52
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call55 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %35)
  %cmp56 = icmp eq i32 %call55, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.52
  %36 = phi i1 [ true, %cond.false.52 ], [ %cmp56, %lor.rhs ]
  %cond = select i1 %36, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.51
  %cond57 = phi i32 [ 1, %cond.true.51 ], [ %cond, %lor.end ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end, %cond.true
  %cond59 = phi i32 [ 0, %cond.true ], [ %cond57, %cond.end ]
  store i32 %cond59, i32* %type, align 4
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call60 = call i32 @gimp_item_get_width(%struct._GimpItem* %38)
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call61 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  %40 = load i32, i32* %type, align 4
  %call62 = call %struct._GimpImage* @gimp_create_image(%struct._Gimp* %37, i32 %call60, i32 %call61, i32 %40, i32 1)
  store %struct._GimpImage* %call62, %struct._GimpImage** %new_image, align 8
  %41 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call63 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %41)
  %42 = load i32, i32* %type, align 4
  %cmp64 = icmp eq i32 %42, 2
  br i1 %cmp64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %cond.end.58
  %43 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call66 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %44)
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call67 = call i32 @gimp_image_get_colormap_size(%struct._GimpImage* %45)
  call void @gimp_image_set_colormap(%struct._GimpImage* %43, i8* %call66, i32 %call67, i32 0)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %cond.end.58
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %46, double* %xres, double* %yres)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %48 = load double, double* %xres, align 8
  %49 = load double, double* %yres, align 8
  call void @gimp_image_set_resolution(%struct._GimpImage* %47, double %48, double %49)
  %50 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call69 = call i32 @gimp_image_get_unit(%struct._GimpImage* %51)
  call void @gimp_image_set_unit(%struct._GimpImage* %50, i32 %call69)
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %53 = bitcast %struct._GimpDrawable* %52 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %53, %struct._GTypeInstance** %__inst71, align 8
  %call74 = call i64 @gimp_layer_get_type() #5
  store i64 %call74, i64* %__t73, align 8
  %54 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %tobool77 = icmp ne %struct._GTypeInstance* %54, null
  br i1 %tobool77, label %if.else.79, label %if.then.78

if.then.78:                                       ; preds = %if.end.68
  store i32 0, i32* %__r76, align 4
  br label %if.end.90

if.else.79:                                       ; preds = %if.end.68
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %tobool81 = icmp ne %struct._GTypeClass* %56, null
  br i1 %tobool81, label %land.lhs.true.82, label %if.else.87

land.lhs.true.82:                                 ; preds = %if.else.79
  %57 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %g_class83 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %57, i32 0, i32 0
  %58 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class83, align 8
  %g_type84 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %58, i32 0, i32 0
  %59 = load i64, i64* %g_type84, align 8
  %60 = load i64, i64* %__t73, align 8
  %cmp85 = icmp eq i64 %59, %60
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %land.lhs.true.82
  store i32 1, i32* %__r76, align 4
  br label %if.end.89

if.else.87:                                       ; preds = %land.lhs.true.82, %if.else.79
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst71, align 8
  %62 = load i64, i64* %__t73, align 8
  %call88 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %61, i64 %62) #6
  store i32 %call88, i32* %__r76, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.78
  %63 = load i32, i32* %__r76, align 4
  store i32 %63, i32* %tmp91
  %64 = load i32, i32* %tmp91
  %tobool92 = icmp ne i32 %64, 0
  br i1 %tobool92, label %if.then.93, label %if.else.96

if.then.93:                                       ; preds = %if.end.90
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %66 = bitcast %struct._GimpDrawable* %65 to %struct._GTypeInstance*
  %g_class94 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %66, i32 0, i32 0
  %67 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class94, align 8
  %g_type95 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %67, i32 0, i32 0
  %68 = load i64, i64* %g_type95, align 8
  store i64 %68, i64* %new_type, align 8
  br label %if.end.98

if.else.96:                                       ; preds = %if.end.90
  %call97 = call i64 @gimp_layer_get_type() #5
  store i64 %call97, i64* %new_type, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.93
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %70 = bitcast %struct._GimpDrawable* %69 to %struct._GTypeInstance*
  %call99 = call i64 @gimp_item_get_type() #5
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call99)
  %71 = bitcast %struct._GTypeInstance* %call100 to %struct._GimpItem*
  %72 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %73 = load i64, i64* %new_type, align 8
  %call101 = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %71, %struct._GimpImage* %72, i64 %73)
  %74 = bitcast %struct._GimpItem* %call101 to %struct._GTypeInstance*
  %call102 = call i64 @gimp_layer_get_type() #5
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call102)
  %75 = bitcast %struct._GTypeInstance* %call103 to %struct._GimpLayer*
  store %struct._GimpLayer* %75, %struct._GimpLayer** %new_layer, align 8
  %76 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %77 = bitcast %struct._GimpLayer* %76 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_object_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call104)
  %78 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpObject*
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %80 = bitcast %struct._GimpDrawable* %79 to i8*
  %call106 = call i8* @gimp_object_get_name(i8* %80)
  call void @gimp_object_set_name(%struct._GimpObject* %78, i8* %call106)
  %81 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %82 = bitcast %struct._GimpLayer* %81 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_item_get_type() #5
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call107)
  %83 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %83, i32* %off_x, i32* %off_y)
  %84 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %85 = bitcast %struct._GimpLayer* %84 to %struct._GTypeInstance*
  %call109 = call i64 @gimp_item_get_type() #5
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call109)
  %86 = bitcast %struct._GTypeInstance* %call110 to %struct._GimpItem*
  %87 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 0, %87
  %88 = load i32, i32* %off_y, align 4
  %sub111 = sub nsw i32 0, %88
  call void @gimp_item_translate(%struct._GimpItem* %86, i32 %sub, i32 %sub111, i32 0)
  %89 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %90 = bitcast %struct._GimpLayer* %89 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_item_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call112)
  %91 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %91, i32 1, i32 0)
  %92 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %93 = bitcast %struct._GimpLayer* %92 to %struct._GTypeInstance*
  %call114 = call i64 @gimp_item_get_type() #5
  %call115 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call114)
  %94 = bitcast %struct._GTypeInstance* %call115 to %struct._GimpItem*
  call void @gimp_item_set_linked(%struct._GimpItem* %94, i32 0, i32 0)
  %95 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  call void @gimp_layer_set_mode(%struct._GimpLayer* %95, i32 0, i32 0)
  %96 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  call void @gimp_layer_set_opacity(%struct._GimpLayer* %96, double 1.000000e+00, i32 0)
  %97 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %97, i32 0, i32 0)
  %98 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %99 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %call116 = call i32 @gimp_image_add_layer(%struct._GimpImage* %98, %struct._GimpLayer* %99, %struct._GimpLayer* null, i32 0, i32 1)
  %100 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call117 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %100)
  %101 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  store %struct._GimpImage* %101, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.98, %if.else.36, %if.else.9
  %102 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %102
}

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @gimp_image_set_colormap(%struct._GimpImage*, i8*, i32, i32) #3

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #3

declare i32 @gimp_image_get_colormap_size(%struct._GimpImage*) #3

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #3

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

declare %struct._GimpItem* @gimp_item_convert(%struct._GimpItem*, %struct._GimpImage*, i64) #3

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare i8* @gimp_object_get_name(i8*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #3

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #3

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #3

declare void @gimp_layer_set_mode(%struct._GimpLayer*, i32, i32) #3

declare void @gimp_layer_set_opacity(%struct._GimpLayer*, double, i32) #3

declare void @gimp_layer_set_lock_alpha(%struct._GimpLayer*, i32, i32) #3

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_image_new_from_component(%struct._Gimp* %gimp, %struct._GimpImage* %image, i32 %component) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %component.addr = alloca i32, align 4
  %new_image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %desc = alloca i8*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %component, i32* %component.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_new_from_component, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_new_from_component, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call39 = call i32 @gimp_image_get_width(%struct._GimpImage* %27)
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call40 = call i32 @gimp_image_get_height(%struct._GimpImage* %28)
  %call41 = call %struct._GimpImage* @gimp_create_image(%struct._Gimp* %26, i32 %call39, i32 %call40, i32 1, i32 1)
  store %struct._GimpImage* %call41, %struct._GimpImage** %new_image, align 8
  %29 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call42 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %29)
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %30, double* %xres, double* %yres)
  %31 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %32 = load double, double* %xres, align 8
  %33 = load double, double* %yres, align 8
  call void @gimp_image_set_resolution(%struct._GimpImage* %31, double %32, double %33)
  %34 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call43 = call i32 @gimp_image_get_unit(%struct._GimpImage* %35)
  call void @gimp_image_set_unit(%struct._GimpImage* %34, i32 %call43)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %37 = load i32, i32* %component.addr, align 4
  %call44 = call %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage* %36, i32 %37, i8* null, %struct._GimpRGB* null)
  store %struct._GimpChannel* %call44, %struct._GimpChannel** %channel, align 8
  %38 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %39 = bitcast %struct._GimpChannel* %38 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_item_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call45)
  %40 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpItem*
  %41 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call47 = call i64 @gimp_layer_get_type() #5
  %call48 = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %40, %struct._GimpImage* %41, i64 %call47)
  %42 = bitcast %struct._GimpItem* %call48 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_layer_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call49)
  %43 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpLayer*
  store %struct._GimpLayer* %43, %struct._GimpLayer** %layer, align 8
  %44 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %45 = bitcast %struct._GimpChannel* %44 to i8*
  call void @g_object_unref(i8* %45)
  %call51 = call i64 @gimp_channel_type_get_type() #5
  %46 = load i32, i32* %component.addr, align 4
  %call52 = call i32 @gimp_enum_get_value(i64 %call51, i32 %46, i8** null, i8** null, i8** %desc, i8** null)
  %47 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %48 = bitcast %struct._GimpLayer* %47 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_object_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call53)
  %49 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpObject*
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)) #7
  %50 = load i8*, i8** %desc, align 8
  %call56 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call55, i8* %50)
  call void @gimp_object_take_name(%struct._GimpObject* %49, i8* %call56)
  %51 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %52 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call57 = call i32 @gimp_image_add_layer(%struct._GimpImage* %51, %struct._GimpLayer* %52, %struct._GimpLayer* null, i32 0, i32 1)
  %53 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call58 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %53)
  %54 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  store %struct._GimpImage* %54, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %55 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %55
}

declare %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage*, i32, i8*, %struct._GimpRGB*) #3

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp* %gimp, %struct._GimpImage* %invoke, %struct._GimpBuffer* %paste) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %invoke.addr = alloca %struct._GimpImage*, align 8
  %paste.addr = alloca %struct._GimpBuffer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %invoke, %struct._GimpImage** %invoke.addr, align 8
  store %struct._GimpBuffer* %paste, %struct._GimpBuffer** %paste.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_new_from_buffer, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %invoke.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %invoke.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #5
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_new_from_buffer, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpBuffer*, %struct._GimpBuffer** %paste.addr, align 8
  %28 = bitcast %struct._GimpBuffer* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_buffer_get_type() #5
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %do.body.40
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %do.body.40
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
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
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

if.then.64:                                       ; preds = %if.end.61
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_new_from_buffer, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %40 = load %struct._GimpBuffer*, %struct._GimpBuffer** %paste.addr, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %40, i32 0, i32 1
  %41 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call68 = call i32 @tile_manager_bpp(%struct._TileManager* %41)
  switch i32 %call68, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.69
    i32 3, label %sw.bb.70
    i32 4, label %sw.bb.71
  ]

sw.bb:                                            ; preds = %do.end.67
  store i32 2, i32* %type, align 4
  br label %sw.epilog

sw.bb.69:                                         ; preds = %do.end.67
  store i32 3, i32* %type, align 4
  br label %sw.epilog

sw.bb.70:                                         ; preds = %do.end.67
  store i32 0, i32* %type, align 4
  br label %sw.epilog

sw.bb.71:                                         ; preds = %do.end.67
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.67
  br label %do.body.72

do.body.72:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 286, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_new_from_buffer, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

do.end.73:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.73, %sw.bb.71, %sw.bb.70, %sw.bb.69, %sw.bb
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %43 = load %struct._GimpBuffer*, %struct._GimpBuffer** %paste.addr, align 8
  %call74 = call i32 @gimp_buffer_get_width(%struct._GimpBuffer* %43)
  %44 = load %struct._GimpBuffer*, %struct._GimpBuffer** %paste.addr, align 8
  %call75 = call i32 @gimp_buffer_get_height(%struct._GimpBuffer* %44)
  %45 = load i32, i32* %type, align 4
  %cmp76 = icmp eq i32 %45, 0
  br i1 %cmp76, label %cond.true, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %sw.epilog
  %46 = load i32, i32* %type, align 4
  %cmp78 = icmp eq i32 %46, 1
  br i1 %cmp78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.77, %sw.epilog
  br label %cond.end.87

cond.false:                                       ; preds = %lor.lhs.false.77
  %47 = load i32, i32* %type, align 4
  %cmp79 = icmp eq i32 %47, 2
  br i1 %cmp79, label %cond.true.82, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %cond.false
  %48 = load i32, i32* %type, align 4
  %cmp81 = icmp eq i32 %48, 3
  br i1 %cmp81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %lor.lhs.false.80, %cond.false
  br label %cond.end

cond.false.83:                                    ; preds = %lor.lhs.false.80
  %49 = load i32, i32* %type, align 4
  %cmp84 = icmp eq i32 %49, 4
  br i1 %cmp84, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.83
  %50 = load i32, i32* %type, align 4
  %cmp85 = icmp eq i32 %50, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.83
  %51 = phi i1 [ true, %cond.false.83 ], [ %cmp85, %lor.rhs ]
  %cond = select i1 %51, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.82
  %cond86 = phi i32 [ 1, %cond.true.82 ], [ %cond, %lor.end ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end, %cond.true
  %cond88 = phi i32 [ 0, %cond.true ], [ %cond86, %cond.end ]
  %call89 = call %struct._GimpImage* @gimp_create_image(%struct._Gimp* %42, i32 %call74, i32 %call75, i32 %cond88, i32 1)
  store %struct._GimpImage* %call89, %struct._GimpImage** %image, align 8
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call90 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %52)
  %53 = load %struct._GimpImage*, %struct._GimpImage** %invoke.addr, align 8
  %tobool91 = icmp ne %struct._GimpImage* %53, null
  br i1 %tobool91, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %cond.end.87
  %54 = load %struct._GimpImage*, %struct._GimpImage** %invoke.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %54, double* %xres, double* %yres)
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %56 = load double, double* %xres, align 8
  %57 = load double, double* %yres, align 8
  call void @gimp_image_set_resolution(%struct._GimpImage* %55, double %56, double %57)
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %59 = load %struct._GimpImage*, %struct._GimpImage** %invoke.addr, align 8
  %call95 = call i32 @gimp_image_get_unit(%struct._GimpImage* %59)
  call void @gimp_image_set_unit(%struct._GimpImage* %58, i32 %call95)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %cond.end.87
  %60 = load %struct._GimpBuffer*, %struct._GimpBuffer** %paste.addr, align 8
  %tiles97 = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %60, i32 0, i32 1
  %61 = load %struct._TileManager*, %struct._TileManager** %tiles97, align 8
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %63 = load i32, i32* %type, align 4
  %call98 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #7
  %call99 = call %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager* %61, %struct._GimpImage* %62, i32 %63, i8* %call98, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call99, %struct._GimpLayer** %layer, align 8
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %65 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call100 = call i32 @gimp_image_add_layer(%struct._GimpImage* %64, %struct._GimpLayer* %65, %struct._GimpLayer* null, i32 0, i32 1)
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call101 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %66)
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %67, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.96, %do.body.72, %if.else.65, %if.else.37, %if.else.9
  %68 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %68
}

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #3

declare void @g_log(i8*, i32, i8*, ...) #3

declare i32 @gimp_buffer_get_width(%struct._GimpBuffer*) #3

declare i32 @gimp_buffer_get_height(%struct._GimpBuffer*) #3

declare %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager*, %struct._GimpImage*, i32, i8*, double, i32) #3

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_image_new_from_pixbuf(%struct._Gimp* %gimp, %struct._GdkPixbuf* %pixbuf, i8* %layer_name) #0 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %layer_name.addr = alloca i8*, align 8
  %image_type = alloca i32, align 4
  %new_image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store i8* %layer_name, i8** %layer_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_new_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %14 = bitcast %struct._GdkPixbuf* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gdk_pixbuf_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_new_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call39 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %26)
  switch i32 %call39, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.40
    i32 3, label %sw.bb.41
    i32 4, label %sw.bb.42
  ]

sw.bb:                                            ; preds = %do.end.38
  store i32 2, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.40:                                         ; preds = %do.end.38
  store i32 3, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %do.end.38
  store i32 0, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %do.end.38
  store i32 1, i32* %image_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.38
  br label %do.body.43

do.body.43:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 340, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_new_from_pixbuf, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

do.end.44:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.44, %sw.bb.42, %sw.bb.41, %sw.bb.40, %sw.bb
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %28 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call45 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %28)
  %29 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call46 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %29)
  %30 = load i32, i32* %image_type, align 4
  %cmp47 = icmp eq i32 %30, 0
  br i1 %cmp47, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %31 = load i32, i32* %image_type, align 4
  %cmp48 = icmp eq i32 %31, 1
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %sw.epilog
  br label %cond.end.57

cond.false:                                       ; preds = %lor.lhs.false
  %32 = load i32, i32* %image_type, align 4
  %cmp49 = icmp eq i32 %32, 2
  br i1 %cmp49, label %cond.true.52, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %cond.false
  %33 = load i32, i32* %image_type, align 4
  %cmp51 = icmp eq i32 %33, 3
  br i1 %cmp51, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %lor.lhs.false.50, %cond.false
  br label %cond.end

cond.false.53:                                    ; preds = %lor.lhs.false.50
  %34 = load i32, i32* %image_type, align 4
  %cmp54 = icmp eq i32 %34, 4
  br i1 %cmp54, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.53
  %35 = load i32, i32* %image_type, align 4
  %cmp55 = icmp eq i32 %35, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.53
  %36 = phi i1 [ true, %cond.false.53 ], [ %cmp55, %lor.rhs ]
  %cond = select i1 %36, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.52
  %cond56 = phi i32 [ 1, %cond.true.52 ], [ %cond, %lor.end ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end, %cond.true
  %cond58 = phi i32 [ 0, %cond.true ], [ %cond56, %cond.end ]
  %call59 = call %struct._GimpImage* @gimp_create_image(%struct._Gimp* %27, i32 %call45, i32 %call46, i32 %cond58, i32 0)
  store %struct._GimpImage* %call59, %struct._GimpImage** %new_image, align 8
  %37 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call60 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %37)
  %38 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %40 = load i32, i32* %image_type, align 4
  %41 = load i8*, i8** %layer_name.addr, align 8
  %call61 = call %struct._GimpLayer* @gimp_layer_new_from_pixbuf(%struct._GdkPixbuf* %38, %struct._GimpImage* %39, i32 %40, i8* %41, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call61, %struct._GimpLayer** %layer, align 8
  %42 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %43 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call62 = call i32 @gimp_image_add_layer(%struct._GimpImage* %42, %struct._GimpLayer* %43, %struct._GimpLayer* null, i32 0, i32 1)
  %44 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call63 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %44)
  %45 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  store %struct._GimpImage* %45, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %cond.end.57, %do.body.43, %if.else.36, %if.else.9
  %46 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %46
}

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #1

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #3

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #3

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #3

declare %struct._GimpLayer* @gimp_layer_new_from_pixbuf(%struct._GdkPixbuf*, %struct._GimpImage*, i32, i8*, double, i32) #3

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
