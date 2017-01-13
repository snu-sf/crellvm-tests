; ModuleID = './app/core/gimp-edit.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._TileManager = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpPickable = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpSelection = type { %struct._GimpChannel, i32 }
%struct._GimpProjection = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpDrawableUndo = type { %struct._GimpItemUndo, %struct._TileManager*, i32, i32, i32, i32, i32, %struct._TileManager*, i32, double }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_edit_cut = private unnamed_addr constant [14 x i8] c"gimp_edit_cut\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_edit_copy = private unnamed_addr constant [15 x i8] c"gimp_edit_copy\00", align 1
@__func__.gimp_edit_copy_visible = private unnamed_addr constant [23 x i8] c"gimp_edit_copy_visible\00", align 1
@__func__.gimp_edit_paste = private unnamed_addr constant [16 x i8] c"gimp_edit_paste\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"drawable == NULL || GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"drawable == NULL || gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"GIMP_IS_BUFFER (paste)\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Pasted Layer\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"undo-type\04Paste\00", align 1
@__func__.gimp_edit_named_cut = private unnamed_addr constant [20 x i8] c"gimp_edit_named_cut\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.gimp_edit_named_copy = private unnamed_addr constant [21 x i8] c"gimp_edit_named_copy\00", align 1
@__func__.gimp_edit_named_copy_visible = private unnamed_addr constant [29 x i8] c"gimp_edit_named_copy_visible\00", align 1
@__func__.gimp_edit_clear = private unnamed_addr constant [16 x i8] c"gimp_edit_clear\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"undo-type\04Clear\00", align 1
@__func__.gimp_edit_fill = private unnamed_addr constant [15 x i8] c"gimp_edit_fill\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"undo-type\04Fill with Foreground Color\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"undo-type\04Fill with Background Color\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"undo-type\04Fill with White\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"undo-type\04Fill with Transparency\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"undo-type\04Fill with Pattern\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"%s: unknown fill type\00", align 1
@__func__.gimp_edit_fade = private unnamed_addr constant [15 x i8] c"gimp_edit_fade\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"undo-type\04Cut\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Global Buffer\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpBuffer* @gimp_edit_cut(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
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
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_edit_cut, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_edit_cut, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_edit_cut, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = bitcast %struct._GimpContext* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_context_get_type() #6
  store i64 %call53, i64* %__t52, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %do.body.48
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %do.body.48
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
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
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

if.then.72:                                       ; preds = %if.end.69
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_edit_cut, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp77 = icmp eq %struct._GError** %42, null
  br i1 %cmp77, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.76
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %44 = load %struct._GError*, %struct._GError** %43, align 8
  %cmp78 = icmp eq %struct._GError* %44, null
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %lor.lhs.false, %do.body.76
  br label %if.end.81

if.else.80:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_edit_cut, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.81:                                        ; preds = %if.then.79
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = bitcast %struct._GimpDrawable* %46 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_pickable_interface_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call83)
  %48 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpPickable*
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %50 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call85 = call %struct._GimpBuffer* @gimp_edit_extract(%struct._GimpImage* %45, %struct._GimpPickable* %48, %struct._GimpContext* %49, i32 1, %struct._GError** %50)
  store %struct._GimpBuffer* %call85, %struct._GimpBuffer** %buffer, align 8
  %51 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool86 = icmp ne %struct._GimpBuffer* %51, null
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %do.end.82
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %52, i32 0, i32 1
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %54 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  call void @gimp_set_global_buffer(%struct._Gimp* %53, %struct._GimpBuffer* %54)
  %55 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %56 = bitcast %struct._GimpBuffer* %55 to i8*
  call void @g_object_unref(i8* %56)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp88 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %57, i32 0, i32 1
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp88, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %58, i32 0, i32 34
  %59 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  store %struct._GimpBuffer* %59, %struct._GimpBuffer** %retval
  br label %return

if.end.89:                                        ; preds = %do.end.82
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.87, %if.else.80, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %60 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %60
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpBuffer* @gimp_edit_extract(%struct._GimpImage* %image, %struct._GimpPickable* %pickable, %struct._GimpContext* %context, i32 %cut_pixels, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %cut_pixels.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %cut_pixels, i32* %cut_pixels.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i32, i32* %cut_pixels.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i64 10)
  %call1 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %1, i32 30, i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %2)
  %3 = bitcast %struct._GimpChannel* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_selection_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpSelection*
  %5 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = load i32, i32* %cut_pixels.addr, align 4
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call %struct._TileManager* @gimp_selection_extract(%struct._GimpSelection* %4, %struct._GimpPickable* %5, %struct._GimpContext* %6, i32 %7, i32 0, i32 0, i32* %offset_x, i32* %offset_y, %struct._GError** %8)
  store %struct._TileManager* %call5, %struct._TileManager** %tiles, align 8
  %9 = load i32, i32* %cut_pixels.addr, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call8 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %11 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool10 = icmp ne %struct._TileManager* %11, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %12 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0)) #5
  %13 = load i32, i32* %offset_x, align 4
  %14 = load i32, i32* %offset_y, align 4
  %call13 = call %struct._GimpBuffer* @gimp_buffer_new(%struct._TileManager* %12, i8* %call12, i32 %13, i32 %14, i32 0)
  store %struct._GimpBuffer* %call13, %struct._GimpBuffer** %buffer, align 8
  %15 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %15)
  %16 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  store %struct._GimpBuffer* %16, %struct._GimpBuffer** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11
  %17 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %17
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

declare void @gimp_set_global_buffer(%struct._Gimp*, %struct._GimpBuffer*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpBuffer* @gimp_edit_copy(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
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
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_copy, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_copy, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_copy, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = bitcast %struct._GimpContext* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_context_get_type() #6
  store i64 %call53, i64* %__t52, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %do.body.48
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %do.body.48
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
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
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

if.then.72:                                       ; preds = %if.end.69
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_copy, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp77 = icmp eq %struct._GError** %42, null
  br i1 %cmp77, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.76
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %44 = load %struct._GError*, %struct._GError** %43, align 8
  %cmp78 = icmp eq %struct._GError* %44, null
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %lor.lhs.false, %do.body.76
  br label %if.end.81

if.else.80:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_copy, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.81:                                        ; preds = %if.then.79
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = bitcast %struct._GimpDrawable* %46 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_pickable_interface_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call83)
  %48 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpPickable*
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %50 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call85 = call %struct._GimpBuffer* @gimp_edit_extract(%struct._GimpImage* %45, %struct._GimpPickable* %48, %struct._GimpContext* %49, i32 0, %struct._GError** %50)
  store %struct._GimpBuffer* %call85, %struct._GimpBuffer** %buffer, align 8
  %51 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool86 = icmp ne %struct._GimpBuffer* %51, null
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %do.end.82
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %52, i32 0, i32 1
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %54 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  call void @gimp_set_global_buffer(%struct._Gimp* %53, %struct._GimpBuffer* %54)
  %55 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %56 = bitcast %struct._GimpBuffer* %55 to i8*
  call void @g_object_unref(i8* %56)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp88 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %57, i32 0, i32 1
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp88, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %58, i32 0, i32 34
  %59 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  store %struct._GimpBuffer* %59, %struct._GimpBuffer** %retval
  br label %return

if.end.89:                                        ; preds = %do.end.82
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.87, %if.else.80, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %60 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %60
}

