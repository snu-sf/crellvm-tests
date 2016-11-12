; ModuleID = './app/core/gimplayer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpLayerClass = type { %struct._GimpDrawableClass, void (%struct._GimpLayer*)*, void (%struct._GimpLayer*)*, void (%struct._GimpLayer*)*, void (%struct._GimpLayer*)* }
%struct._GimpDrawableClass = type { %struct._GimpItemClass, void (%struct._GimpDrawable*, i32, i32, i32, i32)*, void (%struct._GimpDrawable*)*, i64 (%struct._GimpDrawable*, i32, i32)*, void (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*, i32*)*, void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)*, %struct._TileManager* (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)*, void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)*, void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)* }
%struct._GimpItemClass = type { %struct._GimpViewableClass, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpItem*, i64)*, void (%struct._GimpItem*, %struct._GimpImage*)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32, double, double)*, %struct._GeglNode* (%struct._GimpItem*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpProgress = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpStrokeOptions = type opaque
%struct._GeglNode = type opaque
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpPickableInterface = type { %struct._GTypeInterface, void (%struct._GimpPickable*)*, %struct._GimpImage* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, %struct._TileManager* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*, i32, i32, i8*)*, i32 (%struct._GimpPickable*, i32, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpPickable = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GimpUndo = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_layer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"GimpLayer\00", align 1
@gimp_layer_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpPickableInterface*)* @gimp_layer_pickable_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_layer_new = private unnamed_addr constant [15 x i8] c"gimp_layer_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"height > 0\00", align 1
@__func__.gimp_layer_new_from_tiles = private unnamed_addr constant [26 x i8] c"gimp_layer_new_from_tiles\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"tiles != NULL\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"GIMP_IS_IMAGE (dest_image)\00", align 1
@__func__.gimp_layer_new_from_pixbuf = private unnamed_addr constant [27 x i8] c"gimp_layer_new_from_pixbuf\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"GDK_IS_PIXBUF (pixbuf)\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"GIMP_IMAGE_TYPE_BASE_TYPE (type) == gimp_image_base_type (dest_image)\00", align 1
@__func__.gimp_layer_new_from_region = private unnamed_addr constant [27 x i8] c"gimp_layer_new_from_region\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"region != NULL\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"gimplayer.c\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"%s: could not allocate new layer\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"%s: unhandled type conversion\00", align 1
@__func__.gimp_layer_get_parent = private unnamed_addr constant [22 x i8] c"gimp_layer_get_parent\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"GIMP_IS_LAYER (layer)\00", align 1
@__func__.gimp_layer_get_mask = private unnamed_addr constant [20 x i8] c"gimp_layer_get_mask\00", align 1
@__func__.gimp_layer_add_mask = private unnamed_addr constant [20 x i8] c"gimp_layer_add_mask\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"GIMP_IS_LAYER_MASK (mask)\00", align 1
@.str.16 = private unnamed_addr constant [82 x i8] c"gimp_item_get_image (GIMP_ITEM (layer)) == gimp_item_get_image (GIMP_ITEM (mask))\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"Unable to add a layer mask since the layer already has one.\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"Cannot add layer mask of different dimensions than specified layer.\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"undo-type\04Add Layer Mask\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@layer_signals = internal global [4 x i32] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@gimp_layer_create_mask.black = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@__func__.gimp_layer_create_mask = private unnamed_addr constant [23 x i8] c"gimp_layer_create_mask\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"add_mask_type != GIMP_ADD_CHANNEL_MASK || GIMP_IS_CHANNEL (channel)\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"%s mask\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"undo-type\04Transfer Alpha to Mask\00", align 1
@__func__.gimp_layer_apply_mask = private unnamed_addr constant [22 x i8] c"gimp_layer_apply_mask\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"mode == GIMP_MASK_DISCARD || push_undo == TRUE\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"undo-type\04Apply Layer Mask\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"undo-type\04Delete Layer Mask\00", align 1
@__func__.gimp_layer_add_alpha = private unnamed_addr constant [21 x i8] c"gimp_layer_add_alpha\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"undo-type\04Add Alpha Channel\00", align 1
@__func__.gimp_layer_flatten = private unnamed_addr constant [19 x i8] c"gimp_layer_flatten\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"undo-type\04Remove Alpha Channel\00", align 1
@__func__.gimp_layer_resize_to_image = private unnamed_addr constant [27 x i8] c"gimp_layer_resize_to_image\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"gimp_item_is_attached (GIMP_ITEM (layer))\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"undo-type\04Layer to Image Size\00", align 1
@__func__.gimp_layer_get_floating_sel_drawable = private unnamed_addr constant [37 x i8] c"gimp_layer_get_floating_sel_drawable\00", align 1
@__func__.gimp_layer_set_floating_sel_drawable = private unnamed_addr constant [37 x i8] c"gimp_layer_set_floating_sel_drawable\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"drawable == NULL || GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"floating-selection\00", align 1
@__func__.gimp_layer_is_floating_sel = private unnamed_addr constant [27 x i8] c"gimp_layer_is_floating_sel\00", align 1
@__func__.gimp_layer_set_opacity = private unnamed_addr constant [23 x i8] c"gimp_layer_set_opacity\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@__func__.gimp_layer_get_opacity = private unnamed_addr constant [23 x i8] c"gimp_layer_get_opacity\00", align 1
@__func__.gimp_layer_set_mode = private unnamed_addr constant [20 x i8] c"gimp_layer_set_mode\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@__func__.gimp_layer_get_mode = private unnamed_addr constant [20 x i8] c"gimp_layer_get_mode\00", align 1
@__func__.gimp_layer_set_lock_alpha = private unnamed_addr constant [26 x i8] c"gimp_layer_set_lock_alpha\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"gimp_layer_can_lock_alpha (layer)\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"lock-alpha\00", align 1
@__func__.gimp_layer_get_lock_alpha = private unnamed_addr constant [26 x i8] c"gimp_layer_get_lock_alpha\00", align 1
@__func__.gimp_layer_can_lock_alpha = private unnamed_addr constant [26 x i8] c"gimp_layer_can_lock_alpha\00", align 1
@gimp_layer_parent_class = internal global i8* null, align 8
@GimpLayer_private_offset = internal global i32 0, align 4
@.str.43 = private unnamed_addr constant [16 x i8] c"opacity-changed\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"mode-changed\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"lock-alpha-changed\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"mask-changed\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"gimp-layer\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"undo-type\04Rename Layer\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"undo-type\04Move Layer\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"undo-type\04Scale Layer\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"undo-type\04Resize Layer\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"undo-type\04Flip Layer\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"undo-type\04Rotate Layer\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"undo-type\04Transform Layer\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"undo-type\04Alpha to Selection\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"undo-type\04Reorder Layer\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"undo-type\04Raise Layer\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"undo-type\04Raise Layer to Top\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"undo-type\04Lower Layer\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"undo-type\04Lower Layer to Bottom\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"Layer cannot be raised higher.\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Layer cannot be lowered more.\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"Floating Selection\0A(%s)\00", align 1
@__func__.gimp_layer_duplicate = private unnamed_addr constant [21 x i8] c"gimp_layer_duplicate\00", align 1
@.str.67 = private unnamed_addr constant [43 x i8] c"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)\00", align 1
@.str.68 = private unnamed_addr constant [101 x i8] c"Cannot create a new layer from the floating selection because it belongs to a layer mask or channel.\00", align 1
@__func__.gimp_layer_get_node = private unnamed_addr constant [20 x i8] c"gimp_layer_get_node\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"layer->opacity_node == NULL\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"gegl:opacity\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"gimp:point-layer-mode\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"blend-mode\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_layer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_layer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_layer_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_drawable_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 712, void (i8*, i8*)* bitcast (void (i8*)* @gimp_layer_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLayer*)* @gimp_layer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_pickable_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_layer_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_layer_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_layer_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_layer_parent_class, align 8
  %1 = load i32, i32* @GimpLayer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLayer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLayerClass*
  call void @gimp_layer_class_init(%struct._GimpLayerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_init(%struct._GimpLayer* %layer) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %0, i32 0, i32 1
  store double 1.000000e+00, double* %opacity, align 8
  %1 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mode = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %1, i32 0, i32 2
  store i32 0, i32* %mode, align 4
  %2 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %lock_alpha = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %2, i32 0, i32 3
  store i32 0, i32* %lock_alpha, align 4
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %3, i32 0, i32 4
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %mask, align 8
  %4 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %4, i32 0, i32 6
  %drawable = getelementptr inbounds %struct.anon, %struct.anon* %fs, i32 0, i32 0
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs1 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %5, i32 0, i32 6
  %boundary_known = getelementptr inbounds %struct.anon, %struct.anon* %fs1, i32 0, i32 1
  store i32 0, i32* %boundary_known, align 4
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs2 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %6, i32 0, i32 6
  %segs = getelementptr inbounds %struct.anon, %struct.anon* %fs2, i32 0, i32 2
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs, align 8
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs3 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %7, i32 0, i32 6
  %num_segs = getelementptr inbounds %struct.anon, %struct.anon* %fs3, i32 0, i32 3
  store i32 0, i32* %num_segs, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_pickable_iface_init(%struct._GimpPickableInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpPickableInterface*, align 8
  store %struct._GimpPickableInterface* %iface, %struct._GimpPickableInterface** %iface.addr, align 8
  %0 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_opacity_at = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %0, i32 0, i32 7
  store i32 (%struct._GimpPickable*, i32, i32)* @gimp_layer_get_opacity_at, i32 (%struct._GimpPickable*, i32, i32)** %get_opacity_at, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %image, i32 %width, i32 %height, i32 %type, i8* %name, double %opacity, i32 %mode) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_layer_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_layer_new, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32, i32* %height.addr, align 4
  %cmp18 = icmp sgt i32 %14, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_layer_new, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %call23 = call i64 @gimp_layer_get_type() #7
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %17 = load i32, i32* %width.addr, align 4
  %18 = load i32, i32* %height.addr, align 4
  %19 = load i32, i32* %type.addr, align 4
  %call24 = call %struct._GimpDrawable* @gimp_drawable_new(i64 %call23, %struct._GimpImage* %15, i8* %16, i32 0, i32 0, i32 %17, i32 %18, i32 %19)
  %20 = bitcast %struct._GimpDrawable* %call24 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_layer_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call25)
  %21 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpLayer*
  store %struct._GimpLayer* %21, %struct._GimpLayer** %layer, align 8
  %22 = load double, double* %opacity.addr, align 8
  %cmp27 = fcmp ogt double %22, 1.000000e+00
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.22
  br label %cond.end.31

cond.false:                                       ; preds = %do.end.22
  %23 = load double, double* %opacity.addr, align 8
  %cmp28 = fcmp olt double %23, 0.000000e+00
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false
  br label %cond.end

cond.false.30:                                    ; preds = %cond.false
  %24 = load double, double* %opacity.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.30, %cond.true.29
  %cond = phi double [ 0.000000e+00, %cond.true.29 ], [ %24, %cond.false.30 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end, %cond.true
  %cond32 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond32, double* %opacity.addr, align 8
  %25 = load double, double* %opacity.addr, align 8
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %opacity33 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %26, i32 0, i32 1
  store double %25, double* %opacity33, align 8
  %27 = load i32, i32* %mode.addr, align 4
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mode34 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %28, i32 0, i32 2
  store i32 %27, i32* %mode34, align 4
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %29, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %cond.end.31, %if.else.20, %if.else.14, %if.else.9
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpDrawable* @gimp_drawable_new(i64, %struct._GimpImage*, i8*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager* %tiles, %struct._GimpImage* %dest_image, i32 %type, i8* %name, double %opacity, i32 %mode) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %bufPR = alloca %struct._PixelRegion, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp = icmp ne %struct._TileManager* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_new_from_tiles, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_new_from_tiles, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %15 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call17 = call i32 @tile_manager_width(%struct._TileManager* %15)
  %16 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call18 = call i32 @tile_manager_height(%struct._TileManager* %16)
  call void @pixel_region_init(%struct._PixelRegion* %bufPR, %struct._TileManager* %14, i32 0, i32 0, i32 %call17, i32 %call18, i32 0)
  %17 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %18 = load i32, i32* %type.addr, align 4
  %19 = load i8*, i8** %name.addr, align 8
  %20 = load double, double* %opacity.addr, align 8
  %21 = load i32, i32* %mode.addr, align 4
  %call19 = call %struct._GimpLayer* @gimp_layer_new_from_region(%struct._PixelRegion* %bufPR, %struct._GimpImage* %17, i32 %18, i8* %19, double %20, i32 %21)
  store %struct._GimpLayer* %call19, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %22
}

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_layer_new_from_region(%struct._PixelRegion* %region, %struct._GimpImage* %dest_image, i32 %type, i8* %name, double %opacity, i32 %mode) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %region.addr = alloca %struct._PixelRegion*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %new_layer = alloca %struct._GimpLayer*, align 8
  %layerPR = alloca %struct._PixelRegion, align 8
  %src_type = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._PixelRegion* %region, %struct._PixelRegion** %region.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %cmp = icmp ne %struct._PixelRegion* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else.3, label %if.then.2

if.then.2:                                        ; preds = %do.body.1
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else.3:                                        ; preds = %do.body.1
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else.3
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.10

if.else.8:                                        ; preds = %land.lhs.true, %if.else.3
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call9, i32* %__r, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.7
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %14, i32 0, i32 8
  %15 = load i32, i32* %w, align 4
  store i32 %15, i32* %width, align 4
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %16, i32 0, i32 9
  %17 = load i32, i32* %h, align 4
  store i32 %17, i32* %height, align 4
  %18 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %18, i32 0, i32 10
  %19 = load i32, i32* %bytes, align 4
  switch i32 %19, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.17
    i32 3, label %sw.bb.18
    i32 4, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %do.end.16
  store i32 2, i32* %src_type, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %do.end.16
  store i32 3, i32* %src_type, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %do.end.16
  store i32 0, i32* %src_type, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %do.end.16
  store i32 1, i32* %src_type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.16
  br label %do.body.20

do.body.20:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 1294, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

do.end.21:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.21, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb
  %20 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %21 = load i32, i32* %width, align 4
  %22 = load i32, i32* %height, align 4
  %23 = load i32, i32* %type.addr, align 4
  %24 = load i8*, i8** %name.addr, align 8
  %25 = load double, double* %opacity.addr, align 8
  %26 = load i32, i32* %mode.addr, align 4
  %call22 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %20, i32 %21, i32 %22, i32 %23, i8* %24, double %25, i32 %26)
  store %struct._GimpLayer* %call22, %struct._GimpLayer** %new_layer, align 8
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %tobool23 = icmp ne %struct._GimpLayer* %27, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %sw.epilog
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.25:                                        ; preds = %sw.epilog
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %29 = bitcast %struct._GimpLayer* %28 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_drawable_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call26)
  %30 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpDrawable*
  %call28 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %30)
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %layerPR, %struct._TileManager* %call28, i32 0, i32 0, i32 %31, i32 %32, i32 1)
  %33 = load i32, i32* %type.addr, align 4
  switch i32 %33, label %sw.epilog.54 [
    i32 0, label %sw.bb.29
    i32 1, label %sw.bb.33
    i32 2, label %sw.bb.39
    i32 3, label %sw.bb.43
    i32 4, label %sw.bb.49
    i32 5, label %sw.bb.50
  ]

sw.bb.29:                                         ; preds = %if.end.25
  %34 = load i32, i32* %src_type, align 4
  switch i32 %34, label %sw.default.31 [
    i32 0, label %sw.bb.30
  ]

sw.bb.30:                                         ; preds = %sw.bb.29
  %35 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  call void @copy_region(%struct._PixelRegion* %35, %struct._PixelRegion* %layerPR)
  br label %sw.epilog.32

sw.default.31:                                    ; preds = %sw.bb.29
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0))
  br label %sw.epilog.32

sw.epilog.32:                                     ; preds = %sw.default.31, %sw.bb.30
  br label %sw.epilog.54

sw.bb.33:                                         ; preds = %if.end.25
  %36 = load i32, i32* %src_type, align 4
  switch i32 %36, label %sw.default.37 [
    i32 1, label %sw.bb.34
    i32 0, label %sw.bb.35
    i32 2, label %sw.bb.36
    i32 3, label %sw.bb.36
  ]

sw.bb.34:                                         ; preds = %sw.bb.33
  %37 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  call void @copy_region(%struct._PixelRegion* %37, %struct._PixelRegion* %layerPR)
  br label %sw.epilog.38

sw.bb.35:                                         ; preds = %sw.bb.33
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  call void @add_alpha_region(%struct._PixelRegion* %38, %struct._PixelRegion* %layerPR)
  br label %sw.epilog.38

sw.bb.36:                                         ; preds = %sw.bb.33, %sw.bb.33
  %39 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %40 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %41 = load i32, i32* %src_type, align 4
  %42 = load i32, i32* %type.addr, align 4
  call void @gimp_layer_transform_color(%struct._GimpImage* %39, %struct._PixelRegion* %40, i32 %41, %struct._PixelRegion* %layerPR, i32 %42)
  br label %sw.epilog.38

sw.default.37:                                    ; preds = %sw.bb.33
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0))
  br label %sw.epilog.38

sw.epilog.38:                                     ; preds = %sw.default.37, %sw.bb.36, %sw.bb.35, %sw.bb.34
  br label %sw.epilog.54

sw.bb.39:                                         ; preds = %if.end.25
  %43 = load i32, i32* %src_type, align 4
  switch i32 %43, label %sw.default.41 [
    i32 2, label %sw.bb.40
  ]

sw.bb.40:                                         ; preds = %sw.bb.39
  %44 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  call void @copy_region(%struct._PixelRegion* %44, %struct._PixelRegion* %layerPR)
  br label %sw.epilog.42

sw.default.41:                                    ; preds = %sw.bb.39
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0))
  br label %sw.epilog.42

sw.epilog.42:                                     ; preds = %sw.default.41, %sw.bb.40
  br label %sw.epilog.54

sw.bb.43:                                         ; preds = %if.end.25
  %45 = load i32, i32* %src_type, align 4
  switch i32 %45, label %sw.default.47 [
    i32 0, label %sw.bb.44
    i32 1, label %sw.bb.44
    i32 3, label %sw.bb.45
    i32 2, label %sw.bb.46
  ]

