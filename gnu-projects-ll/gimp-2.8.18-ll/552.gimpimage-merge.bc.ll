; ModuleID = './app/core/gimpimage-merge.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
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
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type { %struct._GimpObject, %struct._GHashTable* }
%struct._GHashTable = type opaque
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
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpItemStack = type { %struct._GimpList }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpGroupLayer = type { %struct._GimpLayer }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.1 }
%struct.anon.1 = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_merge_visible_layers = private unnamed_addr constant [32 x i8] c"gimp_image_merge_visible_layers\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"undo-type\04Merge Visible Layers\00", align 1
@__func__.gimp_image_flatten = private unnamed_addr constant [19 x i8] c"gimp_image_flatten\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"undo-type\04Flatten Image\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Cannot flatten an image without any visible layer.\00", align 1
@__func__.gimp_image_merge_down = private unnamed_addr constant [22 x i8] c"gimp_image_merge_down\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"GIMP_IS_LAYER (current_layer)\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"gimp_item_is_attached (GIMP_ITEM (current_layer))\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Cannot merge down to a layer group.\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"The layer to merge down to is locked.\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"There is no visible layer to merge down to.\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"undo-type\04Merge Down\00", align 1
@__func__.gimp_image_merge_group_layer = private unnamed_addr constant [29 x i8] c"gimp_image_merge_group_layer\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"GIMP_IS_GROUP_LAYER (group)\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"gimp_item_is_attached (GIMP_ITEM (group))\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"gimp_item_get_image (GIMP_ITEM (group)) == image\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"undo-type\04Merge Layer Group\00", align 1
@__func__.gimp_image_merge_visible_vectors = private unnamed_addr constant [33 x i8] c"gimp_image_merge_visible_vectors\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"undo-type\04Merge Visible Paths\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"Not enough visible paths for a merge. There must be at least two.\00", align 1
@__func__.gimp_image_merge_layers = private unnamed_addr constant [24 x i8] c"gimp_image_merge_layers\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"%s: could not allocate merge layer.\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"merged layer\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"%s: could not allocate merge layer\00", align 1
@gimp_image_merge_layers.active = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@.str.22 = private unnamed_addr constant [45 x i8] c"%s: attempting to merge incompatible layers.\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_image_merge_visible_layers(%struct._GimpImage* %image, %struct._GimpContext* %context, i32 %merge_type, i32 %merge_active_group, i32 %discard_invisible) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %merge_type.addr = alloca i32, align 4
  %merge_active_group.addr = alloca i32, align 4
  %discard_invisible.addr = alloca i32, align 4
  %container = alloca %struct._GimpContainer*, align 8
  %list = alloca %struct._GList*, align 8
  %merge_list = alloca %struct._GSList*, align 8
  %invisible_list = alloca %struct._GSList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %active_layer = alloca %struct._GimpLayer*, align 8
  %fs_drawable = alloca %struct._GimpDrawable*, align 8
  %__inst51 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %layer114 = alloca %struct._GimpLayer*, align 8
  %list126 = alloca %struct._GSList*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %merge_type, i32* %merge_type.addr, align 4
  store i32 %merge_active_group, i32* %merge_active_group.addr, align 4
  store i32 %discard_invisible, i32* %discard_invisible.addr, align 4
  store %struct._GSList* null, %struct._GSList** %merge_list, align 8
  store %struct._GSList* null, %struct._GSList** %invisible_list, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_merge_visible_layers, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_merge_visible_layers, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load i32, i32* %merge_active_group.addr, align 4
  %tobool39 = icmp ne i32 %26, 0
  br i1 %tobool39, label %if.then.40, label %if.else.86

if.then.40:                                       ; preds = %do.end.38
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call42 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %27)
  store %struct._GimpLayer* %call42, %struct._GimpLayer** %active_layer, align 8
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %tobool43 = icmp ne %struct._GimpLayer* %28, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.77

land.lhs.true.44:                                 ; preds = %if.then.40
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %call45 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %29)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.77

if.then.47:                                       ; preds = %land.lhs.true.44
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %call49 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %30)
  store %struct._GimpDrawable* %call49, %struct._GimpDrawable** %fs_drawable, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %fs_drawable, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %32, %struct._GTypeInstance** %__inst51, align 8
  %call54 = call i64 @gimp_layer_get_type() #6
  store i64 %call54, i64* %__t53, align 8
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %33, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %if.then.47
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %if.then.47
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %35, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type64, align 8
  %39 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %38, %39
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst51, align 8
  %41 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %40, i64 %41) #7
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %42 = load i32, i32* %__r56, align 4
  store i32 %42, i32* %tmp71
  %43 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %43, 0
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.70
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %fs_drawable, align 8
  %45 = bitcast %struct._GimpDrawable* %44 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_layer_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call74)
  %46 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpLayer*
  store %struct._GimpLayer* %46, %struct._GimpLayer** %active_layer, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.end.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %land.lhs.true.44, %if.then.40
  %47 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %tobool78 = icmp ne %struct._GimpLayer* %47, null
  br i1 %tobool78, label %if.then.79, label %if.else.83

if.then.79:                                       ; preds = %if.end.77
  %48 = load %struct._GimpLayer*, %struct._GimpLayer** %active_layer, align 8
  %49 = bitcast %struct._GimpLayer* %48 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_item_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call80)
  %50 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpItem*
  %call82 = call %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %50)
  store %struct._GimpContainer* %call82, %struct._GimpContainer** %container, align 8
  br label %if.end.85

if.else.83:                                       ; preds = %if.end.77
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call84 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %51)
  store %struct._GimpContainer* %call84, %struct._GimpContainer** %container, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.83, %if.then.79
  br label %if.end.88

if.else.86:                                       ; preds = %do.end.38
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call87 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %52)
  store %struct._GimpContainer* %call87, %struct._GimpContainer** %container, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.end.85
  %53 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %54 = bitcast %struct._GimpContainer* %53 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_item_stack_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call89)
  %55 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpItemStack*
  %call91 = call %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack* %55)
  store %struct._GList* %call91, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.88
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool92 = icmp ne %struct._GList* %56, null
  br i1 %tobool92, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 0
  %58 = load i8*, i8** %data, align 8
  %59 = bitcast i8* %58 to %struct._GimpLayer*
  store %struct._GimpLayer* %59, %struct._GimpLayer** %layer, align 8
  %60 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call94 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %60)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %for.body
  br label %for.inc

if.end.97:                                        ; preds = %for.body
  %61 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %62 = bitcast %struct._GimpLayer* %61 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_item_get_type() #6
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call98)
  %63 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpItem*
  %call100 = call i32 @gimp_item_get_visible(%struct._GimpItem* %63)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.else.104

if.then.102:                                      ; preds = %if.end.97
  %64 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  %65 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %66 = bitcast %struct._GimpLayer* %65 to i8*
  %call103 = call %struct._GSList* @g_slist_append(%struct._GSList* %64, i8* %66)
  store %struct._GSList* %call103, %struct._GSList** %merge_list, align 8
  br label %if.end.109

if.else.104:                                      ; preds = %if.end.97
  %67 = load i32, i32* %discard_invisible.addr, align 4
  %tobool105 = icmp ne i32 %67, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.else.104
  %68 = load %struct._GSList*, %struct._GSList** %invisible_list, align 8
  %69 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %70 = bitcast %struct._GimpLayer* %69 to i8*
  %call107 = call %struct._GSList* @g_slist_append(%struct._GSList* %68, i8* %70)
  store %struct._GSList* %call107, %struct._GSList** %invisible_list, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.else.104
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.102
  br label %for.inc

for.inc:                                          ; preds = %if.end.109, %if.then.96
  %71 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool110 = icmp ne %struct._GList* %71, null
  br i1 %tobool110, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %72 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %72, i32 0, i32 1
  %73 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %73, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  %tobool111 = icmp ne %struct._GSList* %74, null
  br i1 %tobool111, label %if.then.112, label %if.end.142

if.then.112:                                      ; preds = %for.end
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %75, i32 0, i32 1
  %76 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %76)
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call115 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i64 10)
  %call116 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %77, i32 8, i8* %call115)
  %78 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call117 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %78)
  %tobool118 = icmp ne %struct._GimpLayer* %call117, null
  br i1 %tobool118, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.then.112
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call120 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %79)
  call void @floating_sel_anchor(%struct._GimpLayer* %call120)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.then.112
  %80 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %81 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %82 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  %83 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %84 = load i32, i32* %merge_type.addr, align 4
  %call122 = call %struct._GimpLayer* @gimp_image_merge_layers(%struct._GimpImage* %80, %struct._GimpContainer* %81, %struct._GSList* %82, %struct._GimpContext* %83, i32 %84)
  store %struct._GimpLayer* %call122, %struct._GimpLayer** %layer114, align 8
  %85 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  call void @g_slist_free(%struct._GSList* %85)
  %86 = load %struct._GSList*, %struct._GSList** %invisible_list, align 8
  %tobool123 = icmp ne %struct._GSList* %86, null
  br i1 %tobool123, label %if.then.124, label %if.end.139

if.then.124:                                      ; preds = %if.end.121
  %87 = load %struct._GSList*, %struct._GSList** %invisible_list, align 8
  store %struct._GSList* %87, %struct._GSList** %list126, align 8
  br label %for.cond.127

for.cond.127:                                     ; preds = %cond.end.136, %if.then.124
  %88 = load %struct._GSList*, %struct._GSList** %list126, align 8
  %tobool128 = icmp ne %struct._GSList* %88, null
  br i1 %tobool128, label %for.body.129, label %for.end.138

for.body.129:                                     ; preds = %for.cond.127
  %89 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %90 = load %struct._GSList*, %struct._GSList** %list126, align 8
  %data130 = getelementptr inbounds %struct._GSList, %struct._GSList* %90, i32 0, i32 0
  %91 = load i8*, i8** %data130, align 8
  %92 = bitcast i8* %91 to %struct._GimpLayer*
  call void @gimp_image_remove_layer(%struct._GimpImage* %89, %struct._GimpLayer* %92, i32 1, %struct._GimpLayer* null)
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.129
  %93 = load %struct._GSList*, %struct._GSList** %list126, align 8
  %tobool132 = icmp ne %struct._GSList* %93, null
  br i1 %tobool132, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %for.inc.131
  %94 = load %struct._GSList*, %struct._GSList** %list126, align 8
  %next134 = getelementptr inbounds %struct._GSList, %struct._GSList* %94, i32 0, i32 1
  %95 = load %struct._GSList*, %struct._GSList** %next134, align 8
  br label %cond.end.136