; Function Attrs: nounwind uwtable
define %struct._GimpBuffer* @gimp_edit_copy_visible(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %projection = alloca %struct._GimpProjection*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_edit_copy_visible, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_edit_copy_visible, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp40 = icmp eq %struct._GError** %26, null
  br i1 %cmp40, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  %cmp41 = icmp eq %struct._GError* %28, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %lor.lhs.false, %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_edit_copy_visible, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call46 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %29)
  store %struct._GimpProjection* %call46, %struct._GimpProjection** %projection, align 8
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %31 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %32 = bitcast %struct._GimpProjection* %31 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_pickable_interface_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call47)
  %33 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpPickable*
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %35 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call49 = call %struct._GimpBuffer* @gimp_edit_extract(%struct._GimpImage* %30, %struct._GimpPickable* %33, %struct._GimpContext* %34, i32 0, %struct._GError** %35)
  store %struct._GimpBuffer* %call49, %struct._GimpBuffer** %buffer, align 8
  %36 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool50 = icmp ne %struct._GimpBuffer* %36, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %do.end.45
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %37, i32 0, i32 1
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %39 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  call void @gimp_set_global_buffer(%struct._Gimp* %38, %struct._GimpBuffer* %39)
  %40 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %41 = bitcast %struct._GimpBuffer* %40 to i8*
  call void @g_object_unref(i8* %41)
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp52 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %42, i32 0, i32 1
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp52, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %43, i32 0, i32 34
  %44 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  store %struct._GimpBuffer* %44, %struct._GimpBuffer** %retval
  br label %return

if.end.53:                                        ; preds = %do.end.45
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.51, %if.else.43, %if.else.36, %if.else.9
  %45 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %45
}

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, %struct._GimpBuffer* %paste, i32 %paste_into, i32 %viewport_x, i32 %viewport_y, i32 %viewport_width, i32 %viewport_height) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paste.addr = alloca %struct._GimpBuffer*, align 8
  %paste_into.addr = alloca i32, align 4
  %viewport_x.addr = alloca i32, align 4
  %viewport_y.addr = alloca i32, align 4
  %viewport_width.addr = alloca i32, align 4
  %viewport_height.addr = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %type = alloca i32, align 4
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %clamp_to_image = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst53 = alloca %struct._GTypeInstance*, align 8
  %__t55 = alloca i64, align 8
  %__r58 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %paste_x = alloca i32, align 4
  %paste_y = alloca i32, align 4
  %paste_width = alloca i32, align 4
  %paste_height = alloca i32, align 4
  %have_mask = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpBuffer* %paste, %struct._GimpBuffer** %paste.addr, align 8
  store i32 %paste_into, i32* %paste_into.addr, align 4
  store i32 %viewport_x, i32* %viewport_x.addr, align 4
  store i32 %viewport_y, i32* %viewport_y.addr, align 4
  store i32 %viewport_width, i32* %viewport_width.addr, align 4
  store i32 %viewport_height, i32* %viewport_height.addr, align 4
  store i32 1, i32* %clamp_to_image, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_edit_paste, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
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
  %call17 = call i64 @gimp_drawable_get_type() #6
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_edit_paste, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
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
  %call43 = call i64 @gimp_item_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call43)
  %30 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  %call45 = call i32 @gimp_item_is_attached(%struct._GimpItem* %30)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.42, %do.body.40
  br label %if.end.49

if.else.48:                                       ; preds = %lor.lhs.false.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_edit_paste, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %31 = load %struct._GimpBuffer*, %struct._GimpBuffer** %paste.addr, align 8
  %32 = bitcast %struct._GimpBuffer* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst53, align 8
  %call56 = call i64 @gimp_buffer_get_type() #6
  store i64 %call56, i64* %__t55, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %tobool59 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool59, label %if.else.61, label %if.then.60

if.then.60:                                       ; preds = %do.body.51
  store i32 0, i32* %__r58, align 4
  br label %if.end.72

if.else.61:                                       ; preds = %do.body.51
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %tobool63 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool63, label %land.lhs.true.64, label %if.else.69

land.lhs.true.64:                                 ; preds = %if.else.61
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %g_class65 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class65, align 8
  %g_type66 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type66, align 8
  %39 = load i64, i64* %__t55, align 8
  %cmp67 = icmp eq i64 %38, %39
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %land.lhs.true.64
  store i32 1, i32* %__r58, align 4
  br label %if.end.71

if.else.69:                                       ; preds = %land.lhs.true.64, %if.else.61
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst53, align 8
  %41 = load i64, i64* %__t55, align 8
  %call70 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #7
  store i32 %call70, i32* %__r58, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.69, %if.then.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.60
  %42 = load i32, i32* %__r58, align 4
  store i32 %42, i32* %tmp73
  %43 = load i32, i32* %tmp73
  %tobool74 = icmp ne i32 %43, 0
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.end.72
  br label %if.end.77

if.else.76:                                       ; preds = %if.end.72
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_edit_paste, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.77:                                        ; preds = %if.then.75
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tobool79 = icmp ne %struct._GimpDrawable* %44, null
  br i1 %tobool79, label %if.then.80, label %if.else.82

if.then.80:                                       ; preds = %do.end.78
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call81 = call i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %45)
  store i32 %call81, i32* %type, align 4
  br label %if.end.84