sw.bb.44:                                         ; preds = %sw.bb.43, %sw.bb.43
  %46 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %47 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %48 = load i32, i32* %src_type, align 4
  %49 = load i32, i32* %type.addr, align 4
  call void @gimp_layer_transform_color(%struct._GimpImage* %46, %struct._PixelRegion* %47, i32 %48, %struct._PixelRegion* %layerPR, i32 %49)
  br label %sw.epilog.48

sw.bb.45:                                         ; preds = %sw.bb.43
  %50 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  call void @copy_region(%struct._PixelRegion* %50, %struct._PixelRegion* %layerPR)
  br label %sw.epilog.48

sw.bb.46:                                         ; preds = %sw.bb.43
  %51 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  call void @add_alpha_region(%struct._PixelRegion* %51, %struct._PixelRegion* %layerPR)
  br label %sw.epilog.48

sw.default.47:                                    ; preds = %sw.bb.43
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0))
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %sw.default.47, %sw.bb.46, %sw.bb.45, %sw.bb.44
  br label %sw.epilog.54

sw.bb.49:                                         ; preds = %if.end.25
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0))
  br label %sw.epilog.54

sw.bb.50:                                         ; preds = %if.end.25
  %52 = load i32, i32* %src_type, align 4
  switch i32 %52, label %sw.default.52 [
    i32 0, label %sw.bb.51
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.51
    i32 3, label %sw.bb.51
  ]

sw.bb.51:                                         ; preds = %sw.bb.50, %sw.bb.50, %sw.bb.50, %sw.bb.50
  %53 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %54 = load %struct._PixelRegion*, %struct._PixelRegion** %region.addr, align 8
  %55 = load i32, i32* %src_type, align 4
  %56 = load i32, i32* %type.addr, align 4
  call void @gimp_layer_transform_color(%struct._GimpImage* %53, %struct._PixelRegion* %54, i32 %55, %struct._PixelRegion* %layerPR, i32 %56)
  br label %sw.epilog.53

sw.default.52:                                    ; preds = %sw.bb.50
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_region, i32 0, i32 0))
  br label %sw.epilog.53

sw.epilog.53:                                     ; preds = %sw.default.52, %sw.bb.51
  br label %sw.epilog.54

sw.epilog.54:                                     ; preds = %if.end.25, %sw.epilog.53, %sw.bb.49, %sw.epilog.48, %sw.epilog.42, %sw.epilog.38, %sw.epilog.32
  %57 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  store %struct._GimpLayer* %57, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %sw.epilog.54, %if.then.24, %do.body.20, %if.else.14, %if.else
  %58 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %58
}

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_layer_new_from_pixbuf(%struct._GdkPixbuf* %pixbuf, %struct._GimpImage* %dest_image, i32 %type, i8* %name, double %opacity, i32 %mode) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %bufPR = alloca %struct._PixelRegion, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = bitcast %struct._PixelRegion* %bufPR to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %2 = bitcast %struct._GdkPixbuf* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gdk_pixbuf_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %27 = load i32, i32* %type.addr, align 4
  %cmp40 = icmp eq i32 %27, 0
  br i1 %cmp40, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %28 = load i32, i32* %type.addr, align 4
  %cmp41 = icmp eq i32 %28, 1
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.body.39
  br label %cond.end.50

cond.false:                                       ; preds = %lor.lhs.false
  %29 = load i32, i32* %type.addr, align 4
  %cmp42 = icmp eq i32 %29, 2
  br i1 %cmp42, label %cond.true.45, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %cond.false
  %30 = load i32, i32* %type.addr, align 4
  %cmp44 = icmp eq i32 %30, 3
  br i1 %cmp44, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %lor.lhs.false.43, %cond.false
  br label %cond.end

cond.false.46:                                    ; preds = %lor.lhs.false.43
  %31 = load i32, i32* %type.addr, align 4
  %cmp47 = icmp eq i32 %31, 4
  br i1 %cmp47, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.46
  %32 = load i32, i32* %type.addr, align 4
  %cmp48 = icmp eq i32 %32, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.46
  %33 = phi i1 [ true, %cond.false.46 ], [ %cmp48, %lor.rhs ]
  %cond = select i1 %33, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.45
  %cond49 = phi i32 [ 1, %cond.true.45 ], [ %cond, %lor.end ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end, %cond.true
  %cond51 = phi i32 [ 0, %cond.true ], [ %cond49, %cond.end ]
  %34 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %call52 = call i32 @gimp_image_base_type(%struct._GimpImage* %34)
  %cmp53 = icmp eq i32 %cond51, %call52
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %cond.end.50
  br label %if.end.56

if.else.55:                                       ; preds = %cond.end.50
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_new_from_pixbuf, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %35 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call58 = call i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf* %35)
  %36 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call59 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %36)
  %37 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call60 = call i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf* %37)
  %38 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call61 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %38)
  %39 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call62 = call i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf* %39)
  call void @pixel_region_init_data(%struct._PixelRegion* %bufPR, i8* %call58, i32 %call59, i32 %call60, i32 0, i32 0, i32 %call61, i32 %call62)
  %40 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %41 = load i32, i32* %type.addr, align 4
  %42 = load i8*, i8** %name.addr, align 8
  %43 = load double, double* %opacity.addr, align 8
  %44 = load i32, i32* %mode.addr, align 4
  %call63 = call %struct._GimpLayer* @gimp_layer_new_from_region(%struct._PixelRegion* %bufPR, %struct._GimpImage* %40, i32 %41, i8* %42, double %43, i32 %44)
  store %struct._GimpLayer* %call63, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %do.end.57, %if.else.55, %if.else.36, %if.else.9
  %45 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %45
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #2

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare void @pixel_region_init_data(%struct._PixelRegion*, i8*, i32, i32, i32, i32, i32, i32) #1

declare i8* @gdk_pixbuf_get_pixels(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_rowstride(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare i32 @gdk_pixbuf_get_height(%struct._GdkPixbuf*) #1

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @add_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_transform_color(%struct._GimpImage* %image, %struct._PixelRegion* %srcPR, i32 %src_type, %struct._PixelRegion* %destPR, i32 %dest_type) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %src_type.addr = alloca i32, align 4
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %dest_type.addr = alloca i32, align 4
  %base_type = alloca i32, align 4
  %src_alpha = alloca i32, align 4
  %dest_alpha = alloca i32, align 4
  %pr = alloca i8*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %h = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store i32 %src_type, i32* %src_type.addr, align 4
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %dest_type, i32* %dest_type.addr, align 4
  %0 = load i32, i32* %src_type.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %src_type.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end.10

cond.false:                                       ; preds = %lor.lhs.false
  %2 = load i32, i32* %src_type.addr, align 4
  %cmp2 = icmp eq i32 %2, 2
  br i1 %cmp2, label %cond.true.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %cond.false
  %3 = load i32, i32* %src_type.addr, align 4
  %cmp4 = icmp eq i32 %3, 3
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %lor.lhs.false.3, %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %lor.lhs.false.3
  %4 = load i32, i32* %src_type.addr, align 4
  %cmp7 = icmp eq i32 %4, 4
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.6
  %5 = load i32, i32* %src_type.addr, align 4
  %cmp8 = icmp eq i32 %5, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.6
  %6 = phi i1 [ true, %cond.false.6 ], [ %cmp8, %lor.rhs ]
  %cond = select i1 %6, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.5
  %cond9 = phi i32 [ 1, %cond.true.5 ], [ %cond, %lor.end ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi i32 [ 0, %cond.true ], [ %cond9, %cond.end ]
  store i32 %cond11, i32* %base_type, align 4
  %7 = load i32, i32* %src_type.addr, align 4
  %cmp12 = icmp eq i32 %7, 1
  br i1 %cmp12, label %lor.end.17, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %cond.end.10
  %8 = load i32, i32* %src_type.addr, align 4
  %cmp14 = icmp eq i32 %8, 3
  br i1 %cmp14, label %lor.end.17, label %lor.rhs.15

lor.rhs.15:                                       ; preds = %lor.lhs.false.13
  %9 = load i32, i32* %src_type.addr, align 4
  %cmp16 = icmp eq i32 %9, 5
  br label %lor.end.17

lor.end.17:                                       ; preds = %lor.rhs.15, %lor.lhs.false.13, %cond.end.10
  %10 = phi i1 [ true, %lor.lhs.false.13 ], [ true, %cond.end.10 ], [ %cmp16, %lor.rhs.15 ]
  %lor.ext = zext i1 %10 to i32
  store i32 %lor.ext, i32* %src_alpha, align 4
  %11 = load i32, i32* %dest_type.addr, align 4
  %cmp18 = icmp eq i32 %11, 1
  br i1 %cmp18, label %lor.end.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.end.17
  %12 = load i32, i32* %dest_type.addr, align 4
  %cmp20 = icmp eq i32 %12, 3
  br i1 %cmp20, label %lor.end.23, label %lor.rhs.21

lor.rhs.21:                                       ; preds = %lor.lhs.false.19
  %13 = load i32, i32* %dest_type.addr, align 4
  %cmp22 = icmp eq i32 %13, 5
  br label %lor.end.23

lor.end.23:                                       ; preds = %lor.rhs.21, %lor.lhs.false.19, %lor.end.17
  %14 = phi i1 [ true, %lor.lhs.false.19 ], [ true, %lor.end.17 ], [ %cmp22, %lor.rhs.21 ]
  %lor.ext24 = zext i1 %14 to i32
  store i32 %lor.ext24, i32* %dest_alpha, align 4
  %15 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %call = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %15, %struct._PixelRegion* %16)
  %17 = bitcast %struct._PixelRegionIterator* %call to i8*
  store i8* %17, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %lor.end.23
  %18 = load i8*, i8** %pr, align 8
  %cmp25 = icmp ne i8* %18, null
  br i1 %cmp25, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %19 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  store i8* %20, i8** %src, align 8
  %21 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data26 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %21, i32 0, i32 0
  %22 = load i8*, i8** %data26, align 8
  store i8* %22, i8** %dest, align 8
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %h27 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %23, i32 0, i32 9
  %24 = load i32, i32* %h27, align 4
  store i32 %24, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %for.body
  %25 = load i32, i32* %h, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %h, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i8*, i8** %src, align 8
  store i8* %26, i8** %s, align 8
  %27 = load i8*, i8** %dest, align 8
  store i8* %27, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %while.body
  %28 = load i32, i32* %i, align 4
  %29 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %29, i32 0, i32 8
  %30 = load i32, i32* %w, align 4
  %cmp29 = icmp slt i32 %28, %30
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %32 = load i32, i32* %dest_type.addr, align 4
  %33 = load i8*, i8** %d, align 8
  %34 = load i32, i32* %base_type, align 4
  %35 = load i8*, i8** %s, align 8
  call void @gimp_image_transform_color(%struct._GimpImage* %31, i32 %32, i8* %33, i32 %34, i8* %35)
  %36 = load i32, i32* %dest_alpha, align 4
  %tobool31 = icmp ne i32 %36, 0
  br i1 %tobool31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.30
  %37 = load i32, i32* %src_alpha, align 4
  %tobool32 = icmp ne i32 %37, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %if.then
  %38 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %38, i32 0, i32 10
  %39 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %39, 1
  %idxprom = sext i32 %sub to i64
  %40 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %40, i64 %idxprom
  %41 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %41 to i32
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.then
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi i32 [ %conv, %cond.true.33 ], [ 255, %cond.false.34 ]
  %conv37 = trunc i32 %cond36 to i8
  %42 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes38 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %42, i32 0, i32 10
  %43 = load i32, i32* %bytes38, align 4
  %sub39 = sub nsw i32 %43, 1
  %idxprom40 = sext i32 %sub39 to i64
  %44 = load i8*, i8** %d, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %44, i64 %idxprom40
  store i8 %conv37, i8* %arrayidx41, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.35, %for.body.30
  %45 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes42 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %45, i32 0, i32 10
  %46 = load i32, i32* %bytes42, align 4
  %47 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %46 to i64
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %48 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes43 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %48, i32 0, i32 10
  %49 = load i32, i32* %bytes43, align 4
  %50 = load i8*, i8** %d, align 8
  %idx.ext44 = sext i32 %49 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %50, i64 %idx.ext44
  store i8* %add.ptr45, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %52 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %52, i32 0, i32 5
  %53 = load i32, i32* %rowstride, align 4
  %54 = load i8*, i8** %src, align 8
  %idx.ext46 = sext i32 %53 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %54, i64 %idx.ext46
  store i8* %add.ptr47, i8** %src, align 8
  %55 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride48 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %55, i32 0, i32 5
  %56 = load i32, i32* %rowstride48, align 4
  %57 = load i8*, i8** %dest, align 8
  %idx.ext49 = sext i32 %56 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %57, i64 %idx.ext49
  store i8* %add.ptr50, i8** %dest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.51

for.inc.51:                                       ; preds = %while.end
  %58 = load i8*, i8** %pr, align 8
  %59 = bitcast i8* %58 to %struct._PixelRegionIterator*
  %call52 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %59)
  %60 = bitcast %struct._PixelRegionIterator* %call52 to i8*
  store i8* %60, i8** %pr, align 8
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_layer_get_parent(%struct._GimpLayer* %layer) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_layer_get_parent, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  %call13 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %15)
  %16 = bitcast %struct._GimpViewable* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_layer_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpLayer*
  store %struct._GimpLayer* %17, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %18
}

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %layer) #3 {
entry:
  %retval = alloca %struct._GimpLayerMask*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_get_mask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %13, i32 0, i32 4
  %14 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  store %struct._GimpLayerMask* %14, %struct._GimpLayerMask** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %retval
  ret %struct._GimpLayerMask* %15
}

; Function Attrs: nounwind uwtable
define %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer* %layer, %struct._GimpLayerMask* %mask, i32 %push_undo, %struct._GError** %error) #3 {
entry:
  %retval = alloca %struct._GimpLayerMask*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %mask.addr = alloca %struct._GimpLayerMask*, align 8
  %push_undo.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %mask102 = alloca %struct._GeglNode*, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpLayerMask* %mask, %struct._GimpLayerMask** %mask.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_add_mask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %14 = bitcast %struct._GimpLayerMask* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_layer_mask_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_add_mask, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %27 = bitcast %struct._GimpLayer* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %28)
  %29 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %30 = bitcast %struct._GimpLayerMask* %29 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call43)
  %31 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  %call45 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  %cmp46 = icmp eq %struct._GimpImage* %call42, %call45
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.39
  br label %if.end.49

if.else.48:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_add_mask, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp52 = icmp eq %struct._GError** %32, null
  br i1 %cmp52, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.51
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %34 = load %struct._GError*, %struct._GError** %33, align 8
  %cmp53 = icmp eq %struct._GError* %34, null
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %lor.lhs.false, %do.body.51
  br label %if.end.56

if.else.55:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_add_mask, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %36 = bitcast %struct._GimpLayer* %35 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_item_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call58)
  %37 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpItem*
  %call60 = call i32 @gimp_item_is_attached(%struct._GimpItem* %37)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %do.end.57
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %do.end.57
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %39 = bitcast %struct._GimpLayer* %38 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_item_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call64)
  %40 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpItem*
  %call66 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %40)
  store %struct._GimpImage* %call66, %struct._GimpImage** %image, align 8
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mask67 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %41, i32 0, i32 4
  %42 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask67, align 8
  %tobool68 = icmp ne %struct._GimpLayerMask* %42, null
  br i1 %tobool68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.end.63
  %43 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call70 = call i32 @gimp_error_quark() #7
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %43, i32 %call70, i32 0, i8* %call71)
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.72:                                        ; preds = %if.end.63
  %44 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %45 = bitcast %struct._GimpLayer* %44 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_item_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call73)
  %46 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpItem*
  %call75 = call i32 @gimp_item_get_width(%struct._GimpItem* %46)
  %47 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %48 = bitcast %struct._GimpLayerMask* %47 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_item_get_type() #7
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call76)
  %49 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpItem*
  %call78 = call i32 @gimp_item_get_width(%struct._GimpItem* %49)
  %cmp79 = icmp ne i32 %call75, %call78
  br i1 %cmp79, label %if.then.88, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.end.72
  %50 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %51 = bitcast %struct._GimpLayer* %50 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_item_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call81)
  %52 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpItem*
  %call83 = call i32 @gimp_item_get_height(%struct._GimpItem* %52)
  %53 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %54 = bitcast %struct._GimpLayerMask* %53 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_item_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call84)
  %55 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpItem*
  %call86 = call i32 @gimp_item_get_height(%struct._GimpItem* %55)
  %cmp87 = icmp ne i32 %call83, %call86
  br i1 %cmp87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %lor.lhs.false.80, %if.end.72
  %56 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call89 = call i32 @gimp_error_quark() #7
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %56, i32 %call89, i32 0, i8* %call90)
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.91:                                        ; preds = %lor.lhs.false.80
  %57 = load i32, i32* %push_undo.addr, align 4
  %tobool92 = icmp ne i32 %57, 0
  br i1 %tobool92, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.91
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call94 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i64 10)
  %59 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %60 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %call95 = call %struct._GimpUndo* @gimp_image_undo_push_layer_mask_add(%struct._GimpImage* %58, i8* %call94, %struct._GimpLayer* %59, %struct._GimpLayerMask* %60)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.91
  %61 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %62 = bitcast %struct._GimpLayerMask* %61 to i8*
  %call97 = call i8* @g_object_ref_sink(i8* %62)
  %63 = bitcast i8* %call97 to %struct._GimpLayerMask*
  %64 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mask98 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %64, i32 0, i32 4
  store %struct._GimpLayerMask* %63, %struct._GimpLayerMask** %mask98, align 8
  %65 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %66 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_layer_mask_set_layer(%struct._GimpLayerMask* %65, %struct._GimpLayer* %66)
  %67 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity_node = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %67, i32 0, i32 5
  %68 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node, align 8
  %tobool99 = icmp ne %struct._GeglNode* %68, null
  br i1 %tobool99, label %if.then.100, label %if.end.109