cond.false.135:                                   ; preds = %for.inc.131
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.133
  %cond137 = phi %struct._GSList* [ %95, %cond.true.133 ], [ null, %cond.false.135 ]
  store %struct._GSList* %cond137, %struct._GSList** %list126, align 8
  br label %for.cond.127

for.end.138:                                      ; preds = %for.cond.127
  %96 = load %struct._GSList*, %struct._GSList** %invisible_list, align 8
  call void @g_slist_free(%struct._GSList* %96)
  br label %if.end.139

if.end.139:                                       ; preds = %for.end.138, %if.end.121
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call140 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %97)
  %98 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp141 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %98, i32 0, i32 1
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp141, align 8
  call void @gimp_unset_busy(%struct._Gimp* %99)
  %100 = load %struct._GimpLayer*, %struct._GimpLayer** %layer114, align 8
  store %struct._GimpLayer* %100, %struct._GimpLayer** %retval
  br label %return

if.end.142:                                       ; preds = %for.end
  %101 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call143 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %101)
  store %struct._GimpLayer* %call143, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.142, %if.end.139, %if.else.36, %if.else.9
  %102 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %102
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #3

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #3

declare %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #3

declare %struct._GList* @gimp_item_stack_get_item_iter(%struct._GimpItemStack*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_stack_get_type() #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #3

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #3

declare void @gimp_set_busy(%struct._Gimp*) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #3

declare void @floating_sel_anchor(%struct._GimpLayer*) #3

; Function Attrs: nounwind uwtable
define internal %struct._GimpLayer* @gimp_image_merge_layers(%struct._GimpImage* %image, %struct._GimpContainer* %container, %struct._GSList* %merge_list, %struct._GimpContext* %context, i32 %merge_type) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %merge_list.addr = alloca %struct._GSList*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %merge_type.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %reverse_list = alloca %struct._GSList*, align 8
  %layers = alloca %struct._GSList*, align 8
  %src1PR = alloca %struct._PixelRegion, align 8
  %src2PR = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %mask = alloca %struct._PixelRegion*, align 8
  %merge_layer = alloca %struct._GimpLayer*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %bottom_layer = alloca %struct._GimpLayer*, align 8
  %parasites = alloca %struct._GimpParasiteList*, align 8
  %count = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %position = alloca i32, align 4
  %name = alloca i8*, align 8
  %parent = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %type = alloca i32, align 4
  %bg = alloca [4 x i8], align 1
  %operation = alloca i32, align 4
  %mode = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %y4 = alloca i32, align 4
  %active = alloca [4 x i32], align 16
  %tiles = alloca %struct._TileManager*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GSList* %merge_list, %struct._GSList** %merge_list.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %merge_type, i32* %merge_type.addr, align 4
  store %struct._GSList* null, %struct._GSList** %reverse_list, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_merge_layers, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_merge_layers, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  store %struct._GimpLayer* null, %struct._GimpLayer** %layer, align 8
  store i32 0, i32* %y1, align 4
  store i32 0, i32* %x1, align 4
  store i32 0, i32* %y2, align 4
  store i32 0, i32* %x2, align 4
  store %struct._GimpLayer* null, %struct._GimpLayer** %bottom_layer, align 8
  %26 = load %struct._GSList*, %struct._GSList** %merge_list.addr, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data, align 8
  %28 = bitcast i8* %27 to %struct._GimpLayer*
  %call39 = call %struct._GimpLayer* @gimp_layer_get_parent(%struct._GimpLayer* %28)
  store %struct._GimpLayer* %call39, %struct._GimpLayer** %parent, align 8
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.154, %do.end.38
  %29 = load %struct._GSList*, %struct._GSList** %merge_list.addr, align 8
  %tobool40 = icmp ne %struct._GSList* %29, null
  br i1 %tobool40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load %struct._GSList*, %struct._GSList** %merge_list.addr, align 8
  %data41 = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 0
  %31 = load i8*, i8** %data41, align 8
  %32 = bitcast i8* %31 to %struct._GimpLayer*
  store %struct._GimpLayer* %32, %struct._GimpLayer** %layer, align 8
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %34 = bitcast %struct._GimpLayer* %33 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_item_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call42)
  %35 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %35, i32* %off_x, i32* %off_y)
  %36 = load i32, i32* %merge_type.addr, align 4
  switch i32 %36, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.130
    i32 3, label %sw.bb.142
  ]

sw.bb:                                            ; preds = %while.body, %while.body
  %37 = load i32, i32* %count, align 4
  %tobool44 = icmp ne i32 %37, 0
  br i1 %tobool44, label %if.else.53, label %if.then.45

if.then.45:                                       ; preds = %sw.bb
  %38 = load i32, i32* %off_x, align 4
  store i32 %38, i32* %x1, align 4
  %39 = load i32, i32* %off_y, align 4
  store i32 %39, i32* %y1, align 4
  %40 = load i32, i32* %off_x, align 4
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %42 = bitcast %struct._GimpLayer* %41 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call46)
  %43 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %call48 = call i32 @gimp_item_get_width(%struct._GimpItem* %43)
  %add = add nsw i32 %40, %call48
  store i32 %add, i32* %x2, align 4
  %44 = load i32, i32* %off_y, align 4
  %45 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %46 = bitcast %struct._GimpLayer* %45 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call49)
  %47 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  %call51 = call i32 @gimp_item_get_height(%struct._GimpItem* %47)
  %add52 = add nsw i32 %44, %call51
  store i32 %add52, i32* %y2, align 4
  br label %if.end.82

if.else.53:                                       ; preds = %sw.bb
  %48 = load i32, i32* %off_x, align 4
  %49 = load i32, i32* %x1, align 4
  %cmp54 = icmp slt i32 %48, %49
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.53
  %50 = load i32, i32* %off_x, align 4
  store i32 %50, i32* %x1, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.else.53
  %51 = load i32, i32* %off_y, align 4
  %52 = load i32, i32* %y1, align 4
  %cmp57 = icmp slt i32 %51, %52
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  %53 = load i32, i32* %off_y, align 4
  store i32 %53, i32* %y1, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.56
  %54 = load i32, i32* %off_x, align 4
  %55 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %56 = bitcast %struct._GimpLayer* %55 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_item_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call60)
  %57 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpItem*
  %call62 = call i32 @gimp_item_get_width(%struct._GimpItem* %57)
  %add63 = add nsw i32 %54, %call62
  %58 = load i32, i32* %x2, align 4
  %cmp64 = icmp sgt i32 %add63, %58
  br i1 %cmp64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.end.59
  %59 = load i32, i32* %off_x, align 4
  %60 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %61 = bitcast %struct._GimpLayer* %60 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_item_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call66)
  %62 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpItem*
  %call68 = call i32 @gimp_item_get_width(%struct._GimpItem* %62)
  %add69 = add nsw i32 %59, %call68
  store i32 %add69, i32* %x2, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %if.end.59
  %63 = load i32, i32* %off_y, align 4
  %64 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %65 = bitcast %struct._GimpLayer* %64 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_item_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call71)
  %66 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpItem*
  %call73 = call i32 @gimp_item_get_height(%struct._GimpItem* %66)
  %add74 = add nsw i32 %63, %call73
  %67 = load i32, i32* %y2, align 4
  %cmp75 = icmp sgt i32 %add74, %67
  br i1 %cmp75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.end.70
  %68 = load i32, i32* %off_y, align 4
  %69 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %70 = bitcast %struct._GimpLayer* %69 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_item_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call77)
  %71 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpItem*
  %call79 = call i32 @gimp_item_get_height(%struct._GimpItem* %71)
  %add80 = add nsw i32 %68, %call79
  store i32 %add80, i32* %y2, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.end.70
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.45
  %72 = load i32, i32* %merge_type.addr, align 4
  %cmp83 = icmp eq i32 %72, 1
  br i1 %cmp83, label %if.then.84, label %if.end.129

if.then.84:                                       ; preds = %if.end.82
  %73 = load i32, i32* %x1, align 4
  %74 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call85 = call i32 @gimp_image_get_width(%struct._GimpImage* %74)
  %cmp86 = icmp sgt i32 %73, %call85
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.84
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call87 = call i32 @gimp_image_get_width(%struct._GimpImage* %75)
  br label %cond.end.91

cond.false:                                       ; preds = %if.then.84
  %76 = load i32, i32* %x1, align 4
  %cmp88 = icmp slt i32 %76, 0
  br i1 %cmp88, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.false
  br label %cond.end