if.else.82:                                       ; preds = %do.end.78
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call83 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %46)
  store i32 %call83, i32* %type, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.then.80
  %47 = load %struct._GimpBuffer*, %struct._GimpBuffer** %paste.addr, align 8
  %tiles = getelementptr inbounds %struct._GimpBuffer, %struct._GimpBuffer* %47, i32 0, i32 1
  %48 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %50 = load i32, i32* %type, align 4
  %call85 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)) #5
  %call86 = call %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager* %48, %struct._GimpImage* %49, i32 %50, i8* %call85, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call86, %struct._GimpLayer** %layer, align 8
  %51 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool87 = icmp ne %struct._GimpLayer* %51, null
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %if.end.84
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.89:                                        ; preds = %if.end.84
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call90 = call i32 @gimp_image_get_width(%struct._GimpImage* %52)
  store i32 %call90, i32* %image_width, align 4
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call91 = call i32 @gimp_image_get_height(%struct._GimpImage* %53)
  store i32 %call91, i32* %image_height, align 4
  %54 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %55 = bitcast %struct._GimpLayer* %54 to %struct._GTypeInstance*
  %call92 = call i64 @gimp_item_get_type() #6
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call92)
  %56 = bitcast %struct._GTypeInstance* %call93 to %struct._GimpItem*
  %call94 = call i32 @gimp_item_get_width(%struct._GimpItem* %56)
  store i32 %call94, i32* %width, align 4
  %57 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %58 = bitcast %struct._GimpLayer* %57 to %struct._GTypeInstance*
  %call95 = call i64 @gimp_item_get_type() #6
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call95)
  %59 = bitcast %struct._GTypeInstance* %call96 to %struct._GimpItem*
  %call97 = call i32 @gimp_item_get_height(%struct._GimpItem* %59)
  store i32 %call97, i32* %height, align 4
  %60 = load i32, i32* %viewport_width.addr, align 4
  %61 = load i32, i32* %image_width, align 4
  %cmp98 = icmp eq i32 %60, %61
  br i1 %cmp98, label %land.lhs.true.99, label %if.end.102

land.lhs.true.99:                                 ; preds = %if.end.89
  %62 = load i32, i32* %viewport_height.addr, align 4
  %63 = load i32, i32* %image_height, align 4
  %cmp100 = icmp eq i32 %62, %63
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %land.lhs.true.99
  store i32 0, i32* %viewport_x.addr, align 4
  store i32 0, i32* %viewport_y.addr, align 4
  store i32 0, i32* %viewport_width.addr, align 4
  store i32 0, i32* %viewport_height.addr, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %land.lhs.true.99, %if.end.89
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tobool103 = icmp ne %struct._GimpDrawable* %64, null
  br i1 %tobool103, label %if.then.104, label %if.else.151

