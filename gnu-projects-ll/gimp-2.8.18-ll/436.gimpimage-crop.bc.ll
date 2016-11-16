; ModuleID = './app/core/gimpimage-crop.bc'
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
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
%struct._GimpUndo = type opaque
%struct._GimpChannel = type opaque
%struct._GimpPickable = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._GimpProjection = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_crop = private unnamed_addr constant [16 x i8] c"gimp_image_crop\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"active_layer_only == FALSE || gimp_image_get_active_layer (image)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"undo-type\04Crop Image\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"undo-type\04Resize Image\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@__func__.gimp_image_crop_auto_shrink = private unnamed_addr constant [28 x i8] c"gimp_image_crop_auto_shrink\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"image != NULL\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"shrunk_x1 != NULL\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"shrunk_y1 != NULL\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"shrunk_x2 != NULL\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"shrunk_y2 != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_crop(%struct._GimpImage* %image, %struct._GimpContext* %context, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %active_layer_only, i32 %crop_layers) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %active_layer_only.addr = alloca i32, align 4
  %crop_layers.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %previous_width = alloca i32, align 4
  %previous_height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %item90 = alloca %struct._GimpItem*, align 8
  %item110 = alloca %struct._GimpItem*, align 8
  %off_x123 = alloca i32, align 4
  %off_y125 = alloca i32, align 4
  %lx1 = alloca i32, align 4
  %ly1 = alloca i32, align 4
  %lx2 = alloca i32, align 4
  %ly2 = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  %remove_guide = alloca i32, align 4
  %position = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  %remove_sample_point = alloca i32, align 4
  %new_x = alloca i32, align 4
  %new_y = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %active_layer_only, i32* %active_layer_only.addr, align 4
  store i32 %crop_layers, i32* %crop_layers.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_crop, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_crop, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* %active_layer_only.addr, align 4
  %cmp40 = icmp eq i32 %26, 0
  br i1 %cmp40, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call41 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %27)
  %tobool42 = icmp ne %struct._GimpLayer* %call41, null
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %lor.lhs.false, %do.body.39
  br label %if.end.45

if.else.44:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_image_crop, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call47 = call i32 @gimp_image_get_width(%struct._GimpImage* %28)
  store i32 %call47, i32* %previous_width, align 4
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call48 = call i32 @gimp_image_get_height(%struct._GimpImage* %29)
  store i32 %call48, i32* %previous_height, align 4
  %30 = load i32, i32* %x2.addr, align 4
  %31 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %30, %31
  store i32 %sub, i32* %width, align 4
  %32 = load i32, i32* %y2.addr, align 4
  %33 = load i32, i32* %y1.addr, align 4
  %sub49 = sub nsw i32 %32, %33
  store i32 %sub49, i32* %height, align 4
  %34 = load i32, i32* %width, align 4
  %cmp50 = icmp slt i32 %34, 1
  br i1 %cmp50, label %if.then.53, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %do.end.46
  %35 = load i32, i32* %height, align 4
  %cmp52 = icmp slt i32 %35, 1
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false.51, %do.end.46
  br label %return

if.end.54:                                        ; preds = %lor.lhs.false.51
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %36, i32 0, i32 1
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %37)
  %38 = load i32, i32* %active_layer_only.addr, align 4
  %tobool55 = icmp ne i32 %38, 0
  br i1 %tobool55, label %if.then.56, label %if.else.67

if.then.56:                                       ; preds = %if.end.54
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call60 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %39)
  store %struct._GimpLayer* %call60, %struct._GimpLayer** %layer, align 8
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %41 = bitcast %struct._GimpLayer* %40 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_item_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call61)
  %42 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %42, i32* %off_x, i32* %off_y)
  %43 = load i32, i32* %x1.addr, align 4
  %44 = load i32, i32* %off_x, align 4
  %sub63 = sub nsw i32 %44, %43
  store i32 %sub63, i32* %off_x, align 4
  %45 = load i32, i32* %y1.addr, align 4
  %46 = load i32, i32* %off_y, align 4
  %sub64 = sub nsw i32 %46, %45
  store i32 %sub64, i32* %off_y, align 4
  %47 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %48 = bitcast %struct._GimpLayer* %47 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_item_get_type() #5
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call65)
  %49 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpItem*
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %51 = load i32, i32* %width, align 4
  %52 = load i32, i32* %height, align 4
  %53 = load i32, i32* %off_x, align 4
  %54 = load i32, i32* %off_y, align 4
  call void @gimp_item_resize(%struct._GimpItem* %49, %struct._GimpContext* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  br label %if.end.293

if.else.67:                                       ; preds = %if.end.54
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %56 = bitcast %struct._GimpImage* %55 to %struct._GTypeInstance*
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 80)
  %57 = bitcast %struct._GTypeInstance* %call69 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %57)
  %58 = load i32, i32* %crop_layers.addr, align 4
  %tobool70 = icmp ne i32 %58, 0
  br i1 %tobool70, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.else.67
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call72 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i64 10)
  %call73 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %59, i32 5, i8* %call72)
  br label %if.end.77

if.else.74:                                       ; preds = %if.else.67
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call75 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i64 10)
  %call76 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %60, i32 2, i8* %call75)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.71
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %62 = load i32, i32* %x1.addr, align 4
  %63 = load i32, i32* %y1.addr, align 4
  %64 = load i32, i32* %width, align 4
  %65 = load i32, i32* %height, align 4
  %call78 = call %struct._GimpUndo* @gimp_image_undo_push_image_size(%struct._GimpImage* %61, i8* null, i32 %62, i32 %63, i32 %64, i32 %65)
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %67 = bitcast %struct._GimpImage* %66 to i8*
  %68 = load i32, i32* %width, align 4
  %69 = load i32, i32* %height, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %69, i8* null)
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call79 = call %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage* %70)
  store %struct._GList* %call79, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.77
  %71 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool80 = icmp ne %struct._GList* %71, null
  br i1 %tobool80, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 0
  %73 = load i8*, i8** %data, align 8
  %74 = bitcast i8* %73 to %struct._GimpItem*
  store %struct._GimpItem* %74, %struct._GimpItem** %item, align 8
  %75 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %76 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %77 = load i32, i32* %width, align 4
  %78 = load i32, i32* %height, align 4
  %79 = load i32, i32* %x1.addr, align 4
  %sub82 = sub nsw i32 0, %79
  %80 = load i32, i32* %y1.addr, align 4
  %sub83 = sub nsw i32 0, %80
  call void @gimp_item_resize(%struct._GimpItem* %75, %struct._GimpContext* %76, i32 %77, i32 %78, i32 %sub82, i32 %sub83)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool84 = icmp ne %struct._GList* %81, null
  br i1 %tobool84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %82 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %82, i32 0, i32 1
  %83 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %83, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call85 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %84)
  store %struct._GList* %call85, %struct._GList** %list, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %cond.end.99, %for.end
  %85 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool87 = icmp ne %struct._GList* %85, null
  br i1 %tobool87, label %for.body.88, label %for.end.101

for.body.88:                                      ; preds = %for.cond.86
  %86 = load %struct._GList*, %struct._GList** %list, align 8
  %data91 = getelementptr inbounds %struct._GList, %struct._GList* %86, i32 0, i32 0
  %87 = load i8*, i8** %data91, align 8
  %88 = bitcast i8* %87 to %struct._GimpItem*
  store %struct._GimpItem* %88, %struct._GimpItem** %item90, align 8
  %89 = load %struct._GimpItem*, %struct._GimpItem** %item90, align 8
  %90 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %91 = load i32, i32* %width, align 4
  %92 = load i32, i32* %height, align 4
  %93 = load i32, i32* %x1.addr, align 4
  %sub92 = sub nsw i32 0, %93
  %94 = load i32, i32* %y1.addr, align 4
  %sub93 = sub nsw i32 0, %94
  call void @gimp_item_resize(%struct._GimpItem* %89, %struct._GimpContext* %90, i32 %91, i32 %92, i32 %sub92, i32 %sub93)
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.88
  %95 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool95 = icmp ne %struct._GList* %95, null
  br i1 %tobool95, label %cond.true.96, label %cond.false.98