cond.false.90:                                    ; preds = %cond.false
  %77 = load i32, i32* %x1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.90, %cond.true.89
  %cond = phi i32 [ 0, %cond.true.89 ], [ %77, %cond.false.90 ]
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.end, %cond.true
  %cond92 = phi i32 [ %call87, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond92, i32* %x1, align 4
  %78 = load i32, i32* %y1, align 4
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call93 = call i32 @gimp_image_get_height(%struct._GimpImage* %79)
  %cmp94 = icmp sgt i32 %78, %call93
  br i1 %cmp94, label %cond.true.95, label %cond.false.97

cond.true.95:                                     ; preds = %cond.end.91
  %80 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call96 = call i32 @gimp_image_get_height(%struct._GimpImage* %80)
  br label %cond.end.103

cond.false.97:                                    ; preds = %cond.end.91
  %81 = load i32, i32* %y1, align 4
  %cmp98 = icmp slt i32 %81, 0
  br i1 %cmp98, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %cond.false.97
  br label %cond.end.101

cond.false.100:                                   ; preds = %cond.false.97
  %82 = load i32, i32* %y1, align 4
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.99
  %cond102 = phi i32 [ 0, %cond.true.99 ], [ %82, %cond.false.100 ]
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.end.101, %cond.true.95
  %cond104 = phi i32 [ %call96, %cond.true.95 ], [ %cond102, %cond.end.101 ]
  store i32 %cond104, i32* %y1, align 4
  %83 = load i32, i32* %x2, align 4
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call105 = call i32 @gimp_image_get_width(%struct._GimpImage* %84)
  %cmp106 = icmp sgt i32 %83, %call105
  br i1 %cmp106, label %cond.true.107, label %cond.false.109

cond.true.107:                                    ; preds = %cond.end.103
  %85 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call108 = call i32 @gimp_image_get_width(%struct._GimpImage* %85)
  br label %cond.end.115

cond.false.109:                                   ; preds = %cond.end.103
  %86 = load i32, i32* %x2, align 4
  %cmp110 = icmp slt i32 %86, 0
  br i1 %cmp110, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %cond.false.109
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.false.109
  %87 = load i32, i32* %x2, align 4
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.111
  %cond114 = phi i32 [ 0, %cond.true.111 ], [ %87, %cond.false.112 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.true.107
  %cond116 = phi i32 [ %call108, %cond.true.107 ], [ %cond114, %cond.end.113 ]
  store i32 %cond116, i32* %x2, align 4
  %88 = load i32, i32* %y2, align 4
  %89 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call117 = call i32 @gimp_image_get_height(%struct._GimpImage* %89)
  %cmp118 = icmp sgt i32 %88, %call117
  br i1 %cmp118, label %cond.true.119, label %cond.false.121

cond.true.119:                                    ; preds = %cond.end.115
  %90 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call120 = call i32 @gimp_image_get_height(%struct._GimpImage* %90)
  br label %cond.end.127

cond.false.121:                                   ; preds = %cond.end.115
  %91 = load i32, i32* %y2, align 4
  %cmp122 = icmp slt i32 %91, 0
  br i1 %cmp122, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %cond.false.121
  br label %cond.end.125

cond.false.124:                                   ; preds = %cond.false.121
  %92 = load i32, i32* %y2, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.123
  %cond126 = phi i32 [ 0, %cond.true.123 ], [ %92, %cond.false.124 ]
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.end.125, %cond.true.119
  %cond128 = phi i32 [ %call120, %cond.true.119 ], [ %cond126, %cond.end.125 ]
  store i32 %cond128, i32* %y2, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %cond.end.127, %if.end.82
  br label %sw.epilog

sw.bb.130:                                        ; preds = %while.body
  %93 = load %struct._GSList*, %struct._GSList** %merge_list.addr, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %93, i32 0, i32 1
  %94 = load %struct._GSList*, %struct._GSList** %next, align 8
  %cmp131 = icmp eq %struct._GSList* %94, null
  br i1 %cmp131, label %if.then.132, label %if.end.141

if.then.132:                                      ; preds = %sw.bb.130
  %95 = load i32, i32* %off_x, align 4
  store i32 %95, i32* %x1, align 4
  %96 = load i32, i32* %off_y, align 4
  store i32 %96, i32* %y1, align 4
  %97 = load i32, i32* %off_x, align 4
  %98 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %99 = bitcast %struct._GimpLayer* %98 to %struct._GTypeInstance*
  %call133 = call i64 @gimp_item_get_type() #6
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call133)
  %100 = bitcast %struct._GTypeInstance* %call134 to %struct._GimpItem*
  %call135 = call i32 @gimp_item_get_width(%struct._GimpItem* %100)
  %add136 = add nsw i32 %97, %call135
  store i32 %add136, i32* %x2, align 4
  %101 = load i32, i32* %off_y, align 4
  %102 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %103 = bitcast %struct._GimpLayer* %102 to %struct._GTypeInstance*
  %call137 = call i64 @gimp_item_get_type() #6
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call137)
  %104 = bitcast %struct._GTypeInstance* %call138 to %struct._GimpItem*
  %call139 = call i32 @gimp_item_get_height(%struct._GimpItem* %104)
  %add140 = add nsw i32 %101, %call139
  store i32 %add140, i32* %y2, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.132, %sw.bb.130
  br label %sw.epilog

sw.bb.142:                                        ; preds = %while.body
  %105 = load %struct._GSList*, %struct._GSList** %merge_list.addr, align 8
  %next143 = getelementptr inbounds %struct._GSList, %struct._GSList* %105, i32 0, i32 1
  %106 = load %struct._GSList*, %struct._GSList** %next143, align 8
  %cmp144 = icmp eq %struct._GSList* %106, null
  br i1 %cmp144, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %sw.bb.142
  store i32 0, i32* %x1, align 4
  store i32 0, i32* %y1, align 4
  %107 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call146 = call i32 @gimp_image_get_width(%struct._GimpImage* %107)
  store i32 %call146, i32* %x2, align 4
  %108 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call147 = call i32 @gimp_image_get_height(%struct._GimpImage* %108)
  store i32 %call147, i32* %y2, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %sw.bb.142
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.148, %if.end.141, %if.end.129
  %109 = load i32, i32* %count, align 4
  %inc = add nsw i32 %109, 1
  store i32 %inc, i32* %count, align 4
  %110 = load %struct._GSList*, %struct._GSList** %reverse_list, align 8
  %111 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %112 = bitcast %struct._GimpLayer* %111 to i8*
  %call149 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %110, i8* %112)
  store %struct._GSList* %call149, %struct._GSList** %reverse_list, align 8
  %113 = load %struct._GSList*, %struct._GSList** %merge_list.addr, align 8
  %tobool150 = icmp ne %struct._GSList* %113, null
  br i1 %tobool150, label %cond.true.151, label %cond.false.153

cond.true.151:                                    ; preds = %sw.epilog
  %114 = load %struct._GSList*, %struct._GSList** %merge_list.addr, align 8
  %next152 = getelementptr inbounds %struct._GSList, %struct._GSList* %114, i32 0, i32 1
  %115 = load %struct._GSList*, %struct._GSList** %next152, align 8
  br label %cond.end.154

cond.false.153:                                   ; preds = %sw.epilog
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.153, %cond.true.151
  %cond155 = phi %struct._GSList* [ %115, %cond.true.151 ], [ null, %cond.false.153 ]
  store %struct._GSList* %cond155, %struct._GSList** %merge_list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %116 = load i32, i32* %x2, align 4
  %117 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %116, %117
  %cmp156 = icmp eq i32 %sub, 0
  br i1 %cmp156, label %if.then.159, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %118 = load i32, i32* %y2, align 4
  %119 = load i32, i32* %y1, align 4
  %sub157 = sub nsw i32 %118, %119
  %cmp158 = icmp eq i32 %sub157, 0
  br i1 %cmp158, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %lor.lhs.false, %while.end
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.160:                                       ; preds = %lor.lhs.false
  %120 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %121 = bitcast %struct._GimpLayer* %120 to i8*
  %call161 = call i8* @gimp_object_get_name(i8* %121)
  %call162 = call noalias i8* @g_strdup(i8* %call161)
  store i8* %call162, i8** %name, align 8
  %122 = load i32, i32* %merge_type.addr, align 4
  %cmp163 = icmp eq i32 %122, 3
  br i1 %cmp163, label %if.then.169, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %if.end.160
  %123 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %124 = bitcast %struct._GimpLayer* %123 to %struct._GTypeInstance*
  %call165 = call i64 @gimp_drawable_get_type() #6
  %call166 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call165)
  %125 = bitcast %struct._GTypeInstance* %call166 to %struct._GimpDrawable*
  %call167 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %125)
  %cmp168 = icmp eq i32 %call167, 4
  br i1 %cmp168, label %if.then.169, label %if.else.205

if.then.169:                                      ; preds = %lor.lhs.false.164, %if.end.160
  %126 = bitcast [4 x i8]* %bg to i8*
  call void @llvm.memset.p0i8.i64(i8* %126, i8 0, i64 4, i32 1, i1 false)
  %127 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call172 = call i32 @gimp_image_base_type(%struct._GimpImage* %127)
  %cmp173 = icmp eq i32 %call172, 0
  br i1 %cmp173, label %cond.true.174, label %cond.false.175

cond.true.174:                                    ; preds = %if.then.169
  br label %cond.end.185

cond.false.175:                                   ; preds = %if.then.169
  %128 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call176 = call i32 @gimp_image_base_type(%struct._GimpImage* %128)
  %cmp177 = icmp eq i32 %call176, 1
  br i1 %cmp177, label %cond.true.178, label %cond.false.179

cond.true.178:                                    ; preds = %cond.false.175
  br label %cond.end.183

cond.false.179:                                   ; preds = %cond.false.175
  %129 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call180 = call i32 @gimp_image_base_type(%struct._GimpImage* %129)
  %cmp181 = icmp eq i32 %call180, 2
  %cond182 = select i1 %cmp181, i32 4, i32 -1
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.179, %cond.true.178
  %cond184 = phi i32 [ 2, %cond.true.178 ], [ %cond182, %cond.false.179 ]
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.end.183, %cond.true.174
  %cond186 = phi i32 [ 0, %cond.true.174 ], [ %cond184, %cond.end.183 ]
  store i32 %cond186, i32* %type, align 4
  %130 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %131 = load i32, i32* %x2, align 4
  %132 = load i32, i32* %x1, align 4
  %sub187 = sub nsw i32 %131, %132
  %133 = load i32, i32* %y2, align 4
  %134 = load i32, i32* %y1, align 4
  %sub188 = sub nsw i32 %133, %134
  %135 = load i32, i32* %type, align 4
  %136 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %137 = bitcast %struct._GimpLayer* %136 to i8*
  %call189 = call i8* @gimp_object_get_name(i8* %137)
  %call190 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %130, i32 %sub187, i32 %sub188, i32 %135, i8* %call189, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call190, %struct._GimpLayer** %merge_layer, align 8
  %138 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %tobool191 = icmp ne %struct._GimpLayer* %138, null
  br i1 %tobool191, label %if.end.193, label %if.then.192