if.then.104:                                      ; preds = %if.end.102
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %66 = bitcast %struct._GimpDrawable* %65 to %struct._GTypeInstance*
  %call116 = call i64 @gimp_item_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call116)
  %67 = bitcast %struct._GTypeInstance* %call117 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %67, i32* %off_x, i32* %off_y)
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %69 = bitcast %struct._GimpDrawable* %68 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_item_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call118)
  %70 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpItem*
  %call120 = call i32 @gimp_item_mask_bounds(%struct._GimpItem* %70, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  store i32 %call120, i32* %have_mask, align 4
  %71 = load i32, i32* %have_mask, align 4
  %tobool121 = icmp ne i32 %71, 0
  br i1 %tobool121, label %if.else.141, label %land.lhs.true.122

land.lhs.true.122:                                ; preds = %if.then.104
  %72 = load i32, i32* %viewport_width.addr, align 4
  %cmp123 = icmp sgt i32 %72, 0
  br i1 %cmp123, label %land.lhs.true.124, label %if.else.141

land.lhs.true.124:                                ; preds = %land.lhs.true.122
  %73 = load i32, i32* %viewport_height.addr, align 4
  %cmp125 = icmp sgt i32 %73, 0
  br i1 %cmp125, label %land.lhs.true.126, label %if.else.141

land.lhs.true.126:                                ; preds = %land.lhs.true.124
  %74 = load i32, i32* %width, align 4
  %75 = load i32, i32* %x2, align 4
  %76 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %75, %76
  %cmp127 = icmp slt i32 %74, %sub
  br i1 %cmp127, label %land.lhs.true.131, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %land.lhs.true.126
  %77 = load i32, i32* %height, align 4
  %78 = load i32, i32* %y2, align 4
  %79 = load i32, i32* %y1, align 4
  %sub129 = sub nsw i32 %78, %79
  %cmp130 = icmp slt i32 %77, %sub129
  br i1 %cmp130, label %land.lhs.true.131, label %if.else.141

land.lhs.true.131:                                ; preds = %lor.lhs.false.128, %land.lhs.true.126
  %80 = load i32, i32* %viewport_x.addr, align 4
  %81 = load i32, i32* %viewport_y.addr, align 4
  %82 = load i32, i32* %viewport_width.addr, align 4
  %83 = load i32, i32* %viewport_height.addr, align 4
  %84 = load i32, i32* %off_x, align 4
  %85 = load i32, i32* %off_y, align 4
  %86 = load i32, i32* %x2, align 4
  %87 = load i32, i32* %x1, align 4
  %sub132 = sub nsw i32 %86, %87
  %88 = load i32, i32* %y2, align 4
  %89 = load i32, i32* %y1, align 4
  %sub133 = sub nsw i32 %88, %89
  %call134 = call i32 @gimp_rectangle_intersect(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %sub132, i32 %sub133, i32* %paste_x, i32* %paste_y, i32* %paste_width, i32* %paste_height)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.else.141

if.then.136:                                      ; preds = %land.lhs.true.131
  %90 = load i32, i32* %paste_x, align 4
  %91 = load i32, i32* %paste_width, align 4
  %92 = load i32, i32* %width, align 4
  %sub137 = sub nsw i32 %91, %92
  %div = sdiv i32 %sub137, 2
  %add = add nsw i32 %90, %div
  store i32 %add, i32* %offset_x, align 4
  %93 = load i32, i32* %paste_y, align 4
  %94 = load i32, i32* %paste_height, align 4
  %95 = load i32, i32* %height, align 4
  %sub138 = sub nsw i32 %94, %95
  %div139 = sdiv i32 %sub138, 2
  %add140 = add nsw i32 %93, %div139
  store i32 %add140, i32* %offset_y, align 4
  br label %if.end.150

if.else.141:                                      ; preds = %land.lhs.true.131, %lor.lhs.false.128, %land.lhs.true.124, %land.lhs.true.122, %if.then.104
  %96 = load i32, i32* %off_x, align 4
  %97 = load i32, i32* %x1, align 4
  %98 = load i32, i32* %x2, align 4
  %add142 = add nsw i32 %97, %98
  %99 = load i32, i32* %width, align 4
  %sub143 = sub nsw i32 %add142, %99
  %div144 = sdiv i32 %sub143, 2
  %add145 = add nsw i32 %96, %div144
  store i32 %add145, i32* %offset_x, align 4
  %100 = load i32, i32* %off_y, align 4
  %101 = load i32, i32* %y1, align 4
  %102 = load i32, i32* %y2, align 4
  %add146 = add nsw i32 %101, %102
  %103 = load i32, i32* %height, align 4
  %sub147 = sub nsw i32 %add146, %103
  %div148 = sdiv i32 %sub147, 2
  %add149 = add nsw i32 %100, %div148
  store i32 %add149, i32* %offset_y, align 4
  store i32 0, i32* %clamp_to_image, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.141, %if.then.136
  br label %if.end.172

if.else.151:                                      ; preds = %if.end.102
  %104 = load i32, i32* %viewport_width.addr, align 4
  %cmp152 = icmp sgt i32 %104, 0
  br i1 %cmp152, label %land.lhs.true.153, label %if.else.166

land.lhs.true.153:                                ; preds = %if.else.151
  %105 = load i32, i32* %viewport_height.addr, align 4
  %cmp154 = icmp sgt i32 %105, 0
  br i1 %cmp154, label %land.lhs.true.155, label %if.else.166

land.lhs.true.155:                                ; preds = %land.lhs.true.153
  %106 = load i32, i32* %width, align 4
  %107 = load i32, i32* %image_width, align 4
  %cmp156 = icmp slt i32 %106, %107
  br i1 %cmp156, label %if.then.159, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %land.lhs.true.155
  %108 = load i32, i32* %height, align 4
  %109 = load i32, i32* %image_height, align 4
  %cmp158 = icmp slt i32 %108, %109
  br i1 %cmp158, label %if.then.159, label %if.else.166

if.then.159:                                      ; preds = %lor.lhs.false.157, %land.lhs.true.155
  %110 = load i32, i32* %viewport_x.addr, align 4
  %111 = load i32, i32* %viewport_width.addr, align 4
  %112 = load i32, i32* %width, align 4
  %sub160 = sub nsw i32 %111, %112
  %div161 = sdiv i32 %sub160, 2
  %add162 = add nsw i32 %110, %div161
  store i32 %add162, i32* %offset_x, align 4
  %113 = load i32, i32* %viewport_y.addr, align 4
  %114 = load i32, i32* %viewport_height.addr, align 4
  %115 = load i32, i32* %height, align 4
  %sub163 = sub nsw i32 %114, %115
  %div164 = sdiv i32 %sub163, 2
  %add165 = add nsw i32 %113, %div164
  store i32 %add165, i32* %offset_y, align 4
  br label %if.end.171

if.else.166:                                      ; preds = %lor.lhs.false.157, %land.lhs.true.153, %if.else.151
  %116 = load i32, i32* %image_width, align 4
  %117 = load i32, i32* %width, align 4
  %sub167 = sub nsw i32 %116, %117
  %div168 = sdiv i32 %sub167, 2
  store i32 %div168, i32* %offset_x, align 4
  %118 = load i32, i32* %image_height, align 4
  %119 = load i32, i32* %height, align 4
  %sub169 = sub nsw i32 %118, %119
  %div170 = sdiv i32 %sub169, 2
  store i32 %div170, i32* %offset_y, align 4
  store i32 0, i32* %clamp_to_image, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.166, %if.then.159
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.150
  %120 = load i32, i32* %clamp_to_image, align 4
  %tobool173 = icmp ne i32 %120, 0
  br i1 %tobool173, label %if.then.174, label %if.end.195

if.then.174:                                      ; preds = %if.end.172
  %121 = load i32, i32* %offset_x, align 4
  %122 = load i32, i32* %image_width, align 4
  %123 = load i32, i32* %width, align 4
  %sub175 = sub nsw i32 %122, %123
  %cmp176 = icmp slt i32 %121, %sub175
  br i1 %cmp176, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.174
  %124 = load i32, i32* %offset_x, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.174
  %125 = load i32, i32* %image_width, align 4
  %126 = load i32, i32* %width, align 4
  %sub177 = sub nsw i32 %125, %126
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %124, %cond.true ], [ %sub177, %cond.false ]
  store i32 %cond, i32* %offset_x, align 4
  %127 = load i32, i32* %offset_y, align 4
  %128 = load i32, i32* %image_height, align 4
  %129 = load i32, i32* %height, align 4
  %sub178 = sub nsw i32 %128, %129
  %cmp179 = icmp slt i32 %127, %sub178
  br i1 %cmp179, label %cond.true.180, label %cond.false.181

cond.true.180:                                    ; preds = %cond.end
  %130 = load i32, i32* %offset_y, align 4
  br label %cond.end.183

cond.false.181:                                   ; preds = %cond.end
  %131 = load i32, i32* %image_height, align 4
  %132 = load i32, i32* %height, align 4
  %sub182 = sub nsw i32 %131, %132
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.181, %cond.true.180
  %cond184 = phi i32 [ %130, %cond.true.180 ], [ %sub182, %cond.false.181 ]
  store i32 %cond184, i32* %offset_y, align 4
  %133 = load i32, i32* %offset_x, align 4
  %cmp185 = icmp sgt i32 %133, 0
  br i1 %cmp185, label %cond.true.186, label %cond.false.187

cond.true.186:                                    ; preds = %cond.end.183
  %134 = load i32, i32* %offset_x, align 4
  br label %cond.end.188

cond.false.187:                                   ; preds = %cond.end.183
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.187, %cond.true.186
  %cond189 = phi i32 [ %134, %cond.true.186 ], [ 0, %cond.false.187 ]
  store i32 %cond189, i32* %offset_x, align 4
  %135 = load i32, i32* %offset_y, align 4
  %cmp190 = icmp sgt i32 %135, 0
  br i1 %cmp190, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %cond.end.188
  %136 = load i32, i32* %offset_y, align 4
  br label %cond.end.193

cond.false.192:                                   ; preds = %cond.end.188
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.192, %cond.true.191
  %cond194 = phi i32 [ %136, %cond.true.191 ], [ 0, %cond.false.192 ]
  store i32 %cond194, i32* %offset_y, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %cond.end.193, %if.end.172
  %137 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %138 = bitcast %struct._GimpLayer* %137 to %struct._GTypeInstance*
  %call196 = call i64 @gimp_item_get_type() #6
  %call197 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call196)
  %139 = bitcast %struct._GTypeInstance* %call197 to %struct._GimpItem*
  %140 = load i32, i32* %offset_x, align 4
  %141 = load i32, i32* %offset_y, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %139, i32 %140, i32 %141)
  %142 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call198 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %call199 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %142, i32 29, i8* %call198)
  %143 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call200 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %143)
  %call201 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %call200)
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.end.207, label %land.lhs.true.203