cond.true.96:                                     ; preds = %for.inc.94
  %96 = load %struct._GList*, %struct._GList** %list, align 8
  %next97 = getelementptr inbounds %struct._GList, %struct._GList* %96, i32 0, i32 1
  %97 = load %struct._GList*, %struct._GList** %next97, align 8
  br label %cond.end.99

cond.false.98:                                    ; preds = %for.inc.94
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.96
  %cond100 = phi %struct._GList* [ %97, %cond.true.96 ], [ null, %cond.false.98 ]
  store %struct._GList* %cond100, %struct._GList** %list, align 8
  br label %for.cond.86

for.end.101:                                      ; preds = %for.cond.86
  %98 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call102 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %98)
  %99 = bitcast %struct._GimpChannel* %call102 to %struct._GTypeInstance*
  %call103 = call i64 @gimp_item_get_type() #5
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call103)
  %100 = bitcast %struct._GTypeInstance* %call104 to %struct._GimpItem*
  %101 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %102 = load i32, i32* %width, align 4
  %103 = load i32, i32* %height, align 4
  %104 = load i32, i32* %x1.addr, align 4
  %sub105 = sub nsw i32 0, %104
  %105 = load i32, i32* %y1.addr, align 4
  %sub106 = sub nsw i32 0, %105
  call void @gimp_item_resize(%struct._GimpItem* %100, %struct._GimpContext* %101, i32 %102, i32 %103, i32 %sub105, i32 %sub106)
  %106 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call107 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %106)
  store %struct._GList* %call107, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.203, %for.end.101
  %107 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool108 = icmp ne %struct._GList* %107, null
  br i1 %tobool108, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %108 = load %struct._GList*, %struct._GList** %list, align 8
  %data111 = getelementptr inbounds %struct._GList, %struct._GList* %108, i32 0, i32 0
  %109 = load i8*, i8** %data111, align 8
  %110 = bitcast i8* %109 to %struct._GimpItem*
  store %struct._GimpItem* %110, %struct._GimpItem** %item110, align 8
  %111 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool112 = icmp ne %struct._GList* %111, null
  br i1 %tobool112, label %cond.true.113, label %cond.false.115

cond.true.113:                                    ; preds = %while.body
  %112 = load %struct._GList*, %struct._GList** %list, align 8
  %next114 = getelementptr inbounds %struct._GList, %struct._GList* %112, i32 0, i32 1
  %113 = load %struct._GList*, %struct._GList** %next114, align 8
  br label %cond.end.116

cond.false.115:                                   ; preds = %while.body
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.113
  %cond117 = phi %struct._GList* [ %113, %cond.true.113 ], [ null, %cond.false.115 ]
  store %struct._GList* %cond117, %struct._GList** %list, align 8
  %114 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  %115 = load i32, i32* %x1.addr, align 4
  %sub118 = sub nsw i32 0, %115
  %116 = load i32, i32* %y1.addr, align 4
  %sub119 = sub nsw i32 0, %116
  call void @gimp_item_translate(%struct._GimpItem* %114, i32 %sub118, i32 %sub119, i32 1)
  %117 = load i32, i32* %crop_layers.addr, align 4
  %tobool120 = icmp ne i32 %117, 0
  br i1 %tobool120, label %if.then.121, label %if.end.203

if.then.121:                                      ; preds = %cond.end.116
  %118 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %118, i32* %off_x123, i32* %off_y125)
  %119 = load i32, i32* %off_x123, align 4
  %120 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call130 = call i32 @gimp_image_get_width(%struct._GimpImage* %120)
  %cmp131 = icmp sgt i32 %119, %call130
  br i1 %cmp131, label %cond.true.132, label %cond.false.134

cond.true.132:                                    ; preds = %if.then.121
  %121 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call133 = call i32 @gimp_image_get_width(%struct._GimpImage* %121)
  br label %cond.end.140

cond.false.134:                                   ; preds = %if.then.121
  %122 = load i32, i32* %off_x123, align 4
  %cmp135 = icmp slt i32 %122, 0
  br i1 %cmp135, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %cond.false.134
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.false.134
  %123 = load i32, i32* %off_x123, align 4
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi i32 [ 0, %cond.true.136 ], [ %123, %cond.false.137 ]
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.138, %cond.true.132
  %cond141 = phi i32 [ %call133, %cond.true.132 ], [ %cond139, %cond.end.138 ]
  store i32 %cond141, i32* %lx1, align 4
  %124 = load i32, i32* %off_y125, align 4
  %125 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call142 = call i32 @gimp_image_get_height(%struct._GimpImage* %125)
  %cmp143 = icmp sgt i32 %124, %call142
  br i1 %cmp143, label %cond.true.144, label %cond.false.146

cond.true.144:                                    ; preds = %cond.end.140
  %126 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call145 = call i32 @gimp_image_get_height(%struct._GimpImage* %126)
  br label %cond.end.152

cond.false.146:                                   ; preds = %cond.end.140
  %127 = load i32, i32* %off_y125, align 4
  %cmp147 = icmp slt i32 %127, 0
  br i1 %cmp147, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.false.146
  br label %cond.end.150

cond.false.149:                                   ; preds = %cond.false.146
  %128 = load i32, i32* %off_y125, align 4
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.148
  %cond151 = phi i32 [ 0, %cond.true.148 ], [ %128, %cond.false.149 ]
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.150, %cond.true.144
  %cond153 = phi i32 [ %call145, %cond.true.144 ], [ %cond151, %cond.end.150 ]
  store i32 %cond153, i32* %ly1, align 4
  %129 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  %call154 = call i32 @gimp_item_get_width(%struct._GimpItem* %129)
  %130 = load i32, i32* %off_x123, align 4
  %add = add nsw i32 %call154, %130
  %131 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call155 = call i32 @gimp_image_get_width(%struct._GimpImage* %131)
  %cmp156 = icmp sgt i32 %add, %call155
  br i1 %cmp156, label %cond.true.157, label %cond.false.159

cond.true.157:                                    ; preds = %cond.end.152
  %132 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call158 = call i32 @gimp_image_get_width(%struct._GimpImage* %132)
  br label %cond.end.169

cond.false.159:                                   ; preds = %cond.end.152
  %133 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  %call160 = call i32 @gimp_item_get_width(%struct._GimpItem* %133)
  %134 = load i32, i32* %off_x123, align 4
  %add161 = add nsw i32 %call160, %134
  %cmp162 = icmp slt i32 %add161, 0
  br i1 %cmp162, label %cond.true.163, label %cond.false.164

cond.true.163:                                    ; preds = %cond.false.159
  br label %cond.end.167

cond.false.164:                                   ; preds = %cond.false.159
  %135 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  %call165 = call i32 @gimp_item_get_width(%struct._GimpItem* %135)
  %136 = load i32, i32* %off_x123, align 4
  %add166 = add nsw i32 %call165, %136
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.164, %cond.true.163
  %cond168 = phi i32 [ 0, %cond.true.163 ], [ %add166, %cond.false.164 ]
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.end.167, %cond.true.157
  %cond170 = phi i32 [ %call158, %cond.true.157 ], [ %cond168, %cond.end.167 ]
  store i32 %cond170, i32* %lx2, align 4
  %137 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  %call171 = call i32 @gimp_item_get_height(%struct._GimpItem* %137)
  %138 = load i32, i32* %off_y125, align 4
  %add172 = add nsw i32 %call171, %138
  %139 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call173 = call i32 @gimp_image_get_height(%struct._GimpImage* %139)
  %cmp174 = icmp sgt i32 %add172, %call173
  br i1 %cmp174, label %cond.true.175, label %cond.false.177