if.then.192:                                      ; preds = %cond.end.185
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_merge_layers, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.193:                                       ; preds = %cond.end.185
  %139 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %140 = bitcast %struct._GimpLayer* %139 to %struct._GTypeInstance*
  %call194 = call i64 @gimp_item_get_type() #6
  %call195 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call194)
  %141 = bitcast %struct._GTypeInstance* %call195 to %struct._GimpItem*
  %142 = load i32, i32* %x1, align 4
  %143 = load i32, i32* %y1, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %141, i32 %142, i32 %143)
  %144 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %145 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %146 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %147 = bitcast %struct._GimpLayer* %146 to %struct._GTypeInstance*
  %call196 = call i64 @gimp_drawable_get_type() #6
  %call197 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call196)
  %148 = bitcast %struct._GTypeInstance* %call197 to %struct._GimpDrawable*
  %call198 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %148)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @gimp_image_get_background(%struct._GimpImage* %144, %struct._GimpContext* %145, i32 %call198, i8* %arraydecay)
  %149 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %150 = bitcast %struct._GimpLayer* %149 to %struct._GTypeInstance*
  %call199 = call i64 @gimp_drawable_get_type() #6
  %call200 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call199)
  %151 = bitcast %struct._GTypeInstance* %call200 to %struct._GimpDrawable*
  %call201 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %151)
  %152 = load i32, i32* %x2, align 4
  %153 = load i32, i32* %x1, align 4
  %sub202 = sub nsw i32 %152, %153
  %154 = load i32, i32* %y2, align 4
  %155 = load i32, i32* %y1, align 4
  %sub203 = sub nsw i32 %154, %155
  call void @pixel_region_init(%struct._PixelRegion* %src1PR, %struct._TileManager* %call201, i32 0, i32 0, i32 %sub202, i32 %sub203, i32 1)
  %arraydecay204 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %src1PR, i8* %arraydecay204)
  store i32 0, i32* %position, align 4
  br label %if.end.228

if.else.205:                                      ; preds = %lor.lhs.false.164
  %156 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %157 = load i32, i32* %x2, align 4
  %158 = load i32, i32* %x1, align 4
  %sub206 = sub nsw i32 %157, %158
  %159 = load i32, i32* %y2, align 4
  %160 = load i32, i32* %y1, align 4
  %sub207 = sub nsw i32 %159, %160
  %161 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %162 = bitcast %struct._GimpLayer* %161 to %struct._GTypeInstance*
  %call208 = call i64 @gimp_drawable_get_type() #6
  %call209 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %162, i64 %call208)
  %163 = bitcast %struct._GTypeInstance* %call209 to %struct._GimpDrawable*
  %call210 = call i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %163)
  %call211 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %156, i32 %sub206, i32 %sub207, i32 %call210, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call211, %struct._GimpLayer** %merge_layer, align 8
  %164 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %tobool212 = icmp ne %struct._GimpLayer* %164, null
  br i1 %tobool212, label %if.end.214, label %if.then.213

if.then.213:                                      ; preds = %if.else.205
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_merge_layers, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.214:                                       ; preds = %if.else.205
  %165 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %166 = bitcast %struct._GimpLayer* %165 to %struct._GTypeInstance*
  %call215 = call i64 @gimp_item_get_type() #6
  %call216 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %166, i64 %call215)
  %167 = bitcast %struct._GTypeInstance* %call216 to %struct._GimpItem*
  %168 = load i32, i32* %x1, align 4
  %169 = load i32, i32* %y1, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %167, i32 %168, i32 %169)
  %170 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %171 = bitcast %struct._GimpLayer* %170 to %struct._GTypeInstance*
  %call217 = call i64 @gimp_drawable_get_type() #6
  %call218 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call217)
  %172 = bitcast %struct._GTypeInstance* %call218 to %struct._GimpDrawable*
  %call219 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %172)
  %173 = load i32, i32* %x2, align 4
  %174 = load i32, i32* %x1, align 4
  %sub220 = sub nsw i32 %173, %174
  %175 = load i32, i32* %y2, align 4
  %176 = load i32, i32* %y1, align 4
  %sub221 = sub nsw i32 %175, %176
  call void @pixel_region_init(%struct._PixelRegion* %src1PR, %struct._TileManager* %call219, i32 0, i32 0, i32 %sub220, i32 %sub221, i32 1)
  call void @clear_region(%struct._PixelRegion* %src1PR)
  %177 = load %struct._GSList*, %struct._GSList** %reverse_list, align 8
  %data222 = getelementptr inbounds %struct._GSList, %struct._GSList* %177, i32 0, i32 0
  %178 = load i8*, i8** %data222, align 8
  %179 = bitcast i8* %178 to %struct._GimpLayer*
  store %struct._GimpLayer* %179, %struct._GimpLayer** %layer, align 8
  %180 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call223 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %180)
  %181 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %182 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %183 = bitcast %struct._GimpLayer* %182 to %struct._GTypeInstance*
  %call224 = call i64 @gimp_object_get_type() #6
  %call225 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call224)
  %184 = bitcast %struct._GTypeInstance* %call225 to %struct._GimpObject*
  %call226 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %181, %struct._GimpObject* %184)
  %sub227 = sub nsw i32 %call223, %call226
  store i32 %sub227, i32* %position, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.214, %if.end.193
  %185 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %185, %struct._GimpLayer** %bottom_layer, align 8
  %186 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %187 = bitcast %struct._GimpLayer* %186 to %struct._GTypeInstance*
  %call229 = call i64 @gimp_item_get_type() #6
  %call230 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call229)
  %188 = bitcast %struct._GTypeInstance* %call230 to %struct._GimpItem*
  %189 = load %struct._GimpLayer*, %struct._GimpLayer** %bottom_layer, align 8
  %190 = bitcast %struct._GimpLayer* %189 to %struct._GTypeInstance*
  %call231 = call i64 @gimp_item_get_type() #6
  %call232 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call231)
  %191 = bitcast %struct._GTypeInstance* %call232 to %struct._GimpItem*
  %call233 = call i32 @gimp_item_get_tattoo(%struct._GimpItem* %191)
  call void @gimp_item_set_tattoo(%struct._GimpItem* %188, i32 %call233)
  %192 = load %struct._GimpLayer*, %struct._GimpLayer** %bottom_layer, align 8
  %193 = bitcast %struct._GimpLayer* %192 to %struct._GTypeInstance*
  %call234 = call i64 @gimp_item_get_type() #6
  %call235 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %193, i64 %call234)
  %194 = bitcast %struct._GTypeInstance* %call235 to %struct._GimpItem*
  %call236 = call %struct._GimpParasiteList* @gimp_item_get_parasites(%struct._GimpItem* %194)
  store %struct._GimpParasiteList* %call236, %struct._GimpParasiteList** %parasites, align 8
  %195 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %call237 = call %struct._GimpParasiteList* @gimp_parasite_list_copy(%struct._GimpParasiteList* %195)
  store %struct._GimpParasiteList* %call237, %struct._GimpParasiteList** %parasites, align 8
  %196 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %197 = bitcast %struct._GimpLayer* %196 to %struct._GTypeInstance*
  %call238 = call i64 @gimp_item_get_type() #6
  %call239 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %197, i64 %call238)
  %198 = bitcast %struct._GTypeInstance* %call239 to %struct._GimpItem*
  %199 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  call void @gimp_item_set_parasites(%struct._GimpItem* %198, %struct._GimpParasiteList* %199)
  %200 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %201 = bitcast %struct._GimpParasiteList* %200 to i8*
  call void @g_object_unref(i8* %201)
  %202 = load %struct._GSList*, %struct._GSList** %reverse_list, align 8
  store %struct._GSList* %202, %struct._GSList** %layers, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.367, %if.end.228
  %203 = load %struct._GSList*, %struct._GSList** %layers, align 8
  %tobool240 = icmp ne %struct._GSList* %203, null
  br i1 %tobool240, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %204 = bitcast [4 x i32]* %active to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* bitcast ([4 x i32]* @gimp_image_merge_layers.active to i8*), i64 16, i32 16, i1 false)
  %205 = load %struct._GSList*, %struct._GSList** %layers, align 8
  %data248 = getelementptr inbounds %struct._GSList, %struct._GSList* %205, i32 0, i32 0
  %206 = load i8*, i8** %data248, align 8
  %207 = bitcast i8* %206 to %struct._GimpLayer*
  store %struct._GimpLayer* %207, %struct._GimpLayer** %layer, align 8
  %208 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %209 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call249 = call i32 @gimp_image_merge_layers_get_operation(%struct._GimpLayer* %208, %struct._GimpLayer* %209)
  store i32 %call249, i32* %operation, align 4
  %210 = load i32, i32* %operation, align 4
  %cmp250 = icmp eq i32 %210, -1
  br i1 %cmp250, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %for.body
  %211 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_layer_add_alpha(%struct._GimpLayer* %211)
  %212 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %213 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call252 = call i32 @gimp_image_merge_layers_get_operation(%struct._GimpLayer* %212, %struct._GimpLayer* %213)
  store i32 %call252, i32* %operation, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.251, %for.body
  %214 = load i32, i32* %operation, align 4
  %cmp254 = icmp eq i32 %214, -1
  br i1 %cmp254, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.end.253
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_image_merge_layers, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.256:                                       ; preds = %if.end.253
  %215 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %216 = bitcast %struct._GimpLayer* %215 to %struct._GTypeInstance*
  %call257 = call i64 @gimp_item_get_type() #6
  %call258 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call257)
  %217 = bitcast %struct._GTypeInstance* %call258 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %217, i32* %off_x, i32* %off_y)
  %218 = load i32, i32* %off_x, align 4
  %219 = load i32, i32* %x2, align 4
  %cmp259 = icmp sgt i32 %218, %219
  br i1 %cmp259, label %cond.true.260, label %cond.false.261

cond.true.260:                                    ; preds = %if.end.256
  %220 = load i32, i32* %x2, align 4
  br label %cond.end.267

cond.false.261:                                   ; preds = %if.end.256
  %221 = load i32, i32* %off_x, align 4
  %222 = load i32, i32* %x1, align 4
  %cmp262 = icmp slt i32 %221, %222
  br i1 %cmp262, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %cond.false.261
  %223 = load i32, i32* %x1, align 4
  br label %cond.end.265

cond.false.264:                                   ; preds = %cond.false.261
  %224 = load i32, i32* %off_x, align 4
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.263
  %cond266 = phi i32 [ %223, %cond.true.263 ], [ %224, %cond.false.264 ]
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.end.265, %cond.true.260
  %cond268 = phi i32 [ %220, %cond.true.260 ], [ %cond266, %cond.end.265 ]
  store i32 %cond268, i32* %x3, align 4
  %225 = load i32, i32* %off_y, align 4
  %226 = load i32, i32* %y2, align 4
  %cmp269 = icmp sgt i32 %225, %226
  br i1 %cmp269, label %cond.true.270, label %cond.false.271

cond.true.270:                                    ; preds = %cond.end.267
  %227 = load i32, i32* %y2, align 4
  br label %cond.end.277