land.lhs.true.203:                                ; preds = %if.end.195
  %144 = load i32, i32* %paste_into.addr, align 4
  %tobool204 = icmp ne i32 %144, 0
  br i1 %tobool204, label %if.end.207, label %if.then.205

if.then.205:                                      ; preds = %land.lhs.true.203
  %145 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call206 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %145)
  call void @gimp_channel_clear(%struct._GimpChannel* %call206, i8* null, i32 1)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %land.lhs.true.203, %if.end.195
  %146 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tobool208 = icmp ne %struct._GimpDrawable* %146, null
  br i1 %tobool208, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %if.end.207
  %147 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %148 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @floating_sel_attach(%struct._GimpLayer* %147, %struct._GimpDrawable* %148)
  br label %if.end.212

if.else.210:                                      ; preds = %if.end.207
  %149 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %150 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call211 = call i32 @gimp_image_add_layer(%struct._GimpImage* %149, %struct._GimpLayer* %150, %struct._GimpLayer* null, i32 0, i32 1)
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.210, %if.then.209
  %151 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call213 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %151)
  %152 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %152, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.212, %if.then.88, %if.else.76, %if.else.48, %if.else.37, %if.else.9
  %153 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %153
}

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #1

declare i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable*) #3

declare i32 @gimp_image_base_type_with_alpha(%struct._GimpImage*) #3

declare %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager*, %struct._GimpImage*, i32, i8*, double, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare i32 @gimp_item_mask_bounds(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #3

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #3

declare void @floating_sel_attach(%struct._GimpLayer*, %struct._GimpDrawable*) #3

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_edit_named_cut(%struct._GimpImage* %image, i8* %name, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._GError** %error) #0 {
entry:
  %retval = alloca i8*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %name.addr = alloca i8*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %__inst56 = alloca %struct._GTypeInstance*, align 8
  %__t58 = alloca i64, align 8
  %__r61 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_edit_named_cut, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_edit_named_cut, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_drawable_get_type() #6
  store i64 %call22, i64* %__t21, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type32, align 8
  %22 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %21, %22
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %24 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %25 = load i32, i32* %__r24, align 4
  store i32 %25, i32* %tmp39
  %26 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_edit_named_cut, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call46)
  %29 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %call48 = call i32 @gimp_item_is_attached(%struct._GimpItem* %29)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_edit_named_cut, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = bitcast %struct._GimpContext* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst56, align 8
  %call59 = call i64 @gimp_context_get_type() #6
  store i64 %call59, i64* %__t58, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %tobool62 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool62, label %if.else.64, label %if.then.63

if.then.63:                                       ; preds = %do.body.54
  store i32 0, i32* %__r61, align 4
  br label %if.end.75

if.else.64:                                       ; preds = %do.body.54
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class65 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class65, align 8
  %tobool66 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool66, label %land.lhs.true.67, label %if.else.72

land.lhs.true.67:                                 ; preds = %if.else.64
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class68 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class68, align 8
  %g_type69 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type69, align 8
  %38 = load i64, i64* %__t58, align 8
  %cmp70 = icmp eq i64 %37, %38
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %land.lhs.true.67
  store i32 1, i32* %__r61, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %land.lhs.true.67, %if.else.64
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %40 = load i64, i64* %__t58, align 8
  %call73 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #7
  store i32 %call73, i32* %__r61, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.63
  %41 = load i32, i32* %__r61, align 4
  store i32 %41, i32* %tmp76
  %42 = load i32, i32* %tmp76
  %tobool77 = icmp ne i32 %42, 0
  br i1 %tobool77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.end.75
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.75
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_edit_named_cut, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp83 = icmp eq %struct._GError** %43, null
  br i1 %cmp83, label %if.then.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.82
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %45 = load %struct._GError*, %struct._GError** %44, align 8
  %cmp84 = icmp eq %struct._GError* %45, null
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %lor.lhs.false, %do.body.82
  br label %if.end.87

if.else.86:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_edit_named_cut, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.87:                                        ; preds = %if.then.85
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = bitcast %struct._GimpDrawable* %47 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_pickable_interface_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call89)
  %49 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpPickable*
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call91 = call %struct._GimpBuffer* @gimp_edit_extract(%struct._GimpImage* %46, %struct._GimpPickable* %49, %struct._GimpContext* %50, i32 1, %struct._GError** %51)
  store %struct._GimpBuffer* %call91, %struct._GimpBuffer** %buffer, align 8
  %52 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool92 = icmp ne %struct._GimpBuffer* %52, null
  br i1 %tobool92, label %if.then.93, label %if.end.100

if.then.93:                                       ; preds = %do.end.88
  %53 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %54 = bitcast %struct._GimpBuffer* %53 to %struct._GTypeInstance*
  %call94 = call i64 @gimp_object_get_type() #6
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call94)
  %55 = bitcast %struct._GTypeInstance* %call95 to %struct._GimpObject*
  %56 = load i8*, i8** %name.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %55, i8* %56)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %57, i32 0, i32 1
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %58, i32 0, i32 35
  %59 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %60 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %61 = bitcast %struct._GimpBuffer* %60 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_object_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call96)
  %62 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpObject*
  %call98 = call i32 @gimp_container_add(%struct._GimpContainer* %59, %struct._GimpObject* %62)
  %63 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %64 = bitcast %struct._GimpBuffer* %63 to i8*
  call void @g_object_unref(i8* %64)
  %65 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %66 = bitcast %struct._GimpBuffer* %65 to i8*
  %call99 = call i8* @gimp_object_get_name(i8* %66)
  store i8* %call99, i8** %retval
  br label %return

if.end.100:                                       ; preds = %do.end.88
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.100, %if.then.93, %if.else.86, %if.else.79, %if.else.51, %if.else.42, %if.else.14, %if.else.9
  %67 = load i8*, i8** %retval
  ret i8* %67
}

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #3

declare i8* @gimp_object_get_name(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_edit_named_copy(%struct._GimpImage* %image, i8* %name, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._GError** %error) #0 {
entry:
  %retval = alloca i8*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %name.addr = alloca i8*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %__inst56 = alloca %struct._GTypeInstance*, align 8
  %__t58 = alloca i64, align 8
  %__r61 = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_edit_named_copy, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_edit_named_copy, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_drawable_get_type() #6
  store i64 %call22, i64* %__t21, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type32, align 8
  %22 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %21, %22
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %24 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %25 = load i32, i32* %__r24, align 4
  store i32 %25, i32* %tmp39
  %26 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_edit_named_copy, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call46)
  %29 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %call48 = call i32 @gimp_item_is_attached(%struct._GimpItem* %29)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_edit_named_copy, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = bitcast %struct._GimpContext* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst56, align 8
  %call59 = call i64 @gimp_context_get_type() #6
  store i64 %call59, i64* %__t58, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %tobool62 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool62, label %if.else.64, label %if.then.63