cond.true.175:                                    ; preds = %cond.end.169
  %140 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call176 = call i32 @gimp_image_get_height(%struct._GimpImage* %140)
  br label %cond.end.187

cond.false.177:                                   ; preds = %cond.end.169
  %141 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  %call178 = call i32 @gimp_item_get_height(%struct._GimpItem* %141)
  %142 = load i32, i32* %off_y125, align 4
  %add179 = add nsw i32 %call178, %142
  %cmp180 = icmp slt i32 %add179, 0
  br i1 %cmp180, label %cond.true.181, label %cond.false.182

cond.true.181:                                    ; preds = %cond.false.177
  br label %cond.end.185

cond.false.182:                                   ; preds = %cond.false.177
  %143 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  %call183 = call i32 @gimp_item_get_height(%struct._GimpItem* %143)
  %144 = load i32, i32* %off_y125, align 4
  %add184 = add nsw i32 %call183, %144
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.182, %cond.true.181
  %cond186 = phi i32 [ 0, %cond.true.181 ], [ %add184, %cond.false.182 ]
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.end.185, %cond.true.175
  %cond188 = phi i32 [ %call176, %cond.true.175 ], [ %cond186, %cond.end.185 ]
  store i32 %cond188, i32* %ly2, align 4
  %145 = load i32, i32* %lx2, align 4
  %146 = load i32, i32* %lx1, align 4
  %sub189 = sub nsw i32 %145, %146
  store i32 %sub189, i32* %width, align 4
  %147 = load i32, i32* %ly2, align 4
  %148 = load i32, i32* %ly1, align 4
  %sub190 = sub nsw i32 %147, %148
  store i32 %sub190, i32* %height, align 4
  %149 = load i32, i32* %width, align 4
  %cmp191 = icmp sgt i32 %149, 0
  br i1 %cmp191, label %land.lhs.true.192, label %if.else.199

land.lhs.true.192:                                ; preds = %cond.end.187
  %150 = load i32, i32* %height, align 4
  %cmp193 = icmp sgt i32 %150, 0
  br i1 %cmp193, label %if.then.194, label %if.else.199

if.then.194:                                      ; preds = %land.lhs.true.192
  %151 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  %152 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %153 = load i32, i32* %width, align 4
  %154 = load i32, i32* %height, align 4
  %155 = load i32, i32* %lx1, align 4
  %156 = load i32, i32* %off_x123, align 4
  %sub195 = sub nsw i32 %155, %156
  %sub196 = sub nsw i32 0, %sub195
  %157 = load i32, i32* %ly1, align 4
  %158 = load i32, i32* %off_y125, align 4
  %sub197 = sub nsw i32 %157, %158
  %sub198 = sub nsw i32 0, %sub197
  call void @gimp_item_resize(%struct._GimpItem* %151, %struct._GimpContext* %152, i32 %153, i32 %154, i32 %sub196, i32 %sub198)
  br label %if.end.202

if.else.199:                                      ; preds = %land.lhs.true.192, %cond.end.187
  %159 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %160 = load %struct._GimpItem*, %struct._GimpItem** %item110, align 8
  %161 = bitcast %struct._GimpItem* %160 to %struct._GTypeInstance*
  %call200 = call i64 @gimp_layer_get_type() #5
  %call201 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %161, i64 %call200)
  %162 = bitcast %struct._GTypeInstance* %call201 to %struct._GimpLayer*
  call void @gimp_image_remove_layer(%struct._GimpImage* %159, %struct._GimpLayer* %162, i32 1, %struct._GimpLayer* null)
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.194
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %cond.end.116
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %163 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call204 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %163)
  store %struct._GList* %call204, %struct._GList** %list, align 8
  br label %while.cond.205

while.cond.205:                                   ; preds = %if.end.242, %while.end
  %164 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool206 = icmp ne %struct._GList* %164, null
  br i1 %tobool206, label %while.body.207, label %while.end.243

while.body.207:                                   ; preds = %while.cond.205
  %165 = load %struct._GList*, %struct._GList** %list, align 8
  %data209 = getelementptr inbounds %struct._GList, %struct._GList* %165, i32 0, i32 0
  %166 = load i8*, i8** %data209, align 8
  %167 = bitcast i8* %166 to %struct._GimpGuide*
  store %struct._GimpGuide* %167, %struct._GimpGuide** %guide, align 8
  store i32 0, i32* %remove_guide, align 4
  %168 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call212 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %168)
  store i32 %call212, i32* %position, align 4
  %169 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool213 = icmp ne %struct._GList* %169, null
  br i1 %tobool213, label %cond.true.214, label %cond.false.216

cond.true.214:                                    ; preds = %while.body.207
  %170 = load %struct._GList*, %struct._GList** %list, align 8
  %next215 = getelementptr inbounds %struct._GList, %struct._GList* %170, i32 0, i32 1
  %171 = load %struct._GList*, %struct._GList** %next215, align 8
  br label %cond.end.217

cond.false.216:                                   ; preds = %while.body.207
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.216, %cond.true.214
  %cond218 = phi %struct._GList* [ %171, %cond.true.214 ], [ null, %cond.false.216 ]
  store %struct._GList* %cond218, %struct._GList** %list, align 8
  %172 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call219 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %172)
  switch i32 %call219, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.227
  ]

sw.bb:                                            ; preds = %cond.end.217
  %173 = load i32, i32* %position, align 4
  %174 = load i32, i32* %y1.addr, align 4
  %cmp220 = icmp slt i32 %173, %174
  br i1 %cmp220, label %if.then.223, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %sw.bb
  %175 = load i32, i32* %position, align 4
  %176 = load i32, i32* %y2.addr, align 4
  %cmp222 = icmp sgt i32 %175, %176
  br i1 %cmp222, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %lor.lhs.false.221, %sw.bb
  store i32 1, i32* %remove_guide, align 4
  br label %if.end.226

if.else.224:                                      ; preds = %lor.lhs.false.221
  %177 = load i32, i32* %y1.addr, align 4
  %178 = load i32, i32* %position, align 4
  %sub225 = sub nsw i32 %178, %177
  store i32 %sub225, i32* %position, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.224, %if.then.223
  br label %sw.epilog

sw.bb.227:                                        ; preds = %cond.end.217
  %179 = load i32, i32* %position, align 4
  %180 = load i32, i32* %x1.addr, align 4
  %cmp228 = icmp slt i32 %179, %180
  br i1 %cmp228, label %if.then.231, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %sw.bb.227
  %181 = load i32, i32* %position, align 4
  %182 = load i32, i32* %x2.addr, align 4
  %cmp230 = icmp sgt i32 %181, %182
  br i1 %cmp230, label %if.then.231, label %if.else.232

if.then.231:                                      ; preds = %lor.lhs.false.229, %sw.bb.227
  store i32 1, i32* %remove_guide, align 4
  br label %if.end.234

if.else.232:                                      ; preds = %lor.lhs.false.229
  %183 = load i32, i32* %x1.addr, align 4
  %184 = load i32, i32* %position, align 4
  %sub233 = sub nsw i32 %184, %183
  store i32 %sub233, i32* %position, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.232, %if.then.231
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.217
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.234, %if.end.226
  %185 = load i32, i32* %remove_guide, align 4
  %tobool235 = icmp ne i32 %185, 0
  br i1 %tobool235, label %if.then.236, label %if.else.237

if.then.236:                                      ; preds = %sw.epilog
  %186 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %187 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  call void @gimp_image_remove_guide(%struct._GimpImage* %186, %struct._GimpGuide* %187, i32 1)
  br label %if.end.242

if.else.237:                                      ; preds = %sw.epilog
  %188 = load i32, i32* %position, align 4
  %189 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call238 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %189)
  %cmp239 = icmp ne i32 %188, %call238
  br i1 %cmp239, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %if.else.237
  %190 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %191 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %192 = load i32, i32* %position, align 4
  call void @gimp_image_move_guide(%struct._GimpImage* %190, %struct._GimpGuide* %191, i32 %192, i32 1)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.240, %if.else.237
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.236
  br label %while.cond.205