cond.false.271:                                   ; preds = %cond.end.267
  %228 = load i32, i32* %off_y, align 4
  %229 = load i32, i32* %y1, align 4
  %cmp272 = icmp slt i32 %228, %229
  br i1 %cmp272, label %cond.true.273, label %cond.false.274

cond.true.273:                                    ; preds = %cond.false.271
  %230 = load i32, i32* %y1, align 4
  br label %cond.end.275

cond.false.274:                                   ; preds = %cond.false.271
  %231 = load i32, i32* %off_y, align 4
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.274, %cond.true.273
  %cond276 = phi i32 [ %230, %cond.true.273 ], [ %231, %cond.false.274 ]
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.end.275, %cond.true.270
  %cond278 = phi i32 [ %227, %cond.true.270 ], [ %cond276, %cond.end.275 ]
  store i32 %cond278, i32* %y3, align 4
  %232 = load i32, i32* %off_x, align 4
  %233 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %234 = bitcast %struct._GimpLayer* %233 to %struct._GTypeInstance*
  %call279 = call i64 @gimp_item_get_type() #6
  %call280 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %234, i64 %call279)
  %235 = bitcast %struct._GTypeInstance* %call280 to %struct._GimpItem*
  %call281 = call i32 @gimp_item_get_width(%struct._GimpItem* %235)
  %add282 = add nsw i32 %232, %call281
  %236 = load i32, i32* %x2, align 4
  %cmp283 = icmp sgt i32 %add282, %236
  br i1 %cmp283, label %cond.true.284, label %cond.false.285

cond.true.284:                                    ; preds = %cond.end.277
  %237 = load i32, i32* %x2, align 4
  br label %cond.end.299

cond.false.285:                                   ; preds = %cond.end.277
  %238 = load i32, i32* %off_x, align 4
  %239 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %240 = bitcast %struct._GimpLayer* %239 to %struct._GTypeInstance*
  %call286 = call i64 @gimp_item_get_type() #6
  %call287 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %240, i64 %call286)
  %241 = bitcast %struct._GTypeInstance* %call287 to %struct._GimpItem*
  %call288 = call i32 @gimp_item_get_width(%struct._GimpItem* %241)
  %add289 = add nsw i32 %238, %call288
  %242 = load i32, i32* %x1, align 4
  %cmp290 = icmp slt i32 %add289, %242
  br i1 %cmp290, label %cond.true.291, label %cond.false.292

cond.true.291:                                    ; preds = %cond.false.285
  %243 = load i32, i32* %x1, align 4
  br label %cond.end.297

cond.false.292:                                   ; preds = %cond.false.285
  %244 = load i32, i32* %off_x, align 4
  %245 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %246 = bitcast %struct._GimpLayer* %245 to %struct._GTypeInstance*
  %call293 = call i64 @gimp_item_get_type() #6
  %call294 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %246, i64 %call293)
  %247 = bitcast %struct._GTypeInstance* %call294 to %struct._GimpItem*
  %call295 = call i32 @gimp_item_get_width(%struct._GimpItem* %247)
  %add296 = add nsw i32 %244, %call295
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.false.292, %cond.true.291
  %cond298 = phi i32 [ %243, %cond.true.291 ], [ %add296, %cond.false.292 ]
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.end.297, %cond.true.284
  %cond300 = phi i32 [ %237, %cond.true.284 ], [ %cond298, %cond.end.297 ]
  store i32 %cond300, i32* %x4, align 4
  %248 = load i32, i32* %off_y, align 4
  %249 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %250 = bitcast %struct._GimpLayer* %249 to %struct._GTypeInstance*
  %call301 = call i64 @gimp_item_get_type() #6
  %call302 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %250, i64 %call301)
  %251 = bitcast %struct._GTypeInstance* %call302 to %struct._GimpItem*
  %call303 = call i32 @gimp_item_get_height(%struct._GimpItem* %251)
  %add304 = add nsw i32 %248, %call303
  %252 = load i32, i32* %y2, align 4
  %cmp305 = icmp sgt i32 %add304, %252
  br i1 %cmp305, label %cond.true.306, label %cond.false.307

cond.true.306:                                    ; preds = %cond.end.299
  %253 = load i32, i32* %y2, align 4
  br label %cond.end.321

cond.false.307:                                   ; preds = %cond.end.299
  %254 = load i32, i32* %off_y, align 4
  %255 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %256 = bitcast %struct._GimpLayer* %255 to %struct._GTypeInstance*
  %call308 = call i64 @gimp_item_get_type() #6
  %call309 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %256, i64 %call308)
  %257 = bitcast %struct._GTypeInstance* %call309 to %struct._GimpItem*
  %call310 = call i32 @gimp_item_get_height(%struct._GimpItem* %257)
  %add311 = add nsw i32 %254, %call310
  %258 = load i32, i32* %y1, align 4
  %cmp312 = icmp slt i32 %add311, %258
  br i1 %cmp312, label %cond.true.313, label %cond.false.314

cond.true.313:                                    ; preds = %cond.false.307
  %259 = load i32, i32* %y1, align 4
  br label %cond.end.319

cond.false.314:                                   ; preds = %cond.false.307
  %260 = load i32, i32* %off_y, align 4
  %261 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %262 = bitcast %struct._GimpLayer* %261 to %struct._GTypeInstance*
  %call315 = call i64 @gimp_item_get_type() #6
  %call316 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %262, i64 %call315)
  %263 = bitcast %struct._GTypeInstance* %call316 to %struct._GimpItem*
  %call317 = call i32 @gimp_item_get_height(%struct._GimpItem* %263)
  %add318 = add nsw i32 %260, %call317
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.false.314, %cond.true.313
  %cond320 = phi i32 [ %259, %cond.true.313 ], [ %add318, %cond.false.314 ]
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.end.319, %cond.true.306
  %cond322 = phi i32 [ %253, %cond.true.306 ], [ %cond320, %cond.end.319 ]
  store i32 %cond322, i32* %y4, align 4
  %264 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %265 = bitcast %struct._GimpLayer* %264 to %struct._GTypeInstance*
  %call323 = call i64 @gimp_drawable_get_type() #6
  %call324 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %265, i64 %call323)
  %266 = bitcast %struct._GTypeInstance* %call324 to %struct._GimpDrawable*
  %call325 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %266)
  %267 = load i32, i32* %x3, align 4
  %268 = load i32, i32* %x1, align 4
  %sub326 = sub nsw i32 %267, %268
  %269 = load i32, i32* %y3, align 4
  %270 = load i32, i32* %y1, align 4
  %sub327 = sub nsw i32 %269, %270
  %271 = load i32, i32* %x4, align 4
  %272 = load i32, i32* %x3, align 4
  %sub328 = sub nsw i32 %271, %272
  %273 = load i32, i32* %y4, align 4
  %274 = load i32, i32* %y3, align 4
  %sub329 = sub nsw i32 %273, %274
  call void @pixel_region_init(%struct._PixelRegion* %src1PR, %struct._TileManager* %call325, i32 %sub326, i32 %sub327, i32 %sub328, i32 %sub329, i32 1)
  %275 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %276 = bitcast %struct._GimpLayer* %275 to %struct._GTypeInstance*
  %call330 = call i64 @gimp_drawable_get_type() #6
  %call331 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %276, i64 %call330)
  %277 = bitcast %struct._GTypeInstance* %call331 to %struct._GimpDrawable*
  %call332 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %277)
  %278 = load i32, i32* %x3, align 4
  %279 = load i32, i32* %off_x, align 4
  %sub333 = sub nsw i32 %278, %279
  %280 = load i32, i32* %y3, align 4
  %281 = load i32, i32* %off_y, align 4
  %sub334 = sub nsw i32 %280, %281
  %282 = load i32, i32* %x4, align 4
  %283 = load i32, i32* %x3, align 4
  %sub335 = sub nsw i32 %282, %283
  %284 = load i32, i32* %y4, align 4
  %285 = load i32, i32* %y3, align 4
  %sub336 = sub nsw i32 %284, %285
  call void @pixel_region_init(%struct._PixelRegion* %src2PR, %struct._TileManager* %call332, i32 %sub333, i32 %sub334, i32 %sub335, i32 %sub336, i32 0)
  %286 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call337 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %286)
  %tobool338 = icmp ne %struct._GimpLayerMask* %call337, null
  br i1 %tobool338, label %land.lhs.true.339, label %if.else.353

land.lhs.true.339:                                ; preds = %cond.end.321
  %287 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask340 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %287, i32 0, i32 4
  %288 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask340, align 8
  %call341 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %288)
  %tobool342 = icmp ne i32 %call341, 0
  br i1 %tobool342, label %if.then.343, label %if.else.353

if.then.343:                                      ; preds = %land.lhs.true.339
  %289 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask345 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %289, i32 0, i32 4
  %290 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask345, align 8
  %291 = bitcast %struct._GimpLayerMask* %290 to %struct._GTypeInstance*
  %call346 = call i64 @gimp_drawable_get_type() #6
  %call347 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %291, i64 %call346)
  %292 = bitcast %struct._GTypeInstance* %call347 to %struct._GimpDrawable*
  %call348 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %292)
  store %struct._TileManager* %call348, %struct._TileManager** %tiles, align 8
  %293 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %294 = load i32, i32* %x3, align 4
  %295 = load i32, i32* %off_x, align 4
  %sub349 = sub nsw i32 %294, %295
  %296 = load i32, i32* %y3, align 4
  %297 = load i32, i32* %off_y, align 4
  %sub350 = sub nsw i32 %296, %297
  %298 = load i32, i32* %x4, align 4
  %299 = load i32, i32* %x3, align 4
  %sub351 = sub nsw i32 %298, %299
  %300 = load i32, i32* %y4, align 4
  %301 = load i32, i32* %y3, align 4
  %sub352 = sub nsw i32 %300, %301
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %293, i32 %sub349, i32 %sub350, i32 %sub351, i32 %sub352, i32 0)
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %mask, align 8
  br label %if.end.354

if.else.353:                                      ; preds = %land.lhs.true.339, %cond.end.321
  store %struct._PixelRegion* null, %struct._PixelRegion** %mask, align 8
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.353, %if.then.343
  %302 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call355 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %302)
  store i32 %call355, i32* %mode, align 4
  %303 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %304 = load %struct._GimpLayer*, %struct._GimpLayer** %bottom_layer, align 8
  %cmp356 = icmp eq %struct._GimpLayer* %303, %304
  br i1 %cmp356, label %land.lhs.true.357, label %if.end.360