if.then.100:                                      ; preds = %if.end.96
  %69 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mask103 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %69, i32 0, i32 4
  %70 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask103, align 8
  %71 = bitcast %struct._GimpLayerMask* %70 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_drawable_get_type() #7
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call104)
  %72 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpDrawable*
  %call106 = call %struct._GeglNode* @gimp_drawable_get_source_node(%struct._GimpDrawable* %72)
  store %struct._GeglNode* %call106, %struct._GeglNode** %mask102, align 8
  %73 = load %struct._GeglNode*, %struct._GeglNode** %mask102, align 8
  %74 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity_node107 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %74, i32 0, i32 5
  %75 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node107, align 8
  %call108 = call i32 @gegl_node_connect_to(%struct._GeglNode* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._GeglNode* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.100, %if.end.96
  %76 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %call110 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %76)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.115, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %if.end.109
  %77 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %call113 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %77)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.124

if.then.115:                                      ; preds = %lor.lhs.false.112, %if.end.109
  %78 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %79 = bitcast %struct._GimpLayer* %78 to %struct._GTypeInstance*
  %call116 = call i64 @gimp_drawable_get_type() #7
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call116)
  %80 = bitcast %struct._GTypeInstance* %call117 to %struct._GimpDrawable*
  %81 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %82 = bitcast %struct._GimpLayer* %81 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_item_get_type() #7
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call118)
  %83 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpItem*
  %call120 = call i32 @gimp_item_get_width(%struct._GimpItem* %83)
  %84 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %85 = bitcast %struct._GimpLayer* %84 to %struct._GTypeInstance*
  %call121 = call i64 @gimp_item_get_type() #7
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call121)
  %86 = bitcast %struct._GTypeInstance* %call122 to %struct._GimpItem*
  %call123 = call i32 @gimp_item_get_height(%struct._GimpItem* %86)
  call void @gimp_drawable_update(%struct._GimpDrawable* %80, i32 0, i32 0, i32 %call120, i32 %call123)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.115, %lor.lhs.false.112
  %87 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %88 = bitcast %struct._GimpLayerMask* %87 to i8*
  %89 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %90 = bitcast %struct._GimpLayer* %89 to i8*
  %call125 = call i64 @g_signal_connect_data(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._GimpLayer*)* @gimp_layer_layer_mask_update to void ()*), i8* %90, void (i8*, %struct._GClosure*)* null, i32 0)
  %91 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %92 = bitcast %struct._GimpLayer* %91 to i8*
  %93 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @layer_signals, i32 0, i64 3), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %92, i32 %93, i32 0)
  %94 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %95 = bitcast %struct._GimpLayer* %94 to %struct._GTypeInstance*
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 80)
  %96 = bitcast %struct._GTypeInstance* %call126 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  %97 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %98 = bitcast %struct._GimpLayerMask* %97 to %struct._GTypeInstance*
  %call127 = call i64 @gimp_item_get_type() #7
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call127)
  %99 = bitcast %struct._GTypeInstance* %call128 to %struct._GimpItem*
  %call129 = call i32 @gimp_item_is_removed(%struct._GimpItem* %99)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.end.124
  %100 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask.addr, align 8
  %101 = bitcast %struct._GimpLayerMask* %100 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_item_get_type() #7
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call132)
  %102 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpItem*
  call void @gimp_item_unset_removed(%struct._GimpItem* %102)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.end.124
  %103 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mask135 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %103, i32 0, i32 4
  %104 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask135, align 8
  store %struct._GimpLayerMask* %104, %struct._GimpLayerMask** %retval
  br label %return

return:                                           ; preds = %if.end.134, %if.then.88, %if.then.69, %if.else.55, %if.else.48, %if.else.36, %if.else.9
  %105 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %retval
  ret %struct._GimpLayerMask* %105
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_layer_mask_add(%struct._GimpImage*, i8*, %struct._GimpLayer*, %struct._GimpLayerMask*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare i8* @g_object_ref_sink(i8*) #1

declare void @gimp_layer_mask_set_layer(%struct._GimpLayerMask*, %struct._GimpLayer*) #1

declare %struct._GeglNode* @gimp_drawable_get_source_node(%struct._GimpDrawable*) #1

declare i32 @gegl_node_connect_to(%struct._GeglNode*, i8*, %struct._GeglNode*, i8*) #1

declare i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask*) #1

declare i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask*) #1

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_layer_mask_update(%struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %width, i32 %height, %struct._GimpLayer* %layer) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %layer_mask = alloca %struct._GimpLayerMask*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_mask_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayerMask*
  store %struct._GimpLayerMask* %2, %struct._GimpLayerMask** %layer_mask, align 8
  %3 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %call2 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %layer_mask, align 8
  %call3 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %7, i32 %8, i32 %9, i32 %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare i32 @gimp_item_is_removed(%struct._GimpItem*) #1

declare void @gimp_item_unset_removed(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpLayerMask* @gimp_layer_create_mask(%struct._GimpLayer* %layer, i32 %add_mask_type, %struct._GimpChannel* %channel) #3 {
entry:
  %retval = alloca %struct._GimpLayerMask*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %add_mask_type.addr = alloca i32, align 4
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %mask_name = alloca i8*, align 8
  %black = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %pr = alloca i8*, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %alpha_ptr = alloca i8*, align 8
  %channel_empty = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %copy_x = alloca i32, align 4
  %copy_y = alloca i32, align 4
  %copy_width = alloca i32, align 4
  %copy_height = alloca i32, align 4
  %copy_tiles = alloca %struct._TileManager*, align 8
  %copy_type = alloca i32, align 4
  %black_uchar = alloca [4 x i8], align 1
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i32 %add_mask_type, i32* %add_mask_type.addr, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  %0 = bitcast %struct._GimpRGB* %black to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @gimp_layer_create_mask.black to i8*), i64 32, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %2 = bitcast %struct._GimpLayer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_layer_create_mask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load i32, i32* %add_mask_type.addr, align 4
  %cmp12 = icmp ne i32 %14, 6
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %16 = bitcast %struct._GimpChannel* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_channel_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type27, align 8
  %23 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %22, %23
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %25 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %26 = load i32, i32* %__r19, align 4
  store i32 %26, i32* %tmp34
  %27 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %27, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_layer_create_mask, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i32 0, i32 0))
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %29 = bitcast %struct._GimpLayer* %28 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_drawable_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call40)
  %30 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %30, %struct._GimpDrawable** %drawable, align 8
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %32 = bitcast %struct._GimpLayer* %31 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_item_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call42)
  %33 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpItem*
  store %struct._GimpItem* %33, %struct._GimpItem** %item, align 8
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call44 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %34)
  store %struct._GimpImage* %call44, %struct._GimpImage** %image, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)) #5
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %36 = bitcast %struct._GimpLayer* %35 to i8*
  %call46 = call i8* @gimp_object_get_name(i8* %36)
  %call47 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call45, i8* %call46)
  store i8* %call47, i8** %mask_name, align 8
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call48 = call i32 @gimp_item_get_width(%struct._GimpItem* %38)
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call49 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  %40 = load i8*, i8** %mask_name, align 8
  %call50 = call %struct._GimpLayerMask* @gimp_layer_mask_new(%struct._GimpImage* %37, i32 %call48, i32 %call49, i8* %40, %struct._GimpRGB* %black)
  store %struct._GimpLayerMask* %call50, %struct._GimpLayerMask** %mask, align 8
  %41 = load i8*, i8** %mask_name, align 8
  call void @g_free(i8* %41)
  %42 = load i32, i32* %add_mask_type.addr, align 4
  switch i32 %42, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %do.end.39
  %43 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %44 = bitcast %struct._GimpLayerMask* %43 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_channel_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call51)
  %45 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpChannel*
  call void @gimp_channel_all(%struct._GimpChannel* %45, i32 0)
  %46 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  store %struct._GimpLayerMask* %46, %struct._GimpLayerMask** %retval
  br label %return

sw.bb.53:                                         ; preds = %do.end.39
  %47 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %48 = bitcast %struct._GimpLayerMask* %47 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_channel_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call54)
  %49 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpChannel*
  call void @gimp_channel_clear(%struct._GimpChannel* %49, i8* null, i32 0)
  %50 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  store %struct._GimpLayerMask* %50, %struct._GimpLayerMask** %retval
  br label %return

sw.default:                                       ; preds = %do.end.39
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %51 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %52 = bitcast %struct._GimpLayerMask* %51 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_drawable_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call56)
  %53 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpDrawable*
  %call58 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %53)
  %54 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %55 = bitcast %struct._GimpLayerMask* %54 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_item_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call59)
  %56 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpItem*
  %call61 = call i32 @gimp_item_get_width(%struct._GimpItem* %56)
  %57 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %58 = bitcast %struct._GimpLayerMask* %57 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_item_get_type() #7
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call62)
  %59 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpItem*
  %call64 = call i32 @gimp_item_get_height(%struct._GimpItem* %59)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call58, i32 0, i32 0, i32 %call61, i32 %call64, i32 1)
  %60 = load i32, i32* %add_mask_type.addr, align 4
  switch i32 %60, label %sw.epilog.205 [
    i32 0, label %sw.bb.65
    i32 1, label %sw.bb.65
    i32 2, label %sw.bb.66
    i32 3, label %sw.bb.66
    i32 4, label %sw.bb.104
    i32 6, label %sw.bb.104
    i32 5, label %sw.bb.151
  ]

sw.bb.65:                                         ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.205

sw.bb.66:                                         ; preds = %sw.epilog, %sw.epilog
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call67 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %61)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.103

if.then.69:                                       ; preds = %sw.bb.66
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call70 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %62)
  %63 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call71 = call i32 @gimp_item_get_width(%struct._GimpItem* %63)
  %64 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call72 = call i32 @gimp_item_get_height(%struct._GimpItem* %64)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call70, i32 0, i32 0, i32 %call71, i32 %call72, i32 0)
  call void @extract_alpha_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* null, %struct._PixelRegion* %destPR)
  %65 = load i32, i32* %add_mask_type.addr, align 4
  %cmp73 = icmp eq i32 %65, 3
  br i1 %cmp73, label %if.then.74, label %if.end.102

if.then.74:                                       ; preds = %if.then.69
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call79 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0), i64 10)
  %67 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call80 = call i32 @gimp_item_get_width(%struct._GimpItem* %67)
  %68 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call81 = call i32 @gimp_item_get_height(%struct._GimpItem* %68)
  call void @gimp_drawable_push_undo(%struct._GimpDrawable* %66, i8* %call79, i32 0, i32 0, i32 %call80, i32 %call81, %struct._TileManager* null, i32 0)
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call82 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %69)
  %70 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call83 = call i32 @gimp_item_get_width(%struct._GimpItem* %70)
  %71 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call84 = call i32 @gimp_item_get_height(%struct._GimpItem* %71)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call82, i32 0, i32 0, i32 %call83, i32 %call84, i32 1)
  %call85 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %srcPR)
  %72 = bitcast %struct._PixelRegionIterator* %call85 to i8*
  store i8* %72, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.74
  %73 = load i8*, i8** %pr, align 8
  %cmp86 = icmp ne i8* %73, null
  br i1 %cmp86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %h87 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %74 = load i32, i32* %h87, align 4
  store i32 %74, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.body
  %75 = load i32, i32* %h, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, i32* %h, align 4
  %tobool88 = icmp ne i32 %75, 0
  br i1 %tobool88, label %while.body, label %while.end.100

while.body:                                       ; preds = %while.cond
  %w89 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %76 = load i32, i32* %w89, align 4
  store i32 %76, i32* %w, align 4
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %77 = load i8*, i8** %data, align 8
  %78 = load i32, i32* %h, align 4
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %79 = load i32, i32* %rowstride, align 4
  %mul = mul nsw i32 %78, %79
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %77, i64 %idx.ext
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %80 = load i32, i32* %bytes, align 4
  %idx.ext90 = sext i32 %80 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext90
  %add.ptr92 = getelementptr inbounds i8, i8* %add.ptr91, i64 -1
  store i8* %add.ptr92, i8** %alpha_ptr, align 8
  br label %while.cond.93

while.cond.93:                                    ; preds = %while.body.96, %while.body
  %81 = load i32, i32* %w, align 4
  %dec94 = add nsw i32 %81, -1
  store i32 %dec94, i32* %w, align 4
  %tobool95 = icmp ne i32 %81, 0
  br i1 %tobool95, label %while.body.96, label %while.end

while.body.96:                                    ; preds = %while.cond.93
  %82 = load i8*, i8** %alpha_ptr, align 8
  store i8 -1, i8* %82, align 1
  %bytes97 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %83 = load i32, i32* %bytes97, align 4
  %84 = load i8*, i8** %alpha_ptr, align 8
  %idx.ext98 = sext i32 %83 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %84, i64 %idx.ext98
  store i8* %add.ptr99, i8** %alpha_ptr, align 8
  br label %while.cond.93

while.end:                                        ; preds = %while.cond.93
  br label %while.cond

while.end.100:                                    ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end.100
  %85 = load i8*, i8** %pr, align 8
  %86 = bitcast i8* %85 to %struct._PixelRegionIterator*
  %call101 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %86)
  %87 = bitcast %struct._PixelRegionIterator* %call101 to i8*
  store i8* %87, i8** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.102

if.end.102:                                       ; preds = %for.end, %if.then.69
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %sw.bb.66
  br label %sw.epilog.205

sw.bb.104:                                        ; preds = %sw.epilog, %sw.epilog
  %88 = load i32, i32* %add_mask_type.addr, align 4
  %cmp112 = icmp eq i32 %88, 4
  br i1 %cmp112, label %if.then.113, label %if.end.117

if.then.113:                                      ; preds = %sw.bb.104
  %89 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call114 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %89)
  %90 = bitcast %struct._GimpChannel* %call114 to %struct._GTypeInstance*
  %call115 = call i64 @gimp_channel_get_type() #7
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call115)
  %91 = bitcast %struct._GTypeInstance* %call116 to %struct._GimpChannel*
  store %struct._GimpChannel* %91, %struct._GimpChannel** %channel.addr, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.113, %sw.bb.104
  %92 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call118 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %92)
  store i32 %call118, i32* %channel_empty, align 4
  %93 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %93, i32* %offset_x, i32* %offset_y)
  %94 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call119 = call i32 @gimp_image_get_width(%struct._GimpImage* %94)
  %95 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call120 = call i32 @gimp_image_get_height(%struct._GimpImage* %95)
  %96 = load i32, i32* %offset_x, align 4
  %97 = load i32, i32* %offset_y, align 4
  %98 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call121 = call i32 @gimp_item_get_width(%struct._GimpItem* %98)
  %99 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call122 = call i32 @gimp_item_get_height(%struct._GimpItem* %99)
  %call123 = call i32 @gimp_rectangle_intersect(i32 0, i32 0, i32 %call119, i32 %call120, i32 %96, i32 %97, i32 %call121, i32 %call122, i32* %copy_x, i32* %copy_y, i32* %copy_width, i32* %copy_height)
  %100 = load i32, i32* %copy_width, align 4
  %101 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call124 = call i32 @gimp_item_get_width(%struct._GimpItem* %101)
  %cmp125 = icmp slt i32 %100, %call124
  br i1 %cmp125, label %if.then.131, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.end.117
  %102 = load i32, i32* %copy_height, align 4
  %103 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call127 = call i32 @gimp_item_get_height(%struct._GimpItem* %103)
  %cmp128 = icmp slt i32 %102, %call127
  br i1 %cmp128, label %if.then.131, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %lor.lhs.false.126
  %104 = load i32, i32* %channel_empty, align 4
  %tobool130 = icmp ne i32 %104, 0
  br i1 %tobool130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %lor.lhs.false.129, %lor.lhs.false.126, %if.end.117
  %105 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %106 = bitcast %struct._GimpLayerMask* %105 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_channel_get_type() #7
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call132)
  %107 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpChannel*
  call void @gimp_channel_clear(%struct._GimpChannel* %107, i8* null, i32 0)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %lor.lhs.false.129
  %108 = load i32, i32* %copy_width, align 4
  %tobool135 = icmp ne i32 %108, 0
  br i1 %tobool135, label %land.lhs.true.138, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %if.end.134
  %109 = load i32, i32* %copy_height, align 4
  %tobool137 = icmp ne i32 %109, 0
  br i1 %tobool137, label %land.lhs.true.138, label %if.end.150

land.lhs.true.138:                                ; preds = %lor.lhs.false.136, %if.end.134
  %110 = load i32, i32* %channel_empty, align 4
  %tobool139 = icmp ne i32 %110, 0
  br i1 %tobool139, label %if.end.150, label %if.then.140

if.then.140:                                      ; preds = %land.lhs.true.138
  %111 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %112 = bitcast %struct._GimpChannel* %111 to %struct._GTypeInstance*
  %call141 = call i64 @gimp_drawable_get_type() #7
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call141)
  %113 = bitcast %struct._GTypeInstance* %call142 to %struct._GimpDrawable*
  %call143 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %113)
  %114 = load i32, i32* %copy_x, align 4
  %115 = load i32, i32* %copy_y, align 4
  %116 = load i32, i32* %copy_width, align 4
  %117 = load i32, i32* %copy_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call143, i32 %114, i32 %115, i32 %116, i32 %117, i32 0)
  %118 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %119 = bitcast %struct._GimpLayerMask* %118 to %struct._GTypeInstance*
  %call144 = call i64 @gimp_drawable_get_type() #7
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call144)
  %120 = bitcast %struct._GTypeInstance* %call145 to %struct._GimpDrawable*
  %call146 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %120)
  %121 = load i32, i32* %copy_x, align 4
  %122 = load i32, i32* %offset_x, align 4
  %sub = sub nsw i32 %121, %122
  %123 = load i32, i32* %copy_y, align 4
  %124 = load i32, i32* %offset_y, align 4
  %sub147 = sub nsw i32 %123, %124
  %125 = load i32, i32* %copy_width, align 4
  %126 = load i32, i32* %copy_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call146, i32 %sub, i32 %sub147, i32 %125, i32 %126, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %127 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %128 = bitcast %struct._GimpLayerMask* %127 to %struct._GTypeInstance*
  %call148 = call i64 @gimp_channel_get_type() #7
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call148)
  %129 = bitcast %struct._GTypeInstance* %call149 to %struct._GimpChannel*
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %129, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.140, %land.lhs.true.138, %lor.lhs.false.136
  br label %sw.epilog.205