while.end.243:                                    ; preds = %while.cond.205
  %193 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call244 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %193)
  store %struct._GList* %call244, %struct._GList** %list, align 8
  br label %while.cond.245

while.cond.245:                                   ; preds = %if.end.285, %while.end.243
  %194 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool246 = icmp ne %struct._GList* %194, null
  br i1 %tobool246, label %while.body.247, label %while.end.286

while.body.247:                                   ; preds = %while.cond.245
  %195 = load %struct._GList*, %struct._GList** %list, align 8
  %data249 = getelementptr inbounds %struct._GList, %struct._GList* %195, i32 0, i32 0
  %196 = load i8*, i8** %data249, align 8
  %197 = bitcast i8* %196 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %197, %struct._GimpSamplePoint** %sample_point, align 8
  store i32 0, i32* %remove_sample_point, align 4
  %198 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %198, i32 0, i32 2
  %199 = load i32, i32* %x, align 4
  store i32 %199, i32* %new_x, align 4
  %200 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %200, i32 0, i32 3
  %201 = load i32, i32* %y, align 4
  store i32 %201, i32* %new_y, align 4
  %202 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool253 = icmp ne %struct._GList* %202, null
  br i1 %tobool253, label %cond.true.254, label %cond.false.256

cond.true.254:                                    ; preds = %while.body.247
  %203 = load %struct._GList*, %struct._GList** %list, align 8
  %next255 = getelementptr inbounds %struct._GList, %struct._GList* %203, i32 0, i32 1
  %204 = load %struct._GList*, %struct._GList** %next255, align 8
  br label %cond.end.257

cond.false.256:                                   ; preds = %while.body.247
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.256, %cond.true.254
  %cond258 = phi %struct._GList* [ %204, %cond.true.254 ], [ null, %cond.false.256 ]
  store %struct._GList* %cond258, %struct._GList** %list, align 8
  %205 = load i32, i32* %y1.addr, align 4
  %206 = load i32, i32* %new_y, align 4
  %sub259 = sub nsw i32 %206, %205
  store i32 %sub259, i32* %new_y, align 4
  %207 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y260 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %207, i32 0, i32 3
  %208 = load i32, i32* %y260, align 4
  %209 = load i32, i32* %y1.addr, align 4
  %cmp261 = icmp slt i32 %208, %209
  br i1 %cmp261, label %if.then.265, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %cond.end.257
  %210 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y263 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %210, i32 0, i32 3
  %211 = load i32, i32* %y263, align 4
  %212 = load i32, i32* %y2.addr, align 4
  %cmp264 = icmp sgt i32 %211, %212
  br i1 %cmp264, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %lor.lhs.false.262, %cond.end.257
  store i32 1, i32* %remove_sample_point, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.265, %lor.lhs.false.262
  %213 = load i32, i32* %x1.addr, align 4
  %214 = load i32, i32* %new_x, align 4
  %sub267 = sub nsw i32 %214, %213
  store i32 %sub267, i32* %new_x, align 4
  %215 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x268 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %215, i32 0, i32 2
  %216 = load i32, i32* %x268, align 4
  %217 = load i32, i32* %x1.addr, align 4
  %cmp269 = icmp slt i32 %216, %217
  br i1 %cmp269, label %if.then.273, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %if.end.266
  %218 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x271 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %218, i32 0, i32 2
  %219 = load i32, i32* %x271, align 4
  %220 = load i32, i32* %x2.addr, align 4
  %cmp272 = icmp sgt i32 %219, %220
  br i1 %cmp272, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %lor.lhs.false.270, %if.end.266
  store i32 1, i32* %remove_sample_point, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.273, %lor.lhs.false.270
  %221 = load i32, i32* %remove_sample_point, align 4
  %tobool275 = icmp ne i32 %221, 0
  br i1 %tobool275, label %if.then.276, label %if.else.277

if.then.276:                                      ; preds = %if.end.274
  %222 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %223 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  call void @gimp_image_remove_sample_point(%struct._GimpImage* %222, %struct._GimpSamplePoint* %223, i32 1)
  br label %if.end.285

if.else.277:                                      ; preds = %if.end.274
  %224 = load i32, i32* %new_x, align 4
  %225 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x278 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %225, i32 0, i32 2
  %226 = load i32, i32* %x278, align 4
  %cmp279 = icmp ne i32 %224, %226
  br i1 %cmp279, label %if.then.283, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %if.else.277
  %227 = load i32, i32* %new_y, align 4
  %228 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y281 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %228, i32 0, i32 3
  %229 = load i32, i32* %y281, align 4
  %cmp282 = icmp ne i32 %227, %229
  br i1 %cmp282, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %lor.lhs.false.280, %if.else.277
  %230 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %231 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %232 = load i32, i32* %new_x, align 4
  %233 = load i32, i32* %new_y, align 4
  call void @gimp_image_move_sample_point(%struct._GimpImage* %230, %struct._GimpSamplePoint* %231, i32 %232, i32 %233, i32 1)
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %lor.lhs.false.280
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.then.276
  br label %while.cond.245

while.end.286:                                    ; preds = %while.cond.245
  %234 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call287 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %234)
  %235 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %236 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call288 = call i32 @gimp_image_get_width(%struct._GimpImage* %236)
  %237 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call289 = call i32 @gimp_image_get_height(%struct._GimpImage* %237)
  call void @gimp_image_invalidate(%struct._GimpImage* %235, i32 0, i32 0, i32 %call288, i32 %call289)
  %238 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %239 = load i32, i32* %x1.addr, align 4
  %sub290 = sub nsw i32 0, %239
  %240 = load i32, i32* %y1.addr, align 4
  %sub291 = sub nsw i32 0, %240
  %241 = load i32, i32* %previous_width, align 4
  %242 = load i32, i32* %previous_height, align 4
  call void @gimp_image_size_changed_detailed(%struct._GimpImage* %238, i32 %sub290, i32 %sub291, i32 %241, i32 %242)
  %243 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %244 = bitcast %struct._GimpImage* %243 to %struct._GTypeInstance*
  %call292 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %244, i64 80)
  %245 = bitcast %struct._GTypeInstance* %call292 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %245)
  br label %if.end.293

if.end.293:                                       ; preds = %while.end.286, %if.then.56
  %246 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp294 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %246, i32 0, i32 1
  %247 = load %struct._Gimp*, %struct._Gimp** %gimp294, align 8
  call void @gimp_unset_busy(%struct._Gimp* %247)
  br label %return

return:                                           ; preds = %if.end.293, %if.then.53, %if.else.44, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @gimp_set_busy(%struct._Gimp*) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare void @gimp_item_resize(%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32) #3

declare void @g_object_freeze_notify(%struct._GObject*) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare %struct._GimpUndo* @gimp_image_undo_push_image_size(%struct._GimpImage*, i8*, i32, i32, i32, i32) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage*) #3

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

declare void @gimp_image_remove_guide(%struct._GimpImage*, %struct._GimpGuide*, i32) #3

declare void @gimp_image_move_guide(%struct._GimpImage*, %struct._GimpGuide*, i32, i32) #3

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #3

declare void @gimp_image_remove_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32) #3

declare void @gimp_image_move_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32, i32, i32) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @gimp_image_invalidate(%struct._GimpImage*, i32, i32, i32, i32) #3