land.lhs.true.357:                                ; preds = %if.end.354
  %305 = load i32, i32* %mode, align 4
  %cmp358 = icmp ne i32 %305, 1
  br i1 %cmp358, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %land.lhs.true.357
  store i32 0, i32* %mode, align 4
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.359, %land.lhs.true.357, %if.end.354
  %306 = load %struct._PixelRegion*, %struct._PixelRegion** %mask, align 8
  %307 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call361 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %307)
  %mul = fmul double %call361, 2.559990e+02
  %conv = fptoui double %mul to i32
  %308 = load i32, i32* %mode, align 4
  %arraydecay362 = getelementptr inbounds [4 x i32], [4 x i32]* %active, i32 0, i32 0
  %309 = load i32, i32* %operation, align 4
  call void @combine_regions(%struct._PixelRegion* %src1PR, %struct._PixelRegion* %src2PR, %struct._PixelRegion* %src1PR, %struct._PixelRegion* %306, i8* null, i32 %conv, i32 %308, i32* %arraydecay362, i32 %309)
  %310 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %311 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_image_remove_layer(%struct._GimpImage* %310, %struct._GimpLayer* %311, i32 1, %struct._GimpLayer* null)
  br label %for.inc

for.inc:                                          ; preds = %if.end.360
  %312 = load %struct._GSList*, %struct._GSList** %layers, align 8
  %tobool363 = icmp ne %struct._GSList* %312, null
  br i1 %tobool363, label %cond.true.364, label %cond.false.366

cond.true.364:                                    ; preds = %for.inc
  %313 = load %struct._GSList*, %struct._GSList** %layers, align 8
  %next365 = getelementptr inbounds %struct._GSList, %struct._GSList* %313, i32 0, i32 1
  %314 = load %struct._GSList*, %struct._GSList** %next365, align 8
  br label %cond.end.367

cond.false.366:                                   ; preds = %for.inc
  br label %cond.end.367

cond.end.367:                                     ; preds = %cond.false.366, %cond.true.364
  %cond368 = phi %struct._GSList* [ %314, %cond.true.364 ], [ null, %cond.false.366 ]
  store %struct._GSList* %cond368, %struct._GSList** %layers, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %315 = load %struct._GSList*, %struct._GSList** %reverse_list, align 8
  call void @g_slist_free(%struct._GSList* %315)
  %316 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %317 = bitcast %struct._GimpLayer* %316 to %struct._GTypeInstance*
  %call369 = call i64 @gimp_object_get_type() #6
  %call370 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %317, i64 %call369)
  %318 = bitcast %struct._GTypeInstance* %call370 to %struct._GimpObject*
  %319 = load i8*, i8** %name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %318, i8* %319)
  %320 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %321 = bitcast %struct._GimpLayer* %320 to %struct._GTypeInstance*
  %call371 = call i64 @gimp_item_get_type() #6
  %call372 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %321, i64 %call371)
  %322 = bitcast %struct._GTypeInstance* %call372 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %322, i32 1, i32 0)
  %323 = load i32, i32* %merge_type.addr, align 4
  %cmp373 = icmp eq i32 %323, 3
  br i1 %cmp373, label %if.then.375, label %if.else.389

if.then.375:                                      ; preds = %for.end
  %324 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call376 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %324)
  store %struct._GList* %call376, %struct._GList** %list, align 8
  br label %while.cond.377

while.cond.377:                                   ; preds = %cond.end.385, %if.then.375
  %325 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool378 = icmp ne %struct._GList* %325, null
  br i1 %tobool378, label %while.body.379, label %while.end.387

while.body.379:                                   ; preds = %while.cond.377
  %326 = load %struct._GList*, %struct._GList** %list, align 8
  %data380 = getelementptr inbounds %struct._GList, %struct._GList* %326, i32 0, i32 0
  %327 = load i8*, i8** %data380, align 8
  %328 = bitcast i8* %327 to %struct._GimpLayer*
  store %struct._GimpLayer* %328, %struct._GimpLayer** %layer, align 8
  %329 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool381 = icmp ne %struct._GList* %329, null
  br i1 %tobool381, label %cond.true.382, label %cond.false.384

cond.true.382:                                    ; preds = %while.body.379
  %330 = load %struct._GList*, %struct._GList** %list, align 8
  %next383 = getelementptr inbounds %struct._GList, %struct._GList* %330, i32 0, i32 1
  %331 = load %struct._GList*, %struct._GList** %next383, align 8
  br label %cond.end.385

cond.false.384:                                   ; preds = %while.body.379
  br label %cond.end.385

cond.end.385:                                     ; preds = %cond.false.384, %cond.true.382
  %cond386 = phi %struct._GList* [ %331, %cond.true.382 ], [ null, %cond.false.384 ]
  store %struct._GList* %cond386, %struct._GList** %list, align 8
  %332 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %333 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_image_remove_layer(%struct._GimpImage* %332, %struct._GimpLayer* %333, i32 1, %struct._GimpLayer* null)
  br label %while.cond.377

while.end.387:                                    ; preds = %while.cond.377
  %334 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %335 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %336 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %337 = load i32, i32* %position, align 4
  %call388 = call i32 @gimp_image_add_layer(%struct._GimpImage* %334, %struct._GimpLayer* %335, %struct._GimpLayer* %336, i32 %337, i32 1)
  br label %if.end.394

if.else.389:                                      ; preds = %for.end
  %338 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %339 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %340 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %341 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call390 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %341)
  %342 = load i32, i32* %position, align 4
  %sub391 = sub nsw i32 %call390, %342
  %add392 = add nsw i32 %sub391, 1
  %call393 = call i32 @gimp_image_add_layer(%struct._GimpImage* %338, %struct._GimpLayer* %339, %struct._GimpLayer* %340, i32 %add392, i32 1)
  br label %if.end.394

if.end.394:                                       ; preds = %if.else.389, %while.end.387
  %343 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %344 = bitcast %struct._GimpLayer* %343 to %struct._GTypeInstance*
  %call395 = call i64 @gimp_drawable_get_type() #6
  %call396 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %344, i64 %call395)
  %345 = bitcast %struct._GTypeInstance* %call396 to %struct._GimpDrawable*
  %346 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %347 = bitcast %struct._GimpLayer* %346 to %struct._GTypeInstance*
  %call397 = call i64 @gimp_item_get_type() #6
  %call398 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %347, i64 %call397)
  %348 = bitcast %struct._GTypeInstance* %call398 to %struct._GimpItem*
  %call399 = call i32 @gimp_item_get_width(%struct._GimpItem* %348)
  %349 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  %350 = bitcast %struct._GimpLayer* %349 to %struct._GTypeInstance*
  %call400 = call i64 @gimp_item_get_type() #6
  %call401 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %350, i64 %call400)
  %351 = bitcast %struct._GTypeInstance* %call401 to %struct._GimpItem*
  %call402 = call i32 @gimp_item_get_height(%struct._GimpItem* %351)
  call void @gimp_drawable_update(%struct._GimpDrawable* %345, i32 0, i32 0, i32 %call399, i32 %call402)
  %352 = load %struct._GimpLayer*, %struct._GimpLayer** %merge_layer, align 8
  store %struct._GimpLayer* %352, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.394, %if.then.255, %if.then.213, %if.then.192, %if.then.159, %if.else.36, %if.else.9
  %353 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %353
}

declare void @g_slist_free(%struct._GSList*) #3

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_image_flatten(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %list = alloca %struct._GList*, align 8
  %merge_list = alloca %struct._GSList*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
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
  store %struct._GSList* null, %struct._GSList** %merge_list, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_flatten, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_flatten, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_image_flatten, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call46 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %29)
  store %struct._GList* %call46, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.45
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool47 = icmp ne %struct._GList* %30, null
  br i1 %tobool47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 0
  %32 = load i8*, i8** %data, align 8
  %33 = bitcast i8* %32 to %struct._GimpLayer*
  store %struct._GimpLayer* %33, %struct._GimpLayer** %layer, align 8
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call48 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %34)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.body
  br label %for.inc

if.end.51:                                        ; preds = %for.body
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %36 = bitcast %struct._GimpLayer* %35 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_item_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call52)
  %37 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpItem*
  %call54 = call i32 @gimp_item_get_visible(%struct._GimpItem* %37)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.51
  %38 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %40 = bitcast %struct._GimpLayer* %39 to i8*
  %call57 = call %struct._GSList* @g_slist_append(%struct._GSList* %38, i8* %40)
  store %struct._GSList* %call57, %struct._GSList** %merge_list, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.51
  br label %for.inc

for.inc:                                          ; preds = %if.end.58, %if.then.50
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool59 = icmp ne %struct._GList* %41, null
  br i1 %tobool59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %43, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  %tobool60 = icmp ne %struct._GSList* %44, null
  br i1 %tobool60, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %for.end
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %45, i32 0, i32 1
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %46)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call62 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i64 10)
  %call63 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %47, i32 8, i8* %call62)
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call64 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %48)
  %tobool65 = icmp ne %struct._GimpLayer* %call64, null
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.61
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call67 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %49)
  call void @floating_sel_anchor(%struct._GimpLayer* %call67)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.then.61
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call69 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %51)
  %52 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call70 = call %struct._GimpLayer* @gimp_image_merge_layers(%struct._GimpImage* %50, %struct._GimpContainer* %call69, %struct._GSList* %52, %struct._GimpContext* %53, i32 3)
  store %struct._GimpLayer* %call70, %struct._GimpLayer** %layer, align 8
  %54 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  call void @g_slist_free(%struct._GSList* %54)
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_alpha_changed(%struct._GimpImage* %55)
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call71 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %56)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp72 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %57, i32 0, i32 1
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp72, align 8
  call void @gimp_unset_busy(%struct._Gimp* %58)
  %59 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %59, %struct._GimpLayer** %retval
  br label %return

if.end.73:                                        ; preds = %for.end
  %60 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call74 = call i32 @gimp_error_quark() #6
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %60, i32 %call74, i32 0, i8* %call75)
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.end.68, %if.else.43, %if.else.36, %if.else.9
  %61 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %61
}

declare %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage*) #3