sw.bb.151:                                        ; preds = %sw.epilog
  store %struct._TileManager* null, %struct._TileManager** %copy_tiles, align 8
  %130 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call153 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %130)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.else.188, label %if.then.155

if.then.155:                                      ; preds = %sw.bb.151
  %131 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call157 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %131)
  %tobool158 = icmp ne i32 %call157, 0
  %cond = select i1 %tobool158, i32 3, i32 2
  store i32 %cond, i32* %copy_type, align 4
  %132 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call159 = call i32 @gimp_item_get_width(%struct._GimpItem* %132)
  %133 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call160 = call i32 @gimp_item_get_height(%struct._GimpItem* %133)
  %134 = load i32, i32* %copy_type, align 4
  %cmp161 = icmp eq i32 %134, 1
  br i1 %cmp161, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.155
  br label %cond.end.183

cond.false:                                       ; preds = %if.then.155
  %135 = load i32, i32* %copy_type, align 4
  %cmp162 = icmp eq i32 %135, 0
  br i1 %cmp162, label %cond.true.163, label %cond.false.164

cond.true.163:                                    ; preds = %cond.false
  br label %cond.end.181

cond.false.164:                                   ; preds = %cond.false
  %136 = load i32, i32* %copy_type, align 4
  %cmp165 = icmp eq i32 %136, 3
  br i1 %cmp165, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %cond.false.164
  br label %cond.end.179

cond.false.167:                                   ; preds = %cond.false.164
  %137 = load i32, i32* %copy_type, align 4
  %cmp168 = icmp eq i32 %137, 2
  br i1 %cmp168, label %cond.true.169, label %cond.false.170

cond.true.169:                                    ; preds = %cond.false.167
  br label %cond.end.177

cond.false.170:                                   ; preds = %cond.false.167
  %138 = load i32, i32* %copy_type, align 4
  %cmp171 = icmp eq i32 %138, 5
  br i1 %cmp171, label %cond.true.172, label %cond.false.173

cond.true.172:                                    ; preds = %cond.false.170
  br label %cond.end

cond.false.173:                                   ; preds = %cond.false.170
  %139 = load i32, i32* %copy_type, align 4
  %cmp174 = icmp eq i32 %139, 4
  %cond175 = select i1 %cmp174, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.173, %cond.true.172
  %cond176 = phi i32 [ 2, %cond.true.172 ], [ %cond175, %cond.false.173 ]
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end, %cond.true.169
  %cond178 = phi i32 [ 1, %cond.true.169 ], [ %cond176, %cond.end ]
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.177, %cond.true.166
  %cond180 = phi i32 [ 2, %cond.true.166 ], [ %cond178, %cond.end.177 ]
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.end.179, %cond.true.163
  %cond182 = phi i32 [ 3, %cond.true.163 ], [ %cond180, %cond.end.179 ]
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.end.181, %cond.true
  %cond184 = phi i32 [ 4, %cond.true ], [ %cond182, %cond.end.181 ]
  %call185 = call %struct._TileManager* @tile_manager_new(i32 %call159, i32 %call160, i32 %cond184)
  store %struct._TileManager* %call185, %struct._TileManager** %copy_tiles, align 8
  %140 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %141 = load %struct._TileManager*, %struct._TileManager** %copy_tiles, align 8
  call void @gimp_drawable_convert_tiles_grayscale(%struct._GimpDrawable* %140, %struct._TileManager* %141)
  %142 = load %struct._TileManager*, %struct._TileManager** %copy_tiles, align 8
  %143 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call186 = call i32 @gimp_item_get_width(%struct._GimpItem* %143)
  %144 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call187 = call i32 @gimp_item_get_height(%struct._GimpItem* %144)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %142, i32 0, i32 0, i32 %call186, i32 %call187, i32 0)
  br label %if.end.192

if.else.188:                                      ; preds = %sw.bb.151
  %145 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call189 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %145)
  %146 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call190 = call i32 @gimp_item_get_width(%struct._GimpItem* %146)
  %147 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call191 = call i32 @gimp_item_get_height(%struct._GimpItem* %147)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call189, i32 0, i32 0, i32 %call190, i32 %call191, i32 0)
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.188, %cond.end.183
  %148 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call193 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %148)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then.195, label %if.else.197

if.then.195:                                      ; preds = %if.end.192
  %149 = bitcast [4 x i8]* %black_uchar to i8*
  call void @llvm.memset.p0i8.i64(i8* %149, i8 0, i64 4, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %black_uchar, i32 0, i32 0
  call void @flatten_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i8* %arraydecay)
  br label %if.end.198

if.else.197:                                      ; preds = %if.end.192
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.197, %if.then.195
  %150 = load %struct._TileManager*, %struct._TileManager** %copy_tiles, align 8
  %tobool199 = icmp ne %struct._TileManager* %150, null
  br i1 %tobool199, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.end.198
  %151 = load %struct._TileManager*, %struct._TileManager** %copy_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %151)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %if.end.198
  %152 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %153 = bitcast %struct._GimpLayerMask* %152 to %struct._GTypeInstance*
  %call202 = call i64 @gimp_channel_get_type() #7
  %call203 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %153, i64 %call202)
  %154 = bitcast %struct._GTypeInstance* %call203 to %struct._GimpChannel*
  %bounds_known204 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %154, i32 0, i32 12
  store i32 0, i32* %bounds_known204, align 4
  br label %sw.epilog.205

sw.epilog.205:                                    ; preds = %sw.epilog, %if.end.201, %if.end.150, %if.end.103, %sw.bb.65
  %155 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  store %struct._GimpLayerMask* %155, %struct._GimpLayerMask** %retval
  br label %return

return:                                           ; preds = %sw.epilog.205, %sw.bb.53, %sw.bb, %if.else.37, %if.else.9
  %156 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %retval
  ret %struct._GimpLayerMask* %156
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._GimpLayerMask* @gimp_layer_mask_new(%struct._GimpImage*, i32, i32, i8*, %struct._GimpRGB*) #1

declare void @g_free(i8*) #1

declare void @gimp_channel_all(%struct._GimpChannel*, i32) #1

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare void @extract_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @gimp_drawable_push_undo(%struct._GimpDrawable*, i8*, i32, i32, i32, i32, %struct._TileManager*, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_drawable_is_gray(%struct._GimpDrawable*) #1

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare void @gimp_drawable_convert_tiles_grayscale(%struct._GimpDrawable*, %struct._TileManager*) #1

declare void @flatten_region(%struct._PixelRegion*, %struct._PixelRegion*, i8*) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

; Function Attrs: nounwind uwtable
define void @gimp_layer_apply_mask(%struct._GimpLayer* %layer, i32 %mode, i32 %push_undo) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %mode.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %mask = alloca %struct._GimpLayerMask*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %view_changed = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i32 0, i32* %view_changed, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_layer_apply_mask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call11 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %13)
  store %struct._GimpLayerMask* %call11, %struct._GimpLayerMask** %mask, align 8
  %14 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool12 = icmp ne %struct._GimpLayerMask* %14, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.end
  br label %return

if.end.14:                                        ; preds = %do.end
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_drawable_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawable*
  %call17 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %17)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.27, label %if.then.19

if.then.19:                                       ; preds = %if.end.14
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %18 = load i32, i32* %mode.addr, align 4
  %cmp21 = icmp eq i32 %18, 1
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.20
  %19 = load i32, i32* %push_undo.addr, align 4
  %cmp22 = icmp eq i32 %19, 1
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %lor.lhs.false, %do.body.20
  br label %if.end.25

if.else.24:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_layer_apply_mask, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %do.end.26, %if.end.14
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %21 = bitcast %struct._GimpLayer* %20 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call28)
  %22 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  store %struct._GimpItem* %22, %struct._GimpItem** %item, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call30 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %23)
  store %struct._GimpImage* %call30, %struct._GimpImage** %image, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool31 = icmp ne %struct._GimpImage* %24, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.27
  br label %return

if.end.33:                                        ; preds = %if.end.27
  %25 = load i32, i32* %push_undo.addr, align 4
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.end.49

if.then.35:                                       ; preds = %if.end.33
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %27 = load i32, i32* %mode.addr, align 4
  %cmp36 = icmp eq i32 %27, 0
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.35
  %call37 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i64 10)
  br label %cond.end

cond.false:                                       ; preds = %if.then.35
  %call38 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i64 10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call37, %cond.true ], [ %call38, %cond.false ]
  %call39 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %26, i32 25, i8* %cond)
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %30 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call40 = call %struct._GimpUndo* @gimp_image_undo_push_layer_mask_remove(%struct._GimpImage* %28, i8* null, %struct._GimpLayer* %29, %struct._GimpLayerMask* %30)
  %31 = load i32, i32* %mode.addr, align 4
  %cmp41 = icmp eq i32 %31, 0
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.48

land.lhs.true.42:                                 ; preds = %cond.end
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %33 = bitcast %struct._GimpLayer* %32 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_drawable_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call43)
  %34 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDrawable*
  %call45 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %34)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.42
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_layer_add_alpha(%struct._GimpLayer* %35)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %land.lhs.true.42, %cond.end
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.33
  %36 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call50 = call i32 @gimp_layer_mask_get_show(%struct._GimpLayerMask* %36)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.62, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.end.49
  %37 = load i32, i32* %mode.addr, align 4
  %cmp53 = icmp eq i32 %37, 0
  br i1 %cmp53, label %land.lhs.true.54, label %lor.lhs.false.57

land.lhs.true.54:                                 ; preds = %lor.lhs.false.52
  %38 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call55 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %38)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %lor.lhs.false.57, label %if.then.62

lor.lhs.false.57:                                 ; preds = %land.lhs.true.54, %lor.lhs.false.52
  %39 = load i32, i32* %mode.addr, align 4
  %cmp58 = icmp eq i32 %39, 1
  br i1 %cmp58, label %land.lhs.true.59, label %if.end.63

land.lhs.true.59:                                 ; preds = %lor.lhs.false.57
  %40 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call60 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %40)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %land.lhs.true.59, %land.lhs.true.54, %if.end.49
  store i32 1, i32* %view_changed, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %land.lhs.true.59, %lor.lhs.false.57
  %41 = load i32, i32* %mode.addr, align 4
  %cmp64 = icmp eq i32 %41, 0
  br i1 %cmp64, label %if.then.65, label %if.end.83

if.then.65:                                       ; preds = %if.end.63
  %42 = load i32, i32* %push_undo.addr, align 4
  %tobool66 = icmp ne i32 %42, 0
  br i1 %tobool66, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.then.65
  %43 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %44 = bitcast %struct._GimpLayer* %43 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_drawable_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call68)
  %45 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpDrawable*
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call70 = call i32 @gimp_item_get_width(%struct._GimpItem* %46)
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call71 = call i32 @gimp_item_get_height(%struct._GimpItem* %47)
  call void @gimp_drawable_push_undo(%struct._GimpDrawable* %45, i8* null, i32 0, i32 0, i32 %call70, i32 %call71, %struct._TileManager* null, i32 0)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %if.then.65
  %48 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %49 = bitcast %struct._GimpLayer* %48 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_drawable_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call73)
  %50 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpDrawable*
  %call75 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %50)
  %51 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call76 = call i32 @gimp_item_get_width(%struct._GimpItem* %51)
  %52 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call77 = call i32 @gimp_item_get_height(%struct._GimpItem* %52)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call75, i32 0, i32 0, i32 %call76, i32 %call77, i32 1)
  %53 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %54 = bitcast %struct._GimpLayerMask* %53 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_drawable_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call78)
  %55 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpDrawable*
  %call80 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %55)
  %56 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call81 = call i32 @gimp_item_get_width(%struct._GimpItem* %56)
  %57 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call82 = call i32 @gimp_item_get_height(%struct._GimpItem* %57)
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call80, i32 0, i32 0, i32 %call81, i32 %call82, i32 0)
  call void @apply_mask_to_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %maskPR, i32 255)
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.72, %if.end.63
  %58 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %59 = bitcast %struct._GimpLayerMask* %58 to i8*
  %60 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %61 = bitcast %struct._GimpLayer* %60 to i8*
  %call84 = call i32 @g_signal_handlers_disconnect_matched(i8* %59, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._GimpLayer*)* @gimp_layer_layer_mask_update to i8*), i8* %61)
  %62 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %63 = bitcast %struct._GimpLayerMask* %62 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_item_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call85)
  %64 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpItem*
  call void @gimp_item_removed(%struct._GimpItem* %64)
  %65 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %66 = bitcast %struct._GimpLayerMask* %65 to i8*
  call void @g_object_unref(i8* %66)
  %67 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mask87 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %67, i32 0, i32 4
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %mask87, align 8
  %68 = load i32, i32* %push_undo.addr, align 4
  %tobool88 = icmp ne i32 %68, 0
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.83
  %69 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call90 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %69)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.83
  %70 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity_node = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %70, i32 0, i32 5
  %71 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node, align 8
  %tobool92 = icmp ne %struct._GeglNode* %71, null
  br i1 %tobool92, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.91
  %72 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity_node94 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %72, i32 0, i32 5
  %73 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node94, align 8
  %call95 = call i32 @gegl_node_disconnect(%struct._GeglNode* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.91
  %74 = load i32, i32* %view_changed, align 4
  %tobool97 = icmp ne i32 %74, 0
  br i1 %tobool97, label %if.then.98, label %if.else.103

if.then.98:                                       ; preds = %if.end.96
  %75 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %76 = bitcast %struct._GimpLayer* %75 to %struct._GTypeInstance*
  %call99 = call i64 @gimp_drawable_get_type() #7
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call99)
  %77 = bitcast %struct._GTypeInstance* %call100 to %struct._GimpDrawable*
  %78 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call101 = call i32 @gimp_item_get_width(%struct._GimpItem* %78)
  %79 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call102 = call i32 @gimp_item_get_height(%struct._GimpItem* %79)
  call void @gimp_drawable_update(%struct._GimpDrawable* %77, i32 0, i32 0, i32 %call101, i32 %call102)
  br label %if.end.106

if.else.103:                                      ; preds = %if.end.96
  %80 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %81 = bitcast %struct._GimpLayer* %80 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_viewable_get_type() #7
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call104)
  %82 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %82)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.98
  %83 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %84 = bitcast %struct._GimpLayer* %83 to i8*
  %85 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @layer_signals, i32 0, i64 3), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %84, i32 %85, i32 0)
  %86 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %87 = bitcast %struct._GimpLayer* %86 to %struct._GTypeInstance*
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 80)
  %88 = bitcast %struct._GTypeInstance* %call107 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.106, %if.then.32, %if.else.24, %if.then.13, %if.else.9
  ret void
}

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_layer_mask_remove(%struct._GimpImage*, i8*, %struct._GimpLayer*, %struct._GimpLayerMask*) #1

; Function Attrs: nounwind uwtable
define void @gimp_layer_add_alpha(%struct._GimpLayer* %layer) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %new_type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_layer_add_alpha, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_drawable_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawable*
  %call13 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  br label %return

if.end.16:                                        ; preds = %do.end
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %17 = bitcast %struct._GimpLayer* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  store %struct._GimpItem* %18, %struct._GimpItem** %item, align 8
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_drawable_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %21, %struct._GimpDrawable** %drawable, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call21 = call i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %22)
  store i32 %call21, i32* %new_type, align 4
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call22 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call23 = call i32 @gimp_item_get_height(%struct._GimpItem* %24)
  %25 = load i32, i32* %new_type, align 4
  %cmp24 = icmp eq i32 %25, 1
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  br label %cond.end.45

cond.false:                                       ; preds = %if.end.16
  %26 = load i32, i32* %new_type, align 4
  %cmp25 = icmp eq i32 %26, 0
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false
  br label %cond.end.43

cond.false.27:                                    ; preds = %cond.false
  %27 = load i32, i32* %new_type, align 4
  %cmp28 = icmp eq i32 %27, 3
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.false.27
  br label %cond.end.41

cond.false.30:                                    ; preds = %cond.false.27
  %28 = load i32, i32* %new_type, align 4
  %cmp31 = icmp eq i32 %28, 2
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.false.30
  br label %cond.end.39

cond.false.33:                                    ; preds = %cond.false.30
  %29 = load i32, i32* %new_type, align 4
  %cmp34 = icmp eq i32 %29, 5
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false.33
  br label %cond.end

cond.false.36:                                    ; preds = %cond.false.33
  %30 = load i32, i32* %new_type, align 4
  %cmp37 = icmp eq i32 %30, 4
  %cond = select i1 %cmp37, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i32 [ 2, %cond.true.35 ], [ %cond, %cond.false.36 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end, %cond.true.32
  %cond40 = phi i32 [ 1, %cond.true.32 ], [ %cond38, %cond.end ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %cond.true.29
  %cond42 = phi i32 [ 2, %cond.true.29 ], [ %cond40, %cond.end.39 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end.41, %cond.true.26
  %cond44 = phi i32 [ 3, %cond.true.26 ], [ %cond42, %cond.end.41 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end.43, %cond.true
  %cond46 = phi i32 [ 4, %cond.true ], [ %cond44, %cond.end.43 ]
  %call47 = call %struct._TileManager* @tile_manager_new(i32 %call22, i32 %call23, i32 %cond46)
  store %struct._TileManager* %call47, %struct._TileManager** %new_tiles, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call48 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %31)
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call49 = call i32 @gimp_item_get_width(%struct._GimpItem* %32)
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call50 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call48, i32 0, i32 0, i32 %call49, i32 %call50, i32 0)
  %34 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call51 = call i32 @gimp_item_get_width(%struct._GimpItem* %35)
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call52 = call i32 @gimp_item_get_height(%struct._GimpItem* %36)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %34, i32 0, i32 0, i32 %call51, i32 %call52, i32 1)
  call void @add_alpha_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %37 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %38 = bitcast %struct._GimpLayer* %37 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_drawable_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call53)
  %39 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDrawable*
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %41 = bitcast %struct._GimpLayer* %40 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_item_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call55)
  %42 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpItem*
  %call57 = call i32 @gimp_item_is_attached(%struct._GimpItem* %42)
  %call58 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), i64 10)
  %43 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %44 = load i32, i32* %new_type, align 4
  call void @gimp_drawable_set_tiles(%struct._GimpDrawable* %39, i32 %call57, i8* %call58, %struct._TileManager* %43, i32 %44)
  %45 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %45)
  br label %return