declare void @gimp_image_size_changed_detailed(%struct._GimpImage*, i32, i32, i32, i32) #3

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_crop_auto_shrink(%struct._GimpImage* %image, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %active_drawable_only, i32* %shrunk_x1, i32* %shrunk_y1, i32* %shrunk_x2, i32* %shrunk_y2) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %active_drawable_only.addr = alloca i32, align 4
  %shrunk_x1.addr = alloca i32*, align 8
  %shrunk_y1.addr = alloca i32*, align 8
  %shrunk_x2.addr = alloca i32*, align 8
  %shrunk_y2.addr = alloca i32*, align 8
  %active_drawable = alloca %struct._GimpDrawable*, align 8
  %pickable = alloca %struct._GimpPickable*, align 8
  %colors_equal_func = alloca i32 (i8*, i8*, i32)*, align 8
  %bgcolor = alloca [4 x i8], align 1
  %has_alpha = alloca i32, align 4
  %PR = alloca %struct._PixelRegion, align 8
  %buffer = alloca i8*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %type = alloca i32, align 4
  %bytes = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %abort = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %active_drawable_only, i32* %active_drawable_only.addr, align 4
  store i32* %shrunk_x1, i32** %shrunk_x1.addr, align 8
  store i32* %shrunk_y1, i32** %shrunk_y1.addr, align 8
  store i32* %shrunk_x2, i32** %shrunk_x2.addr, align 8
  store i32* %shrunk_y2, i32** %shrunk_y2.addr, align 8
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %active_drawable, align 8
  %0 = bitcast [4 x i8]* %bgcolor to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 1, i1 false)
  store i8* null, i8** %buffer, align 8
  store i32 0, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp ne %struct._GimpImage* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_crop_auto_shrink, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %3 = bitcast %struct._GimpImage* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #5
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %do.body.2
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else.4:                                        ; preds = %do.body.2
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else.4
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp7 = icmp eq i64 %9, %10
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.11

if.else.9:                                        ; preds = %land.lhs.true, %if.else.4
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #6
  store i32 %call10, i32* %__r, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.3
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.12
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_crop_auto_shrink, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load i32*, i32** %shrunk_x1.addr, align 8
  %cmp19 = icmp ne i32* %15, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_crop_auto_shrink, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %do.body.24

do.body.24:                                       ; preds = %do.end.23
  %16 = load i32*, i32** %shrunk_y1.addr, align 8
  %cmp25 = icmp ne i32* %16, null
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.24
  br label %if.end.28

if.else.27:                                       ; preds = %do.body.24
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_crop_auto_shrink, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.26
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %17 = load i32*, i32** %shrunk_x2.addr, align 8
  %cmp31 = icmp ne i32* %17, null
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.30
  br label %if.end.34

if.else.33:                                       ; preds = %do.body.30
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_crop_auto_shrink, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.32
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.35
  %18 = load i32*, i32** %shrunk_y2.addr, align 8
  %cmp37 = icmp ne i32* %18, null
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.36
  br label %if.end.40

if.else.39:                                       ; preds = %do.body.36
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_crop_auto_shrink, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %20)
  %21 = load i32, i32* %active_drawable_only.addr, align 4
  %tobool42 = icmp ne i32 %21, 0
  br i1 %tobool42, label %if.then.43, label %if.else.50

if.then.43:                                       ; preds = %do.end.41
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call44 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %22)
  store %struct._GimpDrawable* %call44, %struct._GimpDrawable** %active_drawable, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %active_drawable, align 8
  %tobool45 = icmp ne %struct._GimpDrawable* %23, null
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.then.43
  br label %FINISH

if.end.47:                                        ; preds = %if.then.43
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %active_drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_pickable_interface_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call48)
  %26 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpPickable*
  store %struct._GimpPickable* %26, %struct._GimpPickable** %pickable, align 8
  br label %if.end.54

if.else.50:                                       ; preds = %do.end.41
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call51 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %27)
  %28 = bitcast %struct._GimpProjection* %call51 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_pickable_interface_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call52)
  %29 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpPickable*
  store %struct._GimpPickable* %29, %struct._GimpPickable** %pickable, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.50, %if.end.47
  %30 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  call void @gimp_pickable_flush(%struct._GimpPickable* %30)
  %31 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call55 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %31)
  store i32 %call55, i32* %type, align 4
  %32 = load i32, i32* %type, align 4
  %cmp56 = icmp eq i32 %32, 1
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  br label %cond.end.77

cond.false:                                       ; preds = %if.end.54
  %33 = load i32, i32* %type, align 4
  %cmp57 = icmp eq i32 %33, 0
  br i1 %cmp57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.false
  br label %cond.end.75

cond.false.59:                                    ; preds = %cond.false
  %34 = load i32, i32* %type, align 4
  %cmp60 = icmp eq i32 %34, 3
  br i1 %cmp60, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.false.59
  br label %cond.end.73

cond.false.62:                                    ; preds = %cond.false.59
  %35 = load i32, i32* %type, align 4
  %cmp63 = icmp eq i32 %35, 2
  br i1 %cmp63, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.false.62
  br label %cond.end.71

cond.false.65:                                    ; preds = %cond.false.62
  %36 = load i32, i32* %type, align 4
  %cmp66 = icmp eq i32 %36, 5
  br i1 %cmp66, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.false.65
  br label %cond.end

cond.false.68:                                    ; preds = %cond.false.65
  %37 = load i32, i32* %type, align 4
  %cmp69 = icmp eq i32 %37, 4
  %cond = select i1 %cmp69, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi i32 [ 2, %cond.true.67 ], [ %cond, %cond.false.68 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end, %cond.true.64
  %cond72 = phi i32 [ 1, %cond.true.64 ], [ %cond70, %cond.end ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.61
  %cond74 = phi i32 [ 2, %cond.true.61 ], [ %cond72, %cond.end.71 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.true.58
  %cond76 = phi i32 [ 3, %cond.true.58 ], [ %cond74, %cond.end.73 ]
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.end.75, %cond.true
  %cond78 = phi i32 [ 4, %cond.true ], [ %cond76, %cond.end.75 ]
  store i32 %cond78, i32* %bytes, align 4
  %38 = load i32, i32* %type, align 4
  %cmp79 = icmp eq i32 %38, 1
  br i1 %cmp79, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.77
  %39 = load i32, i32* %type, align 4
  %cmp80 = icmp eq i32 %39, 3
  br i1 %cmp80, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %40 = load i32, i32* %type, align 4
  %cmp81 = icmp eq i32 %40, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %cond.end.77
  %41 = phi i1 [ true, %lor.lhs.false ], [ true, %cond.end.77 ], [ %cmp81, %lor.rhs ]
  %lor.ext = zext i1 %41 to i32
  store i32 %lor.ext, i32* %has_alpha, align 4
  %42 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %43 = load i32, i32* %bytes, align 4
  %44 = load i32, i32* %has_alpha, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bgcolor, i32 0, i32 0
  %45 = load i32, i32* %x1.addr, align 4
  %46 = load i32, i32* %x2.addr, align 4
  %sub = sub nsw i32 %46, 1
  %47 = load i32, i32* %y1.addr, align 4
  %48 = load i32, i32* %y2.addr, align 4
  %sub82 = sub nsw i32 %48, 1
  %call83 = call i32 @gimp_image_crop_guess_bgcolor(%struct._GimpPickable* %42, i32 %43, i32 %44, i8* %arraydecay, i32 %45, i32 %sub, i32 %47, i32 %sub82)
  switch i32 %call83, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.84
  ]

sw.bb:                                            ; preds = %lor.end
  store i32 (i8*, i8*, i32)* @gimp_image_crop_colors_alpha, i32 (i8*, i8*, i32)** %colors_equal_func, align 8
  br label %sw.epilog

sw.bb.84:                                         ; preds = %lor.end
  store i32 (i8*, i8*, i32)* @gimp_image_crop_colors_equal, i32 (i8*, i8*, i32)** %colors_equal_func, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %lor.end
  br label %FINISH

sw.epilog:                                        ; preds = %sw.bb.84, %sw.bb
  %49 = load i32, i32* %x2.addr, align 4
  %50 = load i32, i32* %x1.addr, align 4
  %sub85 = sub nsw i32 %49, %50
  store i32 %sub85, i32* %width, align 4
  %51 = load i32, i32* %y2.addr, align 4
  %52 = load i32, i32* %y1.addr, align 4
  %sub86 = sub nsw i32 %51, %52
  store i32 %sub86, i32* %height, align 4
  %53 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call87 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %53)
  %54 = load i32, i32* %x1.addr, align 4
  %55 = load i32, i32* %y1.addr, align 4
  %56 = load i32, i32* %width, align 4
  %57 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %PR, %struct._TileManager* %call87, i32 %54, i32 %55, i32 %56, i32 %57, i32 0)
  %58 = load i32, i32* %width, align 4
  %59 = load i32, i32* %height, align 4
  %cmp88 = icmp sgt i32 %58, %59
  br i1 %cmp88, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %sw.epilog
  %60 = load i32, i32* %width, align 4
  br label %cond.end.91