declare void @gimp_image_alpha_changed(%struct._GimpImage*) #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_image_merge_down(%struct._GimpImage* %image, %struct._GimpLayer* %current_layer, %struct._GimpContext* %context, i32 %merge_type, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %current_layer.addr = alloca %struct._GimpLayer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %merge_type.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %list = alloca %struct._GList*, align 8
  %layer_list = alloca %struct._GList*, align 8
  %merge_list = alloca %struct._GSList*, align 8
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
  store %struct._GimpLayer* %current_layer, %struct._GimpLayer** %current_layer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %merge_type, i32* %merge_type.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GList* null, %struct._GList** %layer_list, align 8
  store %struct._GSList* null, %struct._GSList** %merge_list, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_merge_down, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %current_layer.addr, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_layer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_merge_down, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %current_layer.addr, align 8
  %27 = bitcast %struct._GimpLayer* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_merge_down, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_merge_down, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_merge_down, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.81:                                        ; preds = %if.then.79
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %45 = load %struct._GimpLayer*, %struct._GimpLayer** %current_layer.addr, align 8
  %46 = bitcast %struct._GimpLayer* %45 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_item_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call83)
  %47 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpItem*
  %call85 = call %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem* %47)
  store %struct._GList* %call85, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.82
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool86 = icmp ne %struct._GList* %48, null
  br i1 %tobool86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data, align 8
  %51 = bitcast i8* %50 to %struct._GimpLayer*
  store %struct._GimpLayer* %51, %struct._GimpLayer** %layer, align 8
  %52 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %53 = load %struct._GimpLayer*, %struct._GimpLayer** %current_layer.addr, align 8
  %cmp87 = icmp eq %struct._GimpLayer* %52, %53
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %for.body
  br label %for.end

if.end.89:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.89
  %54 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool90 = icmp ne %struct._GList* %54, null
  br i1 %tobool90, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %55 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %55, i32 0, i32 1
  %56 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %56, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.88, %for.cond
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool91 = icmp ne %struct._GList* %57, null
  br i1 %tobool91, label %cond.true.92, label %cond.false.94

cond.true.92:                                     ; preds = %for.end
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %next93 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %next93, align 8
  br label %cond.end.95

cond.false.94:                                    ; preds = %for.end
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.92
  %cond96 = phi %struct._GList* [ %59, %cond.true.92 ], [ null, %cond.false.94 ]
  store %struct._GList* %cond96, %struct._GList** %layer_list, align 8
  br label %for.cond.97

for.cond.97:                                      ; preds = %cond.end.127, %cond.end.95
  %60 = load %struct._GList*, %struct._GList** %layer_list, align 8
  %tobool98 = icmp ne %struct._GList* %60, null
  br i1 %tobool98, label %for.body.99, label %for.end.129

for.body.99:                                      ; preds = %for.cond.97
  %61 = load %struct._GList*, %struct._GList** %layer_list, align 8
  %data100 = getelementptr inbounds %struct._GList, %struct._GList* %61, i32 0, i32 0
  %62 = load i8*, i8** %data100, align 8
  %63 = bitcast i8* %62 to %struct._GimpLayer*
  store %struct._GimpLayer* %63, %struct._GimpLayer** %layer, align 8
  %64 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %65 = bitcast %struct._GimpLayer* %64 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_item_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call101)
  %66 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpItem*
  %call103 = call i32 @gimp_item_get_visible(%struct._GimpItem* %66)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.121

if.then.105:                                      ; preds = %for.body.99
  %67 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %68 = bitcast %struct._GimpLayer* %67 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_viewable_get_type() #6
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call106)
  %69 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpViewable*
  %call108 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %69)
  %tobool109 = icmp ne %struct._GimpContainer* %call108, null
  br i1 %tobool109, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.then.105
  %70 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call111 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %70, i32 0, i32 0, i8* %call111)
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.112:                                       ; preds = %if.then.105
  %71 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %72 = bitcast %struct._GimpLayer* %71 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_item_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call113)
  %73 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpItem*
  %call115 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %73)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.112
  %74 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call118 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %74, i32 0, i32 0, i8* %call118)
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.119:                                       ; preds = %if.end.112
  %75 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %76 = bitcast %struct._GimpLayer* %75 to i8*
  %call120 = call %struct._GSList* @g_slist_append(%struct._GSList* null, i8* %76)
  store %struct._GSList* %call120, %struct._GSList** %merge_list, align 8
  br label %for.end.129

if.end.121:                                       ; preds = %for.body.99
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %77 = load %struct._GList*, %struct._GList** %layer_list, align 8
  %tobool123 = icmp ne %struct._GList* %77, null
  br i1 %tobool123, label %cond.true.124, label %cond.false.126

cond.true.124:                                    ; preds = %for.inc.122
  %78 = load %struct._GList*, %struct._GList** %layer_list, align 8
  %next125 = getelementptr inbounds %struct._GList, %struct._GList* %78, i32 0, i32 1
  %79 = load %struct._GList*, %struct._GList** %next125, align 8
  br label %cond.end.127

cond.false.126:                                   ; preds = %for.inc.122
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.126, %cond.true.124
  %cond128 = phi %struct._GList* [ %79, %cond.true.124 ], [ null, %cond.false.126 ]
  store %struct._GList* %cond128, %struct._GList** %layer_list, align 8
  br label %for.cond.97

for.end.129:                                      ; preds = %if.end.119, %for.cond.97
  %80 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  %tobool130 = icmp ne %struct._GSList* %80, null
  br i1 %tobool130, label %if.end.133, label %if.then.131

if.then.131:                                      ; preds = %for.end.129
  %81 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call132 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %81, i32 0, i32 0, i8* %call132)
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.133:                                       ; preds = %for.end.129
  %82 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  %83 = load %struct._GimpLayer*, %struct._GimpLayer** %current_layer.addr, align 8
  %84 = bitcast %struct._GimpLayer* %83 to i8*
  %call134 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %82, i8* %84)
  store %struct._GSList* %call134, %struct._GSList** %merge_list, align 8
  %85 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %85, i32 0, i32 1
  %86 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %86)
  %87 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call135 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i64 10)
  %call136 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %87, i32 8, i8* %call135)
  %88 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %89 = load %struct._GimpLayer*, %struct._GimpLayer** %current_layer.addr, align 8
  %90 = bitcast %struct._GimpLayer* %89 to %struct._GTypeInstance*
  %call137 = call i64 @gimp_item_get_type() #6
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call137)
  %91 = bitcast %struct._GTypeInstance* %call138 to %struct._GimpItem*
  %call139 = call %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %91)
  %92 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  %93 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %94 = load i32, i32* %merge_type.addr, align 4
  %call140 = call %struct._GimpLayer* @gimp_image_merge_layers(%struct._GimpImage* %88, %struct._GimpContainer* %call139, %struct._GSList* %92, %struct._GimpContext* %93, i32 %94)
  store %struct._GimpLayer* %call140, %struct._GimpLayer** %layer, align 8
  %95 = load %struct._GSList*, %struct._GSList** %merge_list, align 8
  call void @g_slist_free(%struct._GSList* %95)
  %96 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call141 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %96)
  %97 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp142 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %97, i32 0, i32 1
  %98 = load %struct._Gimp*, %struct._Gimp** %gimp142, align 8
  call void @gimp_unset_busy(%struct._Gimp* %98)
  %99 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %99, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.133, %if.then.131, %if.then.117, %if.then.110, %if.else.80, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %100 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %100
}

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem*) #3

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #3

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_image_merge_group_layer(%struct._GimpImage* %image, %struct._GimpGroupLayer* %group) #0 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %group.addr = alloca %struct._GimpGroupLayer*, align 8
  %parent = alloca %struct._GimpLayer*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %index = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpGroupLayer* %group, %struct._GimpGroupLayer** %group.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_merge_group_layer, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %14 = bitcast %struct._GimpGroupLayer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_group_layer_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_merge_group_layer, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %27 = bitcast %struct._GimpGroupLayer* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_merge_group_layer, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %30 = bitcast %struct._GimpGroupLayer* %29 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call49)
  %31 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  %call51 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp52 = icmp eq %struct._GimpImage* %call51, %32
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.55

if.else.54:                                       ; preds = %do.body.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_image_merge_group_layer, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.55:                                        ; preds = %if.then.53
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call57 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i64 10)
  %call58 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %33, i32 8, i8* %call57)
  %34 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %35 = bitcast %struct._GimpGroupLayer* %34 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_layer_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call59)
  %36 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpLayer*
  %call61 = call %struct._GimpLayer* @gimp_layer_get_parent(%struct._GimpLayer* %36)
  store %struct._GimpLayer* %call61, %struct._GimpLayer** %parent, align 8
  %37 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %38 = bitcast %struct._GimpGroupLayer* %37 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_item_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call62)
  %39 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpItem*
  %call64 = call i32 @gimp_item_get_index(%struct._GimpItem* %39)
  store i32 %call64, i32* %index, align 4
  %40 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %41 = bitcast %struct._GimpGroupLayer* %40 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_item_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call65)
  %42 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpItem*
  %call67 = call i64 @gimp_layer_get_type() #6
  %call68 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %42, i64 %call67)
  %43 = bitcast %struct._GimpItem* %call68 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_layer_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call69)
  %44 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpLayer*
  store %struct._GimpLayer* %44, %struct._GimpLayer** %layer, align 8
  %45 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %46 = bitcast %struct._GimpLayer* %45 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_object_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call71)
  %47 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpObject*
  %48 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %49 = bitcast %struct._GimpGroupLayer* %48 to i8*
  %call73 = call i8* @gimp_object_get_name(i8* %49)
  call void @gimp_object_set_name(%struct._GimpObject* %47, i8* %call73)
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %51 = load %struct._GimpGroupLayer*, %struct._GimpGroupLayer** %group.addr, align 8
  %52 = bitcast %struct._GimpGroupLayer* %51 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_layer_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call74)
  %53 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpLayer*
  call void @gimp_image_remove_layer(%struct._GimpImage* %50, %struct._GimpLayer* %53, i32 1, %struct._GimpLayer* null)
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %55 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %parent, align 8
  %57 = load i32, i32* %index, align 4
  %call76 = call i32 @gimp_image_add_layer(%struct._GimpImage* %54, %struct._GimpLayer* %55, %struct._GimpLayer* %56, i32 %57, i32 1)
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call77 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %58)
  %59 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %59, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %do.end.56, %if.else.54, %if.else.45, %if.else.36, %if.else.9
  %60 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %60
}