if.then.63:                                       ; preds = %do.body.54
  store i32 0, i32* %__r61, align 4
  br label %if.end.75

if.else.64:                                       ; preds = %do.body.54
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class65 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class65, align 8
  %tobool66 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool66, label %land.lhs.true.67, label %if.else.72

land.lhs.true.67:                                 ; preds = %if.else.64
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %g_class68 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class68, align 8
  %g_type69 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type69, align 8
  %38 = load i64, i64* %__t58, align 8
  %cmp70 = icmp eq i64 %37, %38
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %land.lhs.true.67
  store i32 1, i32* %__r61, align 4
  br label %if.end.74

if.else.72:                                       ; preds = %land.lhs.true.67, %if.else.64
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst56, align 8
  %40 = load i64, i64* %__t58, align 8
  %call73 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #7
  store i32 %call73, i32* %__r61, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.71
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.63
  %41 = load i32, i32* %__r61, align 4
  store i32 %41, i32* %tmp76
  %42 = load i32, i32* %tmp76
  %tobool77 = icmp ne i32 %42, 0
  br i1 %tobool77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.end.75
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.75
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_edit_named_copy, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp83 = icmp eq %struct._GError** %43, null
  br i1 %cmp83, label %if.then.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.82
  %44 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %45 = load %struct._GError*, %struct._GError** %44, align 8
  %cmp84 = icmp eq %struct._GError* %45, null
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %lor.lhs.false, %do.body.82
  br label %if.end.87

if.else.86:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_edit_named_copy, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.87:                                        ; preds = %if.then.85
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = bitcast %struct._GimpDrawable* %47 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_pickable_interface_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call89)
  %49 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpPickable*
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %51 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call91 = call %struct._GimpBuffer* @gimp_edit_extract(%struct._GimpImage* %46, %struct._GimpPickable* %49, %struct._GimpContext* %50, i32 0, %struct._GError** %51)
  store %struct._GimpBuffer* %call91, %struct._GimpBuffer** %buffer, align 8
  %52 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool92 = icmp ne %struct._GimpBuffer* %52, null
  br i1 %tobool92, label %if.then.93, label %if.end.100

if.then.93:                                       ; preds = %do.end.88
  %53 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %54 = bitcast %struct._GimpBuffer* %53 to %struct._GTypeInstance*
  %call94 = call i64 @gimp_object_get_type() #6
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call94)
  %55 = bitcast %struct._GTypeInstance* %call95 to %struct._GimpObject*
  %56 = load i8*, i8** %name.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %55, i8* %56)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %57, i32 0, i32 1
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %58, i32 0, i32 35
  %59 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %60 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %61 = bitcast %struct._GimpBuffer* %60 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_object_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call96)
  %62 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpObject*
  %call98 = call i32 @gimp_container_add(%struct._GimpContainer* %59, %struct._GimpObject* %62)
  %63 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %64 = bitcast %struct._GimpBuffer* %63 to i8*
  call void @g_object_unref(i8* %64)
  %65 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %66 = bitcast %struct._GimpBuffer* %65 to i8*
  %call99 = call i8* @gimp_object_get_name(i8* %66)
  store i8* %call99, i8** %retval
  br label %return

if.end.100:                                       ; preds = %do.end.88
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.100, %if.then.93, %if.else.86, %if.else.79, %if.else.51, %if.else.42, %if.else.14, %if.else.9
  %67 = load i8*, i8** %retval
  ret i8* %67
}

; Function Attrs: nounwind uwtable
define i8* @gimp_edit_named_copy_visible(%struct._GimpImage* %image, i8* %name, %struct._GimpContext* %context, %struct._GError** %error) #0 {
entry:
  %retval = alloca i8*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %name.addr = alloca i8*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %projection = alloca %struct._GimpProjection*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_edit_named_copy_visible, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_edit_named_copy_visible, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_context_get_type() #6
  store i64 %call22, i64* %__t21, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type32, align 8
  %22 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %21, %22
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %24 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %25 = load i32, i32* %__r24, align 4
  store i32 %25, i32* %tmp39
  %26 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_edit_named_copy_visible, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp46 = icmp eq %struct._GError** %27, null
  br i1 %cmp46, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.45
  %28 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %29 = load %struct._GError*, %struct._GError** %28, align 8
  %cmp47 = icmp eq %struct._GError* %29, null
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %lor.lhs.false, %do.body.45
  br label %if.end.50

if.else.49:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_edit_named_copy_visible, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call52 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %30)
  store %struct._GimpProjection* %call52, %struct._GimpProjection** %projection, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %32 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %33 = bitcast %struct._GimpProjection* %32 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_pickable_interface_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call53)
  %34 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpPickable*
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call55 = call %struct._GimpBuffer* @gimp_edit_extract(%struct._GimpImage* %31, %struct._GimpPickable* %34, %struct._GimpContext* %35, i32 0, %struct._GError** %36)
  store %struct._GimpBuffer* %call55, %struct._GimpBuffer** %buffer, align 8
  %37 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool56 = icmp ne %struct._GimpBuffer* %37, null
  br i1 %tobool56, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %do.end.51
  %38 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %39 = bitcast %struct._GimpBuffer* %38 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_object_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call58)
  %40 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpObject*
  %41 = load i8*, i8** %name.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %40, i8* %41)
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %42, i32 0, i32 1
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %43, i32 0, i32 35
  %44 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %45 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %46 = bitcast %struct._GimpBuffer* %45 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_object_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call60)
  %47 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpObject*
  %call62 = call i32 @gimp_container_add(%struct._GimpContainer* %44, %struct._GimpObject* %47)
  %48 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %49 = bitcast %struct._GimpBuffer* %48 to i8*
  call void @g_object_unref(i8* %49)
  %50 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %51 = bitcast %struct._GimpBuffer* %50 to i8*
  %call63 = call i8* @gimp_object_get_name(i8* %51)
  store i8* %call63, i8** %retval
  br label %return