cond.false.90:                                    ; preds = %sw.epilog
  %61 = load i32, i32* %height, align 4
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi i32 [ %60, %cond.true.89 ], [ %61, %cond.false.90 ]
  %62 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %cond92, %62
  %conv = sext i32 %mul to i64
  %call93 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call93, i8** %buffer, align 8
  store i32 0, i32* %abort, align 4
  %63 = load i32, i32* %y1.addr, align 4
  store i32 %63, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.110, %cond.end.91
  %64 = load i32, i32* %y, align 4
  %65 = load i32, i32* %y2.addr, align 4
  %cmp94 = icmp slt i32 %64, %65
  br i1 %cmp94, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %66 = load i32, i32* %abort, align 4
  %tobool96 = icmp ne i32 %66, 0
  %lnot = xor i1 %tobool96, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %67 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %67, label %for.body, label %for.end.112

for.body:                                         ; preds = %land.end
  %68 = load i32, i32* %x1.addr, align 4
  %69 = load i32, i32* %y, align 4
  %70 = load i32, i32* %width, align 4
  %71 = load i8*, i8** %buffer, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %PR, i32 %68, i32 %69, i32 %70, i8* %71, i32 1)
  store i32 0, i32* %x, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc, %for.body
  %72 = load i32, i32* %x, align 4
  %73 = load i32, i32* %width, align 4
  %cmp98 = icmp slt i32 %72, %73
  br i1 %cmp98, label %land.rhs.100, label %land.end.103

land.rhs.100:                                     ; preds = %for.cond.97
  %74 = load i32, i32* %abort, align 4
  %tobool101 = icmp ne i32 %74, 0
  %lnot102 = xor i1 %tobool101, true
  br label %land.end.103

land.end.103:                                     ; preds = %land.rhs.100, %for.cond.97
  %75 = phi i1 [ false, %for.cond.97 ], [ %lnot102, %land.rhs.100 ]
  br i1 %75, label %for.body.104, label %for.end

for.body.104:                                     ; preds = %land.end.103
  %76 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %colors_equal_func, align 8
  %arraydecay105 = getelementptr inbounds [4 x i8], [4 x i8]* %bgcolor, i32 0, i32 0
  %77 = load i8*, i8** %buffer, align 8
  %78 = load i32, i32* %x, align 4
  %79 = load i32, i32* %bytes, align 4
  %mul106 = mul nsw i32 %78, %79
  %idx.ext = sext i32 %mul106 to i64
  %add.ptr = getelementptr inbounds i8, i8* %77, i64 %idx.ext
  %80 = load i32, i32* %bytes, align 4
  %call107 = call i32 %76(i8* %arraydecay105, i8* %add.ptr, i32 %80)
  %tobool108 = icmp ne i32 %call107, 0
  %lnot109 = xor i1 %tobool108, true
  %lnot.ext = zext i1 %lnot109 to i32
  store i32 %lnot.ext, i32* %abort, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.104
  %81 = load i32, i32* %x, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.97

for.end:                                          ; preds = %land.end.103
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.end
  %82 = load i32, i32* %y, align 4
  %inc111 = add nsw i32 %82, 1
  store i32 %inc111, i32* %y, align 4
  br label %for.cond

for.end.112:                                      ; preds = %land.end
  %83 = load i32, i32* %y, align 4
  %84 = load i32, i32* %y2.addr, align 4
  %cmp113 = icmp eq i32 %83, %84
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.118

land.lhs.true.115:                                ; preds = %for.end.112
  %85 = load i32, i32* %abort, align 4
  %tobool116 = icmp ne i32 %85, 0
  br i1 %tobool116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %land.lhs.true.115
  br label %FINISH

if.end.118:                                       ; preds = %land.lhs.true.115, %for.end.112
  %86 = load i32, i32* %y, align 4
  %sub119 = sub nsw i32 %86, 1
  store i32 %sub119, i32* %y1.addr, align 4
  store i32 0, i32* %abort, align 4
  %87 = load i32, i32* %y2.addr, align 4
  store i32 %87, i32* %y, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.150, %if.end.118
  %88 = load i32, i32* %y, align 4
  %89 = load i32, i32* %y1.addr, align 4
  %cmp121 = icmp sgt i32 %88, %89
  br i1 %cmp121, label %land.rhs.123, label %land.end.127

land.rhs.123:                                     ; preds = %for.cond.120
  %90 = load i32, i32* %abort, align 4
  %tobool124 = icmp ne i32 %90, 0
  %lnot125 = xor i1 %tobool124, true
  br label %land.end.127

land.end.127:                                     ; preds = %land.rhs.123, %for.cond.120
  %91 = phi i1 [ false, %for.cond.120 ], [ %lnot125, %land.rhs.123 ]
  br i1 %91, label %for.body.128, label %for.end.151

for.body.128:                                     ; preds = %land.end.127
  %92 = load i32, i32* %x1.addr, align 4
  %93 = load i32, i32* %y, align 4
  %sub129 = sub nsw i32 %93, 1
  %94 = load i32, i32* %width, align 4
  %95 = load i8*, i8** %buffer, align 8
  call void @pixel_region_get_row(%struct._PixelRegion* %PR, i32 %92, i32 %sub129, i32 %94, i8* %95, i32 1)
  store i32 0, i32* %x, align 4
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.147, %for.body.128
  %96 = load i32, i32* %x, align 4
  %97 = load i32, i32* %width, align 4
  %cmp131 = icmp slt i32 %96, %97
  br i1 %cmp131, label %land.rhs.133, label %land.end.137

land.rhs.133:                                     ; preds = %for.cond.130
  %98 = load i32, i32* %abort, align 4
  %tobool134 = icmp ne i32 %98, 0
  %lnot135 = xor i1 %tobool134, true
  br label %land.end.137

land.end.137:                                     ; preds = %land.rhs.133, %for.cond.130
  %99 = phi i1 [ false, %for.cond.130 ], [ %lnot135, %land.rhs.133 ]
  br i1 %99, label %for.body.138, label %for.end.149

for.body.138:                                     ; preds = %land.end.137
  %100 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %colors_equal_func, align 8
  %arraydecay139 = getelementptr inbounds [4 x i8], [4 x i8]* %bgcolor, i32 0, i32 0
  %101 = load i8*, i8** %buffer, align 8
  %102 = load i32, i32* %x, align 4
  %103 = load i32, i32* %bytes, align 4
  %mul140 = mul nsw i32 %102, %103
  %idx.ext141 = sext i32 %mul140 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %101, i64 %idx.ext141
  %104 = load i32, i32* %bytes, align 4
  %call143 = call i32 %100(i8* %arraydecay139, i8* %add.ptr142, i32 %104)
  %tobool144 = icmp ne i32 %call143, 0
  %lnot145 = xor i1 %tobool144, true
  %lnot.ext146 = zext i1 %lnot145 to i32
  store i32 %lnot.ext146, i32* %abort, align 4
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.body.138
  %105 = load i32, i32* %x, align 4
  %inc148 = add nsw i32 %105, 1
  store i32 %inc148, i32* %x, align 4
  br label %for.cond.130

for.end.149:                                      ; preds = %land.end.137
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149
  %106 = load i32, i32* %y, align 4
  %dec = add nsw i32 %106, -1
  store i32 %dec, i32* %y, align 4
  br label %for.cond.120