return:                                           ; preds = %cond.end.45, %if.then.15, %if.else.9
  ret void
}

declare void @apply_mask_to_region(%struct._PixelRegion*, %struct._PixelRegion*, i32) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_item_removed(%struct._GimpItem*) #1

declare void @g_object_unref(i8*) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare i32 @gegl_node_disconnect(%struct._GeglNode*, i8*) #1

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

declare i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable*) #1

declare void @gimp_drawable_set_tiles(%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_layer_flatten(%struct._GimpLayer* %layer, %struct._GimpContext* %context) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %new_type = alloca i32, align 4
  %bg = alloca [4 x i8], align 1
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_layer_flatten, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_layer_flatten, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %27 = bitcast %struct._GimpLayer* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_drawable_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpDrawable*
  %call41 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %28)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %do.end.38
  br label %return

if.end.44:                                        ; preds = %do.end.38
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %30 = bitcast %struct._GimpLayer* %29 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_item_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call45)
  %31 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpItem*
  store %struct._GimpItem* %31, %struct._GimpItem** %item, align 8
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %33 = bitcast %struct._GimpLayer* %32 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_drawable_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call47)
  %34 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %34, %struct._GimpDrawable** %drawable, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call49 = call i32 @gimp_drawable_type_without_alpha(%struct._GimpDrawable* %35)
  store i32 %call49, i32* %new_type, align 4
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call50 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %36)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call51 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %38)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @gimp_image_get_background(%struct._GimpImage* %call50, %struct._GimpContext* %37, i32 %call51, i8* %arraydecay)
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call52 = call i32 @gimp_item_get_width(%struct._GimpItem* %39)
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call53 = call i32 @gimp_item_get_height(%struct._GimpItem* %40)
  %41 = load i32, i32* %new_type, align 4
  %cmp54 = icmp eq i32 %41, 1
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.44
  br label %cond.end.75

cond.false:                                       ; preds = %if.end.44
  %42 = load i32, i32* %new_type, align 4
  %cmp55 = icmp eq i32 %42, 0
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.false
  br label %cond.end.73

cond.false.57:                                    ; preds = %cond.false
  %43 = load i32, i32* %new_type, align 4
  %cmp58 = icmp eq i32 %43, 3
  br i1 %cmp58, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.false.57
  br label %cond.end.71

cond.false.60:                                    ; preds = %cond.false.57
  %44 = load i32, i32* %new_type, align 4
  %cmp61 = icmp eq i32 %44, 2
  br i1 %cmp61, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false.60
  br label %cond.end.69

cond.false.63:                                    ; preds = %cond.false.60
  %45 = load i32, i32* %new_type, align 4
  %cmp64 = icmp eq i32 %45, 5
  br i1 %cmp64, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %cond.false.63
  br label %cond.end

cond.false.66:                                    ; preds = %cond.false.63
  %46 = load i32, i32* %new_type, align 4
  %cmp67 = icmp eq i32 %46, 4
  %cond = select i1 %cmp67, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi i32 [ 2, %cond.true.65 ], [ %cond, %cond.false.66 ]
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.end, %cond.true.62
  %cond70 = phi i32 [ 1, %cond.true.62 ], [ %cond68, %cond.end ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end.69, %cond.true.59
  %cond72 = phi i32 [ 2, %cond.true.59 ], [ %cond70, %cond.end.69 ]
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.end.71, %cond.true.56
  %cond74 = phi i32 [ 3, %cond.true.56 ], [ %cond72, %cond.end.71 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.true
  %cond76 = phi i32 [ 4, %cond.true ], [ %cond74, %cond.end.73 ]
  %call77 = call %struct._TileManager* @tile_manager_new(i32 %call52, i32 %call53, i32 %cond76)
  store %struct._TileManager* %call77, %struct._TileManager** %new_tiles, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call78 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %47)
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call79 = call i32 @gimp_item_get_width(%struct._GimpItem* %48)
  %49 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call80 = call i32 @gimp_item_get_height(%struct._GimpItem* %49)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call78, i32 0, i32 0, i32 %call79, i32 %call80, i32 0)
  %50 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %51 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call81 = call i32 @gimp_item_get_width(%struct._GimpItem* %51)
  %52 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call82 = call i32 @gimp_item_get_height(%struct._GimpItem* %52)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %50, i32 0, i32 0, i32 %call81, i32 %call82, i32 1)
  %arraydecay83 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @flatten_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i8* %arraydecay83)
  %53 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %54 = bitcast %struct._GimpLayer* %53 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_drawable_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call84)
  %55 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpDrawable*
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %57 = bitcast %struct._GimpLayer* %56 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_item_get_type() #7
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call86)
  %58 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpItem*
  %call88 = call i32 @gimp_item_is_attached(%struct._GimpItem* %58)
  %call89 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0), i64 10)
  %59 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %60 = load i32, i32* %new_type, align 4
  call void @gimp_drawable_set_tiles(%struct._GimpDrawable* %55, i32 %call88, i8* %call89, %struct._TileManager* %59, i32 %60)
  %61 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %61)
  br label %return

return:                                           ; preds = %cond.end.75, %if.then.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i32 @gimp_drawable_type_without_alpha(%struct._GimpDrawable*) #1

declare void @gimp_image_get_background(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define void @gimp_layer_resize_to_image(%struct._GimpLayer* %layer, %struct._GimpContext* %context) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_resize_to_image, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_resize_to_image, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_context_get_type() #7
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %do.body.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %do.body.20
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
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
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

if.then.44:                                       ; preds = %if.end.41
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_resize_to_image, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %30 = bitcast %struct._GimpLayer* %29 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call48)
  %31 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  store %struct._GimpImage* %call50, %struct._GimpImage** %image, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call51 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), i64 10)
  %call52 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %32, i32 22, i8* %call51)
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %34 = bitcast %struct._GimpLayer* %33 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call53)
  %35 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %35, i32* %offset_x, i32* %offset_y)
  %36 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %37 = bitcast %struct._GimpLayer* %36 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_item_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call55)
  %38 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpItem*
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call57 = call i32 @gimp_image_get_width(%struct._GimpImage* %40)
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call58 = call i32 @gimp_image_get_height(%struct._GimpImage* %41)
  %42 = load i32, i32* %offset_x, align 4
  %43 = load i32, i32* %offset_y, align 4
  call void @gimp_item_resize(%struct._GimpItem* %38, %struct._GimpContext* %39, i32 %call57, i32 %call58, i32 %42, i32 %43)
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call59 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %44)
  br label %return

return:                                           ; preds = %do.end.47, %if.else.45, %if.else.17, %if.else.9
  ret void
}

declare void @gimp_item_resize(%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %layer) #3 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_layer_get_floating_sel_drawable, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %13, i32 0, i32 6
  %drawable = getelementptr inbounds %struct.anon, %struct.anon* %fs, i32 0, i32 0
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  store %struct._GimpDrawable* %14, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_layer_set_floating_sel_drawable(%struct._GimpLayer* %layer, %struct._GimpDrawable* %drawable) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_layer_set_floating_sel_drawable, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.55

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
  %call17 = call i64 @gimp_drawable_get_type() #7
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_layer_set_floating_sel_drawable, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.55

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %27, i32 0, i32 6
  %drawable40 = getelementptr inbounds %struct.anon, %struct.anon* %fs, i32 0, i32 0
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable40, align 8
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp41 = icmp ne %struct._GimpDrawable* %28, %29
  br i1 %cmp41, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %do.end.39
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs43 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %30, i32 0, i32 6
  %segs = getelementptr inbounds %struct.anon, %struct.anon* %fs43, i32 0, i32 2
  %31 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  %tobool44 = icmp ne %struct._BoundSeg* %31, null
  br i1 %tobool44, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.then.42
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs46 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %32, i32 0, i32 6
  %segs47 = getelementptr inbounds %struct.anon, %struct.anon* %fs46, i32 0, i32 2
  %33 = load %struct._BoundSeg*, %struct._BoundSeg** %segs47, align 8
  %34 = bitcast %struct._BoundSeg* %33 to i8*
  call void @g_free(i8* %34)
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs48 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %35, i32 0, i32 6
  %segs49 = getelementptr inbounds %struct.anon, %struct.anon* %fs48, i32 0, i32 2
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs49, align 8
  %36 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs50 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %36, i32 0, i32 6
  %num_segs = getelementptr inbounds %struct.anon, %struct.anon* %fs50, i32 0, i32 3
  store i32 0, i32* %num_segs, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.45, %if.then.42
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %fs52 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %38, i32 0, i32 6
  %drawable53 = getelementptr inbounds %struct.anon, %struct.anon* %fs52, i32 0, i32 0
  store %struct._GimpDrawable* %37, %struct._GimpDrawable** %drawable53, align 8
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %40 = bitcast %struct._GimpLayer* %39 to %struct._GTypeInstance*
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call54 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.9, %if.else.37, %if.end.51, %do.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %layer) #3 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_layer_is_floating_sel, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call11 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %13)
  %cmp12 = icmp ne %struct._GimpDrawable* %call11, null
  %conv = zext i1 %cmp12 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @gimp_layer_set_opacity(%struct._GimpLayer* %layer, double %opacity, i32 %push_undo) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %opacity.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_layer_set_opacity, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.48

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double, double* %opacity.addr, align 8
  %cmp11 = fcmp ogt double %13, 1.000000e+00
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.15

cond.false:                                       ; preds = %do.end
  %14 = load double, double* %opacity.addr, align 8
  %cmp12 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.false
  br label %cond.end

cond.false.14:                                    ; preds = %cond.false
  %15 = load double, double* %opacity.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.14, %cond.true.13
  %cond = phi double [ 0.000000e+00, %cond.true.13 ], [ %15, %cond.false.14 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true
  %cond16 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond16, double* %opacity.addr, align 8
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity17 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %16, i32 0, i32 1
  %17 = load double, double* %opacity17, align 8
  %18 = load double, double* %opacity.addr, align 8
  %cmp18 = fcmp une double %17, %18
  br i1 %cmp18, label %if.then.19, label %if.end.48

if.then.19:                                       ; preds = %cond.end.15
  %19 = load i32, i32* %push_undo.addr, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.32

land.lhs.true.21:                                 ; preds = %if.then.19
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %21 = bitcast %struct._GimpLayer* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call i32 @gimp_item_is_attached(%struct._GimpItem* %22)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %land.lhs.true.21
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %24 = bitcast %struct._GimpLayer* %23 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call28)
  %25 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpItem*
  %call30 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %25)
  store %struct._GimpImage* %call30, %struct._GimpImage** %image, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call31 = call %struct._GimpUndo* @gimp_image_undo_push_layer_opacity(%struct._GimpImage* %26, i8* null, %struct._GimpLayer* %27)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.26, %land.lhs.true.21, %if.then.19
  %28 = load double, double* %opacity.addr, align 8
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity33 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %29, i32 0, i32 1
  store double %28, double* %opacity33, align 8
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %31 = bitcast %struct._GimpLayer* %30 to i8*
  %32 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @layer_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %31, i32 %32, i32 0)
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %34 = bitcast %struct._GimpLayer* %33 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0))
  %36 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity_node = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %36, i32 0, i32 5
  %37 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node, align 8
  %tobool35 = icmp ne %struct._GeglNode* %37, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.32
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity_node37 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %38, i32 0, i32 5
  %39 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node37, align 8
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity38 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %40, i32 0, i32 1
  %41 = load double, double* %opacity38, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), double %41, i8* null)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.32
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %43 = bitcast %struct._GimpLayer* %42 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_drawable_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call40)
  %44 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawable*
  %45 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %46 = bitcast %struct._GimpLayer* %45 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_item_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call42)
  %47 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpItem*
  %call44 = call i32 @gimp_item_get_width(%struct._GimpItem* %47)
  %48 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %49 = bitcast %struct._GimpLayer* %48 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_item_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call45)
  %50 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpItem*
  %call47 = call i32 @gimp_item_get_height(%struct._GimpItem* %50)
  call void @gimp_drawable_update(%struct._GimpDrawable* %44, i32 0, i32 0, i32 %call44, i32 %call47)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.9, %if.end.39, %cond.end.15
  ret void
}

declare %struct._GimpUndo* @gimp_image_undo_push_layer_opacity(%struct._GimpImage*, i8*, %struct._GimpLayer*) #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define double @gimp_layer_get_opacity(%struct._GimpLayer* %layer) #3 {
entry:
  %retval = alloca double, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_layer_get_opacity, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %13, i32 0, i32 1
  %14 = load double, double* %opacity, align 8
  store double %14, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load double, double* %retval
  ret double %15
}

; Function Attrs: nounwind uwtable
define void @gimp_layer_set_mode(%struct._GimpLayer* %layer, i32 %mode, i32 %push_undo) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %mode.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_set_mode, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.37

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mode11 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %13, i32 0, i32 2
  %14 = load i32, i32* %mode11, align 4
  %15 = load i32, i32* %mode.addr, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.37

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %push_undo.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.26

land.lhs.true.15:                                 ; preds = %if.then.13
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call i32 @gimp_item_is_attached(%struct._GimpItem* %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %21 = bitcast %struct._GimpLayer* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %22)
  store %struct._GimpImage* %call24, %struct._GimpImage** %image, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call25 = call %struct._GimpUndo* @gimp_image_undo_push_layer_mode(%struct._GimpImage* %23, i8* null, %struct._GimpLayer* %24)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %land.lhs.true.15, %if.then.13
  %25 = load i32, i32* %mode.addr, align 4
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mode27 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %26, i32 0, i32 2
  store i32 %25, i32* %mode27, align 4
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %28 = bitcast %struct._GimpLayer* %27 to i8*
  %29 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @layer_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %28, i32 %29, i32 0)
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %31 = bitcast %struct._GimpLayer* %30 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0))
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  call void @gimp_layer_sync_mode_node(%struct._GimpLayer* %33)
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_drawable_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call29)
  %36 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpDrawable*
  %37 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %38 = bitcast %struct._GimpLayer* %37 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call31)
  %39 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call i32 @gimp_item_get_width(%struct._GimpItem* %39)
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %41 = bitcast %struct._GimpLayer* %40 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_item_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call34)
  %42 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpItem*
  %call36 = call i32 @gimp_item_get_height(%struct._GimpItem* %42)
  call void @gimp_drawable_update(%struct._GimpDrawable* %36, i32 0, i32 0, i32 %call33, i32 %call36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.9, %if.end.26, %do.end
  ret void
}

declare %struct._GimpUndo* @gimp_image_undo_push_layer_mode(%struct._GimpImage*, i8*, %struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_sync_mode_node(%struct._GimpLayer* %layer) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %mode_node = alloca %struct._GeglNode*, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %opacity_node = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %0, i32 0, i32 5
  %1 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node, align 8
  %tobool = icmp ne %struct._GeglNode* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %3 = bitcast %struct._GimpLayer* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %call2 = call %struct._GeglNode* @gimp_drawable_get_mode_node(%struct._GimpDrawable* %4)
  store %struct._GeglNode* %call2, %struct._GeglNode** %mode_node, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mode = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %5, i32 0, i32 2
  %6 = load i32, i32* %mode, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 18, label %sw.bb
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 22, label %sw.bb
    i32 23, label %sw.bb
    i32 24, label %sw.bb
    i32 25, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %7 = load %struct._GeglNode*, %struct._GeglNode** %mode_node, align 8
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mode3 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %8, i32 0, i32 2
  %9 = load i32, i32* %mode3, align 4
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i32 %9, i8* null)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %10 = load %struct._GeglNode*, %struct._GeglNode** %mode_node, align 8
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mode4 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %11, i32 0, i32 2
  %12 = load i32, i32* %mode4, align 4
  %call5 = call i8* @gimp_layer_mode_to_gegl_operation(i32 %12) #7
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* %call5, i8* null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_get_mode(%struct._GimpLayer* %layer) #3 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_get_mode, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %mode = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %13, i32 0, i32 2
  %14 = load i32, i32* %mode, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %layer, i32 %lock_alpha, i32 %push_undo) #3 {
entry:
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %lock_alpha.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  store i32 %lock_alpha, i32* %lock_alpha.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_set_lock_alpha, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.37

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call12 = call i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_set_lock_alpha, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.37

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load i32, i32* %lock_alpha.addr, align 4
  %tobool18 = icmp ne i32 %14, 0
  %cond = select i1 %tobool18, i32 1, i32 0
  store i32 %cond, i32* %lock_alpha.addr, align 4
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %lock_alpha19 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %15, i32 0, i32 3
  %16 = load i32, i32* %lock_alpha19, align 4
  %17 = load i32, i32* %lock_alpha.addr, align 4
  %cmp20 = icmp ne i32 %16, %17
  br i1 %cmp20, label %if.then.21, label %if.end.37

if.then.21:                                       ; preds = %do.end.17
  %18 = load i32, i32* %push_undo.addr, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.34

land.lhs.true.23:                                 ; preds = %if.then.21
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call24)
  %21 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  %call26 = call i32 @gimp_item_is_attached(%struct._GimpItem* %21)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %land.lhs.true.23
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call30)
  %24 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %24)
  store %struct._GimpImage* %call32, %struct._GimpImage** %image, align 8
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %call33 = call %struct._GimpUndo* @gimp_image_undo_push_layer_lock_alpha(%struct._GimpImage* %25, i8* null, %struct._GimpLayer* %26)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %land.lhs.true.23, %if.then.21
  %27 = load i32, i32* %lock_alpha.addr, align 4
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %lock_alpha35 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %28, i32 0, i32 3
  store i32 %27, i32* %lock_alpha35, align 4
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %30 = bitcast %struct._GimpLayer* %29 to i8*
  %31 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @layer_signals, i32 0, i64 2), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %30, i32 %31, i32 0)
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %33 = bitcast %struct._GimpLayer* %32 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.9, %if.else.15, %if.end.34, %do.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer* %layer) #3 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_can_lock_alpha, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  %call13 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %15)
  %tobool14 = icmp ne %struct._GimpContainer* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct._GimpUndo* @gimp_image_undo_push_layer_lock_alpha(%struct._GimpImage*, i8*, %struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %layer) #3 {