if.end.64:                                        ; preds = %do.end.51
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then.57, %if.else.49, %if.else.42, %if.else.14, %if.else.9
  %52 = load i8*, i8** %retval
  ret i8* %52
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_clear(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
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
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_edit_clear, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_edit_clear, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_edit_clear, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = bitcast %struct._GimpContext* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_context_get_type() #6
  store i64 %call53, i64* %__t52, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %do.body.48
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %do.body.48
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
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
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

if.then.72:                                       ; preds = %if.end.69
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_edit_clear, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call76 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i64 10)
  %call77 = call i32 @gimp_edit_fill_internal(%struct._GimpImage* %42, %struct._GimpDrawable* %43, %struct._GimpContext* %44, i32 3, double 1.000000e+00, i32 23, i8* %call76)
  store i32 %call77, i32* %retval
  br label %return

return:                                           ; preds = %do.end.75, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_edit_fill_internal(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %fill_type, double %opacity, i32 %paint_mode, i8* %undo_desc) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %fill_type.addr = alloca i32, align 4
  %opacity.addr = alloca double, align 8
  %paint_mode.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %buf_tiles = alloca %struct._TileManager*, align 8
  %bufPR = alloca %struct._PixelRegion, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %drawable_type = alloca i32, align 4
  %tiles_bytes = alloca i32, align 4
  %col = alloca [4 x i8], align 1
  %pat_buf = alloca %struct._TempBuf*, align 8
  %new_buf = alloca i32, align 4
  %tmp_col = alloca [4 x i8], align 1
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %fill_type, i32* %fill_type.addr, align 4
  store double %opacity, double* %opacity.addr, align 8
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._TempBuf* null, %struct._TempBuf** %pat_buf, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call i32 @gimp_item_mask_intersect(%struct._GimpItem* %2, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call3 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %3)
  store i32 %call3, i32* %drawable_type, align 4
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call4 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %4)
  store i32 %call4, i32* %tiles_bytes, align 4
  %5 = load i32, i32* %fill_type.addr, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 3, label %sw.bb.5
    i32 2, label %sw.bb.7
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load i32, i32* %drawable_type, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @gimp_image_get_foreground(%struct._GimpImage* %6, %struct._GimpContext* %7, i32 %8, i8* %arraydecay)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end, %if.end
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %11 = load i32, i32* %drawable_type, align 4
  %arraydecay6 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @gimp_image_get_background(%struct._GimpImage* %9, %struct._GimpContext* %10, i32 %11, i8* %arraydecay6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i64 0
  store i8 -1, i8* %arrayidx, align 1
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i64 1
  store i8 -1, i8* %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i64 2
  store i8 -1, i8* %arrayidx9, align 1
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %13 = load i32, i32* %drawable_type, align 4
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp_col, i32 0, i32 0
  call void @gimp_image_transform_color(%struct._GimpImage* %12, i32 %13, i8* %arraydecay10, i32 0, i8* %arraydecay11)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call13 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %14)
  store %struct._GimpPattern* %call13, %struct._GimpPattern** %pattern, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = load i32, i32* %drawable_type, align 4
  %17 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %17, i32 0, i32 1
  %18 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %call14 = call %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage* %15, i32 %16, %struct._TempBuf* %18, i32* %new_buf)
  store %struct._TempBuf* %call14, %struct._TempBuf** %pat_buf, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %19)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.20, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.12
  %20 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 0
  %21 = load i32, i32* %bytes, align 4
  %cmp = icmp eq i32 %21, 2
  br i1 %cmp, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  %bytes17 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %22, i32 0, i32 0
  %23 = load i32, i32* %bytes17, align 4
  %cmp18 = icmp eq i32 %23, 4
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %24 = load i32, i32* %tiles_bytes, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %tiles_bytes, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false, %sw.bb.12
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end, %if.end.20, %sw.bb.7, %sw.bb.5, %sw.bb
  %25 = load i32, i32* %width, align 4
  %26 = load i32, i32* %height, align 4
  %27 = load i32, i32* %tiles_bytes, align 4
  %call22 = call %struct._TileManager* @tile_manager_new(i32 %25, i32 %26, i32 %27)
  store %struct._TileManager* %call22, %struct._TileManager** %buf_tiles, align 8
  %28 = load %struct._TileManager*, %struct._TileManager** %buf_tiles, align 8
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %bufPR, %struct._TileManager* %28, i32 0, i32 0, i32 %29, i32 %30, i32 1)
  %31 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  %tobool23 = icmp ne %struct._TempBuf* %31, null
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %sw.epilog
  %32 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  call void @pattern_region(%struct._PixelRegion* %bufPR, %struct._PixelRegion* null, %struct._TempBuf* %32, i32 0, i32 0)
  %33 = load i32, i32* %new_buf, align 4
  %tobool25 = icmp ne i32 %33, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.24
  %34 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %34)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.24
  br label %if.end.35

if.else:                                          ; preds = %sw.epilog
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call28 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %35)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.else
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call31 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %36)
  %sub = sub nsw i32 %call31, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx32 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx32, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.else
  %arraydecay34 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %bufPR, i8* %arraydecay34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.33, %if.end.27
  %37 = load %struct._TileManager*, %struct._TileManager** %buf_tiles, align 8
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %bufPR, %struct._TileManager* %37, i32 0, i32 0, i32 %38, i32 %39, i32 0)
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %41 = load i8*, i8** %undo_desc.addr, align 8
  %42 = load double, double* %opacity.addr, align 8
  %43 = load i32, i32* %paint_mode.addr, align 4
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* %y, align 4
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %40, %struct._PixelRegion* %bufPR, i32 1, i8* %41, double %42, i32 %43, %struct._TileManager* null, %struct._PixelRegion* null, i32 %44, i32 %45)
  %46 = load %struct._TileManager*, %struct._TileManager** %buf_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %46)
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %y, align 4
  %50 = load i32, i32* %width, align 4
  %51 = load i32, i32* %height, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %sw.bb.21, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_fill(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %fill_type) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %fill_type.addr = alloca i32, align 4
  %undo_desc = alloca i8*, align 8
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
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %fill_type, i32* %fill_type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_fill, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_fill, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_fill, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = bitcast %struct._GimpContext* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_context_get_type() #6
  store i64 %call53, i64* %__t52, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %do.body.48
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %do.body.48
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
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #7
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

if.then.72:                                       ; preds = %if.end.69
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_fill, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %42 = load i32, i32* %fill_type.addr, align 4
  switch i32 %42, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.77
    i32 2, label %sw.bb.79
    i32 3, label %sw.bb.81
    i32 4, label %sw.bb.83
    i32 5, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %do.end.75
  %call76 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i64 10)
  store i8* %call76, i8** %undo_desc, align 8
  br label %sw.epilog