for.end.151:                                      ; preds = %land.end.127
  %107 = load i32, i32* %y, align 4
  %add = add nsw i32 %107, 1
  store i32 %add, i32* %y2.addr, align 4
  %108 = load i32, i32* %y2.addr, align 4
  %109 = load i32, i32* %y1.addr, align 4
  %sub152 = sub nsw i32 %108, %109
  store i32 %sub152, i32* %height, align 4
  store i32 0, i32* %abort, align 4
  %110 = load i32, i32* %x1.addr, align 4
  store i32 %110, i32* %x, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.182, %for.end.151
  %111 = load i32, i32* %x, align 4
  %112 = load i32, i32* %x2.addr, align 4
  %cmp154 = icmp slt i32 %111, %112
  br i1 %cmp154, label %land.rhs.156, label %land.end.160

land.rhs.156:                                     ; preds = %for.cond.153
  %113 = load i32, i32* %abort, align 4
  %tobool157 = icmp ne i32 %113, 0
  %lnot158 = xor i1 %tobool157, true
  br label %land.end.160

land.end.160:                                     ; preds = %land.rhs.156, %for.cond.153
  %114 = phi i1 [ false, %for.cond.153 ], [ %lnot158, %land.rhs.156 ]
  br i1 %114, label %for.body.161, label %for.end.184

for.body.161:                                     ; preds = %land.end.160
  %115 = load i32, i32* %x, align 4
  %116 = load i32, i32* %y1.addr, align 4
  %117 = load i32, i32* %height, align 4
  %118 = load i8*, i8** %buffer, align 8
  call void @pixel_region_get_col(%struct._PixelRegion* %PR, i32 %115, i32 %116, i32 %117, i8* %118, i32 1)
  store i32 0, i32* %y, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.179, %for.body.161
  %119 = load i32, i32* %y, align 4
  %120 = load i32, i32* %height, align 4
  %cmp163 = icmp slt i32 %119, %120
  br i1 %cmp163, label %land.rhs.165, label %land.end.169

land.rhs.165:                                     ; preds = %for.cond.162
  %121 = load i32, i32* %abort, align 4
  %tobool166 = icmp ne i32 %121, 0
  %lnot167 = xor i1 %tobool166, true
  br label %land.end.169

land.end.169:                                     ; preds = %land.rhs.165, %for.cond.162
  %122 = phi i1 [ false, %for.cond.162 ], [ %lnot167, %land.rhs.165 ]
  br i1 %122, label %for.body.170, label %for.end.181

for.body.170:                                     ; preds = %land.end.169
  %123 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %colors_equal_func, align 8
  %arraydecay171 = getelementptr inbounds [4 x i8], [4 x i8]* %bgcolor, i32 0, i32 0
  %124 = load i8*, i8** %buffer, align 8
  %125 = load i32, i32* %y, align 4
  %126 = load i32, i32* %bytes, align 4
  %mul172 = mul nsw i32 %125, %126
  %idx.ext173 = sext i32 %mul172 to i64
  %add.ptr174 = getelementptr inbounds i8, i8* %124, i64 %idx.ext173
  %127 = load i32, i32* %bytes, align 4
  %call175 = call i32 %123(i8* %arraydecay171, i8* %add.ptr174, i32 %127)
  %tobool176 = icmp ne i32 %call175, 0
  %lnot177 = xor i1 %tobool176, true
  %lnot.ext178 = zext i1 %lnot177 to i32
  store i32 %lnot.ext178, i32* %abort, align 4
  br label %for.inc.179

for.inc.179:                                      ; preds = %for.body.170
  %128 = load i32, i32* %y, align 4
  %inc180 = add nsw i32 %128, 1
  store i32 %inc180, i32* %y, align 4
  br label %for.cond.162

for.end.181:                                      ; preds = %land.end.169
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end.181
  %129 = load i32, i32* %x, align 4
  %inc183 = add nsw i32 %129, 1
  store i32 %inc183, i32* %x, align 4
  br label %for.cond.153

for.end.184:                                      ; preds = %land.end.160
  %130 = load i32, i32* %x, align 4
  %sub185 = sub nsw i32 %130, 1
  store i32 %sub185, i32* %x1.addr, align 4
  store i32 0, i32* %abort, align 4
  %131 = load i32, i32* %x2.addr, align 4
  store i32 %131, i32* %x, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.216, %for.end.184
  %132 = load i32, i32* %x, align 4
  %133 = load i32, i32* %x1.addr, align 4
  %cmp187 = icmp sgt i32 %132, %133
  br i1 %cmp187, label %land.rhs.189, label %land.end.193

land.rhs.189:                                     ; preds = %for.cond.186
  %134 = load i32, i32* %abort, align 4
  %tobool190 = icmp ne i32 %134, 0
  %lnot191 = xor i1 %tobool190, true
  br label %land.end.193

land.end.193:                                     ; preds = %land.rhs.189, %for.cond.186
  %135 = phi i1 [ false, %for.cond.186 ], [ %lnot191, %land.rhs.189 ]
  br i1 %135, label %for.body.194, label %for.end.218

for.body.194:                                     ; preds = %land.end.193
  %136 = load i32, i32* %x, align 4
  %sub195 = sub nsw i32 %136, 1
  %137 = load i32, i32* %y1.addr, align 4
  %138 = load i32, i32* %height, align 4
  %139 = load i8*, i8** %buffer, align 8
  call void @pixel_region_get_col(%struct._PixelRegion* %PR, i32 %sub195, i32 %137, i32 %138, i8* %139, i32 1)
  store i32 0, i32* %y, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.213, %for.body.194
  %140 = load i32, i32* %y, align 4
  %141 = load i32, i32* %height, align 4
  %cmp197 = icmp slt i32 %140, %141
  br i1 %cmp197, label %land.rhs.199, label %land.end.203

land.rhs.199:                                     ; preds = %for.cond.196
  %142 = load i32, i32* %abort, align 4
  %tobool200 = icmp ne i32 %142, 0
  %lnot201 = xor i1 %tobool200, true
  br label %land.end.203

land.end.203:                                     ; preds = %land.rhs.199, %for.cond.196
  %143 = phi i1 [ false, %for.cond.196 ], [ %lnot201, %land.rhs.199 ]
  br i1 %143, label %for.body.204, label %for.end.215

for.body.204:                                     ; preds = %land.end.203
  %144 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %colors_equal_func, align 8
  %arraydecay205 = getelementptr inbounds [4 x i8], [4 x i8]* %bgcolor, i32 0, i32 0
  %145 = load i8*, i8** %buffer, align 8
  %146 = load i32, i32* %y, align 4
  %147 = load i32, i32* %bytes, align 4
  %mul206 = mul nsw i32 %146, %147
  %idx.ext207 = sext i32 %mul206 to i64
  %add.ptr208 = getelementptr inbounds i8, i8* %145, i64 %idx.ext207
  %148 = load i32, i32* %bytes, align 4
  %call209 = call i32 %144(i8* %arraydecay205, i8* %add.ptr208, i32 %148)
  %tobool210 = icmp ne i32 %call209, 0
  %lnot211 = xor i1 %tobool210, true
  %lnot.ext212 = zext i1 %lnot211 to i32
  store i32 %lnot.ext212, i32* %abort, align 4
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.204
  %149 = load i32, i32* %y, align 4
  %inc214 = add nsw i32 %149, 1
  store i32 %inc214, i32* %y, align 4
  br label %for.cond.196

for.end.215:                                      ; preds = %land.end.203
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.end.215
  %150 = load i32, i32* %x, align 4
  %dec217 = add nsw i32 %150, -1
  store i32 %dec217, i32* %x, align 4
  br label %for.cond.186