entry:
  %retval = alloca i32, align 4
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_layer_get_lock_alpha, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %lock_alpha = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %13, i32 0, i32 3
  %14 = load i32, i32* %lock_alpha, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_class_init(%struct._GimpLayerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLayerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %drawable_class = alloca %struct._GimpDrawableClass*, align 8
  store %struct._GimpLayerClass* %klass, %struct._GimpLayerClass** %klass.addr, align 8
  %0 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLayerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpLayerClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpLayerClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpLayerClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %11, %struct._GimpItemClass** %item_class, align 8
  %12 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpLayerClass* %12 to %struct._GTypeClass*
  %call7 = call i64 @gimp_drawable_get_type() #7
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call7)
  %14 = bitcast %struct._GTypeClass* %call8 to %struct._GimpDrawableClass*
  store %struct._GimpDrawableClass* %14, %struct._GimpDrawableClass** %drawable_class, align 8
  %15 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpLayerClass* %15 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i64 %17, i32 1, i32 680, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call9, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @layer_signals, i32 0, i64 0), align 4
  %18 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpLayerClass* %18 to %struct._GTypeClass*
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type10, align 8
  %call11 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i64 %20, i32 1, i32 688, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call11, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @layer_signals, i32 0, i64 1), align 4
  %21 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpLayerClass* %21 to %struct._GTypeClass*
  %g_type12 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type12, align 8
  %call13 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i64 %23, i32 1, i32 696, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call13, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @layer_signals, i32 0, i64 2), align 4
  %24 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %25 = bitcast %struct._GimpLayerClass* %24 to %struct._GTypeClass*
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type14, align 8
  %call15 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i64 %26, i32 1, i32 704, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call15, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @layer_signals, i32 0, i64 3), align 4
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %27, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_layer_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %28, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_layer_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %29 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %29, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_layer_dispose, void (%struct._GObject*)** %dispose, align 8
  %30 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %30, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_layer_finalize, void (%struct._GObject*)** %finalize, align 8
  %31 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %name_changed = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %31, i32 0, i32 2
  store void (%struct._GimpObject*)* @gimp_layer_name_changed, void (%struct._GimpObject*)** %name_changed, align 8
  %32 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %32, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_layer_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %33 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %33, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8** %default_stock_id, align 8
  %34 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %invalidate_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %34, i32 0, i32 3
  store void (%struct._GimpViewable*)* @gimp_layer_invalidate_preview, void (%struct._GimpViewable*)** %invalidate_preview, align 8
  %35 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %35, i32 0, i32 12
  store i8* (%struct._GimpViewable*, i8**)* @gimp_layer_get_description, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %36 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %removed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %36, i32 0, i32 1
  store void (%struct._GimpItem*)* @gimp_layer_removed, void (%struct._GimpItem*)** %removed, align 8
  %37 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %unset_removed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %37, i32 0, i32 5
  store void (%struct._GimpItem*)* @gimp_layer_unset_removed, void (%struct._GimpItem*)** %unset_removed, align 8
  %38 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %is_attached = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %38, i32 0, i32 6
  store i32 (%struct._GimpItem*)* @gimp_layer_is_attached, i32 (%struct._GimpItem*)** %is_attached, align 8
  %39 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %get_tree = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %39, i32 0, i32 8
  store %struct._GimpItemTree* (%struct._GimpItem*)* @gimp_layer_get_tree, %struct._GimpItemTree* (%struct._GimpItem*)** %get_tree, align 8
  %40 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %40, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpItem*, i64)* @gimp_layer_duplicate, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %41 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %41, i32 0, i32 10
  store void (%struct._GimpItem*, %struct._GimpImage*)* @gimp_layer_convert, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %42 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %42, i32 0, i32 11
  store i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)* @gimp_layer_rename, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)** %rename, align 8
  %43 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %43, i32 0, i32 12
  store void (%struct._GimpItem*, i32, i32, i32)* @gimp_layer_translate, void (%struct._GimpItem*, i32, i32, i32)** %translate, align 8
  %44 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %44, i32 0, i32 13
  store void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_layer_scale, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %45 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %45, i32 0, i32 14
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)* @gimp_layer_resize, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %46 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %46, i32 0, i32 15
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)* @gimp_layer_flip, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %47 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %47, i32 0, i32 16
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)* @gimp_layer_rotate, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %48 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %48, i32 0, i32 17
  store void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_layer_transform, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)** %transform, align 8
  %49 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %to_selection = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %49, i32 0, i32 19
  store void (%struct._GimpItem*, i32, i32, i32, double, double)* @gimp_layer_to_selection, void (%struct._GimpItem*, i32, i32, i32, double, double)** %to_selection, align 8
  %50 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %get_node = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %50, i32 0, i32 20
  store %struct._GeglNode* (%struct._GimpItem*)* @gimp_layer_get_node, %struct._GeglNode* (%struct._GimpItem*)** %get_node, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #5
  %51 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %default_name = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %51, i32 0, i32 21
  store i8* %call16, i8** %default_name, align 8
  %call17 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), i64 10)
  %52 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %52, i32 0, i32 22
  store i8* %call17, i8** %rename_desc, align 8
  %call18 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i64 10)
  %53 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %53, i32 0, i32 23
  store i8* %call18, i8** %translate_desc, align 8
  %call19 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), i64 10)
  %54 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %54, i32 0, i32 24
  store i8* %call19, i8** %scale_desc, align 8
  %call20 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i64 10)
  %55 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %55, i32 0, i32 25
  store i8* %call20, i8** %resize_desc, align 8
  %call21 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0), i64 10)
  %56 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %56, i32 0, i32 26
  store i8* %call21, i8** %flip_desc, align 8
  %call22 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i32 0, i32 0), i64 10)
  %57 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %57, i32 0, i32 27
  store i8* %call22, i8** %rotate_desc, align 8
  %call23 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.55, i32 0, i32 0), i64 10)
  %58 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %58, i32 0, i32 28
  store i8* %call23, i8** %transform_desc, align 8
  %call24 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i32 0, i32 0), i64 10)
  %59 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %to_selection_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %59, i32 0, i32 29
  store i8* %call24, i8** %to_selection_desc, align 8
  %call25 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i64 10)
  %60 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %reorder_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %60, i32 0, i32 31
  store i8* %call25, i8** %reorder_desc, align 8
  %call26 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0), i64 10)
  %61 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %raise_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %61, i32 0, i32 32
  store i8* %call26, i8** %raise_desc, align 8
  %call27 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i32 0, i32 0), i64 10)
  %62 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %raise_to_top_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %62, i32 0, i32 33
  store i8* %call27, i8** %raise_to_top_desc, align 8
  %call28 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0), i64 10)
  %63 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %lower_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %63, i32 0, i32 34
  store i8* %call28, i8** %lower_desc, align 8
  %call29 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.61, i32 0, i32 0), i64 10)
  %64 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %lower_to_bottom_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %64, i32 0, i32 35
  store i8* %call29, i8** %lower_to_bottom_desc, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0)) #5
  %65 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %raise_failed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %65, i32 0, i32 36
  store i8* %call30, i8** %raise_failed, align 8
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0)) #5
  %66 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %lower_failed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %66, i32 0, i32 37
  store i8* %call31, i8** %lower_failed, align 8
  %67 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %estimate_memsize = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %67, i32 0, i32 3
  store i64 (%struct._GimpDrawable*, i32, i32)* @gimp_layer_estimate_memsize, i64 (%struct._GimpDrawable*, i32, i32)** %estimate_memsize, align 8
  %68 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %invalidate_boundary = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %68, i32 0, i32 4
  store void (%struct._GimpDrawable*)* @gimp_layer_invalidate_boundary, void (%struct._GimpDrawable*)** %invalidate_boundary, align 8
  %69 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %get_active_components = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %69, i32 0, i32 5
  store void (%struct._GimpDrawable*, i32*)* @gimp_layer_get_active_components, void (%struct._GimpDrawable*, i32*)** %get_active_components, align 8
  %70 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %convert_type = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %70, i32 0, i32 6
  store void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)* @gimp_layer_convert_type, void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)** %convert_type, align 8
  %71 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %project_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %71, i32 0, i32 9
  store void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)* @gimp_layer_project_region, void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)** %project_region, align 8
  %72 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %opacity_changed = getelementptr inbounds %struct._GimpLayerClass, %struct._GimpLayerClass* %72, i32 0, i32 1
  store void (%struct._GimpLayer*)* null, void (%struct._GimpLayer*)** %opacity_changed, align 8
  %73 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %mode_changed = getelementptr inbounds %struct._GimpLayerClass, %struct._GimpLayerClass* %73, i32 0, i32 2
  store void (%struct._GimpLayer*)* null, void (%struct._GimpLayer*)** %mode_changed, align 8
  %74 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %lock_alpha_changed = getelementptr inbounds %struct._GimpLayerClass, %struct._GimpLayerClass* %74, i32 0, i32 3
  store void (%struct._GimpLayer*)* null, void (%struct._GimpLayer*)** %lock_alpha_changed, align 8
  %75 = load %struct._GimpLayerClass*, %struct._GimpLayerClass** %klass.addr, align 8
  %mask_changed = getelementptr inbounds %struct._GimpLayerClass, %struct._GimpLayerClass* %75, i32 0, i32 4
  store void (%struct._GimpLayer*)* null, void (%struct._GimpLayer*)** %mask_changed, align 8
  %76 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call32 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %76, i32 1, %struct._GParamSpec* %call32)
  %77 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call33 = call i64 @gimp_layer_mode_effects_get_type() #7
  %call34 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null, i64 %call33, i32 0, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %77, i32 2, %struct._GParamSpec* %call34)
  %78 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call35 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null, i32 0, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %78, i32 3, %struct._GParamSpec* %call35)
  %79 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call36 = call i64 @gimp_layer_mask_get_type() #7
  %call37 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, i64 %call36, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %79, i32 4, %struct._GParamSpec* %call37)
  %80 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call38 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null, i32 0, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %80, i32 5, %struct._GParamSpec* %call38)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 358, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call2 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %5)
  call void @g_value_set_double(%struct._GValue* %4, double %call2)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call4 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %7)
  call void @g_value_set_enum(%struct._GValue* %6, i32 %call4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call6 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %9)
  call void @g_value_set_boolean(%struct._GValue* %8, i32 %call6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call8 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %11)
  %12 = bitcast %struct._GimpLayerMask* %call8 to i8*
  call void @g_value_set_object(%struct._GValue* %10, i8* %12)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call10 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %14)
  call void @g_value_set_boolean(%struct._GValue* %13, i32 %call10)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %15, %struct._GObject** %_glib__object, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %16, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = load i32, i32* %property_id.addr, align 4
  store i32 %17, i32* %_glib__property_id, align 4
  %18 = load i32, i32* %_glib__property_id, align 4
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %19, i32 0, i32 1
  %20 = load i8*, i8** %name, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = bitcast %struct._GParamSpec* %21 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %call11 = call i8* @g_type_name(i64 %24)
  %25 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %26 = bitcast %struct._GObject* %25 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type13, align 8
  %call14 = call i8* @g_type_name(i64 %28)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 390, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 %18, i8* %20, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %fs_drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %3, i32 0, i32 4
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask2 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %5, i32 0, i32 4
  %6 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask2, align 8
  %7 = bitcast %struct._GimpLayerMask* %6 to i8*
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %9 = bitcast %struct._GimpLayer* %8 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._GimpLayer*)* @gimp_layer_layer_mask_update to i8*), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call4 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %10)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call7 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %11)
  store %struct._GimpDrawable* %call7, %struct._GimpDrawable** %fs_drawable, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %fs_drawable, align 8
  %call8 = call %struct._GimpLayer* @gimp_drawable_get_floating_sel(%struct._GimpDrawable* %12)
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %cmp = icmp eq %struct._GimpLayer* %call8, %13
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %fs_drawable, align 8
  call void @gimp_drawable_detach_floating_sel(%struct._GimpDrawable* %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %15 = load i8*, i8** @gimp_layer_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call12 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call12 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 5
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %3, i32 0, i32 4
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask2 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %5, i32 0, i32 4
  %6 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask2, align 8
  %7 = bitcast %struct._GimpLayerMask* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask3 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %8, i32 0, i32 4
  store %struct._GimpLayerMask* null, %struct._GimpLayerMask** %mask3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %fs = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %9, i32 0, i32 6
  %segs = getelementptr inbounds %struct.anon, %struct.anon* %fs, i32 0, i32 2
  %10 = load %struct._BoundSeg*, %struct._BoundSeg** %segs, align 8
  %tobool4 = icmp ne %struct._BoundSeg* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %fs6 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %11, i32 0, i32 6
  %segs7 = getelementptr inbounds %struct.anon, %struct.anon* %fs6, i32 0, i32 2
  %12 = load %struct._BoundSeg*, %struct._BoundSeg** %segs7, align 8
  %13 = bitcast %struct._BoundSeg* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %fs8 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %14, i32 0, i32 6
  %segs9 = getelementptr inbounds %struct.anon, %struct.anon* %fs8, i32 0, i32 2
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs9, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %fs10 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %15, i32 0, i32 6
  %num_segs = getelementptr inbounds %struct.anon, %struct.anon* %fs10, i32 0, i32 3
  store i32 0, i32* %num_segs, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.5, %if.end
  %16 = load i8*, i8** @gimp_layer_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call12 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 80)
  %18 = bitcast %struct._GTypeClass* %call12 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 6
  %19 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %19(%struct._GObject* %20)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_name_changed(%struct._GimpObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %mask_name = alloca i8*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load i8*, i8** @gimp_layer_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpObjectClass*
  %name_changed = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %5, i32 0, i32 2
  %6 = load void (%struct._GimpObject*)*, void (%struct._GimpObject*)** %name_changed, align 8
  %tobool = icmp ne void (%struct._GimpObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_layer_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call i64 @gimp_object_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call4)
  %9 = bitcast %struct._GTypeClass* %call5 to %struct._GimpObjectClass*
  %name_changed6 = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %9, i32 0, i32 2
  %10 = load void (%struct._GimpObject*)*, void (%struct._GimpObject*)** %name_changed6, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void %10(%struct._GimpObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %12, i32 0, i32 4
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool7 = icmp ne %struct._GimpLayerMask* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.end
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)) #5
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = bitcast %struct._GimpObject* %14 to i8*
  %call10 = call i8* @gimp_object_get_name(i8* %15)
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call9, i8* %call10)
  store i8* %call11, i8** %mask_name, align 8
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask12 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %16, i32 0, i32 4
  %17 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask12, align 8
  %18 = bitcast %struct._GimpLayerMask* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  %20 = load i8*, i8** %mask_name, align 8
  call void @gimp_object_take_name(%struct._GimpObject* %19, i8* %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_layer_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %3, i32 0, i32 4
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %5 = bitcast %struct._GimpLayerMask* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %7 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %6, i64* %7)
  %8 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %8, %call4
  store i64 %add, i64* %memsize, align 8
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %fs = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %9, i32 0, i32 6
  %num_segs = getelementptr inbounds %struct.anon, %struct.anon* %fs, i32 0, i32 3
  %10 = load i32, i32* %num_segs, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 %conv, 20
  %11 = load i64*, i64** %gui_size.addr, align 8
  %12 = load i64, i64* %11, align 8
  %add5 = add i64 %12, %mul
  store i64 %add5, i64* %11, align 8
  %13 = load i64, i64* %memsize, align 8
  %14 = load i8*, i8** @gimp_layer_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call6 = call i64 @gimp_object_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 %call6)
  %16 = bitcast %struct._GTypeClass* %call7 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %16, i32 0, i32 3
  %17 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %18 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %19 = load i64*, i64** %gui_size.addr, align 8
  %call8 = call i64 %17(%struct._GimpObject* %18, i64* %19)
  %add9 = add nsw i64 %13, %call8
  ret i64 %add9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_invalidate_preview(%struct._GimpViewable* %viewable) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load i8*, i8** @gimp_layer_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_viewable_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpViewableClass*
  %invalidate_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %5, i32 0, i32 3
  %6 = load void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)** %invalidate_preview, align 8
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void %6(%struct._GimpViewable* %7)
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call4 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @floating_sel_invalidate(%struct._GimpLayer* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_layer_get_description(%struct._GimpViewable* %viewable, i8** %tooltip) #3 {
entry:
  %retval = alloca i8*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %tooltip.addr = alloca i8**, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8** %tooltip, i8*** %tooltip.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  %call2 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i32 0, i32 0)) #5
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %4 = bitcast %struct._GimpViewable* %3 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %4)
  %call5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call3, i8* %call4)
  store i8* %call5, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** @gimp_layer_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call6 = call i64 @gimp_viewable_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call6)
  %7 = bitcast %struct._GTypeClass* %call7 to %struct._GimpViewableClass*
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %7, i32 0, i32 12
  %8 = load i8* (%struct._GimpViewable*, i8**)*, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %10 = load i8**, i8*** %tooltip.addr, align 8
  %call8 = call i8* %8(%struct._GimpViewable* %9, i8** %10)
  store i8* %call8, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_removed(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %3, i32 0, i32 4
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask2 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %5, i32 0, i32 4
  %6 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask2, align 8
  %7 = bitcast %struct._GimpLayerMask* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  call void @gimp_item_removed(%struct._GimpItem* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_layer_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  %removed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %11, i32 0, i32 1
  %12 = load void (%struct._GimpItem*)*, void (%struct._GimpItem*)** %removed, align 8
  %tobool7 = icmp ne void (%struct._GimpItem*)* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %13 = load i8*, i8** @gimp_layer_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call i64 @gimp_item_get_type() #7
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call9)
  %15 = bitcast %struct._GTypeClass* %call10 to %struct._GimpItemClass*
  %removed11 = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %15, i32 0, i32 1
  %16 = load void (%struct._GimpItem*)*, void (%struct._GimpItem*)** %removed11, align 8
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void %16(%struct._GimpItem* %17)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_unset_removed(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %3, i32 0, i32 4
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask2 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %5, i32 0, i32 4
  %6 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask2, align 8
  %7 = bitcast %struct._GimpLayerMask* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  call void @gimp_item_unset_removed(%struct._GimpItem* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_layer_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  %unset_removed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %11, i32 0, i32 5
  %12 = load void (%struct._GimpItem*)*, void (%struct._GimpItem*)** %unset_removed, align 8
  %tobool7 = icmp ne void (%struct._GimpItem*)* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %13 = load i8*, i8** @gimp_layer_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call i64 @gimp_item_get_type() #7
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call9)
  %15 = bitcast %struct._GTypeClass* %call10 to %struct._GimpItemClass*
  %unset_removed11 = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %15, i32 0, i32 5
  %16 = load void (%struct._GimpItem*)*, void (%struct._GimpItem*)** %unset_removed11, align 8
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void %16(%struct._GimpItem* %17)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_is_attached(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_image_get_type() #7
  store i64 %call1, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.7
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %14)
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %16 = bitcast %struct._GimpItem* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_object_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpObject*
  %call12 = call i32 @gimp_container_have(%struct._GimpContainer* %call9, %struct._GimpObject* %17)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.7
  %18 = phi i1 [ false, %if.end.7 ], [ %tobool13, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItemTree* @gimp_layer_get_tree(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call i32 @gimp_item_is_attached(%struct._GimpItem* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %1)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpItemTree* @gimp_image_get_layer_tree(%struct._GimpImage* %2)
  store %struct._GimpItemTree* %call2, %struct._GimpItemTree** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GimpItemTree* null, %struct._GimpItemTree** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._GimpItemTree*, %struct._GimpItemTree** %retval
  ret %struct._GimpItemTree* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_layer_duplicate(%struct._GimpItem* %item, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_type.addr = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
  %mask34 = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i64 %new_type, i64* %new_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %new_type.addr, align 8
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_layer_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.67, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** @gimp_layer_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call2)
  %3 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %3, i32 0, i32 9
  %4 = load %struct._GimpItem* (%struct._GimpItem*, i64)*, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %6 = load i64, i64* %new_type.addr, align 8
  %call4 = call %struct._GimpItem* %4(%struct._GimpItem* %5, i64 %6)
  store %struct._GimpItem* %call4, %struct._GimpItem** %new_item, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %8 = bitcast %struct._GimpItem* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_layer_get_type() #7
  store i64 %call5, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool6, label %if.else.8, label %if.then.7

if.then.7:                                        ; preds = %do.end
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else.8:                                        ; preds = %do.end
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else.8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.else.8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.7
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.46

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_layer_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpLayer*
  store %struct._GimpLayer* %22, %struct._GimpLayer** %layer, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_layer_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpLayer*
  store %struct._GimpLayer* %25, %struct._GimpLayer** %new_layer, align 8
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call24 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %27)
  call void @gimp_layer_set_mode(%struct._GimpLayer* %26, i32 %call24, i32 0)
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %29 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call25 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %29)
  call void @gimp_layer_set_opacity(%struct._GimpLayer* %28, double %call25, i32 0)
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %call26 = call i32 @gimp_layer_can_lock_alpha(%struct._GimpLayer* %30)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.17
  %31 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %32 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call29 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %32)
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %31, i32 %call29, i32 0)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.17
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %33, i32 0, i32 4
  %34 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool31 = icmp ne %struct._GimpLayerMask* %34, null
  br i1 %tobool31, label %if.then.32, label %if.end.45