sw.bb.77:                                         ; preds = %do.end.75
  %call78 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i64 10)
  store i8* %call78, i8** %undo_desc, align 8
  br label %sw.epilog

sw.bb.79:                                         ; preds = %do.end.75
  %call80 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i64 10)
  store i8* %call80, i8** %undo_desc, align 8
  br label %sw.epilog

sw.bb.81:                                         ; preds = %do.end.75
  %call82 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), i64 10)
  store i8* %call82, i8** %undo_desc, align 8
  br label %sw.epilog

sw.bb.83:                                         ; preds = %do.end.75
  %call84 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), i64 10)
  store i8* %call84, i8** %undo_desc, align 8
  br label %sw.epilog

sw.bb.85:                                         ; preds = %do.end.75
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %do.end.75
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_fill, i32 0, i32 0))
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call86 = call i32 @gimp_edit_fill(%struct._GimpImage* %43, %struct._GimpDrawable* %44, %struct._GimpContext* %45, i32 1)
  store i32 %call86, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.83, %sw.bb.81, %sw.bb.79, %sw.bb.77, %sw.bb
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %49 = load i32, i32* %fill_type.addr, align 4
  %50 = load i8*, i8** %undo_desc, align 8
  %call87 = call i32 @gimp_edit_fill_internal(%struct._GimpImage* %46, %struct._GimpDrawable* %47, %struct._GimpContext* %48, i32 %49, double 1.000000e+00, i32 0, i8* %50)
  store i32 %call87, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb.85, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_edit_fade(%struct._GimpImage* %image, %struct._GimpContext* %context) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %undo = alloca %struct._GimpDrawableUndo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %src2_tiles48 = alloca %struct._TileManager*, align 8
  %src2PR = alloca %struct._PixelRegion, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_fade, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_edit_fade, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call39 = call %struct._GimpUndo* @gimp_image_undo_get_fadeable(%struct._GimpImage* %26)
  %27 = bitcast %struct._GimpUndo* %call39 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_drawable_undo_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawableUndo*
  store %struct._GimpDrawableUndo* %28, %struct._GimpDrawableUndo** %undo, align 8
  %29 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %tobool42 = icmp ne %struct._GimpDrawableUndo* %29, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.61

land.lhs.true.43:                                 ; preds = %do.end.38
  %30 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %src2_tiles = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %30, i32 0, i32 7
  %31 = load %struct._TileManager*, %struct._TileManager** %src2_tiles, align 8
  %tobool44 = icmp ne %struct._TileManager* %31, null
  br i1 %tobool44, label %if.then.45, label %if.end.61

if.then.45:                                       ; preds = %land.lhs.true.43
  %32 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %33 = bitcast %struct._GimpDrawableUndo* %32 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_item_undo_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call50)
  %34 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %34, i32 0, i32 1
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %36 = bitcast %struct._GimpItem* %35 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_drawable_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call52)
  %37 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %37, %struct._GimpDrawable** %drawable, align 8
  %38 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %39 = bitcast %struct._GimpDrawableUndo* %38 to i8*
  %call54 = call i8* @g_object_ref(i8* %39)
  %40 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %src2_tiles55 = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %40, i32 0, i32 7
  %41 = load %struct._TileManager*, %struct._TileManager** %src2_tiles55, align 8
  %call56 = call %struct._TileManager* @tile_manager_ref(%struct._TileManager* %41)
  store %struct._TileManager* %call56, %struct._TileManager** %src2_tiles48, align 8
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call57 = call i32 @gimp_image_undo(%struct._GimpImage* %42)
  %43 = load %struct._TileManager*, %struct._TileManager** %src2_tiles48, align 8
  %44 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %width = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %44, i32 0, i32 5
  %45 = load i32, i32* %width, align 4
  %46 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %height = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %46, i32 0, i32 6
  %47 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %src2PR, %struct._TileManager* %43, i32 0, i32 0, i32 %45, i32 %47, i32 0)
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %49 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %50 = bitcast %struct._GimpDrawableUndo* %49 to i8*
  %call58 = call i8* @gimp_object_get_name(i8* %50)
  %51 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call59 = call double @gimp_context_get_opacity(%struct._GimpContext* %51)
  %52 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call60 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %52)
  %53 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %x = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %53, i32 0, i32 3
  %54 = load i32, i32* %x, align 4
  %55 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %y = getelementptr inbounds %struct._GimpDrawableUndo, %struct._GimpDrawableUndo* %55, i32 0, i32 4
  %56 = load i32, i32* %y, align 4
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %48, %struct._PixelRegion* %src2PR, i32 1, i8* %call58, double %call59, i32 %call60, %struct._TileManager* null, %struct._PixelRegion* null, i32 %54, i32 %56)
  %57 = load %struct._TileManager*, %struct._TileManager** %src2_tiles48, align 8
  call void @tile_manager_unref(%struct._TileManager* %57)
  %58 = load %struct._GimpDrawableUndo*, %struct._GimpDrawableUndo** %undo, align 8
  %59 = bitcast %struct._GimpDrawableUndo* %58 to i8*
  call void @g_object_unref(i8* %59)
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.43, %do.end.38
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.45, %if.else.36, %if.else.9
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare %struct._GimpUndo* @gimp_image_undo_get_fadeable(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_undo_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #1

declare i8* @g_object_ref(i8*) #3

declare %struct._TileManager* @tile_manager_ref(%struct._TileManager*) #3

declare i32 @gimp_image_undo(%struct._GimpImage*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare void @gimp_drawable_apply_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32) #3

declare double @gimp_context_get_opacity(%struct._GimpContext*) #3

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #3

declare void @tile_manager_unref(%struct._TileManager*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._TileManager* @gimp_selection_extract(%struct._GimpSelection*, %struct._GimpPickable*, %struct._GimpContext*, i32, i32, i32, i32*, i32*, %struct._GError**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_selection_get_type() #1

declare %struct._GimpBuffer* @gimp_buffer_new(%struct._TileManager*, i8*, i32, i32, i32) #3

declare i32 @gimp_item_mask_intersect(%struct._GimpItem*, i32*, i32*, i32*, i32*) #3

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #3

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #3

declare void @gimp_image_get_foreground(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #3

declare void @gimp_image_get_background(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #3

declare void @gimp_image_transform_color(%struct._GimpImage*, i32, i8*, i32, i8*) #3

declare %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext*) #3

declare %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage*, i32, %struct._TempBuf*, i32*) #3

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #3

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #3

declare void @pattern_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._TempBuf*, i32, i32) #3

declare void @temp_buf_free(%struct._TempBuf*) #3

declare void @color_region(%struct._PixelRegion*, i8*) #3

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