; Function Attrs: nounwind readnone
declare i64 @gimp_group_layer_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare %struct._GimpLayer* @gimp_layer_get_parent(%struct._GimpLayer*) #3

declare i32 @gimp_item_get_index(%struct._GimpItem*) #3

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #3

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare i8* @gimp_object_get_name(i8*) #3

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #3

; Function Attrs: nounwind uwtable
define %struct._GimpVectors* @gimp_image_merge_visible_vectors(%struct._GimpImage* %image, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpVectors*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %list = alloca %struct._GList*, align 8
  %merge_list = alloca %struct._GList*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %target_vectors = alloca %struct._GimpVectors*, align 8
  %name = alloca i8*, align 8
  %pos = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store %struct._GList* null, %struct._GList** %merge_list, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_merge_visible_vectors, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_merge_visible_vectors, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call18 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %16)
  store %struct._GList* %call18, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.17
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool19 = icmp ne %struct._GList* %17, null
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpVectors*
  store %struct._GimpVectors* %20, %struct._GimpVectors** %vectors, align 8
  %21 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %22 = bitcast %struct._GimpVectors* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %call22 = call i32 @gimp_item_get_visible(%struct._GimpItem* %23)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.body
  %24 = load %struct._GList*, %struct._GList** %merge_list, align 8
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %26 = bitcast %struct._GimpVectors* %25 to i8*
  %call25 = call %struct._GList* @g_list_prepend(%struct._GList* %24, i8* %26)
  store %struct._GList* %call25, %struct._GList** %merge_list, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool27 = icmp ne %struct._GList* %27, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._GList*, %struct._GList** %merge_list, align 8
  %call28 = call %struct._GList* @g_list_reverse(%struct._GList* %30)
  store %struct._GList* %call28, %struct._GList** %merge_list, align 8
  %31 = load %struct._GList*, %struct._GList** %merge_list, align 8
  %tobool29 = icmp ne %struct._GList* %31, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.76

land.lhs.true.30:                                 ; preds = %for.end
  %32 = load %struct._GList*, %struct._GList** %merge_list, align 8
  %next31 = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next31, align 8
  %tobool32 = icmp ne %struct._GList* %33, null
  br i1 %tobool32, label %if.then.33, label %if.else.76

if.then.33:                                       ; preds = %land.lhs.true.30
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %34, i32 0, i32 1
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %35)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call37 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i64 10)
  %call38 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %36, i32 9, i8* %call37)
  %37 = load %struct._GList*, %struct._GList** %merge_list, align 8
  %data39 = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 0
  %38 = load i8*, i8** %data39, align 8
  %39 = bitcast i8* %38 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_vectors_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call40)
  %40 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpVectors*
  store %struct._GimpVectors* %40, %struct._GimpVectors** %vectors, align 8
  %41 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %42 = bitcast %struct._GimpVectors* %41 to i8*
  %call42 = call i8* @gimp_object_get_name(i8* %42)
  %call43 = call noalias i8* @g_strdup(i8* %call42)
  store i8* %call43, i8** %name, align 8
  %43 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %44 = bitcast %struct._GimpVectors* %43 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_item_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call44)
  %45 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpItem*
  %call46 = call i32 @gimp_item_get_index(%struct._GimpItem* %45)
  store i32 %call46, i32* %pos, align 4
  %46 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %47 = bitcast %struct._GimpVectors* %46 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_item_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call47)
  %48 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpItem*
  %call49 = call i64 @gimp_vectors_get_type() #6
  %call50 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %48, i64 %call49)
  %49 = bitcast %struct._GimpItem* %call50 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_vectors_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call51)
  %50 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpVectors*
  store %struct._GimpVectors* %50, %struct._GimpVectors** %target_vectors, align 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %52 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_image_remove_vectors(%struct._GimpImage* %51, %struct._GimpVectors* %52, i32 1, %struct._GimpVectors* null)
  %53 = load %struct._GList*, %struct._GList** %merge_list, align 8
  %tobool53 = icmp ne %struct._GList* %53, null
  br i1 %tobool53, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %if.then.33
  %54 = load %struct._GList*, %struct._GList** %merge_list, align 8
  %next55 = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 1
  %55 = load %struct._GList*, %struct._GList** %next55, align 8
  br label %cond.end.57

cond.false.56:                                    ; preds = %if.then.33
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.54
  %cond58 = phi %struct._GList* [ %55, %cond.true.54 ], [ null, %cond.false.56 ]
  store %struct._GList* %cond58, %struct._GList** %list, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %cond.end.68, %cond.end.57
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool60 = icmp ne %struct._GList* %56, null
  br i1 %tobool60, label %for.body.61, label %for.end.70

for.body.61:                                      ; preds = %for.cond.59
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %data62 = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 0
  %58 = load i8*, i8** %data62, align 8
  %59 = bitcast i8* %58 to %struct._GimpVectors*
  store %struct._GimpVectors* %59, %struct._GimpVectors** %vectors, align 8
  %60 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %61 = load %struct._GimpVectors*, %struct._GimpVectors** %target_vectors, align 8
  call void @gimp_vectors_add_strokes(%struct._GimpVectors* %60, %struct._GimpVectors* %61)
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %63 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  call void @gimp_image_remove_vectors(%struct._GimpImage* %62, %struct._GimpVectors* %63, i32 1, %struct._GimpVectors* null)
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.61
  %64 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool64 = icmp ne %struct._GList* %64, null
  br i1 %tobool64, label %cond.true.65, label %cond.false.67

cond.true.65:                                     ; preds = %for.inc.63
  %65 = load %struct._GList*, %struct._GList** %list, align 8
  %next66 = getelementptr inbounds %struct._GList, %struct._GList* %65, i32 0, i32 1
  %66 = load %struct._GList*, %struct._GList** %next66, align 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %for.inc.63
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.65
  %cond69 = phi %struct._GList* [ %66, %cond.true.65 ], [ null, %cond.false.67 ]
  store %struct._GList* %cond69, %struct._GList** %list, align 8
  br label %for.cond.59

for.end.70:                                       ; preds = %for.cond.59
  %67 = load %struct._GimpVectors*, %struct._GimpVectors** %target_vectors, align 8
  %68 = bitcast %struct._GimpVectors* %67 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_object_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call71)
  %69 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpObject*
  %70 = load i8*, i8** %name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %69, i8* %70)
  %71 = load %struct._GList*, %struct._GList** %merge_list, align 8
  call void @g_list_free(%struct._GList* %71)
  %72 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %73 = load %struct._GimpVectors*, %struct._GimpVectors** %target_vectors, align 8
  %74 = load i32, i32* %pos, align 4
  %call73 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %72, %struct._GimpVectors* %73, %struct._GimpVectors* null, i32 %74, i32 1)
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp74 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %75, i32 0, i32 1
  %76 = load %struct._Gimp*, %struct._Gimp** %gimp74, align 8
  call void @gimp_unset_busy(%struct._Gimp* %76)
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call75 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %77)
  %78 = load %struct._GimpVectors*, %struct._GimpVectors** %target_vectors, align 8
  store %struct._GimpVectors* %78, %struct._GimpVectors** %retval
  br label %return

if.else.76:                                       ; preds = %land.lhs.true.30, %for.end
  %79 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call77 = call i32 @gimp_error_quark() #6
  %call78 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %79, i32 %call77, i32 0, i8* %call78)
  store %struct._GimpVectors* null, %struct._GimpVectors** %retval
  br label %return

return:                                           ; preds = %if.else.76, %for.end.70, %if.else.15, %if.else.9
  %80 = load %struct._GimpVectors*, %struct._GimpVectors** %retval
  ret %struct._GimpVectors* %80
}

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare %struct._GList* @g_list_reverse(%struct._GList*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

declare noalias i8* @g_strdup(i8*) #3

declare void @gimp_image_remove_vectors(%struct._GimpImage*, %struct._GimpVectors*, i32, %struct._GimpVectors*) #3

declare void @gimp_vectors_add_strokes(%struct._GimpVectors*, %struct._GimpVectors*) #3

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #3

declare void @g_list_free(%struct._GList*) #3

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #3

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage*, i32, i32, i32, i8*, double, i32) #3

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

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #3

declare void @gimp_image_get_background(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #3

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #3

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #3

declare void @color_region(%struct._PixelRegion*, i8*) #3

declare i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable*) #3

declare void @clear_region(%struct._PixelRegion*) #3

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #3

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #3

declare void @gimp_item_set_tattoo(%struct._GimpItem*, i32) #3

declare i32 @gimp_item_get_tattoo(%struct._GimpItem*) #3

declare %struct._GimpParasiteList* @gimp_item_get_parasites(%struct._GimpItem*) #3

declare %struct._GimpParasiteList* @gimp_parasite_list_copy(%struct._GimpParasiteList*) #3

declare void @gimp_item_set_parasites(%struct._GimpItem*, %struct._GimpParasiteList*) #3

declare void @g_object_unref(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_merge_layers_get_operation(%struct._GimpLayer* %dest, %struct._GimpLayer* %src) #0 {
entry:
  %dest.addr = alloca %struct._GimpLayer*, align 8
  %src.addr = alloca %struct._GimpLayer*, align 8
  %type = alloca i32, align 4
  %bytes = alloca i32, align 4
  store %struct._GimpLayer* %dest, %struct._GimpLayer** %dest.addr, align 8
  store %struct._GimpLayer* %src, %struct._GimpLayer** %src.addr, align 8
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %dest.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %call2 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %2)
  store i32 %call2, i32* %type, align 4
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %src.addr, align 8
  %4 = bitcast %struct._GimpLayer* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_drawable_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawable*
  %call5 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %5)
  store i32 %call5, i32* %bytes, align 4
  %6 = load i32, i32* %type, align 4
  %7 = load i32, i32* %bytes, align 4
  %call6 = call i32 @gimp_image_get_combination_mode(i32 %6, i32 %7)
  ret i32 %call6
}

declare void @gimp_layer_add_alpha(%struct._GimpLayer*) #3

declare %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer*) #3

declare i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask*) #3

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #3

declare void @combine_regions(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, i8*, i32, i32, i32*, i32) #3

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #3

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #3

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #3

declare i32 @gimp_image_get_combination_mode(i32, i32) #3

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