if.then.32:                                       ; preds = %if.end.30
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask35 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %35, i32 0, i32 4
  %36 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask35, align 8
  %37 = bitcast %struct._GimpLayerMask* %36 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call36)
  %38 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask38 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %39, i32 0, i32 4
  %40 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask38, align 8
  %41 = bitcast %struct._GimpLayerMask* %40 to %struct._GTypeInstance*
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %g_type40 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type40, align 8
  %call41 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %38, i64 %43)
  store %struct._GimpItem* %call41, %struct._GimpItem** %mask34, align 8
  %44 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %45 = load %struct._GimpItem*, %struct._GimpItem** %mask34, align 8
  %46 = bitcast %struct._GimpItem* %45 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_layer_mask_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call42)
  %47 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpLayerMask*
  %call44 = call %struct._GimpLayerMask* @gimp_layer_add_mask(%struct._GimpLayer* %44, %struct._GimpLayerMask* %47, i32 0, %struct._GError** null)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.32, %if.end.30
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.15
  %48 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  store %struct._GimpItem* %48, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.else
  %49 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %49
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_convert(%struct._GimpItem* %item, %struct._GimpImage* %dest_image) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %old_base_type = alloca i32, align 4
  %new_base_type = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %5, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call4 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %6)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call5 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %7)
  %cmp6 = icmp eq i32 %call5, 1
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end.19

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call7 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %8)
  %cmp8 = icmp eq i32 %call7, 2
  br i1 %cmp8, label %cond.true.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %cond.false
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %9)
  %cmp11 = icmp eq i32 %call10, 3
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %lor.lhs.false.9, %cond.false
  br label %cond.end

cond.false.13:                                    ; preds = %lor.lhs.false.9
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call14 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %10)
  %cmp15 = icmp eq i32 %call14, 4
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.13
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call16 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %11)
  %cmp17 = icmp eq i32 %call16, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.13
  %12 = phi i1 [ true, %cond.false.13 ], [ %cmp17, %lor.rhs ]
  %cond = select i1 %12, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.12
  %cond18 = phi i32 [ 1, %cond.true.12 ], [ %cond, %lor.end ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi i32 [ 0, %cond.true ], [ %cond18, %cond.end ]
  store i32 %cond20, i32* %old_base_type, align 4
  %13 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %call21 = call i32 @gimp_image_base_type(%struct._GimpImage* %13)
  store i32 %call21, i32* %new_base_type, align 4
  %14 = load i32, i32* %old_base_type, align 4
  %15 = load i32, i32* %new_base_type, align 4
  %cmp22 = icmp ne i32 %14, %15
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.19
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %18 = load i32, i32* %new_base_type, align 4
  call void @gimp_drawable_convert_type(%struct._GimpDrawable* %16, %struct._GimpImage* %17, i32 %18, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.19
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %19, i32 0, i32 4
  %20 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %20, null
  br i1 %tobool, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask24 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %21, i32 0, i32 4
  %22 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask24, align 8
  %23 = bitcast %struct._GimpLayerMask* %22 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call25)
  %24 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %25 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  call void @gimp_item_set_image(%struct._GimpItem* %24, %struct._GimpImage* %25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end
  %26 = load i8*, i8** @gimp_layer_parent_class, align 8
  %27 = bitcast i8* %26 to %struct._GTypeClass*
  %call28 = call i64 @gimp_item_get_type() #7
  %call29 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %27, i64 %call28)
  %28 = bitcast %struct._GTypeClass* %call29 to %struct._GimpItemClass*
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %28, i32 0, i32 10
  %29 = load void (%struct._GimpItem*, %struct._GimpImage*)*, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  call void %29(%struct._GimpItem* %30, %struct._GimpImage* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_rename(%struct._GimpItem* %item, i8* %new_name, i8* %undo_desc, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_name.addr = alloca i8*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %attached = alloca i32, align 4
  %floating_sel = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call3 = call i32 @gimp_item_is_attached(%struct._GimpItem* %4)
  store i32 %call3, i32* %attached, align 4
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call4 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %5)
  store i32 %call4, i32* %floating_sel, align 4
  %6 = load i32, i32* %floating_sel, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call5 = call %struct._GimpDrawable* @gimp_layer_get_floating_sel_drawable(%struct._GimpLayer* %7)
  %8 = bitcast %struct._GimpDrawable* %call5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gimp_channel_get_type() #7
  store i64 %call6, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool7 = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #8
  store i32 %call13, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.8
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call17 = call i32 @gimp_error_quark() #7
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.68, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %20, i32 %call17, i32 0, i8* %call18)
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %21 = load i32, i32* %attached, align 4
  %tobool20 = icmp ne i32 %21, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.19
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %23 = load i8*, i8** %undo_desc.addr, align 8
  %call22 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %22, i32 19, i8* %23)
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call23 = call i32 @floating_sel_to_layer(%struct._GimpLayer* %24, %struct._GError** null)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %entry
  %25 = load i8*, i8** @gimp_layer_parent_class, align 8
  %26 = bitcast i8* %25 to %struct._GTypeClass*
  %call26 = call i64 @gimp_item_get_type() #7
  %call27 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %26, i64 %call26)
  %27 = bitcast %struct._GTypeClass* %call27 to %struct._GimpItemClass*
  %rename = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %27, i32 0, i32 11
  %28 = load i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)** %rename, align 8
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %30 = load i8*, i8** %new_name.addr, align 8
  %31 = load i8*, i8** %undo_desc.addr, align 8
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 %28(%struct._GimpItem* %29, i8* %30, i8* %31, %struct._GError** %32)
  %33 = load i32, i32* %attached, align 4
  %tobool29 = icmp ne i32 %33, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.34

land.lhs.true.30:                                 ; preds = %if.end.25
  %34 = load i32, i32* %floating_sel, align 4
  %tobool31 = icmp ne i32 %34, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true.30
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call33 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %35)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true.30, %if.end.25
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.16
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_translate(%struct._GimpItem* %item, i32 %offset_x, i32 %offset_y, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %4)
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call3 = call %struct._GimpUndo* @gimp_image_undo_push_item_displace(%struct._GimpImage* %call2, i8* null, %struct._GimpItem* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %7 = bitcast %struct._GimpLayer* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_drawable_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawable*
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call6 = call i32 @gimp_item_get_width(%struct._GimpItem* %9)
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call7 = call i32 @gimp_item_get_height(%struct._GimpItem* %10)
  call void @gimp_drawable_update(%struct._GimpDrawable* %8, i32 0, i32 0, i32 %call6, i32 %call7)
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %12 = bitcast %struct._GimpLayer* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_drawable_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %13)
  %14 = load i8*, i8** @gimp_layer_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call10 = call i64 @gimp_item_get_type() #7
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 %call10)
  %16 = bitcast %struct._GTypeClass* %call11 to %struct._GimpItemClass*
  %translate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %16, i32 0, i32 12
  %17 = load void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32)** %translate, align 8
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %19 = load i32, i32* %offset_x.addr, align 4
  %20 = load i32, i32* %offset_y.addr, align 4
  %21 = load i32, i32* %push_undo.addr, align 4
  call void %17(%struct._GimpItem* %18, i32 %19, i32 %20, i32 %21)
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %23 = bitcast %struct._GimpLayer* %22 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_drawable_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call12)
  %24 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDrawable*
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call14 = call i32 @gimp_item_get_width(%struct._GimpItem* %25)
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %26)
  call void @gimp_drawable_update(%struct._GimpDrawable* %24, i32 0, i32 0, i32 %call14, i32 %call15)
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %27, i32 0, i32 4
  %28 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool16 = icmp ne %struct._GimpLayerMask* %28, null
  br i1 %tobool16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %29, i32* %off_x, i32* %off_y)
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask18 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %30, i32 0, i32 4
  %31 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask18, align 8
  %32 = bitcast %struct._GimpLayerMask* %31 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call19)
  %33 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %34 = load i32, i32* %off_x, align 4
  %35 = load i32, i32* %off_y, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %33, i32 %34, i32 %35)
  %36 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask21 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %36, i32 0, i32 4
  %37 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask21, align 8
  %38 = bitcast %struct._GimpLayerMask* %37 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_viewable_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call22)
  %39 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %39)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.17, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_scale(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %new_offset_x, i32 %new_offset_y, i32 %interpolation_type, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32, align 4
  %new_offset_y.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %new_offset_x, i32* %new_offset_x.addr, align 4
  store i32 %new_offset_y, i32* %new_offset_y.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %3, i32 0, i32 4
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask2 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %5, i32 0, i32 4
  %6 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask2, align 8
  %7 = bitcast %struct._GimpLayerMask* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %9 = load i32, i32* %new_width.addr, align 4
  %10 = load i32, i32* %new_height.addr, align 4
  %11 = load i32, i32* %new_offset_x.addr, align 4
  %12 = load i32, i32* %new_offset_y.addr, align 4
  %13 = load i32, i32* %interpolation_type.addr, align 4
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_scale(%struct._GimpItem* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, %struct._GimpProgress* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i8*, i8** @gimp_layer_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 %call5)
  %17 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %17, i32 0, i32 13
  %18 = load void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %20 = load i32, i32* %new_width.addr, align 4
  %21 = load i32, i32* %new_height.addr, align 4
  %22 = load i32, i32* %new_offset_x.addr, align 4
  %23 = load i32, i32* %new_offset_y.addr, align 4
  %24 = load i32, i32* %interpolation_type.addr, align 4
  %25 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void %18(%struct._GimpItem* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, %struct._GimpProgress* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_resize(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load i8*, i8** @gimp_layer_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %5, i32 0, i32 14
  %6 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load i32, i32* %new_width.addr, align 4
  %10 = load i32, i32* %new_height.addr, align 4
  %11 = load i32, i32* %offset_x.addr, align 4
  %12 = load i32, i32* %offset_y.addr, align 4
  call void %6(%struct._GimpItem* %7, %struct._GimpContext* %8, i32 %9, i32 %10, i32 %11, i32 %12)
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %13, i32 0, i32 4
  %14 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask4 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %15, i32 0, i32 4
  %16 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask4, align 8
  %17 = bitcast %struct._GimpLayerMask* %16 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call5)
  %18 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %20 = load i32, i32* %new_width.addr, align 4
  %21 = load i32, i32* %new_height.addr, align 4
  %22 = load i32, i32* %offset_x.addr, align 4
  %23 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_resize(%struct._GimpItem* %18, %struct._GimpContext* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_flip(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load i8*, i8** @gimp_layer_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %5, i32 0, i32 15
  %6 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load i32, i32* %flip_type.addr, align 4
  %10 = load double, double* %axis.addr, align 8
  %11 = load i32, i32* %clip_result.addr, align 4
  call void %6(%struct._GimpItem* %7, %struct._GimpContext* %8, i32 %9, double %10, i32 %11)
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %12, i32 0, i32 4
  %13 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask4 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %14, i32 0, i32 4
  %15 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask4, align 8
  %16 = bitcast %struct._GimpLayerMask* %15 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call5)
  %17 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %19 = load i32, i32* %flip_type.addr, align 4
  %20 = load double, double* %axis.addr, align 8
  %21 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_flip(%struct._GimpItem* %17, %struct._GimpContext* %18, i32 %19, double %20, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_rotate(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load i8*, i8** @gimp_layer_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %5, i32 0, i32 16
  %6 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = load i32, i32* %rotate_type.addr, align 4
  %10 = load double, double* %center_x.addr, align 8
  %11 = load double, double* %center_y.addr, align 8
  %12 = load i32, i32* %clip_result.addr, align 4
  call void %6(%struct._GimpItem* %7, %struct._GimpContext* %8, i32 %9, double %10, double %11, i32 %12)
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %13, i32 0, i32 4
  %14 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask4 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %15, i32 0, i32 4
  %16 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask4, align 8
  %17 = bitcast %struct._GimpLayerMask* %16 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call5)
  %18 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %20 = load i32, i32* %rotate_type.addr, align 4
  %21 = load double, double* %center_x.addr, align 8
  %22 = load double, double* %center_y.addr, align 8
  %23 = load i32, i32* %clip_result.addr, align 4
  call void @gimp_item_rotate(%struct._GimpItem* %18, %struct._GimpContext* %19, i32 %20, double %21, double %22, i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_transform(%struct._GimpItem* %item, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load i32, i32* %interpolation_type.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  %call4 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %6)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_layer_add_alpha(%struct._GimpLayer* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load i8*, i8** @gimp_layer_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call5)
  %10 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  %transform = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %10, i32 0, i32 17
  %11 = load void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)** %transform, align 8
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %15 = load i32, i32* %direction.addr, align 4
  %16 = load i32, i32* %interpolation_type.addr, align 4
  %17 = load i32, i32* %recursion_level.addr, align 4
  %18 = load i32, i32* %clip_result.addr, align 4
  %19 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void %11(%struct._GimpItem* %12, %struct._GimpContext* %13, %struct._GimpMatrix3* %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct._GimpProgress* %19)
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %20, i32 0, i32 4
  %21 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool7 = icmp ne %struct._GimpLayerMask* %21, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask9 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %22, i32 0, i32 4
  %23 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask9, align 8
  %24 = bitcast %struct._GimpLayerMask* %23 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call10)
  %25 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %28 = load i32, i32* %direction.addr, align 4
  %29 = load i32, i32* %interpolation_type.addr, align 4
  %30 = load i32, i32* %recursion_level.addr, align 4
  %31 = load i32, i32* %clip_result.addr, align 4
  %32 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_transform(%struct._GimpItem* %25, %struct._GimpContext* %26, %struct._GimpMatrix3* %27, i32 %28, i32 %29, i32 %30, i32 %31, %struct._GimpProgress* %32)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_to_selection(%struct._GimpItem* %item, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %4)
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_drawable_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawable*
  %8 = load i32, i32* %op.addr, align 4
  %9 = load i32, i32* %feather.addr, align 4
  %10 = load double, double* %feather_radius_x.addr, align 8
  %11 = load double, double* %feather_radius_y.addr, align 8
  call void @gimp_channel_select_alpha(%struct._GimpChannel* %call3, %struct._GimpDrawable* %7, i32 %8, i32 %9, double %10, double %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_layer_get_node(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %node = alloca %struct._GeglNode*, align 8
  %offset_node = alloca %struct._GeglNode*, align 8
  %source = alloca %struct._GeglNode*, align 8
  %mode_node = alloca %struct._GeglNode*, align 8
  %source_node_hijacked = alloca i32, align 4
  %mask24 = alloca %struct._GeglNode*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_layer_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLayer*
  store %struct._GimpLayer* %5, %struct._GimpLayer** %layer, align 8
  store i32 0, i32* %source_node_hijacked, align 4
  %6 = load i8*, i8** @gimp_layer_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call i64 @gimp_item_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call4)
  %8 = bitcast %struct._GTypeClass* %call5 to %struct._GimpItemClass*
  %get_node = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %8, i32 0, i32 20
  %9 = load %struct._GeglNode* (%struct._GimpItem*)*, %struct._GeglNode* (%struct._GimpItem*)** %get_node, align 8
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call6 = call %struct._GeglNode* %9(%struct._GimpItem* %10)
  store %struct._GeglNode* %call6, %struct._GeglNode** %node, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call7 = call %struct._GeglNode* @gimp_drawable_get_source_node(%struct._GimpDrawable* %11)
  store %struct._GeglNode* %call7, %struct._GeglNode** %source, align 8
  %12 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %call8 = call %struct._GeglNode* @gegl_node_get_parent(%struct._GeglNode* %12)
  %tobool = icmp ne %struct._GeglNode* %call8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %source_node_hijacked, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %source_node_hijacked, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %14 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %15 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %call11 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %14, %struct._GeglNode* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %opacity_node = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %16, i32 0, i32 5
  %17 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node, align 8
  %cmp = icmp eq %struct._GeglNode* %17, null
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  call void @g_warn_message(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 833, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_layer_get_node, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %18 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %opacity = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %19, i32 0, i32 1
  %20 = load double, double* %opacity, align 8
  %call15 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), double %20, i8* null)
  %21 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %opacity_node16 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %21, i32 0, i32 5
  store %struct._GeglNode* %call15, %struct._GeglNode** %opacity_node16, align 8
  %22 = load i32, i32* %source_node_hijacked, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %do.end
  %23 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %24 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %opacity_node19 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %24, i32 0, i32 5
  %25 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node19, align 8
  %call20 = call i32 @gegl_node_connect_to(%struct._GeglNode* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._GeglNode* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %do.end
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %26, i32 0, i32 4
  %27 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool22 = icmp ne %struct._GimpLayerMask* %27, null
  br i1 %tobool22, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.21
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask25 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %28, i32 0, i32 4
  %29 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask25, align 8
  %30 = bitcast %struct._GimpLayerMask* %29 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_drawable_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call26)
  %31 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpDrawable*
  %call28 = call %struct._GeglNode* @gimp_drawable_get_source_node(%struct._GimpDrawable* %31)
  store %struct._GeglNode* %call28, %struct._GeglNode** %mask24, align 8
  %32 = load %struct._GeglNode*, %struct._GeglNode** %mask24, align 8
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %opacity_node29 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %33, i32 0, i32 5
  %34 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node29, align 8
  %call30 = call i32 @gegl_node_connect_to(%struct._GeglNode* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._GeglNode* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.23, %if.end.21
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %36 = bitcast %struct._GimpLayer* %35 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call32)
  %37 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %call34 = call %struct._GeglNode* @gimp_item_get_offset_node(%struct._GimpItem* %37)
  store %struct._GeglNode* %call34, %struct._GeglNode** %offset_node, align 8
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %opacity_node35 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %38, i32 0, i32 5
  %39 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node35, align 8
  %40 = load %struct._GeglNode*, %struct._GeglNode** %offset_node, align 8
  %call36 = call i32 @gegl_node_connect_to(%struct._GeglNode* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._GeglNode* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0))
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @gimp_layer_sync_mode_node(%struct._GimpLayer* %41)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call37 = call %struct._GeglNode* @gimp_drawable_get_mode_node(%struct._GimpDrawable* %42)
  store %struct._GeglNode* %call37, %struct._GeglNode** %mode_node, align 8
  %43 = load %struct._GeglNode*, %struct._GeglNode** %offset_node, align 8
  %44 = load %struct._GeglNode*, %struct._GeglNode** %mode_node, align 8
  %call38 = call i32 @gegl_node_connect_to(%struct._GeglNode* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._GeglNode* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0))
  %45 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %45
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_layer_estimate_memsize(%struct._GimpDrawable* %drawable, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %3, i32 0, i32 4
  %4 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %tobool = icmp ne %struct._GimpLayerMask* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %mask2 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %5, i32 0, i32 4
  %6 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask2, align 8
  %7 = bitcast %struct._GimpLayerMask* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_drawable_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawable*
  %9 = load i32, i32* %width.addr, align 4
  %10 = load i32, i32* %height.addr, align 4
  %call5 = call i64 @gimp_drawable_estimate_memsize(%struct._GimpDrawable* %8, i32 %9, i32 %10)
  %11 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %11, %call5
  store i64 %add, i64* %memsize, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i64, i64* %memsize, align 8
  %13 = load i8*, i8** @gimp_layer_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call6 = call i64 @gimp_drawable_get_type() #7
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 %call6)
  %15 = bitcast %struct._GTypeClass* %call7 to %struct._GimpDrawableClass*
  %estimate_memsize = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %15, i32 0, i32 3
  %16 = load i64 (%struct._GimpDrawable*, i32, i32)*, i64 (%struct._GimpDrawable*, i32, i32)** %estimate_memsize, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load i32, i32* %width.addr, align 4
  %19 = load i32, i32* %height.addr, align 4
  %call8 = call i64 %16(%struct._GimpDrawable* %17, i32 %18, i32 %19)
  %add9 = add nsw i64 %12, %call8
  ret i64 %add9
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_invalidate_boundary(%struct._GimpDrawable* %drawable) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %mask = alloca %struct._GimpChannel*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %4 = bitcast %struct._GimpLayer* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %call4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.13

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_selection_invalidate(%struct._GimpImage* %6)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %7)
  store %struct._GimpChannel* %call5, %struct._GimpChannel** %mask, align 8
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %call6 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %9, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %mask, align 8
  %boundary_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %10, i32 0, i32 6
  store i32 0, i32* %boundary_known, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call10 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %11)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  call void @floating_sel_invalidate(%struct._GimpLayer* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.then.12, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_get_active_components(%struct._GimpDrawable* %drawable, i32* %active) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %active.addr = alloca i32*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32* %active, i32** %active.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load i32*, i32** %active.addr, align 8
  call void @gimp_image_get_active_array(%struct._GimpImage* %6, i32* %7)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call5 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %lock_alpha = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %9, i32 0, i32 3
  %10 = load i32, i32* %lock_alpha, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call7 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %11)
  %sub = sub nsw i32 %call7, 1
  %idxprom = sext i32 %sub to i64
  %12 = load i32*, i32** %active.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_layer_convert_type(%struct._GimpDrawable* %drawable, %struct._GimpImage* %dest_image, i32 %new_base_type, i32 %push_undo) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %new_base_type.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %new_type = alloca i32, align 4
  %layerPR = alloca %struct._PixelRegion, align 8
  %newPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %new_base_type, i32* %new_base_type.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i32, i32* %new_base_type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i8*, i8** @gimp_layer_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call)
  %3 = bitcast %struct._GTypeClass* %call1 to %struct._GimpDrawableClass*
  %convert_type = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %3, i32 0, i32 6
  %4 = load void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)*, void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)** %convert_type, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %7 = load i32, i32* %new_base_type.addr, align 4
  %8 = load i32, i32* %push_undo.addr, align 4
  call void %4(%struct._GimpDrawable* %5, %struct._GimpImage* %6, i32 %7, i32 %8)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %10 = bitcast %struct._GimpDrawable* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  store %struct._GimpItem* %11, %struct._GimpItem** %item, align 8
  %12 = load i32, i32* %new_base_type.addr, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.2
  br label %cond.end.10