for.end.218:                                      ; preds = %land.end.193
  %151 = load i32, i32* %x, align 4
  %add219 = add nsw i32 %151, 1
  store i32 %add219, i32* %x2.addr, align 4
  %152 = load i32, i32* %x1.addr, align 4
  %153 = load i32*, i32** %shrunk_x1.addr, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %y1.addr, align 4
  %155 = load i32*, i32** %shrunk_y1.addr, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %x2.addr, align 4
  %157 = load i32*, i32** %shrunk_x2.addr, align 8
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %y2.addr, align 4
  %159 = load i32*, i32** %shrunk_y2.addr, align 8
  store i32 %158, i32* %159, align 4
  store i32 1, i32* %retval1, align 4
  br label %FINISH

FINISH:                                           ; preds = %for.end.218, %if.then.117, %sw.default, %if.then.46
  %160 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %160)
  %161 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp220 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %161, i32 0, i32 1
  %162 = load %struct._Gimp*, %struct._Gimp** %gimp220, align 8
  call void @gimp_unset_busy(%struct._Gimp* %162)
  %163 = load i32, i32* %retval1, align 4
  store i32 %163, i32* %retval
  br label %return

return:                                           ; preds = %FINISH, %if.else.39, %if.else.33, %if.else.27, %if.else.21, %if.else.15, %if.else
  %164 = load i32, i32* %retval
  ret i32 %164
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #3

declare void @gimp_pickable_flush(%struct._GimpPickable*) #3

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_crop_guess_bgcolor(%struct._GimpPickable* %pickable, i32 %bytes, i32 %has_alpha, i8* %color, i32 %x1, i32 %x2, i32 %y1, i32 %y2) #0 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %bytes.addr = alloca i32, align 4
  %has_alpha.addr = alloca i32, align 4
  %color.addr = alloca i8*, align 8
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %tl = alloca [4 x i8], align 1
  %tr = alloca [4 x i8], align 1
  %bl = alloca [4 x i8], align 1
  %br = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %alpha = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  store i8* %color, i8** %color.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %color.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %6 = load i32, i32* %x1.addr, align 4
  %7 = load i32, i32* %y1.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %call = call i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %5, i32 %6, i32 %7, i8* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.end
  %8 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %9 = load i32, i32* %x1.addr, align 4
  %10 = load i32, i32* %y2.addr, align 4
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %call2 = call i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %8, i32 %9, i32 %10, i8* %arraydecay1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %11 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %12 = load i32, i32* %x2.addr, align 4
  %13 = load i32, i32* %y1.addr, align 4
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %call6 = call i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %11, i32 %12, i32 %13, i8* %arraydecay5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false.8, label %if.then

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4
  %14 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %15 = load i32, i32* %x2.addr, align 4
  %16 = load i32, i32* %y2.addr, align 4
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %call10 = call i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable* %14, i32 %15, i32 %16, i8* %arraydecay9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false.4, %lor.lhs.false, %for.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8
  %17 = load i32, i32* %has_alpha.addr, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.end.61

if.then.13:                                       ; preds = %if.end
  %18 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %18, 1
  store i32 %sub, i32* %alpha, align 4
  %19 = load i32, i32* %alpha, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i64 %idxprom14
  %20 = load i8, i8* %arrayidx15, align 1
  %conv = zext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv, 0
  br i1 %cmp16, label %land.lhs.true, label %lor.lhs.false.23

land.lhs.true:                                    ; preds = %if.then.13
  %21 = load i32, i32* %alpha, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i64 %idxprom18
  %22 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %22 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.59, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true, %if.then.13
  %23 = load i32, i32* %alpha, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i64 %idxprom24
  %24 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %24 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %land.lhs.true.29, label %lor.lhs.false.35

land.lhs.true.29:                                 ; preds = %lor.lhs.false.23
  %25 = load i32, i32* %alpha, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i64 %idxprom30
  %26 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %26 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %if.then.59, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.29, %lor.lhs.false.23
  %27 = load i32, i32* %alpha, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i64 %idxprom36
  %28 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %28 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %land.lhs.true.41, label %lor.lhs.false.47

land.lhs.true.41:                                 ; preds = %lor.lhs.false.35
  %29 = load i32, i32* %alpha, align 4
  %idxprom42 = sext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i64 %idxprom42
  %30 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %30 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then.59, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.41, %lor.lhs.false.35
  %31 = load i32, i32* %alpha, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i64 %idxprom48
  %32 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %32 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.60

land.lhs.true.53:                                 ; preds = %lor.lhs.false.47
  %33 = load i32, i32* %alpha, align 4
  %idxprom54 = sext i32 %33 to i64
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i64 %idxprom54
  %34 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %34 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true.53, %land.lhs.true.41, %land.lhs.true.29, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %land.lhs.true.53, %lor.lhs.false.47
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  %arraydecay62 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay63 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %35 = load i32, i32* %bytes.addr, align 4
  %call64 = call i32 @gimp_image_crop_colors_equal(i8* %arraydecay62, i8* %arraydecay63, i32 %35)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.71, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.61
  %arraydecay67 = getelementptr inbounds [4 x i8], [4 x i8]* %tl, i32 0, i32 0
  %arraydecay68 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %36 = load i32, i32* %bytes.addr, align 4
  %call69 = call i32 @gimp_image_crop_colors_equal(i8* %arraydecay67, i8* %arraydecay68, i32 %36)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %lor.lhs.false.66, %if.end.61
  %37 = load i8*, i8** %color.addr, align 8
  %38 = bitcast [4 x i8]* %tl to i8*
  %39 = load i32, i32* %bytes.addr, align 4
  %conv72 = sext i32 %39 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %conv72, i32 1, i1 false)
  store i32 2, i32* %retval
  br label %return

if.end.73:                                        ; preds = %lor.lhs.false.66
  %arraydecay74 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %arraydecay75 = getelementptr inbounds [4 x i8], [4 x i8]* %bl, i32 0, i32 0
  %40 = load i32, i32* %bytes.addr, align 4
  %call76 = call i32 @gimp_image_crop_colors_equal(i8* %arraydecay74, i8* %arraydecay75, i32 %40)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.83, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.end.73
  %arraydecay79 = getelementptr inbounds [4 x i8], [4 x i8]* %br, i32 0, i32 0
  %arraydecay80 = getelementptr inbounds [4 x i8], [4 x i8]* %tr, i32 0, i32 0
  %41 = load i32, i32* %bytes.addr, align 4
  %call81 = call i32 @gimp_image_crop_colors_equal(i8* %arraydecay79, i8* %arraydecay80, i32 %41)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %lor.lhs.false.78, %if.end.73
  %42 = load i8*, i8** %color.addr, align 8
  %43 = bitcast [4 x i8]* %br to i8*
  %44 = load i32, i32* %bytes.addr, align 4
  %conv84 = sext i32 %44 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 %conv84, i32 1, i1 false)
  store i32 2, i32* %retval
  br label %return

if.end.85:                                        ; preds = %lor.lhs.false.78
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.83, %if.then.71, %if.then.59, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_crop_colors_alpha(i8* %dummy, i8* %col, i32 %bytes) #0 {
entry:
  %dummy.addr = alloca i8*, align 8
  %col.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  store i8* %dummy, i8** %dummy.addr, align 8
  store i8* %col, i8** %col.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  %0 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %1 = load i8*, i8** %col.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_crop_colors_equal(i8* %col1, i8* %col2, i32 %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %col1.addr = alloca i8*, align 8
  %col2.addr = alloca i8*, align 8
  %bytes.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store i8* %col1, i8** %col1.addr, align 8
  store i8* %col2, i8** %col2.addr, align 8
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %b, align 4
  %1 = load i32, i32* %bytes.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %b, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %col1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, i32* %b, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i8*, i8** %col2.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %b, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #3

declare noalias i8* @g_malloc(i64) #3

declare void @pixel_region_get_row(%struct._PixelRegion*, i32, i32, i32, i8*, i32) #3

declare void @pixel_region_get_col(%struct._PixelRegion*, i32, i32, i32, i8*, i32) #3

declare void @g_free(i8*) #3

declare i32 @gimp_pickable_get_pixel_at(%struct._GimpPickable*, i32, i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