cond.false:                                       ; preds = %sw.bb.2
  %13 = load i32, i32* %new_base_type.addr, align 4
  %cmp5 = icmp eq i32 %13, 1
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.false
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %14 = load i32, i32* %new_base_type.addr, align 4
  %cmp8 = icmp eq i32 %14, 2
  %cond = select i1 %cmp8, i32 4, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ 2, %cond.true.6 ], [ %cond, %cond.false.7 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi i32 [ 0, %cond.true ], [ %cond9, %cond.end ]
  store i32 %cond11, i32* %new_type, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %15)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.10
  %16 = load i32, i32* %new_type, align 4
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %cond.true.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %17 = load i32, i32* %new_type, align 4
  %cmp14 = icmp eq i32 %17, 1
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %lor.lhs.false, %if.then
  br label %cond.end.27

cond.false.16:                                    ; preds = %lor.lhs.false
  %18 = load i32, i32* %new_type, align 4
  %cmp17 = icmp eq i32 %18, 2
  br i1 %cmp17, label %cond.true.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %cond.false.16
  %19 = load i32, i32* %new_type, align 4
  %cmp19 = icmp eq i32 %19, 3
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %lor.lhs.false.18, %cond.false.16
  br label %cond.end.25

cond.false.21:                                    ; preds = %lor.lhs.false.18
  %20 = load i32, i32* %new_type, align 4
  %cmp22 = icmp eq i32 %20, 4
  br i1 %cmp22, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.21
  %21 = load i32, i32* %new_type, align 4
  %cmp23 = icmp eq i32 %21, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.21
  %22 = phi i1 [ true, %cond.false.21 ], [ %cmp23, %lor.rhs ]
  %cond24 = select i1 %22, i32 5, i32 -1
  br label %cond.end.25

cond.end.25:                                      ; preds = %lor.end, %cond.true.20
  %cond26 = phi i32 [ 3, %cond.true.20 ], [ %cond24, %lor.end ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.true.15
  %cond28 = phi i32 [ 1, %cond.true.15 ], [ %cond26, %cond.end.25 ]
  store i32 %cond28, i32* %new_type, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.27, %cond.end.10
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call29 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call30 = call i32 @gimp_item_get_height(%struct._GimpItem* %24)
  %25 = load i32, i32* %new_type, align 4
  %cmp31 = icmp eq i32 %25, 1
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %if.end
  br label %cond.end.56

cond.false.33:                                    ; preds = %if.end
  %26 = load i32, i32* %new_type, align 4
  %cmp34 = icmp eq i32 %26, 0
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false.33
  br label %cond.end.54

cond.false.36:                                    ; preds = %cond.false.33
  %27 = load i32, i32* %new_type, align 4
  %cmp37 = icmp eq i32 %27, 3
  br i1 %cmp37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.false.36
  br label %cond.end.52

cond.false.39:                                    ; preds = %cond.false.36
  %28 = load i32, i32* %new_type, align 4
  %cmp40 = icmp eq i32 %28, 2
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.false.39
  br label %cond.end.50

cond.false.42:                                    ; preds = %cond.false.39
  %29 = load i32, i32* %new_type, align 4
  %cmp43 = icmp eq i32 %29, 5
  br i1 %cmp43, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.false.42
  br label %cond.end.48

cond.false.45:                                    ; preds = %cond.false.42
  %30 = load i32, i32* %new_type, align 4
  %cmp46 = icmp eq i32 %30, 4
  %cond47 = select i1 %cmp46, i32 1, i32 -1
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.44
  %cond49 = phi i32 [ 2, %cond.true.44 ], [ %cond47, %cond.false.45 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true.41
  %cond51 = phi i32 [ 1, %cond.true.41 ], [ %cond49, %cond.end.48 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %cond.true.38
  %cond53 = phi i32 [ 2, %cond.true.38 ], [ %cond51, %cond.end.50 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.35
  %cond55 = phi i32 [ 3, %cond.true.35 ], [ %cond53, %cond.end.52 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.54, %cond.true.32
  %cond57 = phi i32 [ 4, %cond.true.32 ], [ %cond55, %cond.end.54 ]
  %call58 = call %struct._TileManager* @tile_manager_new(i32 %call29, i32 %call30, i32 %cond57)
  store %struct._TileManager* %call58, %struct._TileManager** %new_tiles, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call59 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %31)
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call60 = call i32 @gimp_item_get_width(%struct._GimpItem* %32)
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call61 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  call void @pixel_region_init(%struct._PixelRegion* %layerPR, %struct._TileManager* %call59, i32 0, i32 0, i32 %call60, i32 %call61, i32 0)
  %34 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call62 = call i32 @gimp_item_get_width(%struct._GimpItem* %35)
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call63 = call i32 @gimp_item_get_height(%struct._GimpItem* %36)
  call void @pixel_region_init(%struct._PixelRegion* %newPR, %struct._TileManager* %34, i32 0, i32 0, i32 %call62, i32 %call63, i32 1)
  %37 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call64 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %38)
  %39 = load i32, i32* %new_type, align 4
  call void @gimp_layer_transform_color(%struct._GimpImage* %37, %struct._PixelRegion* %layerPR, i32 %call64, %struct._PixelRegion* %newPR, i32 %39)
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %41 = load i32, i32* %push_undo.addr, align 4
  %42 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %43 = load i32, i32* %new_type, align 4
  call void @gimp_drawable_set_tiles(%struct._GimpDrawable* %40, i32 %41, i8* null, %struct._TileManager* %42, i32 %43)
  %44 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %44)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.56, %entry, %sw.bb
  ret void
}

declare void @gimp_layer_project_region(%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare i8* @g_type_name(i64) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare %struct._GimpLayer* @gimp_drawable_get_floating_sel(%struct._GimpDrawable*) #1

declare void @gimp_drawable_detach_floating_sel(%struct._GimpDrawable*) #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare void @floating_sel_invalidate(%struct._GimpLayer*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #1

declare %struct._GimpItemTree* @gimp_image_get_layer_tree(%struct._GimpImage*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

declare void @gimp_drawable_convert_type(%struct._GimpDrawable*, %struct._GimpImage*, i32, i32) #1

declare void @gimp_item_set_image(%struct._GimpItem*, %struct._GimpImage*) #1

declare i32 @floating_sel_to_layer(%struct._GimpLayer*, %struct._GError**) #1

declare %struct._GimpUndo* @gimp_image_undo_push_item_displace(%struct._GimpImage*, i8*, %struct._GimpItem*) #1

declare void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable*) #1

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #1

declare void @gimp_item_scale(%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_item_flip(%struct._GimpItem*, %struct._GimpContext*, i32, double, i32) #1

declare void @gimp_item_rotate(%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32) #1

declare void @gimp_item_transform(%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*) #1

declare void @gimp_channel_select_alpha(%struct._GimpChannel*, %struct._GimpDrawable*, i32, i32, double, double) #1

declare %struct._GeglNode* @gegl_node_get_parent(%struct._GeglNode*) #1

declare %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode*, %struct._GeglNode*) #1

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #1

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #1

declare %struct._GeglNode* @gimp_item_get_offset_node(%struct._GimpItem*) #1

declare %struct._GeglNode* @gimp_drawable_get_mode_node(%struct._GimpDrawable*) #1

declare i64 @gimp_drawable_estimate_memsize(%struct._GimpDrawable*, i32, i32) #1

declare void @gimp_image_selection_invalidate(%struct._GimpImage*) #1

declare void @gimp_image_get_active_array(%struct._GimpImage*, i32*) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_layer_get_opacity_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y) #3 {
entry:
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %layer = alloca %struct._GimpLayer*, align 8
  %val = alloca i32, align 4
  %mask = alloca %struct._GimpLayerMask*, align 8
  %tile = alloca %struct._Tile*, align 8
  %mask_val = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_layer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLayer*
  store %struct._GimpLayer* %2, %struct._GimpLayer** %layer, align 8
  store i32 0, i32* %val, align 4
  %3 = load i32, i32* %x.addr, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4
  %5 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %6 = bitcast %struct._GimpLayer* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call i32 @gimp_item_get_width(%struct._GimpItem* %7)
  %cmp5 = icmp slt i32 %4, %call4
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.39

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %y.addr, align 4
  %cmp7 = icmp sge i32 %8, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.39

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %11 = bitcast %struct._GimpLayer* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_get_height(%struct._GimpItem* %12)
  %cmp12 = icmp slt i32 %9, %call11
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.39

land.lhs.true.13:                                 ; preds = %land.lhs.true.8
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %14 = bitcast %struct._GimpLayer* %13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_is_visible(%struct._GimpItem* %15)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then, label %if.end.39

if.then:                                          ; preds = %land.lhs.true.13
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %17 = bitcast %struct._GimpLayer* %16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_drawable_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDrawable*
  %call19 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %if.then
  store i32 255, i32* %val, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_drawable_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call22)
  %21 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDrawable*
  %call24 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %21)
  %22 = load i32, i32* %x.addr, align 4
  %23 = load i32, i32* %y.addr, align 4
  %call25 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %call24, i32 %22, i32 %23, i32 1, i32 0)
  store %struct._Tile* %call25, %struct._Tile** %tile, align 8
  %24 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %25 = load i32, i32* %x.addr, align 4
  %26 = load i32, i32* %y.addr, align 4
  %call26 = call i8* @tile_data_pointer(%struct._Tile* %24, i32 %25, i32 %26)
  %27 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call27 = call i32 @tile_bpp(%struct._Tile* %27)
  %idx.ext = sext i32 %call27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call26, i64 %idx.ext
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %28 = load i8, i8* %add.ptr28, align 1
  %conv = zext i8 %28 to i32
  store i32 %conv, i32* %val, align 4
  %29 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %29, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call29 = call %struct._GimpLayerMask* @gimp_layer_get_mask(%struct._GimpLayer* %30)
  store %struct._GimpLayerMask* %call29, %struct._GimpLayerMask** %mask, align 8
  %tobool30 = icmp ne %struct._GimpLayerMask* %call29, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.38

land.lhs.true.31:                                 ; preds = %if.end
  %31 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %call32 = call i32 @gimp_layer_mask_get_apply(%struct._GimpLayerMask* %31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %land.lhs.true.31
  %32 = load %struct._GimpLayerMask*, %struct._GimpLayerMask** %mask, align 8
  %33 = bitcast %struct._GimpLayerMask* %32 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_pickable_interface_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call35)
  %34 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpPickable*
  %35 = load i32, i32* %x.addr, align 4
  %36 = load i32, i32* %y.addr, align 4
  %call37 = call i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable* %34, i32 %35, i32 %36)
  store i32 %call37, i32* %mask_val, align 4
  %37 = load i32, i32* %val, align 4
  %38 = load i32, i32* %mask_val, align 4
  %mul = mul nsw i32 %37, %38
  %div = sdiv i32 %mul, 255
  store i32 %div, i32* %val, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %land.lhs.true.31, %if.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.13, %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %entry
  %39 = load i32, i32* %val, align 4
  ret i32 %39
}

declare i32 @gimp_item_is_visible(%struct._GimpItem*) #1

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare i32 @tile_bpp(%struct._Tile*) #1

declare void @tile_release(%struct._Tile*, i32) #1

declare i32 @gimp_pickable_get_opacity_at(%struct._GimpPickable*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gimp_image_transform_color(%struct._GimpImage*, i32, i8*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_layer_mode_to_gegl_operation(i32) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
