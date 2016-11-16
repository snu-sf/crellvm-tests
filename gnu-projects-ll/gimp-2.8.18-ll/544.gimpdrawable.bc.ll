; ModuleID = './app/core/gimpdrawable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type { i32, %struct._TileManager*, %struct._TileManager*, %struct._GeglNode*, %struct._GeglNode*, %struct._GimpLayer*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GSList*, i32 }
%struct._TileManager = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct._GimpStrokeOptions = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpPickableInterface = type { %struct._GTypeInterface, void (%struct._GimpPickable*)*, %struct._GimpImage* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, %struct._TileManager* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*, i32, i32, i8*)*, i32 (%struct._GimpPickable*, i32, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpPickable = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._GeglOperation = type { %struct._GObject, %struct._GeglNode* }
%struct._GimpUndo = type opaque

@gimp_drawable_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpDrawable\00", align 1
@gimp_drawable_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpPickableInterface*)* @gimp_drawable_pickable_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_new = private unnamed_addr constant [18 x i8] c"gimp_drawable_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"g_type_is_a (type, GIMP_TYPE_DRAWABLE)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"width > 0 && height > 0\00", align 1
@__func__.gimp_drawable_estimate_memsize = private unnamed_addr constant [31 x i8] c"gimp_drawable_estimate_memsize\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@__func__.gimp_drawable_update = private unnamed_addr constant [21 x i8] c"gimp_drawable_update\00", align 1
@gimp_drawable_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_drawable_alpha_changed = private unnamed_addr constant [28 x i8] c"gimp_drawable_alpha_changed\00", align 1
@__func__.gimp_drawable_invalidate_boundary = private unnamed_addr constant [34 x i8] c"gimp_drawable_invalidate_boundary\00", align 1
@__func__.gimp_drawable_get_active_components = private unnamed_addr constant [36 x i8] c"gimp_drawable_get_active_components\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"active != NULL\00", align 1
@__func__.gimp_drawable_convert_type = private unnamed_addr constant [27 x i8] c"gimp_drawable_convert_type\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"dest_image == NULL || GIMP_IS_IMAGE (dest_image)\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"new_base_type != GIMP_INDEXED || GIMP_IS_IMAGE (dest_image)\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"new_base_type != GIMP_IMAGE_TYPE_BASE_TYPE (type)\00", align 1
@__func__.gimp_drawable_apply_region = private unnamed_addr constant [27 x i8] c"gimp_drawable_apply_region\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"src2PR != NULL\00", align 1
@__func__.gimp_drawable_replace_region = private unnamed_addr constant [29 x i8] c"gimp_drawable_replace_region\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"maskPR != NULL\00", align 1
@__func__.gimp_drawable_project_region = private unnamed_addr constant [29 x i8] c"gimp_drawable_project_region\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"projPR != NULL\00", align 1
@__func__.gimp_drawable_init_src_region = private unnamed_addr constant [30 x i8] c"gimp_drawable_init_src_region\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"srcPR != NULL\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"temp_tiles != NULL\00", align 1
@__func__.gimp_drawable_get_tiles = private unnamed_addr constant [24 x i8] c"gimp_drawable_get_tiles\00", align 1
@__func__.gimp_drawable_set_tiles = private unnamed_addr constant [24 x i8] c"gimp_drawable_set_tiles\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"tiles != NULL\00", align 1
@__func__.gimp_drawable_set_tiles_full = private unnamed_addr constant [29 x i8] c"gimp_drawable_set_tiles_full\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"tile_manager_bpp (tiles) == GIMP_IMAGE_TYPE_BYTES (type)\00", align 1
@__func__.gimp_drawable_get_source_node = private unnamed_addr constant [30 x i8] c"gimp_drawable_get_source_node\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"gimp:tilemanager-source\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"tile-manager\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@__func__.gimp_drawable_get_mode_node = private unnamed_addr constant [28 x i8] c"gimp_drawable_get_mode_node\00", align 1
@__func__.gimp_drawable_swap_pixels = private unnamed_addr constant [26 x i8] c"gimp_drawable_swap_pixels\00", align 1
@__func__.gimp_drawable_push_undo = private unnamed_addr constant [24 x i8] c"gimp_drawable_push_undo\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"sparse == FALSE || tiles != NULL\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"gimp_item_is_attached (item)\00", align 1
@.str.24 = private unnamed_addr constant [76 x i8] c"sparse == FALSE || tile_manager_width (tiles) == gimp_item_get_width (item)\00", align 1
@.str.25 = private unnamed_addr constant [78 x i8] c"sparse == FALSE || tile_manager_height (tiles) == gimp_item_get_height (item)\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"%s: tried to push empty region\00", align 1
@__func__.gimp_drawable_fill = private unnamed_addr constant [19 x i8] c"gimp_drawable_fill\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"color != NULL || pattern != NULL\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"pattern == NULL || GIMP_IS_PATTERN (pattern)\00", align 1
@__func__.gimp_drawable_fill_by_type = private unnamed_addr constant [27 x i8] c"gimp_drawable_fill_by_type\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"%s: unknown fill type %d\00", align 1
@__func__.gimp_drawable_has_alpha = private unnamed_addr constant [24 x i8] c"gimp_drawable_has_alpha\00", align 1
@__func__.gimp_drawable_type = private unnamed_addr constant [19 x i8] c"gimp_drawable_type\00", align 1
@__func__.gimp_drawable_type_with_alpha = private unnamed_addr constant [30 x i8] c"gimp_drawable_type_with_alpha\00", align 1
@__func__.gimp_drawable_type_without_alpha = private unnamed_addr constant [33 x i8] c"gimp_drawable_type_without_alpha\00", align 1
@__func__.gimp_drawable_is_rgb = private unnamed_addr constant [21 x i8] c"gimp_drawable_is_rgb\00", align 1
@__func__.gimp_drawable_is_gray = private unnamed_addr constant [22 x i8] c"gimp_drawable_is_gray\00", align 1
@__func__.gimp_drawable_is_indexed = private unnamed_addr constant [25 x i8] c"gimp_drawable_is_indexed\00", align 1
@__func__.gimp_drawable_bytes = private unnamed_addr constant [20 x i8] c"gimp_drawable_bytes\00", align 1
@__func__.gimp_drawable_bytes_with_alpha = private unnamed_addr constant [31 x i8] c"gimp_drawable_bytes_with_alpha\00", align 1
@__func__.gimp_drawable_bytes_without_alpha = private unnamed_addr constant [34 x i8] c"gimp_drawable_bytes_without_alpha\00", align 1
@__func__.gimp_drawable_get_colormap = private unnamed_addr constant [27 x i8] c"gimp_drawable_get_colormap\00", align 1
@__func__.gimp_drawable_get_floating_sel = private unnamed_addr constant [31 x i8] c"gimp_drawable_get_floating_sel\00", align 1
@__func__.gimp_drawable_attach_floating_sel = private unnamed_addr constant [34 x i8] c"gimp_drawable_attach_floating_sel\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"gimp_drawable_get_floating_sel (drawable) == NULL\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"GIMP_IS_LAYER (floating_sel)\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@__func__.gimp_drawable_detach_floating_sel = private unnamed_addr constant [34 x i8] c"gimp_drawable_detach_floating_sel\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"gimp_drawable_get_floating_sel (drawable) != NULL\00", align 1
@gimp_drawable_parent_class = internal global i8* null, align 8
@GimpDrawable_private_offset = internal global i32 0, align 4
@.str.35 = private unnamed_addr constant [14 x i8] c"alpha-changed\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@__func__.gimp_drawable_duplicate = private unnamed_addr constant [24 x i8] c"gimp_drawable_duplicate\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"gegl:scale\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"origin-x\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"origin-y\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"hard-edges\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"undo-type\04Scale\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"gimpdrawable.c\00", align 1
@__func__.gimp_drawable_get_node = private unnamed_addr constant [23 x i8] c"gimp_drawable_get_node\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"drawable->private->mode_node == NULL\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"gegl:over\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"gegl-operation\00", align 1
@__func__.gimp_drawable_real_convert_type = private unnamed_addr constant [32 x i8] c"gimp_drawable_real_convert_type\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"new_base_type != GIMP_INDEXED\00", align 1
@__func__.gimp_drawable_real_set_tiles = private unnamed_addr constant [29 x i8] c"gimp_drawable_real_set_tiles\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"gegl:crop\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"gegl:opacity\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"gegl:translate\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"gimp:point-layer-mode\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"blend-mode\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"offset-x\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"offset-y\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_drawable_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_drawable_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_drawable_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 680, void (i8*, i8*)* bitcast (void (i8*)* @gimp_drawable_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDrawable*)* @gimp_drawable_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_pickable_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_drawable_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_drawable_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_drawable_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_drawable_parent_class, align 8
  %1 = load i32, i32* @GimpDrawable_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDrawable_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDrawableClass*
  call void @gimp_drawable_class_init(%struct._GimpDrawableClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_init(%struct._GimpDrawable* %drawable) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDrawablePrivate*
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  store %struct._GimpDrawablePrivate* %2, %struct._GimpDrawablePrivate** %private, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 1
  %5 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private2, align 8
  %type = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %5, i32 0, i32 0
  store i32 -1, i32* %type, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_pickable_iface_init(%struct._GimpPickableInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpPickableInterface*, align 8
  store %struct._GimpPickableInterface* %iface, %struct._GimpPickableInterface** %iface.addr, align 8
  %0 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_image = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %0, i32 0, i32 2
  store %struct._GimpImage* (%struct._GimpPickable*)* bitcast (%struct._GimpImage* (%struct._GimpItem*)* @gimp_item_get_image to %struct._GimpImage* (%struct._GimpPickable*)*), %struct._GimpImage* (%struct._GimpPickable*)** %get_image, align 8
  %1 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_image_type = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %1, i32 0, i32 3
  store i32 (%struct._GimpPickable*)* bitcast (i32 (%struct._GimpDrawable*)* @gimp_drawable_type to i32 (%struct._GimpPickable*)*), i32 (%struct._GimpPickable*)** %get_image_type, align 8
  %2 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_bytes = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %2, i32 0, i32 4
  store i32 (%struct._GimpPickable*)* bitcast (i32 (%struct._GimpDrawable*)* @gimp_drawable_bytes to i32 (%struct._GimpPickable*)*), i32 (%struct._GimpPickable*)** %get_bytes, align 8
  %3 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_tiles = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %3, i32 0, i32 5
  store %struct._TileManager* (%struct._GimpPickable*)* bitcast (%struct._TileManager* (%struct._GimpDrawable*)* @gimp_drawable_get_tiles to %struct._TileManager* (%struct._GimpPickable*)*), %struct._TileManager* (%struct._GimpPickable*)** %get_tiles, align 8
  %4 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_pixel_at = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %4, i32 0, i32 6
  store i32 (%struct._GimpPickable*, i32, i32, i8*)* @gimp_drawable_get_pixel_at, i32 (%struct._GimpPickable*, i32, i32, i8*)** %get_pixel_at, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDrawable* @gimp_drawable_new(i64 %type, %struct._GimpImage* %image, i8* %name, i32 %offset_x, i32 %offset_y, i32 %width, i32 %height, i32 %image_type) #3 {
entry:
  %retval = alloca %struct._GimpDrawable*, align 8
  %type.addr = alloca i64, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %name.addr = alloca i8*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %image_type.addr = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %type, i64* %type.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %image_type, i32* %image_type.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_drawable_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %type.addr, align 8
  %call12 = call i64 @gimp_drawable_get_type() #6
  %call13 = call i32 @g_type_is_a(i64 %13, i64 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_drawable_new, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %14 = load i32, i32* %width.addr, align 4
  %cmp20 = icmp sgt i32 %14, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.24

land.lhs.true.21:                                 ; preds = %do.body.19
  %15 = load i32, i32* %height.addr, align 4
  %cmp22 = icmp sgt i32 %15, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.21
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.21, %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_drawable_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %retval
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %16 = load i64, i64* %type.addr, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %18 = load i8*, i8** %name.addr, align 8
  %19 = load i32, i32* %offset_x.addr, align 4
  %20 = load i32, i32* %offset_y.addr, align 4
  %21 = load i32, i32* %width.addr, align 4
  %22 = load i32, i32* %height.addr, align 4
  %call27 = call %struct._GimpItem* @gimp_item_new(i64 %16, %struct._GimpImage* %17, i8* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %23 = bitcast %struct._GimpItem* %call27 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_drawable_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call28)
  %24 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %24, %struct._GimpDrawable** %drawable, align 8
  %25 = load i32, i32* %image_type.addr, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %26, i32 0, i32 1
  %27 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %type30 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %27, i32 0, i32 0
  store i32 %25, i32* %type30, align 4
  %28 = load i32, i32* %width.addr, align 4
  %29 = load i32, i32* %height.addr, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call31 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %30)
  %call32 = call %struct._TileManager* @tile_manager_new(i32 %28, i32 %29, i32 %call31)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %31, i32 0, i32 1
  %32 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private33, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %32, i32 0, i32 1
  store %struct._TileManager* %call32, %struct._TileManager** %tiles, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  store %struct._GimpDrawable* %33, %struct._GimpDrawable** %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.else.24, %if.else.16, %if.else.9
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %retval
  ret %struct._GimpDrawable* %34
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpItem* @gimp_item_new(i64, %struct._GimpImage*, i8*, i32, i32, i32, i32) #1

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_bytes(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_drawable_bytes, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %14, i32 0, i32 0
  %15 = load i32, i32* %type, align 4
  %cmp11 = icmp eq i32 %15, 1
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end.42

cond.false:                                       ; preds = %do.end
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private12, align 8
  %type13 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %17, i32 0, i32 0
  %18 = load i32, i32* %type13, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false
  br label %cond.end.40

cond.false.16:                                    ; preds = %cond.false
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private17, align 8
  %type18 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %20, i32 0, i32 0
  %21 = load i32, i32* %type18, align 4
  %cmp19 = icmp eq i32 %21, 3
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.16
  br label %cond.end.38

cond.false.21:                                    ; preds = %cond.false.16
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %22, i32 0, i32 1
  %23 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private22, align 8
  %type23 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %23, i32 0, i32 0
  %24 = load i32, i32* %type23, align 4
  %cmp24 = icmp eq i32 %24, 2
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false.21
  br label %cond.end.36

cond.false.26:                                    ; preds = %cond.false.21
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 1
  %26 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private27, align 8
  %type28 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %26, i32 0, i32 0
  %27 = load i32, i32* %type28, align 4
  %cmp29 = icmp eq i32 %27, 5
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false.26
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false.26
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private32 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private32, align 8
  %type33 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %29, i32 0, i32 0
  %30 = load i32, i32* %type33, align 4
  %cmp34 = icmp eq i32 %30, 4
  %cond = select i1 %cmp34, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond35 = phi i32 [ 2, %cond.true.30 ], [ %cond, %cond.false.31 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end, %cond.true.25
  %cond37 = phi i32 [ 1, %cond.true.25 ], [ %cond35, %cond.end ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.20
  %cond39 = phi i32 [ 2, %cond.true.20 ], [ %cond37, %cond.end.36 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true.15
  %cond41 = phi i32 [ 3, %cond.true.15 ], [ %cond39, %cond.end.38 ]
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.end.40, %cond.true
  %cond43 = phi i32 [ 4, %cond.true ], [ %cond41, %cond.end.40 ]
  store i32 %cond43, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.42, %if.else.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i64 @gimp_drawable_estimate_memsize(%struct._GimpDrawable* %drawable, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca i64, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_estimate_memsize, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpDrawableClass*
  %estimate_memsize = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %16, i32 0, i32 3
  %17 = load i64 (%struct._GimpDrawable*, i32, i32)*, i64 (%struct._GimpDrawable*, i32, i32)** %estimate_memsize, align 8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %19 = load i32, i32* %width.addr, align 4
  %20 = load i32, i32* %height.addr, align 4
  %call12 = call i64 %17(%struct._GimpDrawable* %18, i32 %19, i32 %20)
  store i64 %call12, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load i64, i64* %retval
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_update(%struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_update, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_drawable_signals, i32 0, i64 0), align 4
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %width.addr, align 4
  %19 = load i32, i32* %height.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i32 %16, i32 %17, i32 %18, i32 %19)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_alpha_changed(%struct._GimpDrawable* %drawable) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_alpha_changed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_drawable_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %drawable) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %drawable_class = alloca %struct._GimpDrawableClass*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_invalidate_boundary, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpDrawableClass*
  store %struct._GimpDrawableClass* %16, %struct._GimpDrawableClass** %drawable_class, align 8
  %17 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %invalidate_boundary = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %17, i32 0, i32 4
  %18 = load void (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*)** %invalidate_boundary, align 8
  %tobool12 = icmp ne void (%struct._GimpDrawable*)* %18, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %19 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %invalidate_boundary14 = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %19, i32 0, i32 4
  %20 = load void (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*)** %invalidate_boundary14, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void %20(%struct._GimpDrawable* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_get_active_components(%struct._GimpDrawable* %drawable, i32* %active) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %active.addr = alloca i32*, align 8
  %drawable_class = alloca %struct._GimpDrawableClass*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32* %active, i32** %active.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_drawable_get_active_components, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %active.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_drawable_get_active_components, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.21

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpDrawableClass*
  store %struct._GimpDrawableClass* %17, %struct._GimpDrawableClass** %drawable_class, align 8
  %18 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %get_active_components = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %18, i32 0, i32 5
  %19 = load void (%struct._GimpDrawable*, i32*)*, void (%struct._GimpDrawable*, i32*)** %get_active_components, align 8
  %tobool18 = icmp ne void (%struct._GimpDrawable*, i32*)* %19, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.end.16
  %20 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %get_active_components20 = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %20, i32 0, i32 5
  %21 = load void (%struct._GimpDrawable*, i32*)*, void (%struct._GimpDrawable*, i32*)** %get_active_components20, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %23 = load i32*, i32** %active.addr, align 8
  call void %21(%struct._GimpDrawable* %22, i32* %23)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.else.14, %if.then.19, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_convert_type(%struct._GimpDrawable* %drawable, %struct._GimpImage* %dest_image, i32 %new_base_type, i32 %push_undo) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %new_base_type.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %__inst44 = alloca %struct._GTypeInstance*, align 8
  %__t46 = alloca i64, align 8
  %__r49 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %new_base_type, i32* %new_base_type.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_convert_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_convert_type, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load i32, i32* %new_base_type.addr, align 4
  %cmp41 = icmp ne i32 %27, 2
  br i1 %cmp41, label %if.then.66, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %29 = bitcast %struct._GimpImage* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst44, align 8
  %call47 = call i64 @gimp_image_get_type() #6
  store i64 %call47, i64* %__t46, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %tobool50 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %lor.lhs.false.42
  store i32 0, i32* %__r49, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %lor.lhs.false.42
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.60

land.lhs.true.55:                                 ; preds = %if.else.52
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type57, align 8
  %36 = load i64, i64* %__t46, align 8
  %cmp58 = icmp eq i64 %35, %36
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r49, align 4
  br label %if.end.62

if.else.60:                                       ; preds = %land.lhs.true.55, %if.else.52
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst44, align 8
  %38 = load i64, i64* %__t46, align 8
  %call61 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #7
  store i32 %call61, i32* %__r49, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.51
  %39 = load i32, i32* %__r49, align 4
  store i32 %39, i32* %tmp64
  %40 = load i32, i32* %tmp64
  %tobool65 = icmp ne i32 %40, 0
  br i1 %tobool65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.end.63, %do.body.40
  br label %if.end.68

if.else.67:                                       ; preds = %if.end.63
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_convert_type, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.68:                                        ; preds = %if.then.66
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %42 = bitcast %struct._GimpDrawable* %41 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_item_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call70)
  %43 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpItem*
  %call72 = call i32 @gimp_item_is_attached(%struct._GimpItem* %43)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %do.end.69
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %do.end.69
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call76 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %44)
  store i32 %call76, i32* %type, align 4
  br label %do.body.77

do.body.77:                                       ; preds = %if.end.75
  %45 = load i32, i32* %new_base_type.addr, align 4
  %46 = load i32, i32* %type, align 4
  %cmp78 = icmp eq i32 %46, 0
  br i1 %cmp78, label %cond.true, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %do.body.77
  %47 = load i32, i32* %type, align 4
  %cmp80 = icmp eq i32 %47, 1
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.79, %do.body.77
  br label %cond.end.89

cond.false:                                       ; preds = %lor.lhs.false.79
  %48 = load i32, i32* %type, align 4
  %cmp81 = icmp eq i32 %48, 2
  br i1 %cmp81, label %cond.true.84, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %cond.false
  %49 = load i32, i32* %type, align 4
  %cmp83 = icmp eq i32 %49, 3
  br i1 %cmp83, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %lor.lhs.false.82, %cond.false
  br label %cond.end

cond.false.85:                                    ; preds = %lor.lhs.false.82
  %50 = load i32, i32* %type, align 4
  %cmp86 = icmp eq i32 %50, 4
  br i1 %cmp86, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.85
  %51 = load i32, i32* %type, align 4
  %cmp87 = icmp eq i32 %51, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.85
  %52 = phi i1 [ true, %cond.false.85 ], [ %cmp87, %lor.rhs ]
  %cond = select i1 %52, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.84
  %cond88 = phi i32 [ 1, %cond.true.84 ], [ %cond, %lor.end ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end, %cond.true
  %cond90 = phi i32 [ 0, %cond.true ], [ %cond88, %cond.end ]
  %cmp91 = icmp ne i32 %45, %cond90
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %cond.end.89
  br label %if.end.94

if.else.93:                                       ; preds = %cond.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_convert_type, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %54 = bitcast %struct._GimpDrawable* %53 to %struct._GTypeInstance*
  %g_class96 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class96, align 8
  %56 = bitcast %struct._GTypeClass* %55 to %struct._GimpDrawableClass*
  %convert_type = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %56, i32 0, i32 6
  %57 = load void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)*, void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)** %convert_type, align 8
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %59 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %60 = load i32, i32* %new_base_type.addr, align 4
  %61 = load i32, i32* %push_undo.addr, align 4
  call void %57(%struct._GimpDrawable* %58, %struct._GimpImage* %59, i32 %60, i32 %61)
  br label %return

return:                                           ; preds = %do.end.95, %if.else.93, %if.else.67, %if.else.37, %if.else.9
  ret void
}

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_type(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_drawable_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %14, i32 0, i32 0
  %15 = load i32, i32* %type, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_apply_region(%struct._GimpDrawable* %drawable, %struct._PixelRegion* %src2PR, i32 %push_undo, i8* %undo_desc, double %opacity, i32 %mode, %struct._TileManager* %src1_tiles, %struct._PixelRegion* %destPR, i32 %x, i32 %y) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src2PR.addr = alloca %struct._PixelRegion*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %src1_tiles.addr = alloca %struct._TileManager*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._PixelRegion* %src2PR, %struct._PixelRegion** %src2PR.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct._TileManager* %src1_tiles, %struct._TileManager** %src1_tiles.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_apply_region, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_apply_region, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %cmp21 = icmp ne %struct._PixelRegion* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_apply_region, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GimpDrawableClass*
  %apply_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %20, i32 0, i32 7
  %21 = load void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)** %apply_region, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %23 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %24 = load i32, i32* %push_undo.addr, align 4
  %25 = load i8*, i8** %undo_desc.addr, align 8
  %26 = load double, double* %opacity.addr, align 8
  %27 = load i32, i32* %mode.addr, align 4
  %28 = load %struct._TileManager*, %struct._TileManager** %src1_tiles.addr, align 8
  %29 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* %y.addr, align 4
  call void %21(%struct._GimpDrawable* %22, %struct._PixelRegion* %23, i32 %24, i8* %25, double %26, i32 %27, %struct._TileManager* %28, %struct._PixelRegion* %29, i32 %30, i32 %31)
  br label %return

return:                                           ; preds = %do.end.25, %if.else.23, %if.else.17, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_replace_region(%struct._GimpDrawable* %drawable, %struct._PixelRegion* %src2PR, i32 %push_undo, i8* %undo_desc, double %opacity, %struct._PixelRegion* %maskPR, i32 %x, i32 %y) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src2PR.addr = alloca %struct._PixelRegion*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %maskPR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._PixelRegion* %src2PR, %struct._PixelRegion** %src2PR.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %maskPR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_replace_region, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_replace_region, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %cmp21 = icmp ne %struct._PixelRegion* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_replace_region, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %17 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %cmp27 = icmp ne %struct._PixelRegion* %17, null
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.30

if.else.29:                                       ; preds = %do.body.26
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_replace_region, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.30:                                        ; preds = %if.then.28
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %19 = bitcast %struct._GimpDrawable* %18 to %struct._GTypeInstance*
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpDrawableClass*
  %replace_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %21, i32 0, i32 8
  %22 = load void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)** %replace_region, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %24 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %25 = load i32, i32* %push_undo.addr, align 4
  %26 = load i8*, i8** %undo_desc.addr, align 8
  %27 = load double, double* %opacity.addr, align 8
  %28 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %29 = load i32, i32* %x.addr, align 4
  %30 = load i32, i32* %y.addr, align 4
  call void %22(%struct._GimpDrawable* %23, %struct._PixelRegion* %24, i32 %25, i8* %26, double %27, %struct._PixelRegion* %28, i32 %29, i32 %30)
  br label %return

return:                                           ; preds = %do.end.31, %if.else.29, %if.else.23, %if.else.17, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_project_region(%struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %width, i32 %height, %struct._PixelRegion* %projPR, i32 %combine) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %projPR.addr = alloca %struct._PixelRegion*, align 8
  %combine.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._PixelRegion* %projPR, %struct._PixelRegion** %projPR.addr, align 8
  store i32 %combine, i32* %combine.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_project_region, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_project_region, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %projPR.addr, align 8
  %cmp21 = icmp ne %struct._PixelRegion* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_project_region, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GimpDrawableClass*
  %project_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %20, i32 0, i32 9
  %21 = load void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)*, void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)** %project_region, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %25 = load i32, i32* %width.addr, align 4
  %26 = load i32, i32* %height.addr, align 4
  %27 = load %struct._PixelRegion*, %struct._PixelRegion** %projPR.addr, align 8
  %28 = load i32, i32* %combine.addr, align 4
  call void %21(%struct._GimpDrawable* %22, i32 %23, i32 %24, i32 %25, i32 %26, %struct._PixelRegion* %27, i32 %28)
  br label %return

return:                                           ; preds = %do.end.25, %if.else.23, %if.else.17, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_init_src_region(%struct._GimpDrawable* %drawable, %struct._PixelRegion* %srcPR, i32 %x, i32 %y, i32 %width, i32 %height, %struct._TileManager** %temp_tiles) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %temp_tiles.addr = alloca %struct._TileManager**, align 8
  %fs = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %fs_off_x = alloca i32, align 4
  %fs_off_y = alloca i32, align 4
  %combine_x = alloca i32, align 4
  %combine_y = alloca i32, align 4
  %combine_width = alloca i32, align 4
  %combine_height = alloca i32, align 4
  %tempPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %fsPR = alloca %struct._PixelRegion, align 8
  %lock_alpha = alloca i32, align 4
  %__inst78 = alloca %struct._GTypeInstance*, align 8
  %__t80 = alloca i64, align 8
  %__r83 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._TileManager** %temp_tiles, %struct._TileManager*** %temp_tiles.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_init_src_region, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_init_src_region, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %cmp21 = icmp ne %struct._PixelRegion* %16, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.20
  br label %if.end.24

if.else.23:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_init_src_region, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %17 = load %struct._TileManager**, %struct._TileManager*** %temp_tiles.addr, align 8
  %cmp27 = icmp ne %struct._TileManager** %17, null
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.30

if.else.29:                                       ; preds = %do.body.26
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_init_src_region, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.30:                                        ; preds = %if.then.28
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call32 = call %struct._GimpLayer* @gimp_drawable_get_floating_sel(%struct._GimpDrawable* %18)
  store %struct._GimpLayer* %call32, %struct._GimpLayer** %fs, align 8
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %tobool33 = icmp ne %struct._GimpLayer* %19, null
  br i1 %tobool33, label %if.then.34, label %if.end.120

if.then.34:                                       ; preds = %do.end.31
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #6
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call43)
  %22 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %22, i32* %off_x, i32* %off_y)
  %23 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %24 = bitcast %struct._GimpLayer* %23 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_item_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call45)
  %25 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %25, i32* %fs_off_x, i32* %fs_off_y)
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %27 = bitcast %struct._GimpLayer* %26 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_item_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call47)
  %28 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpItem*
  %call49 = call i32 @gimp_item_get_visible(%struct._GimpItem* %28)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.119

land.lhs.true.51:                                 ; preds = %if.then.34
  %29 = load i32, i32* %x.addr, align 4
  %30 = load i32, i32* %off_x, align 4
  %add = add nsw i32 %29, %30
  %31 = load i32, i32* %y.addr, align 4
  %32 = load i32, i32* %off_y, align 4
  %add52 = add nsw i32 %31, %32
  %33 = load i32, i32* %width.addr, align 4
  %34 = load i32, i32* %height.addr, align 4
  %35 = load i32, i32* %fs_off_x, align 4
  %36 = load i32, i32* %fs_off_y, align 4
  %37 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %38 = bitcast %struct._GimpLayer* %37 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call53)
  %39 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpItem*
  %call55 = call i32 @gimp_item_get_width(%struct._GimpItem* %39)
  %40 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %41 = bitcast %struct._GimpLayer* %40 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_item_get_type() #6
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call56)
  %42 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpItem*
  %call58 = call i32 @gimp_item_get_height(%struct._GimpItem* %42)
  %call59 = call i32 @gimp_rectangle_intersect(i32 %add, i32 %add52, i32 %33, i32 %34, i32 %35, i32 %36, i32 %call55, i32 %call58, i32* %combine_x, i32* %combine_y, i32* %combine_width, i32* %combine_height)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.119

if.then.61:                                       ; preds = %land.lhs.true.51
  store i32 0, i32* %lock_alpha, align 4
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %height.addr, align 4
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call66 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %45)
  %call67 = call %struct._TileManager* @tile_manager_new(i32 %43, i32 %44, i32 %call66)
  %46 = load %struct._TileManager**, %struct._TileManager*** %temp_tiles.addr, align 8
  store %struct._TileManager* %call67, %struct._TileManager** %46, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call68 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %47)
  %48 = load i32, i32* %x.addr, align 4
  %49 = load i32, i32* %y.addr, align 4
  %50 = load i32, i32* %width.addr, align 4
  %51 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %tempPR, %struct._TileManager* %call68, i32 %48, i32 %49, i32 %50, i32 %51, i32 0)
  %52 = load %struct._TileManager**, %struct._TileManager*** %temp_tiles.addr, align 8
  %53 = load %struct._TileManager*, %struct._TileManager** %52, align 8
  %54 = load i32, i32* %width.addr, align 4
  %55 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %53, i32 0, i32 0, i32 %54, i32 %55, i32 1)
  call void @copy_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %destPR)
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %57 = bitcast %struct._GimpLayer* %56 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_drawable_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call69)
  %58 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpDrawable*
  %call71 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %58)
  %59 = load i32, i32* %combine_x, align 4
  %60 = load i32, i32* %fs_off_x, align 4
  %sub = sub nsw i32 %59, %60
  %61 = load i32, i32* %combine_y, align 4
  %62 = load i32, i32* %fs_off_y, align 4
  %sub72 = sub nsw i32 %61, %62
  %63 = load i32, i32* %combine_width, align 4
  %64 = load i32, i32* %combine_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %fsPR, %struct._TileManager* %call71, i32 %sub, i32 %sub72, i32 %63, i32 %64, i32 0)
  %65 = load %struct._TileManager**, %struct._TileManager*** %temp_tiles.addr, align 8
  %66 = load %struct._TileManager*, %struct._TileManager** %65, align 8
  %67 = load i32, i32* %combine_x, align 4
  %68 = load i32, i32* %x.addr, align 4
  %sub73 = sub nsw i32 %67, %68
  %69 = load i32, i32* %off_x, align 4
  %sub74 = sub nsw i32 %sub73, %69
  %70 = load i32, i32* %combine_y, align 4
  %71 = load i32, i32* %y.addr, align 4
  %sub75 = sub nsw i32 %70, %71
  %72 = load i32, i32* %off_y, align 4
  %sub76 = sub nsw i32 %sub75, %72
  %73 = load i32, i32* %combine_width, align 4
  %74 = load i32, i32* %combine_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %66, i32 %sub74, i32 %sub76, i32 %73, i32 %74, i32 1)
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %76 = bitcast %struct._GimpDrawable* %75 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %76, %struct._GTypeInstance** %__inst78, align 8
  %call81 = call i64 @gimp_layer_get_type() #6
  store i64 %call81, i64* %__t80, align 8
  %77 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %tobool84 = icmp ne %struct._GTypeInstance* %77, null
  br i1 %tobool84, label %if.else.86, label %if.then.85

if.then.85:                                       ; preds = %if.then.61
  store i32 0, i32* %__r83, align 4
  br label %if.end.97

if.else.86:                                       ; preds = %if.then.61
  %78 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %78, i32 0, i32 0
  %79 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %tobool88 = icmp ne %struct._GTypeClass* %79, null
  br i1 %tobool88, label %land.lhs.true.89, label %if.else.94

land.lhs.true.89:                                 ; preds = %if.else.86
  %80 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %g_class90 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %80, i32 0, i32 0
  %81 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class90, align 8
  %g_type91 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %81, i32 0, i32 0
  %82 = load i64, i64* %g_type91, align 8
  %83 = load i64, i64* %__t80, align 8
  %cmp92 = icmp eq i64 %82, %83
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %land.lhs.true.89
  store i32 1, i32* %__r83, align 4
  br label %if.end.96

if.else.94:                                       ; preds = %land.lhs.true.89, %if.else.86
  %84 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst78, align 8
  %85 = load i64, i64* %__t80, align 8
  %call95 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %84, i64 %85) #7
  store i32 %call95, i32* %__r83, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.94, %if.then.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.85
  %86 = load i32, i32* %__r83, align 4
  store i32 %86, i32* %tmp98
  %87 = load i32, i32* %tmp98
  %tobool99 = icmp ne i32 %87, 0
  br i1 %tobool99, label %if.then.100, label %if.end.109

if.then.100:                                      ; preds = %if.end.97
  %88 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %89 = bitcast %struct._GimpDrawable* %88 to %struct._GTypeInstance*
  %call101 = call i64 @gimp_layer_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call101)
  %90 = bitcast %struct._GTypeInstance* %call102 to %struct._GimpLayer*
  %call103 = call i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer* %90)
  store i32 %call103, i32* %lock_alpha, align 4
  %91 = load i32, i32* %lock_alpha, align 4
  %tobool104 = icmp ne i32 %91, 0
  br i1 %tobool104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.then.100
  %92 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %93 = bitcast %struct._GimpDrawable* %92 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_layer_get_type() #6
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call106)
  %94 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpLayer*
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %94, i32 0, i32 0)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %if.then.100
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.97
  %95 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %96 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %call110 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %96)
  %97 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %call111 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %97)
  %98 = load i32, i32* %combine_x, align 4
  %99 = load i32, i32* %off_x, align 4
  %sub112 = sub nsw i32 %98, %99
  %100 = load i32, i32* %combine_y, align 4
  %101 = load i32, i32* %off_y, align 4
  %sub113 = sub nsw i32 %100, %101
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %95, %struct._PixelRegion* %fsPR, i32 0, i8* null, double %call110, i32 %call111, %struct._TileManager* null, %struct._PixelRegion* %destPR, i32 %sub112, i32 %sub113)
  %102 = load i32, i32* %lock_alpha, align 4
  %tobool114 = icmp ne i32 %102, 0
  br i1 %tobool114, label %if.then.115, label %if.end.118

if.then.115:                                      ; preds = %if.end.109
  %103 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %104 = bitcast %struct._GimpDrawable* %103 to %struct._GTypeInstance*
  %call116 = call i64 @gimp_layer_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call116)
  %105 = bitcast %struct._GTypeInstance* %call117 to %struct._GimpLayer*
  call void @gimp_layer_set_lock_alpha(%struct._GimpLayer* %105, i32 1, i32 0)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %if.end.109
  %106 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %107 = load %struct._TileManager**, %struct._TileManager*** %temp_tiles.addr, align 8
  %108 = load %struct._TileManager*, %struct._TileManager** %107, align 8
  %109 = load i32, i32* %width.addr, align 4
  %110 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %106, %struct._TileManager* %108, i32 0, i32 0, i32 %109, i32 %110, i32 0)
  br label %return

if.end.119:                                       ; preds = %land.lhs.true.51, %if.then.34
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %do.end.31
  %111 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %112 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call121 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %112)
  %113 = load i32, i32* %x.addr, align 4
  %114 = load i32, i32* %y.addr, align 4
  %115 = load i32, i32* %width.addr, align 4
  %116 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %111, %struct._TileManager* %call121, i32 %113, i32 %114, i32 %115, i32 %116, i32 0)
  %117 = load %struct._TileManager**, %struct._TileManager*** %temp_tiles.addr, align 8
  store %struct._TileManager* null, %struct._TileManager** %117, align 8
  br label %return

return:                                           ; preds = %if.end.120, %if.end.118, %if.else.29, %if.else.23, %if.else.17, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_drawable_get_floating_sel(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_get_floating_sel, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %floating_selection = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %14, i32 0, i32 5
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_selection, align 8
  store %struct._GimpLayer* %15, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %16
}

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_item_get_visible(%struct._GimpItem*) #1

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_get_tiles, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpDrawableClass*
  %get_tiles = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %16, i32 0, i32 10
  %17 = load %struct._TileManager* (%struct._GimpDrawable*)*, %struct._TileManager* (%struct._GimpDrawable*)** %get_tiles, align 8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call %struct._TileManager* %17(%struct._GimpDrawable* %18)
  store %struct._TileManager* %call12, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %19
}

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare i32 @gimp_layer_get_lock_alpha(%struct._GimpLayer*) #1

declare void @gimp_layer_set_lock_alpha(%struct._GimpLayer*, i32, i32) #1

declare double @gimp_layer_get_opacity(%struct._GimpLayer*) #1

declare i32 @gimp_layer_get_mode(%struct._GimpLayer*) #1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_set_tiles(%struct._GimpDrawable* %drawable, i32 %push_undo, i8* %undo_desc, %struct._TileManager* %tiles, i32 %type) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %type.addr = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_set_tiles, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp12 = icmp ne %struct._TileManager* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_set_tiles, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %do.end.16
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call23)
  %19 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %19, i32* %offset_x, i32* %offset_y)
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = load i32, i32* %push_undo.addr, align 4
  %22 = load i8*, i8** %undo_desc.addr, align 8
  %23 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %24 = load i32, i32* %type.addr, align 4
  %25 = load i32, i32* %offset_x, align 4
  %26 = load i32, i32* %offset_y, align 4
  call void @gimp_drawable_set_tiles_full(%struct._GimpDrawable* %20, i32 %21, i8* %22, %struct._TileManager* %23, i32 %24, i32 %25, i32 %26)
  br label %return

return:                                           ; preds = %if.end.22, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_set_tiles_full(%struct._GimpDrawable* %drawable, i32 %push_undo, i8* %undo_desc, %struct._TileManager* %tiles, i32 %type, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %type.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_set_tiles_full, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp12 = icmp ne %struct._TileManager* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_set_tiles_full, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call18 = call i32 @tile_manager_bpp(%struct._TileManager* %14)
  %15 = load i32, i32* %type.addr, align 4
  %cmp19 = icmp eq i32 %15, 1
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.17
  br label %cond.end.40

cond.false:                                       ; preds = %do.body.17
  %16 = load i32, i32* %type.addr, align 4
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false
  br label %cond.end.38

cond.false.22:                                    ; preds = %cond.false
  %17 = load i32, i32* %type.addr, align 4
  %cmp23 = icmp eq i32 %17, 3
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false.22
  br label %cond.end.36

cond.false.25:                                    ; preds = %cond.false.22
  %18 = load i32, i32* %type.addr, align 4
  %cmp26 = icmp eq i32 %18, 2
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %cond.false.25
  br label %cond.end.34

cond.false.28:                                    ; preds = %cond.false.25
  %19 = load i32, i32* %type.addr, align 4
  %cmp29 = icmp eq i32 %19, 5
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false.28
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false.28
  %20 = load i32, i32* %type.addr, align 4
  %cmp32 = icmp eq i32 %20, 4
  %cond = select i1 %cmp32, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i32 [ 2, %cond.true.30 ], [ %cond, %cond.false.31 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end, %cond.true.27
  %cond35 = phi i32 [ 1, %cond.true.27 ], [ %cond33, %cond.end ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end.34, %cond.true.24
  %cond37 = phi i32 [ 2, %cond.true.24 ], [ %cond35, %cond.end.34 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.21
  %cond39 = phi i32 [ 3, %cond.true.21 ], [ %cond37, %cond.end.36 ]
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.end.38, %cond.true
  %cond41 = phi i32 [ 4, %cond.true ], [ %cond39, %cond.end.38 ]
  %cmp42 = icmp eq i32 %call18, %cond41
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %cond.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %cond.end.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_set_tiles_full, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %22 = bitcast %struct._GimpDrawable* %21 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_item_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call47)
  %23 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpItem*
  store %struct._GimpItem* %23, %struct._GimpItem** %item, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call49)
  %26 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  %call51 = call i32 @gimp_item_is_attached(%struct._GimpItem* %26)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %do.end.46
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %do.end.46
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call55 = call i32 @gimp_item_get_width(%struct._GimpItem* %27)
  %28 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call56 = call i32 @tile_manager_width(%struct._TileManager* %28)
  %cmp57 = icmp ne i32 %call55, %call56
  br i1 %cmp57, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.54
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call58 = call i32 @gimp_item_get_height(%struct._GimpItem* %29)
  %30 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call59 = call i32 @tile_manager_height(%struct._TileManager* %30)
  %cmp60 = icmp ne i32 %call58, %call59
  br i1 %cmp60, label %if.then.67, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call62 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %31)
  %32 = load i32, i32* %offset_x.addr, align 4
  %cmp63 = icmp ne i32 %call62, %32
  br i1 %cmp63, label %if.then.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.61
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call65 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %33)
  %34 = load i32, i32* %offset_y.addr, align 4
  %cmp66 = icmp ne i32 %call65, %34
  br i1 %cmp66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %lor.lhs.false.64, %lor.lhs.false.61, %lor.lhs.false, %if.end.54
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call68 = call i32 @gimp_item_get_width(%struct._GimpItem* %36)
  %37 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call69 = call i32 @gimp_item_get_height(%struct._GimpItem* %37)
  call void @gimp_drawable_update(%struct._GimpDrawable* %35, i32 0, i32 0, i32 %call68, i32 %call69)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %lor.lhs.false.64
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %39 = bitcast %struct._GimpDrawable* %38 to %struct._GTypeInstance*
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call71 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %40)
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %42 = bitcast %struct._GimpDrawable* %41 to %struct._GTypeInstance*
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %44 = bitcast %struct._GTypeClass* %43 to %struct._GimpDrawableClass*
  %set_tiles = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %44, i32 0, i32 11
  %45 = load void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)*, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)** %set_tiles, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = load i32, i32* %push_undo.addr, align 4
  %48 = load i8*, i8** %undo_desc.addr, align 8
  %49 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %50 = load i32, i32* %type.addr, align 4
  %51 = load i32, i32* %offset_x.addr, align 4
  %52 = load i32, i32* %offset_y.addr, align 4
  call void %45(%struct._GimpDrawable* %46, i32 %47, i8* %48, %struct._TileManager* %49, i32 %50, i32 %51, i32 %52)
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %54 = bitcast %struct._GimpDrawable* %53 to %struct._GTypeInstance*
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 80)
  %55 = bitcast %struct._GTypeInstance* %call73 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %55)
  %56 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %57 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call74 = call i32 @gimp_item_get_width(%struct._GimpItem* %57)
  %58 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call75 = call i32 @gimp_item_get_height(%struct._GimpItem* %58)
  call void @gimp_drawable_update(%struct._GimpDrawable* %56, i32 0, i32 0, i32 %call74, i32 %call75)
  br label %return

return:                                           ; preds = %if.end.70, %if.else.44, %if.else.14, %if.else.9
  ret void
}

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare i32 @gimp_item_get_offset_x(%struct._GimpItem*) #1

declare i32 @gimp_item_get_offset_y(%struct._GimpItem*) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

; Function Attrs: nounwind uwtable
define %struct._GeglNode* @gimp_drawable_get_source_node(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca %struct._GeglNode*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_get_source_node, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GeglNode* null, %struct._GeglNode** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %source_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %14, i32 0, i32 3
  %15 = load %struct._GeglNode*, %struct._GeglNode** %source_node, align 8
  %tobool11 = icmp ne %struct._GeglNode* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private13 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %16, i32 0, i32 1
  %17 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private13, align 8
  %source_node14 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %17, i32 0, i32 3
  %18 = load %struct._GeglNode*, %struct._GeglNode** %source_node14, align 8
  store %struct._GeglNode* %18, %struct._GeglNode** %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  %call16 = call %struct._GeglNode* @gegl_node_new()
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private17, align 8
  %source_node18 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %20, i32 0, i32 3
  store %struct._GeglNode* %call16, %struct._GeglNode** %source_node18, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private19, align 8
  %source_node20 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %22, i32 0, i32 3
  %23 = load %struct._GeglNode*, %struct._GeglNode** %source_node20, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call21 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %24)
  %call22 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct._TileManager* %call21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 1, i8* null)
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 1
  %26 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private23, align 8
  %tile_source_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %26, i32 0, i32 4
  store %struct._GeglNode* %call22, %struct._GeglNode** %tile_source_node, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_sync_source_node(%struct._GimpDrawable* %27, i32 0)
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private24 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private24, align 8
  %source_node25 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %29, i32 0, i32 3
  %30 = load %struct._GeglNode*, %struct._GeglNode** %source_node25, align 8
  store %struct._GeglNode* %30, %struct._GeglNode** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.12, %if.else.9
  %31 = load %struct._GeglNode*, %struct._GeglNode** %retval
  ret %struct._GeglNode* %31
}

declare %struct._GeglNode* @gegl_node_new() #1

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_sync_source_node(%struct._GimpDrawable* %drawable, i32 %detach_fs) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %detach_fs.addr = alloca i32, align 4
  %fs = alloca %struct._GimpLayer*, align 8
  %output = alloca %struct._GeglNode*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %fs_off_x = alloca i32, align 4
  %fs_off_y = alloca i32, align 4
  %fs_source = alloca %struct._GeglNode*, align 8
  %fs_source101 = alloca %struct._GeglNode*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %detach_fs, i32* %detach_fs.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call %struct._GimpLayer* @gimp_drawable_get_floating_sel(%struct._GimpDrawable* %0)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %fs, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %source_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %2, i32 0, i32 3
  %3 = load %struct._GeglNode*, %struct._GeglNode** %source_node, align 8
  %tobool = icmp ne %struct._GeglNode* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.166

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %4, i32 0, i32 1
  %5 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private1, align 8
  %source_node2 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %5, i32 0, i32 3
  %6 = load %struct._GeglNode*, %struct._GeglNode** %source_node2, align 8
  %call3 = call %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0))
  store %struct._GeglNode* %call3, %struct._GeglNode** %output, align 8
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %tobool4 = icmp ne %struct._GimpLayer* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %detach_fs.addr, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private7 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private7, align 8
  %fs_crop_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %10, i32 0, i32 6
  %11 = load %struct._GeglNode*, %struct._GeglNode** %fs_crop_node, align 8
  %tobool8 = icmp ne %struct._GeglNode* %11, null
  br i1 %tobool8, label %if.end.68, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_drawable_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDrawable*
  %call12 = call %struct._GeglNode* @gimp_drawable_get_source_node(%struct._GimpDrawable* %14)
  store %struct._GeglNode* %call12, %struct._GeglNode** %fs_source, align 8
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %opacity_node = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %15, i32 0, i32 5
  %16 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node, align 8
  %tobool13 = icmp ne %struct._GeglNode* %16, null
  br i1 %tobool13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.then.9
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %opacity_node15 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %17, i32 0, i32 5
  %18 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node15, align 8
  %call16 = call i32 @gegl_node_disconnect(%struct._GeglNode* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %19 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %20 = bitcast %struct._GimpLayer* %19 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %21)
  %22 = load %struct._GeglNode*, %struct._GeglNode** %fs_source, align 8
  %call20 = call %struct._GeglNode* @gegl_node_remove_child(%struct._GeglNode* %call19, %struct._GeglNode* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.14, %if.then.9
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private22 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %23, i32 0, i32 1
  %24 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private22, align 8
  %source_node23 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %24, i32 0, i32 3
  %25 = load %struct._GeglNode*, %struct._GeglNode** %source_node23, align 8
  %26 = load %struct._GeglNode*, %struct._GeglNode** %fs_source, align 8
  %call24 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %25, %struct._GeglNode* %26)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 1
  %28 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private25, align 8
  %source_node26 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %28, i32 0, i32 3
  %29 = load %struct._GeglNode*, %struct._GeglNode** %source_node26, align 8
  %call27 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* null)
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 1
  %31 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private28, align 8
  %fs_crop_node29 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %31, i32 0, i32 6
  store %struct._GeglNode* %call27, %struct._GeglNode** %fs_crop_node29, align 8
  %32 = load %struct._GeglNode*, %struct._GeglNode** %fs_source, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private30 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 1
  %34 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private30, align 8
  %fs_crop_node31 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %34, i32 0, i32 6
  %35 = load %struct._GeglNode*, %struct._GeglNode** %fs_crop_node31, align 8
  %call32 = call i32 @gegl_node_connect_to(%struct._GeglNode* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 1
  %37 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private33, align 8
  %source_node34 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %37, i32 0, i32 3
  %38 = load %struct._GeglNode*, %struct._GeglNode** %source_node34, align 8
  %call35 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* null)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private36 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private36, align 8
  %fs_opacity_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %40, i32 0, i32 7
  store %struct._GeglNode* %call35, %struct._GeglNode** %fs_opacity_node, align 8
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private37 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 1
  %42 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private37, align 8
  %fs_crop_node38 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %42, i32 0, i32 6
  %43 = load %struct._GeglNode*, %struct._GeglNode** %fs_crop_node38, align 8
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private39 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %44, i32 0, i32 1
  %45 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private39, align 8
  %fs_opacity_node40 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %45, i32 0, i32 7
  %46 = load %struct._GeglNode*, %struct._GeglNode** %fs_opacity_node40, align 8
  %call41 = call i32 @gegl_node_connect_to(%struct._GeglNode* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private42 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %47, i32 0, i32 1
  %48 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private42, align 8
  %source_node43 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %48, i32 0, i32 3
  %49 = load %struct._GeglNode*, %struct._GeglNode** %source_node43, align 8
  %call44 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i8* null)
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private45 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %50, i32 0, i32 1
  %51 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private45, align 8
  %fs_offset_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %51, i32 0, i32 8
  store %struct._GeglNode* %call44, %struct._GeglNode** %fs_offset_node, align 8
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private46 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 1
  %53 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private46, align 8
  %fs_opacity_node47 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %53, i32 0, i32 7
  %54 = load %struct._GeglNode*, %struct._GeglNode** %fs_opacity_node47, align 8
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private48 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %55, i32 0, i32 1
  %56 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private48, align 8
  %fs_offset_node49 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %56, i32 0, i32 8
  %57 = load %struct._GeglNode*, %struct._GeglNode** %fs_offset_node49, align 8
  %call50 = call i32 @gegl_node_connect_to(%struct._GeglNode* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private51 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %58, i32 0, i32 1
  %59 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private51, align 8
  %source_node52 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %59, i32 0, i32 3
  %60 = load %struct._GeglNode*, %struct._GeglNode** %source_node52, align 8
  %call53 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i8* null)
  %61 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private54 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %61, i32 0, i32 1
  %62 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private54, align 8
  %fs_mode_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %62, i32 0, i32 9
  store %struct._GeglNode* %call53, %struct._GeglNode** %fs_mode_node, align 8
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private55 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %63, i32 0, i32 1
  %64 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private55, align 8
  %tile_source_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %64, i32 0, i32 4
  %65 = load %struct._GeglNode*, %struct._GeglNode** %tile_source_node, align 8
  %66 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private56 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %66, i32 0, i32 1
  %67 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private56, align 8
  %fs_mode_node57 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %67, i32 0, i32 9
  %68 = load %struct._GeglNode*, %struct._GeglNode** %fs_mode_node57, align 8
  %call58 = call i32 @gegl_node_connect_to(%struct._GeglNode* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private59 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %69, i32 0, i32 1
  %70 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private59, align 8
  %fs_offset_node60 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %70, i32 0, i32 8
  %71 = load %struct._GeglNode*, %struct._GeglNode** %fs_offset_node60, align 8
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %72, i32 0, i32 1
  %73 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private61, align 8
  %fs_mode_node62 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %73, i32 0, i32 9
  %74 = load %struct._GeglNode*, %struct._GeglNode** %fs_mode_node62, align 8
  %call63 = call i32 @gegl_node_connect_to(%struct._GeglNode* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0))
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private64 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %75, i32 0, i32 1
  %76 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private64, align 8
  %fs_mode_node65 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %76, i32 0, i32 9
  %77 = load %struct._GeglNode*, %struct._GeglNode** %fs_mode_node65, align 8
  %78 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call66 = call i32 @gegl_node_connect_to(%struct._GeglNode* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %79 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %80 = bitcast %struct._GimpLayer* %79 to i8*
  %81 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %82 = bitcast %struct._GimpDrawable* %81 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, %struct._GParamSpec*, %struct._GimpDrawable*)* @gimp_drawable_fs_notify to void ()*), i8* %82, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.21, %if.then.6
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private69 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %83, i32 0, i32 1
  %84 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private69, align 8
  %fs_opacity_node70 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %84, i32 0, i32 7
  %85 = load %struct._GeglNode*, %struct._GeglNode** %fs_opacity_node70, align 8
  %86 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %call71 = call double @gimp_layer_get_opacity(%struct._GimpLayer* %86)
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), double %call71, i8* null)
  %87 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %88 = bitcast %struct._GimpDrawable* %87 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_item_get_type() #6
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call72)
  %89 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %89, i32* %off_x, i32* %off_y)
  %90 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %91 = bitcast %struct._GimpLayer* %90 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_item_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call74)
  %92 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %92, i32* %fs_off_x, i32* %fs_off_y)
  %93 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private76 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %93, i32 0, i32 1
  %94 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private76, align 8
  %fs_crop_node77 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %94, i32 0, i32 6
  %95 = load %struct._GeglNode*, %struct._GeglNode** %fs_crop_node77, align 8
  %96 = load i32, i32* %off_x, align 4
  %97 = load i32, i32* %fs_off_x, align 4
  %sub = sub nsw i32 %96, %97
  %conv = sitofp i32 %sub to double
  %98 = load i32, i32* %off_y, align 4
  %99 = load i32, i32* %fs_off_y, align 4
  %sub78 = sub nsw i32 %98, %99
  %conv79 = sitofp i32 %sub78 to double
  %100 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %101 = bitcast %struct._GimpDrawable* %100 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_item_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call80)
  %102 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpItem*
  %call82 = call i32 @gimp_item_get_width(%struct._GimpItem* %102)
  %conv83 = sitofp i32 %call82 to double
  %103 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %104 = bitcast %struct._GimpDrawable* %103 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_item_get_type() #6
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call84)
  %105 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpItem*
  %call86 = call i32 @gimp_item_get_height(%struct._GimpItem* %105)
  %conv87 = sitofp i32 %call86 to double
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), double %conv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), double %conv79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), double %conv83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), double %conv87, i8* null)
  %106 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private88 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %106, i32 0, i32 1
  %107 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private88, align 8
  %fs_offset_node89 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %107, i32 0, i32 8
  %108 = load %struct._GeglNode*, %struct._GeglNode** %fs_offset_node89, align 8
  %109 = load i32, i32* %fs_off_x, align 4
  %110 = load i32, i32* %off_x, align 4
  %sub90 = sub nsw i32 %109, %110
  %conv91 = sitofp i32 %sub90 to double
  %111 = load i32, i32* %fs_off_y, align 4
  %112 = load i32, i32* %off_y, align 4
  %sub92 = sub nsw i32 %111, %112
  %conv93 = sitofp i32 %sub92 to double
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), double %conv91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), double %conv93, i8* null)
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private94 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %113, i32 0, i32 1
  %114 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private94, align 8
  %fs_mode_node95 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %114, i32 0, i32 9
  %115 = load %struct._GeglNode*, %struct._GeglNode** %fs_mode_node95, align 8
  %116 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %call96 = call i32 @gimp_layer_get_mode(%struct._GimpLayer* %116)
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i32 %call96, i8* null)
  br label %if.end.166

if.else:                                          ; preds = %land.lhs.true, %if.end
  %117 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private97 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %117, i32 0, i32 1
  %118 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private97, align 8
  %fs_crop_node98 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %118, i32 0, i32 6
  %119 = load %struct._GeglNode*, %struct._GeglNode** %fs_crop_node98, align 8
  %tobool99 = icmp ne %struct._GeglNode* %119, null
  br i1 %tobool99, label %if.then.100, label %if.end.162

if.then.100:                                      ; preds = %if.else
  %120 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private102 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %120, i32 0, i32 1
  %121 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private102, align 8
  %fs_crop_node103 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %121, i32 0, i32 6
  %122 = load %struct._GeglNode*, %struct._GeglNode** %fs_crop_node103, align 8
  %call104 = call i32 @gegl_node_disconnect(%struct._GeglNode* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %123 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private105 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %123, i32 0, i32 1
  %124 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private105, align 8
  %fs_opacity_node106 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %124, i32 0, i32 7
  %125 = load %struct._GeglNode*, %struct._GeglNode** %fs_opacity_node106, align 8
  %call107 = call i32 @gegl_node_disconnect(%struct._GeglNode* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %126 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private108 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %126, i32 0, i32 1
  %127 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private108, align 8
  %fs_offset_node109 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %127, i32 0, i32 8
  %128 = load %struct._GeglNode*, %struct._GeglNode** %fs_offset_node109, align 8
  %call110 = call i32 @gegl_node_disconnect(%struct._GeglNode* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %129 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private111 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %129, i32 0, i32 1
  %130 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private111, align 8
  %fs_mode_node112 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %130, i32 0, i32 9
  %131 = load %struct._GeglNode*, %struct._GeglNode** %fs_mode_node112, align 8
  %call113 = call i32 @gegl_node_disconnect(%struct._GeglNode* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %132 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private114 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %132, i32 0, i32 1
  %133 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private114, align 8
  %fs_mode_node115 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %133, i32 0, i32 9
  %134 = load %struct._GeglNode*, %struct._GeglNode** %fs_mode_node115, align 8
  %call116 = call i32 @gegl_node_disconnect(%struct._GeglNode* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0))
  %135 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %136 = bitcast %struct._GimpLayer* %135 to %struct._GTypeInstance*
  %call117 = call i64 @gimp_drawable_get_type() #6
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call117)
  %137 = bitcast %struct._GTypeInstance* %call118 to %struct._GimpDrawable*
  %call119 = call %struct._GeglNode* @gimp_drawable_get_source_node(%struct._GimpDrawable* %137)
  store %struct._GeglNode* %call119, %struct._GeglNode** %fs_source101, align 8
  %138 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private120 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %138, i32 0, i32 1
  %139 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private120, align 8
  %source_node121 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %139, i32 0, i32 3
  %140 = load %struct._GeglNode*, %struct._GeglNode** %source_node121, align 8
  %141 = load %struct._GeglNode*, %struct._GeglNode** %fs_source101, align 8
  %call122 = call %struct._GeglNode* @gegl_node_remove_child(%struct._GeglNode* %140, %struct._GeglNode* %141)
  %142 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %opacity_node123 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %142, i32 0, i32 5
  %143 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node123, align 8
  %tobool124 = icmp ne %struct._GeglNode* %143, null
  br i1 %tobool124, label %if.then.125, label %if.end.132

if.then.125:                                      ; preds = %if.then.100
  %144 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %145 = bitcast %struct._GimpLayer* %144 to %struct._GTypeInstance*
  %call126 = call i64 @gimp_item_get_type() #6
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %145, i64 %call126)
  %146 = bitcast %struct._GTypeInstance* %call127 to %struct._GimpItem*
  %call128 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %146)
  %147 = load %struct._GeglNode*, %struct._GeglNode** %fs_source101, align 8
  %call129 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %call128, %struct._GeglNode* %147)
  %148 = load %struct._GeglNode*, %struct._GeglNode** %fs_source101, align 8
  %149 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %opacity_node130 = getelementptr inbounds %struct._GimpLayer, %struct._GimpLayer* %149, i32 0, i32 5
  %150 = load %struct._GeglNode*, %struct._GeglNode** %opacity_node130, align 8
  %call131 = call i32 @gegl_node_connect_to(%struct._GeglNode* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.125, %if.then.100
  %151 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private133 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %151, i32 0, i32 1
  %152 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private133, align 8
  %source_node134 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %152, i32 0, i32 3
  %153 = load %struct._GeglNode*, %struct._GeglNode** %source_node134, align 8
  %154 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private135 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %154, i32 0, i32 1
  %155 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private135, align 8
  %fs_crop_node136 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %155, i32 0, i32 6
  %156 = load %struct._GeglNode*, %struct._GeglNode** %fs_crop_node136, align 8
  %call137 = call %struct._GeglNode* @gegl_node_remove_child(%struct._GeglNode* %153, %struct._GeglNode* %156)
  %157 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private138 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %157, i32 0, i32 1
  %158 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private138, align 8
  %fs_crop_node139 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %158, i32 0, i32 6
  store %struct._GeglNode* null, %struct._GeglNode** %fs_crop_node139, align 8
  %159 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private140 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %159, i32 0, i32 1
  %160 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private140, align 8
  %source_node141 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %160, i32 0, i32 3
  %161 = load %struct._GeglNode*, %struct._GeglNode** %source_node141, align 8
  %162 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private142 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %162, i32 0, i32 1
  %163 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private142, align 8
  %fs_opacity_node143 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %163, i32 0, i32 7
  %164 = load %struct._GeglNode*, %struct._GeglNode** %fs_opacity_node143, align 8
  %call144 = call %struct._GeglNode* @gegl_node_remove_child(%struct._GeglNode* %161, %struct._GeglNode* %164)
  %165 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private145 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %165, i32 0, i32 1
  %166 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private145, align 8
  %fs_opacity_node146 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %166, i32 0, i32 7
  store %struct._GeglNode* null, %struct._GeglNode** %fs_opacity_node146, align 8
  %167 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private147 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %167, i32 0, i32 1
  %168 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private147, align 8
  %source_node148 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %168, i32 0, i32 3
  %169 = load %struct._GeglNode*, %struct._GeglNode** %source_node148, align 8
  %170 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private149 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %170, i32 0, i32 1
  %171 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private149, align 8
  %fs_offset_node150 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %171, i32 0, i32 8
  %172 = load %struct._GeglNode*, %struct._GeglNode** %fs_offset_node150, align 8
  %call151 = call %struct._GeglNode* @gegl_node_remove_child(%struct._GeglNode* %169, %struct._GeglNode* %172)
  %173 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private152 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %173, i32 0, i32 1
  %174 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private152, align 8
  %fs_offset_node153 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %174, i32 0, i32 8
  store %struct._GeglNode* null, %struct._GeglNode** %fs_offset_node153, align 8
  %175 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private154 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %175, i32 0, i32 1
  %176 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private154, align 8
  %source_node155 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %176, i32 0, i32 3
  %177 = load %struct._GeglNode*, %struct._GeglNode** %source_node155, align 8
  %178 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private156 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %178, i32 0, i32 1
  %179 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private156, align 8
  %fs_mode_node157 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %179, i32 0, i32 9
  %180 = load %struct._GeglNode*, %struct._GeglNode** %fs_mode_node157, align 8
  %call158 = call %struct._GeglNode* @gegl_node_remove_child(%struct._GeglNode* %177, %struct._GeglNode* %180)
  %181 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private159 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %181, i32 0, i32 1
  %182 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private159, align 8
  %fs_mode_node160 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %182, i32 0, i32 9
  store %struct._GeglNode* null, %struct._GeglNode** %fs_mode_node160, align 8
  %183 = load %struct._GimpLayer*, %struct._GimpLayer** %fs, align 8
  %184 = bitcast %struct._GimpLayer* %183 to i8*
  %185 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %186 = bitcast %struct._GimpDrawable* %185 to i8*
  %call161 = call i32 @g_signal_handlers_disconnect_matched(i8* %184, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpLayer*, %struct._GParamSpec*, %struct._GimpDrawable*)* @gimp_drawable_fs_notify to i8*), i8* %186)
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.132, %if.else
  %187 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private163 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %187, i32 0, i32 1
  %188 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private163, align 8
  %tile_source_node164 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %188, i32 0, i32 4
  %189 = load %struct._GeglNode*, %struct._GeglNode** %tile_source_node164, align 8
  %190 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call165 = call i32 @gegl_node_connect_to(%struct._GeglNode* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.166

if.end.166:                                       ; preds = %if.then, %if.end.162, %if.end.68
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GeglNode* @gimp_drawable_get_mode_node(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca %struct._GeglNode*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_drawable_get_mode_node, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GeglNode* null, %struct._GeglNode** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %mode_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %14, i32 0, i32 10
  %15 = load %struct._GeglNode*, %struct._GeglNode** %mode_node, align 8
  %tobool11 = icmp ne %struct._GeglNode* %15, null
  br i1 %tobool11, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.end
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private17, align 8
  %mode_node18 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %20, i32 0, i32 10
  %21 = load %struct._GeglNode*, %struct._GeglNode** %mode_node18, align 8
  store %struct._GeglNode* %21, %struct._GeglNode** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  %22 = load %struct._GeglNode*, %struct._GeglNode** %retval
  ret %struct._GeglNode* %22
}

declare %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_swap_pixels(%struct._GimpDrawable* %drawable, %struct._TileManager* %tiles, i32 %sparse, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %sparse.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %sparse, i32* %sparse.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_swap_pixels, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp12 = icmp ne %struct._TileManager* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_drawable_swap_pixels, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpDrawableClass*
  %swap_pixels = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %17, i32 0, i32 13
  %18 = load void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)*, void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)** %swap_pixels, align 8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %20 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %21 = load i32, i32* %sparse.addr, align 4
  %22 = load i32, i32* %x.addr, align 4
  %23 = load i32, i32* %y.addr, align 4
  %24 = load i32, i32* %width.addr, align 4
  %25 = load i32, i32* %height.addr, align 4
  call void %18(%struct._GimpDrawable* %19, %struct._TileManager* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_push_undo(%struct._GimpDrawable* %drawable, i8* %undo_desc, i32 %x, i32 %y, i32 %width, i32 %height, %struct._TileManager* %tiles, i32 %sparse) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %tiles.addr = alloca %struct._TileManager*, align 8
  %sparse.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %sparse, i32* %sparse.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_push_undo, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %sparse.addr, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %cmp13 = icmp ne %struct._TileManager* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_push_undo, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call18)
  %17 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  store %struct._GimpItem* %17, %struct._GimpItem** %item, align 8
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.17
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %18)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.20
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_push_undo, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %19 = load i32, i32* %sparse.addr, align 4
  %cmp28 = icmp eq i32 %19, 0
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %do.body.27
  %20 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call30 = call i32 @tile_manager_width(%struct._TileManager* %20)
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call31 = call i32 @gimp_item_get_width(%struct._GimpItem* %21)
  %cmp32 = icmp eq i32 %call30, %call31
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %lor.lhs.false.29, %do.body.27
  br label %if.end.35

if.else.34:                                       ; preds = %lor.lhs.false.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_push_undo, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.24, i32 0, i32 0))
  br label %return

if.end.35:                                        ; preds = %if.then.33
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %22 = load i32, i32* %sparse.addr, align 4
  %cmp38 = icmp eq i32 %22, 0
  br i1 %cmp38, label %if.then.43, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %do.body.37
  %23 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call40 = call i32 @tile_manager_height(%struct._TileManager* %23)
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call41 = call i32 @gimp_item_get_height(%struct._GimpItem* %24)
  %cmp42 = icmp eq i32 %call40, %call41
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %lor.lhs.false.39, %do.body.37
  br label %if.end.45

if.else.44:                                       ; preds = %lor.lhs.false.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_push_undo, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.25, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %25 = load i32, i32* %x.addr, align 4
  %26 = load i32, i32* %y.addr, align 4
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %height.addr, align 4
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call47 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call48 = call i32 @gimp_item_get_height(%struct._GimpItem* %30)
  %call49 = call i32 @gimp_rectangle_intersect(i32 %25, i32 %26, i32 %27, i32 %28, i32 0, i32 0, i32 %call47, i32 %call48, i32* %x.addr, i32* %y.addr, i32* %width.addr, i32* %height.addr)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %do.end.46
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_push_undo, i32 0, i32 0))
  br label %return

if.end.52:                                        ; preds = %do.end.46
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %34 = bitcast %struct._GTypeClass* %33 to %struct._GimpDrawableClass*
  %push_undo = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %34, i32 0, i32 12
  %35 = load void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)*, void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)** %push_undo, align 8
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = load i8*, i8** %undo_desc.addr, align 8
  %38 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %39 = load i32, i32* %sparse.addr, align 4
  %40 = load i32, i32* %x.addr, align 4
  %41 = load i32, i32* %y.addr, align 4
  %42 = load i32, i32* %width.addr, align 4
  %43 = load i32, i32* %height.addr, align 4
  call void %35(%struct._GimpDrawable* %36, i8* %37, %struct._TileManager* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %return

return:                                           ; preds = %if.end.52, %if.then.51, %if.else.44, %if.else.34, %if.else.24, %if.else.15, %if.else.9
  ret void
}

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

; Function Attrs: nounwind uwtable
define void @gimp_drawable_fill(%struct._GimpDrawable* %drawable, %struct._GimpRGB* %color, %struct._GimpPattern* %pattern) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable_type = alloca i32, align 4
  %destPR = alloca %struct._PixelRegion, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %tmp58 = alloca [4 x i8], align 1
  %c = alloca [4 x i8], align 1
  %pat_buf = alloca %struct._TempBuf*, align 8
  %new_buf = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_drawable_fill, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %cmp13 = icmp ne %struct._GimpPattern* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_drawable_fill, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %cmp19 = icmp eq %struct._GimpPattern* %15, null
  br i1 %cmp19, label %if.then.44, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %do.body.18
  %16 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %17 = bitcast %struct._GimpPattern* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_pattern_get_type() #6
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.20
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %lor.lhs.false.20
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
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #7
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

if.then.44:                                       ; preds = %if.end.41, %do.body.18
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_drawable_fill, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #6
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call48)
  %31 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  store %struct._GimpItem* %31, %struct._GimpItem** %item, align 8
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call50 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %32)
  store %struct._GimpImage* %call50, %struct._GimpImage** %image, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call51 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %33)
  store i32 %call51, i32* %drawable_type, align 4
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call52 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %34)
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call53 = call i32 @gimp_item_get_width(%struct._GimpItem* %35)
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call54 = call i32 @gimp_item_get_height(%struct._GimpItem* %36)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call52, i32 0, i32 0, i32 %call53, i32 %call54, i32 1)
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool55 = icmp ne %struct._GimpRGB* %37, null
  br i1 %tobool55, label %if.then.56, label %if.else.127

if.then.56:                                       ; preds = %do.end.47
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %tmp58, i32 0, i64 0
  %arrayidx60 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp58, i32 0, i64 1
  %arrayidx61 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp58, i32 0, i64 2
  %arrayidx62 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp58, i32 0, i64 3
  call void @gimp_rgba_get_uchar(%struct._GimpRGB* %38, i8* %arrayidx, i8* %arrayidx60, i8* %arrayidx61, i8* %arrayidx62)
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %40 = load i32, i32* %drawable_type, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i32 0
  %arraydecay63 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp58, i32 0, i32 0
  call void @gimp_image_transform_color(%struct._GimpImage* %39, i32 %40, i8* %arraydecay, i32 0, i8* %arraydecay63)
  %41 = load i32, i32* %drawable_type, align 4
  %cmp64 = icmp eq i32 %41, 1
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %if.then.56
  %42 = load i32, i32* %drawable_type, align 4
  %cmp66 = icmp eq i32 %42, 3
  br i1 %cmp66, label %if.then.69, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.65
  %43 = load i32, i32* %drawable_type, align 4
  %cmp68 = icmp eq i32 %43, 5
  br i1 %cmp68, label %if.then.69, label %if.else.95

if.then.69:                                       ; preds = %lor.lhs.false.67, %lor.lhs.false.65, %if.then.56
  %arrayidx70 = getelementptr inbounds [4 x i8], [4 x i8]* %tmp58, i32 0, i64 3
  %44 = load i8, i8* %arrayidx70, align 1
  %45 = load i32, i32* %drawable_type, align 4
  %cmp71 = icmp eq i32 %45, 1
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.69
  br label %cond.end.92

cond.false:                                       ; preds = %if.then.69
  %46 = load i32, i32* %drawable_type, align 4
  %cmp72 = icmp eq i32 %46, 0
  br i1 %cmp72, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %cond.false
  br label %cond.end.90

cond.false.74:                                    ; preds = %cond.false
  %47 = load i32, i32* %drawable_type, align 4
  %cmp75 = icmp eq i32 %47, 3
  br i1 %cmp75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.false.74
  br label %cond.end.88

cond.false.77:                                    ; preds = %cond.false.74
  %48 = load i32, i32* %drawable_type, align 4
  %cmp78 = icmp eq i32 %48, 2
  br i1 %cmp78, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.77
  br label %cond.end.86

cond.false.80:                                    ; preds = %cond.false.77
  %49 = load i32, i32* %drawable_type, align 4
  %cmp81 = icmp eq i32 %49, 5
  br i1 %cmp81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %cond.false.80
  br label %cond.end

cond.false.83:                                    ; preds = %cond.false.80
  %50 = load i32, i32* %drawable_type, align 4
  %cmp84 = icmp eq i32 %50, 4
  %cond = select i1 %cmp84, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.83, %cond.true.82
  %cond85 = phi i32 [ 2, %cond.true.82 ], [ %cond, %cond.false.83 ]
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end, %cond.true.79
  %cond87 = phi i32 [ 1, %cond.true.79 ], [ %cond85, %cond.end ]
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.end.86, %cond.true.76
  %cond89 = phi i32 [ 2, %cond.true.76 ], [ %cond87, %cond.end.86 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.73
  %cond91 = phi i32 [ 3, %cond.true.73 ], [ %cond89, %cond.end.88 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true
  %cond93 = phi i32 [ 4, %cond.true ], [ %cond91, %cond.end.90 ]
  %sub = sub nsw i32 %cond93, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx94 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 %idxprom
  store i8 %44, i8* %arrayidx94, align 1
  br label %if.end.125

if.else.95:                                       ; preds = %lor.lhs.false.67
  %51 = load i32, i32* %drawable_type, align 4
  %cmp96 = icmp eq i32 %51, 1
  br i1 %cmp96, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %if.else.95
  br label %cond.end.121

cond.false.98:                                    ; preds = %if.else.95
  %52 = load i32, i32* %drawable_type, align 4
  %cmp99 = icmp eq i32 %52, 0
  br i1 %cmp99, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %cond.false.98
  br label %cond.end.119

cond.false.101:                                   ; preds = %cond.false.98
  %53 = load i32, i32* %drawable_type, align 4
  %cmp102 = icmp eq i32 %53, 3
  br i1 %cmp102, label %cond.true.103, label %cond.false.104

cond.true.103:                                    ; preds = %cond.false.101
  br label %cond.end.117

cond.false.104:                                   ; preds = %cond.false.101
  %54 = load i32, i32* %drawable_type, align 4
  %cmp105 = icmp eq i32 %54, 2
  br i1 %cmp105, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %cond.false.104
  br label %cond.end.115

cond.false.107:                                   ; preds = %cond.false.104
  %55 = load i32, i32* %drawable_type, align 4
  %cmp108 = icmp eq i32 %55, 5
  br i1 %cmp108, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %cond.false.107
  br label %cond.end.113

cond.false.110:                                   ; preds = %cond.false.107
  %56 = load i32, i32* %drawable_type, align 4
  %cmp111 = icmp eq i32 %56, 4
  %cond112 = select i1 %cmp111, i32 1, i32 -1
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.110, %cond.true.109
  %cond114 = phi i32 [ 2, %cond.true.109 ], [ %cond112, %cond.false.110 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.true.106
  %cond116 = phi i32 [ 1, %cond.true.106 ], [ %cond114, %cond.end.113 ]
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.end.115, %cond.true.103
  %cond118 = phi i32 [ 2, %cond.true.103 ], [ %cond116, %cond.end.115 ]
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.end.117, %cond.true.100
  %cond120 = phi i32 [ 3, %cond.true.100 ], [ %cond118, %cond.end.117 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.true.97
  %cond122 = phi i32 [ 4, %cond.true.97 ], [ %cond120, %cond.end.119 ]
  %idxprom123 = sext i32 %cond122 to i64
  %arrayidx124 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i64 %idxprom123
  store i8 -1, i8* %arrayidx124, align 1
  br label %if.end.125

if.end.125:                                       ; preds = %cond.end.121, %cond.end.92
  %arraydecay126 = getelementptr inbounds [4 x i8], [4 x i8]* %c, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %destPR, i8* %arraydecay126)
  br label %if.end.134

if.else.127:                                      ; preds = %do.end.47
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %58 = load i32, i32* %drawable_type, align 4
  %59 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %59, i32 0, i32 1
  %60 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %call130 = call %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage* %57, i32 %58, %struct._TempBuf* %60, i32* %new_buf)
  store %struct._TempBuf* %call130, %struct._TempBuf** %pat_buf, align 8
  %61 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  call void @pattern_region(%struct._PixelRegion* %destPR, %struct._PixelRegion* null, %struct._TempBuf* %61, i32 0, i32 0)
  %62 = load i32, i32* %new_buf, align 4
  %tobool131 = icmp ne i32 %62, 0
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.else.127
  %63 = load %struct._TempBuf*, %struct._TempBuf** %pat_buf, align 8
  call void @temp_buf_free(%struct._TempBuf* %63)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.else.127
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.125
  %64 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %65 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call135 = call i32 @gimp_item_get_width(%struct._GimpItem* %65)
  %66 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call136 = call i32 @gimp_item_get_height(%struct._GimpItem* %66)
  call void @gimp_drawable_update(%struct._GimpDrawable* %64, i32 0, i32 0, i32 %call135, i32 %call136)
  br label %return

return:                                           ; preds = %if.end.134, %if.else.45, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare void @gimp_rgba_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*, i8*) #1

declare void @gimp_image_transform_color(%struct._GimpImage*, i32, i8*, i32, i8*) #1

declare void @color_region(%struct._PixelRegion*, i8*) #1

declare %struct._TempBuf* @gimp_image_transform_temp_buf(%struct._GimpImage*, i32, %struct._TempBuf*, i32*) #1

declare void @pattern_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._TempBuf*, i32, i32) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_fill_by_type(%struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %fill_type) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %fill_type.addr = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %fill_type, i32* %fill_type.addr, align 4
  store %struct._GimpPattern* null, %struct._GimpPattern** %pattern, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_fill_by_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %fill_type.addr, align 4
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.14
    i32 5, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %14, %struct._GimpRGB* %color)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %do.end
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %15, %struct._GimpRGB* %color)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %do.end
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %do.end
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %do.end
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call15 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %16)
  store %struct._GimpPattern* %call15, %struct._GimpPattern** %pattern, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %do.end
  br label %return

sw.default:                                       ; preds = %do.end
  %17 = load i32, i32* %fill_type.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_fill_by_type, i32 0, i32 0), i32 %17)
  br label %return

sw.epilog:                                        ; preds = %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %19 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %tobool17 = icmp ne %struct._GimpPattern* %19, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpRGB* [ null, %cond.true ], [ %color, %cond.false ]
  %20 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  call void @gimp_drawable_fill(%struct._GimpDrawable* %18, %struct._GimpRGB* %cond, %struct._GimpPattern* %20)
  br label %return

return:                                           ; preds = %cond.end, %sw.default, %sw.bb.16, %if.else.9
  ret void
}

declare void @gimp_context_get_foreground(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_context_get_background(%struct._GimpContext*, %struct._GimpRGB*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_has_alpha, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %13)
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  %cmp14 = icmp eq i32 %call13, 3
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %15)
  %cmp16 = icmp eq i32 %call15, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %do.end
  %16 = phi i1 [ true, %lor.lhs.false ], [ true, %do.end ], [ %cmp16, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_drawable_type_with_alpha, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %13)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end
  br label %cond.end.27

cond.false:                                       ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %15)
  %cmp16 = icmp eq i32 %call15, 2
  br i1 %cmp16, label %cond.true.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %cond.false
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %16)
  %cmp19 = icmp eq i32 %call18, 3
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %lor.lhs.false.17, %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %lor.lhs.false.17
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call22 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %17)
  %cmp23 = icmp eq i32 %call22, 4
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.21
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call24 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %18)
  %cmp25 = icmp eq i32 %call24, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.21
  %19 = phi i1 [ true, %cond.false.21 ], [ %cmp25, %lor.rhs ]
  %cond = select i1 %19, i32 5, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.20
  %cond26 = phi i32 [ 3, %cond.true.20 ], [ %cond, %lor.end ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ 1, %cond.true ], [ %cond26, %cond.end ]
  store i32 %cond28, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.27, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_type_without_alpha(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_drawable_type_without_alpha, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %13)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end
  br label %cond.end.27

cond.false:                                       ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %15)
  %cmp16 = icmp eq i32 %call15, 2
  br i1 %cmp16, label %cond.true.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %cond.false
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %16)
  %cmp19 = icmp eq i32 %call18, 3
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %lor.lhs.false.17, %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %lor.lhs.false.17
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call22 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %17)
  %cmp23 = icmp eq i32 %call22, 4
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.21
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call24 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %18)
  %cmp25 = icmp eq i32 %call24, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.21
  %19 = phi i1 [ true, %cond.false.21 ], [ %cmp25, %lor.rhs ]
  %cond = select i1 %19, i32 4, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.20
  %cond26 = phi i32 [ 2, %cond.true.20 ], [ %cond, %lor.end ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ 0, %cond.true ], [ %cond26, %cond.end ]
  store i32 %cond28, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.27, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_drawable_is_rgb, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %13)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  %cmp14 = icmp eq i32 %call13, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end
  %15 = phi i1 [ true, %do.end ], [ %cmp14, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_drawable_is_gray, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %13)
  %cmp12 = icmp eq i32 %call11, 2
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  %cmp14 = icmp eq i32 %call13, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end
  %15 = phi i1 [ true, %do.end ], [ %cmp14, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_drawable_is_indexed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %13)
  %cmp12 = icmp eq i32 %call11, 4
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  %cmp14 = icmp eq i32 %call13, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end
  %15 = phi i1 [ true, %do.end ], [ %cmp14, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_drawable_bytes_with_alpha, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %13)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end
  br label %cond.end.27

cond.false:                                       ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %15)
  %cmp16 = icmp eq i32 %call15, 2
  br i1 %cmp16, label %cond.true.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %cond.false
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %16)
  %cmp19 = icmp eq i32 %call18, 3
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %lor.lhs.false.17, %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %lor.lhs.false.17
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call22 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %17)
  %cmp23 = icmp eq i32 %call22, 4
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.21
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call24 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %18)
  %cmp25 = icmp eq i32 %call24, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.21
  %19 = phi i1 [ true, %cond.false.21 ], [ %cmp25, %lor.rhs ]
  %cond = select i1 %19, i32 5, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.20
  %cond26 = phi i32 [ 3, %cond.true.20 ], [ %cond, %lor.end ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ 1, %cond.true ], [ %cond26, %cond.end ]
  store i32 %cond28, i32* %type, align 4
  %20 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %20, 1
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.27
  br label %cond.end.54

cond.false.31:                                    ; preds = %cond.end.27
  %21 = load i32, i32* %type, align 4
  %cmp32 = icmp eq i32 %21, 0
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.false.31
  br label %cond.end.52

cond.false.34:                                    ; preds = %cond.false.31
  %22 = load i32, i32* %type, align 4
  %cmp35 = icmp eq i32 %22, 3
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.false.34
  br label %cond.end.50

cond.false.37:                                    ; preds = %cond.false.34
  %23 = load i32, i32* %type, align 4
  %cmp38 = icmp eq i32 %23, 2
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.37
  br label %cond.end.48

cond.false.40:                                    ; preds = %cond.false.37
  %24 = load i32, i32* %type, align 4
  %cmp41 = icmp eq i32 %24, 5
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false.40
  br label %cond.end.46

cond.false.43:                                    ; preds = %cond.false.40
  %25 = load i32, i32* %type, align 4
  %cmp44 = icmp eq i32 %25, 4
  %cond45 = select i1 %cmp44, i32 1, i32 -1
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.43, %cond.true.42
  %cond47 = phi i32 [ 2, %cond.true.42 ], [ %cond45, %cond.false.43 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.39
  %cond49 = phi i32 [ 1, %cond.true.39 ], [ %cond47, %cond.end.46 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true.36
  %cond51 = phi i32 [ 2, %cond.true.36 ], [ %cond49, %cond.end.48 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %cond.true.33
  %cond53 = phi i32 [ 3, %cond.true.33 ], [ %cond51, %cond.end.50 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.30
  %cond55 = phi i32 [ 4, %cond.true.30 ], [ %cond53, %cond.end.52 ]
  store i32 %cond55, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.54, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @gimp_drawable_bytes_without_alpha(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %type = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_bytes_without_alpha, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %13)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call13 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %14)
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %do.end
  br label %cond.end.27

cond.false:                                       ; preds = %lor.lhs.false
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call15 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %15)
  %cmp16 = icmp eq i32 %call15, 2
  br i1 %cmp16, label %cond.true.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %cond.false
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %16)
  %cmp19 = icmp eq i32 %call18, 3
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %lor.lhs.false.17, %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %lor.lhs.false.17
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call22 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %17)
  %cmp23 = icmp eq i32 %call22, 4
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.21
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call24 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %18)
  %cmp25 = icmp eq i32 %call24, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.21
  %19 = phi i1 [ true, %cond.false.21 ], [ %cmp25, %lor.rhs ]
  %cond = select i1 %19, i32 4, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.20
  %cond26 = phi i32 [ 2, %cond.true.20 ], [ %cond, %lor.end ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ 0, %cond.true ], [ %cond26, %cond.end ]
  store i32 %cond28, i32* %type, align 4
  %20 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %20, 1
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.end.27
  br label %cond.end.54

cond.false.31:                                    ; preds = %cond.end.27
  %21 = load i32, i32* %type, align 4
  %cmp32 = icmp eq i32 %21, 0
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.false.31
  br label %cond.end.52

cond.false.34:                                    ; preds = %cond.false.31
  %22 = load i32, i32* %type, align 4
  %cmp35 = icmp eq i32 %22, 3
  br i1 %cmp35, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.false.34
  br label %cond.end.50

cond.false.37:                                    ; preds = %cond.false.34
  %23 = load i32, i32* %type, align 4
  %cmp38 = icmp eq i32 %23, 2
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.37
  br label %cond.end.48

cond.false.40:                                    ; preds = %cond.false.37
  %24 = load i32, i32* %type, align 4
  %cmp41 = icmp eq i32 %24, 5
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.false.40
  br label %cond.end.46

cond.false.43:                                    ; preds = %cond.false.40
  %25 = load i32, i32* %type, align 4
  %cmp44 = icmp eq i32 %25, 4
  %cond45 = select i1 %cmp44, i32 1, i32 -1
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.43, %cond.true.42
  %cond47 = phi i32 [ 2, %cond.true.42 ], [ %cond45, %cond.false.43 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.39
  %cond49 = phi i32 [ 1, %cond.true.39 ], [ %cond47, %cond.end.46 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end.48, %cond.true.36
  %cond51 = phi i32 [ 2, %cond.true.36 ], [ %cond49, %cond.end.48 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %cond.true.33
  %cond53 = phi i32 [ 3, %cond.true.33 ], [ %cond51, %cond.end.50 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.30
  %cond55 = phi i32 [ 4, %cond.true.30 ], [ %cond53, %cond.end.52 ]
  store i32 %cond55, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.54, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %drawable) #3 {
entry:
  %retval = alloca i8*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_drawable_get_colormap, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %15)
  store %struct._GimpImage* %call13, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool14 = icmp ne %struct._GimpImage* %16, null
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i8* @gimp_image_get_colormap(%struct._GimpImage* %17)
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call15, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  %18 = load i8*, i8** %retval
  ret i8* %18
}

declare i8* @gimp_image_get_colormap(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_attach_floating_sel(%struct._GimpDrawable* %drawable, %struct._GimpLayer* %floating_sel) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %floating_sel.addr = alloca %struct._GimpLayer*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst29 = alloca %struct._GTypeInstance*, align 8
  %__t31 = alloca i64, align 8
  %__r34 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpLayer* %floating_sel, %struct._GimpLayer** %floating_sel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_attach_floating_sel, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_attach_floating_sel, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call21 = call %struct._GimpLayer* @gimp_drawable_get_floating_sel(%struct._GimpDrawable* %16)
  %cmp22 = icmp eq %struct._GimpLayer* %call21, null
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.20
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_attach_floating_sel, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %17 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel.addr, align 8
  %18 = bitcast %struct._GimpLayer* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst29, align 8
  %call32 = call i64 @gimp_layer_get_type() #6
  store i64 %call32, i64* %__t31, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %tobool35 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool35, label %if.else.37, label %if.then.36

if.then.36:                                       ; preds = %do.body.27
  store i32 0, i32* %__r34, align 4
  br label %if.end.48

if.else.37:                                       ; preds = %do.body.27
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %tobool39 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.else.45

land.lhs.true.40:                                 ; preds = %if.else.37
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %g_class41 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class41, align 8
  %g_type42 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type42, align 8
  %25 = load i64, i64* %__t31, align 8
  %cmp43 = icmp eq i64 %24, %25
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %land.lhs.true.40
  store i32 1, i32* %__r34, align 4
  br label %if.end.47

if.else.45:                                       ; preds = %land.lhs.true.40, %if.else.37
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst29, align 8
  %27 = load i64, i64* %__t31, align 8
  %call46 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #7
  store i32 %call46, i32* %__r34, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.36
  %28 = load i32, i32* %__r34, align 4
  store i32 %28, i32* %tmp49
  %29 = load i32, i32* %tmp49
  %tobool50 = icmp ne i32 %29, 0
  br i1 %tobool50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.end.48
  br label %if.end.53

if.else.52:                                       ; preds = %if.end.48
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_attach_floating_sel, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0))
  br label %return

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %30 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %30, 2048
  %tobool56 = icmp ne i32 %and, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %do.body.55
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 2048, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_attach_floating_sel, i32 0, i32 0), i32 1854, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_attach_floating_sel, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %do.body.55
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_item_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call60)
  %33 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpItem*
  %call62 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %33)
  store %struct._GimpImage* %call62, %struct._GimpImage** %image, align 8
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel.addr, align 8
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 1
  %36 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %floating_selection = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %36, i32 0, i32 5
  store %struct._GimpLayer* %34, %struct._GimpLayer** %floating_selection, align 8
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel.addr, align 8
  call void @gimp_image_set_floating_selection(%struct._GimpImage* %37, %struct._GimpLayer* %38)
  %39 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel.addr, align 8
  %40 = bitcast %struct._GimpLayer* %39 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_drawable_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call63)
  %41 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %41)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_sync_source_node(%struct._GimpDrawable* %42, i32 0)
  %43 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel.addr, align 8
  %44 = bitcast %struct._GimpLayer* %43 to i8*
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %46 = bitcast %struct._GimpDrawable* %45 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (void (%struct._GimpLayer*, i32, i32, i32, i32, %struct._GimpDrawable*)* @gimp_drawable_fs_update to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel.addr, align 8
  %48 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel.addr, align 8
  %49 = bitcast %struct._GimpLayer* %48 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_item_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call66)
  %50 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpItem*
  %call68 = call i32 @gimp_item_get_width(%struct._GimpItem* %50)
  %51 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel.addr, align 8
  %52 = bitcast %struct._GimpLayer* %51 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_item_get_type() #6
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call69)
  %53 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpItem*
  %call71 = call i32 @gimp_item_get_height(%struct._GimpItem* %53)
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_fs_update(%struct._GimpLayer* %47, i32 0, i32 0, i32 %call68, i32 %call71, %struct._GimpDrawable* %54)
  br label %return

return:                                           ; preds = %do.end.59, %if.else.52, %if.else.24, %if.else.17, %if.else.9
  ret void
}

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare void @gimp_image_set_floating_selection(%struct._GimpImage*, %struct._GimpLayer*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_fs_update(%struct._GimpLayer* %fs, i32 %x, i32 %y, i32 %width, i32 %height, %struct._GimpDrawable* %drawable) #3 {
entry:
  %fs.addr = alloca %struct._GimpLayer*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %fs_off_x = alloca i32, align 4
  %fs_off_y = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %dr_x = alloca i32, align 4
  %dr_y = alloca i32, align 4
  %dr_width = alloca i32, align 4
  %dr_height = alloca i32, align 4
  store %struct._GimpLayer* %fs, %struct._GimpLayer** %fs.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpLayer*, %struct._GimpLayer** %fs.addr, align 8
  %1 = bitcast %struct._GimpLayer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %2, i32* %fs_off_x, i32* %fs_off_y)
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %5, i32* %off_x, i32* %off_y)
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %fs_off_x, align 4
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* %fs_off_y, align 4
  %add4 = add nsw i32 %8, %9
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  %12 = load i32, i32* %off_x, align 4
  %13 = load i32, i32* %off_y, align 4
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call5)
  %16 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_item_get_width(%struct._GimpItem* %16)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_height(%struct._GimpItem* %19)
  %call11 = call i32 @gimp_rectangle_intersect(i32 %add, i32 %add4, i32 %10, i32 %11, i32 %12, i32 %13, i32 %call7, i32 %call10, i32* %dr_x, i32* %dr_y, i32* %dr_width, i32* %dr_height)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = load i32, i32* %dr_x, align 4
  %22 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %21, %22
  %23 = load i32, i32* %dr_y, align 4
  %24 = load i32, i32* %off_y, align 4
  %sub12 = sub nsw i32 %23, %24
  %25 = load i32, i32* %dr_width, align 4
  %26 = load i32, i32* %dr_height, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %20, i32 %sub, i32 %sub12, i32 %25, i32 %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_drawable_detach_floating_sel(%struct._GimpDrawable* %drawable) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %floating_sel = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_detach_floating_sel, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call %struct._GimpLayer* @gimp_drawable_get_floating_sel(%struct._GimpDrawable* %13)
  %cmp13 = icmp ne %struct._GimpLayer* %call12, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_detach_floating_sel, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %14, 2048
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.body.18
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 2048, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_detach_floating_sel, i32 0, i32 0), i32 1886, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_drawable_detach_floating_sel, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %do.body.18
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call23)
  %17 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %17)
  store %struct._GimpImage* %call25, %struct._GimpImage** %image, align 8
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %18, i32 0, i32 1
  %19 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %floating_selection = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %19, i32 0, i32 5
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_selection, align 8
  store %struct._GimpLayer* %20, %struct._GimpLayer** %floating_sel, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_sync_source_node(%struct._GimpDrawable* %21, i32 1)
  %22 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %23 = bitcast %struct._GimpLayer* %22 to i8*
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to i8*
  %call26 = call i32 @g_signal_handlers_disconnect_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpLayer*, i32, i32, i32, i32, %struct._GimpDrawable*)* @gimp_drawable_fs_update to i8*), i8* %25)
  %26 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %27 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %28 = bitcast %struct._GimpLayer* %27 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call27)
  %29 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %30 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %31 = bitcast %struct._GimpLayer* %30 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call30)
  %32 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_height(%struct._GimpItem* %32)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_fs_update(%struct._GimpLayer* %26, i32 0, i32 0, i32 %call29, i32 %call32, %struct._GimpDrawable* %33)
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_drawable_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call33)
  %36 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %36)
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_set_floating_selection(%struct._GimpImage* %37, %struct._GimpLayer* null)
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 1
  %39 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private35, align 8
  %floating_selection36 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %39, i32 0, i32 5
  store %struct._GimpLayer* null, %struct._GimpLayer** %floating_selection36, align 8
  br label %return

return:                                           ; preds = %do.end.22, %if.else.15, %if.else.9
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_class_init(%struct._GimpDrawableClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDrawableClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  store %struct._GimpDrawableClass* %klass, %struct._GimpDrawableClass** %klass.addr, align 8
  %0 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDrawableClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDrawableClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDrawableClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpDrawableClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %11, %struct._GimpItemClass** %item_class, align 8
  %12 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpDrawableClass* %12 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i64 %14, i32 1, i32 576, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__INT_INT_INT_INT, i64 4, i32 4, i64 24, i64 24, i64 24, i64 24)
  store i32 %call7, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_drawable_signals, i32 0, i64 0), align 4
  %15 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpDrawableClass* %15 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type8, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i64 %17, i32 1, i32 584, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call9, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @gimp_drawable_signals, i32 0, i64 1), align 4
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_drawable_dispose, void (%struct._GObject*)** %dispose, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %19, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_drawable_finalize, void (%struct._GObject*)** %finalize, align 8
  %20 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %20, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_drawable_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %21 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %21, i32 0, i32 5
  store i32 (%struct._GimpViewable*, i32*, i32*)* @gimp_drawable_get_size, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size, align 8
  %22 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %invalidate_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %22, i32 0, i32 3
  store void (%struct._GimpViewable*)* @gimp_drawable_invalidate_preview, void (%struct._GimpViewable*)** %invalidate_preview, align 8
  %23 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %23, i32 0, i32 8
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_drawable_get_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_preview, align 8
  %24 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %removed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %24, i32 0, i32 1
  store void (%struct._GimpItem*)* @gimp_drawable_removed, void (%struct._GimpItem*)** %removed, align 8
  %25 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %visibility_changed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %25, i32 0, i32 2
  store void (%struct._GimpItem*)* @gimp_drawable_visibility_changed, void (%struct._GimpItem*)** %visibility_changed, align 8
  %26 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %26, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpItem*, i64)* @gimp_drawable_duplicate, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %27 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %27, i32 0, i32 13
  store void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_drawable_scale, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %28 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %28, i32 0, i32 14
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)* @gimp_drawable_resize, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %29 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %29, i32 0, i32 15
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)* @gimp_drawable_flip, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %30 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %30, i32 0, i32 16
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)* @gimp_drawable_rotate, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %31 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %31, i32 0, i32 17
  store void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_drawable_transform, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)** %transform, align 8
  %32 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %get_node = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %32, i32 0, i32 20
  store %struct._GeglNode* (%struct._GimpItem*)* @gimp_drawable_get_node, %struct._GeglNode* (%struct._GimpItem*)** %get_node, align 8
  %33 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %update = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %33, i32 0, i32 1
  store void (%struct._GimpDrawable*, i32, i32, i32, i32)* @gimp_drawable_real_update, void (%struct._GimpDrawable*, i32, i32, i32, i32)** %update, align 8
  %34 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %alpha_changed = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %34, i32 0, i32 2
  store void (%struct._GimpDrawable*)* null, void (%struct._GimpDrawable*)** %alpha_changed, align 8
  %35 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %estimate_memsize = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %35, i32 0, i32 3
  store i64 (%struct._GimpDrawable*, i32, i32)* @gimp_drawable_real_estimate_memsize, i64 (%struct._GimpDrawable*, i32, i32)** %estimate_memsize, align 8
  %36 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %invalidate_boundary = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %36, i32 0, i32 4
  store void (%struct._GimpDrawable*)* null, void (%struct._GimpDrawable*)** %invalidate_boundary, align 8
  %37 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %get_active_components = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %37, i32 0, i32 5
  store void (%struct._GimpDrawable*, i32*)* null, void (%struct._GimpDrawable*, i32*)** %get_active_components, align 8
  %38 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %convert_type = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %38, i32 0, i32 6
  store void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)* @gimp_drawable_real_convert_type, void (%struct._GimpDrawable*, %struct._GimpImage*, i32, i32)** %convert_type, align 8
  %39 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %apply_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %39, i32 0, i32 7
  store void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)* @gimp_drawable_real_apply_region, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)** %apply_region, align 8
  %40 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %replace_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %40, i32 0, i32 8
  store void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)* @gimp_drawable_real_replace_region, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)** %replace_region, align 8
  %41 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %get_tiles = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %41, i32 0, i32 10
  store %struct._TileManager* (%struct._GimpDrawable*)* @gimp_drawable_real_get_tiles, %struct._TileManager* (%struct._GimpDrawable*)** %get_tiles, align 8
  %42 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %set_tiles = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %42, i32 0, i32 11
  store void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)* @gimp_drawable_real_set_tiles, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)** %set_tiles, align 8
  %43 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %push_undo = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %43, i32 0, i32 12
  store void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)* @gimp_drawable_real_push_undo, void (%struct._GimpDrawable*, i8*, %struct._TileManager*, i32, i32, i32, i32, i32)** %push_undo, align 8
  %44 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %swap_pixels = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %44, i32 0, i32 13
  store void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)* @gimp_drawable_real_swap_pixels, void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)** %swap_pixels, align 8
  %45 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %klass.addr, align 8
  %46 = bitcast %struct._GimpDrawableClass* %45 to i8*
  call void @g_type_class_add_private(i8* %46, i64 104)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__INT_INT_INT_INT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call2 = call %struct._GimpLayer* @gimp_drawable_get_floating_sel(%struct._GimpDrawable* %3)
  %tobool = icmp ne %struct._GimpLayer* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_detach_floating_sel(%struct._GimpDrawable* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** @gimp_drawable_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 80)
  %7 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  %8 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %8(%struct._GObject* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %4, i32 0, i32 1
  %5 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private2 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private2, align 8
  %tiles3 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %7, i32 0, i32 1
  %8 = load %struct._TileManager*, %struct._TileManager** %tiles3, align 8
  call void @tile_manager_unref(%struct._TileManager* %8)
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private4, align 8
  %tiles5 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %10, i32 0, i32 1
  store %struct._TileManager* null, %struct._TileManager** %tiles5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable* %11)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 1
  %13 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private6, align 8
  %source_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %13, i32 0, i32 3
  %14 = load %struct._GeglNode*, %struct._GeglNode** %source_node, align 8
  %tobool7 = icmp ne %struct._GeglNode* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 1
  %16 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private9, align 8
  %source_node10 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %16, i32 0, i32 3
  %17 = load %struct._GeglNode*, %struct._GeglNode** %source_node10, align 8
  %18 = bitcast %struct._GeglNode* %17 to i8*
  call void @g_object_unref(i8* %18)
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private11 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %19, i32 0, i32 1
  %20 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private11, align 8
  %source_node12 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %20, i32 0, i32 3
  store %struct._GeglNode* null, %struct._GeglNode** %source_node12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private14 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private14, align 8
  %preview_cache = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %22, i32 0, i32 11
  %23 = load %struct._GSList*, %struct._GSList** %preview_cache, align 8
  %tobool15 = icmp ne %struct._GSList* %23, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private17, align 8
  %preview_cache18 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %25, i32 0, i32 11
  call void @gimp_preview_cache_invalidate(%struct._GSList** %preview_cache18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.13
  %26 = load i8*, i8** @gimp_drawable_parent_class, align 8
  %27 = bitcast i8* %26 to %struct._GTypeClass*
  %call20 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %27, i64 80)
  %28 = bitcast %struct._GTypeClass* %call20 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %28, i32 0, i32 6
  %29 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %30 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %29(%struct._GObject* %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_drawable_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call2 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %3)
  %call3 = call i64 @tile_manager_get_memsize(%struct._TileManager* %call2, i32 0)
  %4 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %4, %call3
  store i64 %add, i64* %memsize, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 1
  %6 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %shadow = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %6, i32 0, i32 2
  %7 = load %struct._TileManager*, %struct._TileManager** %shadow, align 8
  %call4 = call i64 @tile_manager_get_memsize(%struct._TileManager* %7, i32 0)
  %8 = load i64, i64* %memsize, align 8
  %add5 = add nsw i64 %8, %call4
  store i64 %add5, i64* %memsize, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %9, i32 0, i32 1
  %10 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private6, align 8
  %preview_cache = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %10, i32 0, i32 11
  %11 = load %struct._GSList*, %struct._GSList** %preview_cache, align 8
  %call7 = call i64 @gimp_preview_cache_get_memsize(%struct._GSList* %11)
  %12 = load i64*, i64** %gui_size.addr, align 8
  %13 = load i64, i64* %12, align 8
  %add8 = add i64 %13, %call7
  store i64 %add8, i64* %12, align 8
  %14 = load i64, i64* %memsize, align 8
  %15 = load i8*, i8** @gimp_drawable_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call9 = call i64 @gimp_object_get_type() #6
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 %call9)
  %17 = bitcast %struct._GTypeClass* %call10 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %17, i32 0, i32 3
  %18 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %20 = load i64*, i64** %gui_size.addr, align 8
  %call11 = call i64 %18(%struct._GimpObject* %19, i64* %20)
  %add12 = add nsw i64 %14, %call11
  ret i64 %add12
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_drawable_get_size(%struct._GimpViewable* %viewable, i32* %width, i32* %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  store %struct._GimpItem* %2, %struct._GimpItem** %item, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call2 = call i32 @gimp_item_get_width(%struct._GimpItem* %3)
  %4 = load i32*, i32** %width.addr, align 8
  store i32 %call2, i32* %4, align 4
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call3 = call i32 @gimp_item_get_height(%struct._GimpItem* %5)
  %6 = load i32*, i32** %height.addr, align 8
  store i32 %call3, i32* %6, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_invalidate_preview(%struct._GimpViewable* %viewable) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load i8*, i8** @gimp_drawable_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_viewable_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpViewableClass*
  %invalidate_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %5, i32 0, i32 3
  %6 = load void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)** %invalidate_preview, align 8
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  call void %6(%struct._GimpViewable* %7)
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %preview_valid = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %9, i32 0, i32 12
  store i32 0, i32* %preview_valid, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private4 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 1
  %11 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private4, align 8
  %preview_cache = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %11, i32 0, i32 11
  %12 = load %struct._GSList*, %struct._GSList** %preview_cache, align 8
  %tobool = icmp ne %struct._GSList* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private5 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private5, align 8
  %preview_cache6 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %14, i32 0, i32 11
  call void @gimp_preview_cache_invalidate(%struct._GSList** %preview_cache6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._TempBuf* @gimp_drawable_get_preview(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_removed(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable* %3)
  %4 = load i8*, i8** @gimp_drawable_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call2)
  %6 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %removed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %6, i32 0, i32 1
  %7 = load void (%struct._GimpItem*)*, void (%struct._GimpItem*)** %removed, align 8
  %tobool = icmp ne void (%struct._GimpItem*)* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** @gimp_drawable_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call i64 @gimp_item_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call4)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GimpItemClass*
  %removed6 = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %10, i32 0, i32 1
  %11 = load void (%struct._GimpItem*)*, void (%struct._GimpItem*)** %removed6, align 8
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void %11(%struct._GimpItem* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_visibility_changed(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %node = alloca %struct._GeglNode*, align 8
  %input = alloca %struct._GeglNode*, align 8
  %output = alloca %struct._GeglNode*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GeglNode* @gimp_item_peek_node(%struct._GimpItem* %3)
  store %struct._GeglNode* %call2, %struct._GeglNode** %node, align 8
  %4 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %tobool = icmp ne %struct._GeglNode* %4, null
  br i1 %tobool, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %5 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call3 = call %struct._GeglNode* @gegl_node_get_input_proxy(%struct._GeglNode* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  store %struct._GeglNode* %call3, %struct._GeglNode** %input, align 8
  %6 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call4 = call %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0))
  store %struct._GeglNode* %call4, %struct._GeglNode** %output, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call5 = call i32 @gimp_item_get_visible(%struct._GimpItem* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.then
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %9 = bitcast %struct._GimpItem* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_layer_get_type() #6
  store i64 %call7, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.else.14

land.lhs.true.11:                                 ; preds = %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.14:                                       ; preds = %land.lhs.true.11, %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call15 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #7
  store i32 %call15, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.then.9
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.then.23

land.lhs.true.18:                                 ; preds = %if.end.16
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %22 = bitcast %struct._GimpItem* %21 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_layer_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call19)
  %23 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpLayer*
  %call21 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %23)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.28, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.18, %if.end.16
  %24 = load %struct._GeglNode*, %struct._GeglNode** %input, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %25, i32 0, i32 1
  %26 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %mode_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %26, i32 0, i32 10
  %27 = load %struct._GeglNode*, %struct._GeglNode** %mode_node, align 8
  %call24 = call i32 @gegl_node_connect_to(%struct._GeglNode* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private25, align 8
  %mode_node26 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %29, i32 0, i32 10
  %30 = load %struct._GeglNode*, %struct._GeglNode** %mode_node26, align 8
  %31 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call27 = call i32 @gegl_node_connect_to(%struct._GeglNode* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.33

if.else.28:                                       ; preds = %land.lhs.true.18, %if.then
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private29 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %32, i32 0, i32 1
  %33 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private29, align 8
  %mode_node30 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %33, i32 0, i32 10
  %34 = load %struct._GeglNode*, %struct._GeglNode** %mode_node30, align 8
  %call31 = call i32 @gegl_node_disconnect(%struct._GeglNode* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %35 = load %struct._GeglNode*, %struct._GeglNode** %input, align 8
  %36 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call32 = call i32 @gegl_node_connect_to(%struct._GeglNode* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.28, %if.then.23
  br label %return

if.end.34:                                        ; preds = %entry
  %37 = load i8*, i8** @gimp_drawable_parent_class, align 8
  %38 = bitcast i8* %37 to %struct._GTypeClass*
  %call35 = call i64 @gimp_item_get_type() #6
  %call36 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %38, i64 %call35)
  %39 = bitcast %struct._GTypeClass* %call36 to %struct._GimpItemClass*
  %visibility_changed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %39, i32 0, i32 2
  %40 = load void (%struct._GimpItem*)*, void (%struct._GimpItem*)** %visibility_changed, align 8
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void %40(%struct._GimpItem* %41)
  br label %return

return:                                           ; preds = %if.end.34, %if.end.33
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_drawable_duplicate(%struct._GimpItem* %item, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_type.addr = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %new_drawable = alloca %struct._GimpDrawable*, align 8
  %image_type = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i64 %new_type, i64* %new_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %new_type.addr, align 8
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** @gimp_drawable_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #6
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
  %call5 = call i64 @gimp_drawable_get_type() #6
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
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #7
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
  %call19 = call i64 @gimp_drawable_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %22, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_drawable_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %25, %struct._GimpDrawable** %new_drawable, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call25 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %26)
  store i32 %call25, i32* %image_type, align 4
  %27 = load i32, i32* %image_type, align 4
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_drawable, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %28, i32 0, i32 1
  %29 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %type = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %29, i32 0, i32 0
  store i32 %27, i32* %type, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_drawable, align 8
  %private28 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %30, i32 0, i32 1
  %31 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private28, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %31, i32 0, i32 1
  %32 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool29 = icmp ne %struct._TileManager* %32, null
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.then.17
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_drawable, align 8
  %private31 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 1
  %34 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private31, align 8
  %tiles32 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %34, i32 0, i32 1
  %35 = load %struct._TileManager*, %struct._TileManager** %tiles32, align 8
  call void @tile_manager_unref(%struct._TileManager* %35)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.then.17
  %36 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %call34 = call i32 @gimp_item_get_width(%struct._GimpItem* %36)
  %37 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %call35 = call i32 @gimp_item_get_height(%struct._GimpItem* %37)
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_drawable, align 8
  %call36 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %38)
  %call37 = call %struct._TileManager* @tile_manager_new(i32 %call34, i32 %call35, i32 %call36)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_drawable, align 8
  %private38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private38, align 8
  %tiles39 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %40, i32 0, i32 1
  store %struct._TileManager* %call37, %struct._TileManager** %tiles39, align 8
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call40 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %41)
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call41 = call i32 @gimp_item_get_width(%struct._GimpItem* %42)
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call42 = call i32 @gimp_item_get_height(%struct._GimpItem* %43)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call40, i32 0, i32 0, i32 %call41, i32 %call42, i32 0)
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %new_drawable, align 8
  %call43 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %44)
  %45 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %call44 = call i32 @gimp_item_get_width(%struct._GimpItem* %45)
  %46 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %call45 = call i32 @gimp_item_get_height(%struct._GimpItem* %46)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call43, i32 0, i32 0, i32 %call44, i32 %call45, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.33, %if.end.15
  %47 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  store %struct._GimpItem* %47, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.else
  %48 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %48
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_scale(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %new_offset_x, i32 %new_offset_y, i32 %interpolation_type, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32, align 4
  %new_offset_y.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %scale = alloca %struct._GeglNode*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %new_offset_x, i32* %new_offset_x.addr, align 4
  store i32 %new_offset_y, i32* %new_offset_y.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %new_width.addr, align 4
  %4 = load i32, i32* %new_height.addr, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call2 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %5)
  %call3 = call %struct._TileManager* @tile_manager_new(i32 %3, i32 %4, i32 %call2)
  store %struct._TileManager* %call3, %struct._TileManager** %new_tiles, align 8
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %6)
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call4, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call i32 @gimp_use_gegl(%struct._Gimp* %7)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call6 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %interpolation_type.addr, align 4
  %cmp = icmp ne i32 %9, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.8
  %call9 = call i64 @gegl_node_get_type() #6
  %call10 = call i8* (i64, i8*, ...) @g_object_new(i64 %call9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* null)
  %10 = bitcast i8* %call10 to %struct._GeglNode*
  store %struct._GeglNode* %10, %struct._GeglNode** %scale, align 8
  %11 = load %struct._GeglNode*, %struct._GeglNode** %scale, align 8
  %12 = load i32, i32* %interpolation_type.addr, align 4
  %call11 = call i8* @gimp_interpolation_to_gegl_filter(i32 %12) #6
  %13 = load i32, i32* %new_width.addr, align 4
  %conv = sitofp i32 %13 to double
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %14)
  %conv13 = sitofp i32 %call12 to double
  %div = fdiv double %conv, %conv13
  %15 = load i32, i32* %new_height.addr, align 4
  %conv14 = sitofp i32 %15 to double
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %16)
  %conv16 = sitofp i32 %call15 to double
  %div17 = fdiv double %conv14, %conv16
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* %call11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), double %div, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), double %div17, i8* null)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call18 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i64 10)
  %19 = load %struct._GeglNode*, %struct._GeglNode** %scale, align 8
  %20 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @gimp_drawable_apply_operation_to_tiles(%struct._GimpDrawable* %17, %struct._GimpProgress* %18, i8* %call18, %struct._GeglNode* %19, i32 1, %struct._TileManager* %20)
  %21 = load %struct._GeglNode*, %struct._GeglNode** %scale, align 8
  %22 = bitcast %struct._GeglNode* %21 to i8*
  call void @g_object_unref(i8* %22)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.8, %land.lhs.true, %entry
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call19 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %23)
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call20 = call i32 @gimp_item_get_width(%struct._GimpItem* %24)
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call21 = call i32 @gimp_item_get_height(%struct._GimpItem* %25)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call19, i32 0, i32 0, i32 %call20, i32 %call21, i32 0)
  %26 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %27 = load i32, i32* %new_width.addr, align 4
  %28 = load i32, i32* %new_height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %26, i32 0, i32 0, i32 %27, i32 %28, i32 1)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call22 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %29)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %30 = load i32, i32* %interpolation_type.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %30, %cond.false ]
  %31 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool24 = icmp ne %struct._GimpProgress* %31, null
  %cond25 = select i1 %tobool24, void (i32, i32, i32, i8*)* @gimp_progress_update_and_flush, void (i32, i32, i32, i8*)* null
  %32 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %33 = bitcast %struct._GimpProgress* %32 to i8*
  call void @scale_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i32 %cond, void (i32, i32, i32, i8*)* %cond25, i8* %33)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call26 = call i32 @gimp_item_is_attached(%struct._GimpItem* %35)
  %36 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call27 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %37)
  %38 = load i32, i32* %new_offset_x.addr, align 4
  %39 = load i32, i32* %new_offset_y.addr, align 4
  call void @gimp_drawable_set_tiles_full(%struct._GimpDrawable* %34, i32 %call26, i8* null, %struct._TileManager* %36, i32 %call27, i32 %38, i32 %39)
  %40 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %40)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_resize(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %new_offset_x = alloca i32, align 4
  %new_offset_y = alloca i32, align 4
  %copy_x = alloca i32, align 4
  %copy_y = alloca i32, align 4
  %copy_width = alloca i32, align 4
  %copy_height = alloca i32, align 4
  %intersect = alloca i32, align 4
  %bg = alloca [4 x i8], align 1
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %new_width.addr, align 4
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call i32 @gimp_item_get_width(%struct._GimpItem* %4)
  %cmp = icmp eq i32 %3, %call2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %new_height.addr, align 4
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call3 = call i32 @gimp_item_get_height(%struct._GimpItem* %6)
  %cmp4 = icmp eq i32 %5, %call3
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %7 = load i32, i32* %offset_x.addr, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %8 = load i32, i32* %offset_y.addr, align 4
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  br label %return

if.end:                                           ; preds = %land.lhs.true.7, %land.lhs.true.5, %land.lhs.true, %entry
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call9 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %9)
  %10 = load i32, i32* %offset_x.addr, align 4
  %sub = sub nsw i32 %call9, %10
  store i32 %sub, i32* %new_offset_x, align 4
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call10 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %11)
  %12 = load i32, i32* %offset_y.addr, align 4
  %sub11 = sub nsw i32 %call10, %12
  store i32 %sub11, i32* %new_offset_y, align 4
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %13)
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call13 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %14)
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call14 = call i32 @gimp_item_get_width(%struct._GimpItem* %15)
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %16)
  %17 = load i32, i32* %new_offset_x, align 4
  %18 = load i32, i32* %new_offset_y, align 4
  %19 = load i32, i32* %new_width.addr, align 4
  %20 = load i32, i32* %new_height.addr, align 4
  %call16 = call i32 @gimp_rectangle_intersect(i32 %call12, i32 %call13, i32 %call14, i32 %call15, i32 %17, i32 %18, i32 %19, i32 %20, i32* %copy_x, i32* %copy_y, i32* %copy_width, i32* %copy_height)
  store i32 %call16, i32* %intersect, align 4
  %21 = load i32, i32* %new_width.addr, align 4
  %22 = load i32, i32* %new_height.addr, align 4
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call17 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %23)
  %call18 = call %struct._TileManager* @tile_manager_new(i32 %21, i32 %22, i32 %call17)
  store %struct._TileManager* %call18, %struct._TileManager** %new_tiles, align 8
  %24 = load i32, i32* %intersect, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.22

lor.lhs.false:                                    ; preds = %if.end
  %25 = load i32, i32* %copy_width, align 4
  %26 = load i32, i32* %new_width.addr, align 4
  %cmp19 = icmp ne i32 %25, %26
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %27 = load i32, i32* %copy_height, align 4
  %28 = load i32, i32* %new_height.addr, align 4
  %cmp21 = icmp ne i32 %27, %28
  br i1 %cmp21, label %if.then.22, label %if.end.44

if.then.22:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false, %if.end
  %29 = bitcast [4 x i8]* %bg to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 4, i32 1, i1 false)
  %30 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %31 = load i32, i32* %new_width.addr, align 4
  %32 = load i32, i32* %new_height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %30, i32 0, i32 0, i32 %31, i32 %32, i32 1)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call23 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %33)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.42, label %land.lhs.true.25

land.lhs.true.25:                                 ; preds = %if.then.22
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %35, %struct._GTypeInstance** %__inst, align 8
  %call26 = call i64 @gimp_channel_get_type() #6
  store i64 %call26, i64* %__t, align 8
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %36, null
  br i1 %tobool27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.25
  store i32 0, i32* %__r, align 4
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true.25
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %38, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.34

land.lhs.true.30:                                 ; preds = %if.else
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type, align 8
  %42 = load i64, i64* %__t, align 8
  %cmp32 = icmp eq i64 %41, %42
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.30, %if.else
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %44 = load i64, i64* %__t, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %43, i64 %44) #7
  store i32 %call35, i32* %__r, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.28
  %45 = load i32, i32* %__r, align 4
  store i32 %45, i32* %tmp
  %46 = load i32, i32* %tmp
  %tobool38 = icmp ne i32 %46, 0
  br i1 %tobool38, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %if.end.37
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call40 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %47)
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call41 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %49)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @gimp_image_get_background(%struct._GimpImage* %call40, %struct._GimpContext* %48, i32 %call41, i8* %arraydecay)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.37, %if.then.22
  %arraydecay43 = getelementptr inbounds [4 x i8], [4 x i8]* %bg, i32 0, i32 0
  call void @color_region(%struct._PixelRegion* %destPR, i8* %arraydecay43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.42, %lor.lhs.false.20
  %50 = load i32, i32* %intersect, align 4
  %tobool45 = icmp ne i32 %50, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.58

land.lhs.true.46:                                 ; preds = %if.end.44
  %51 = load i32, i32* %copy_width, align 4
  %tobool47 = icmp ne i32 %51, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.58

land.lhs.true.48:                                 ; preds = %land.lhs.true.46
  %52 = load i32, i32* %copy_height, align 4
  %tobool49 = icmp ne i32 %52, 0
  br i1 %tobool49, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %land.lhs.true.48
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call51 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %53)
  %54 = load i32, i32* %copy_x, align 4
  %55 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call52 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %55)
  %sub53 = sub nsw i32 %54, %call52
  %56 = load i32, i32* %copy_y, align 4
  %57 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call54 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %57)
  %sub55 = sub nsw i32 %56, %call54
  %58 = load i32, i32* %copy_width, align 4
  %59 = load i32, i32* %copy_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call51, i32 %sub53, i32 %sub55, i32 %58, i32 %59, i32 0)
  %60 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %61 = load i32, i32* %copy_x, align 4
  %62 = load i32, i32* %new_offset_x, align 4
  %sub56 = sub nsw i32 %61, %62
  %63 = load i32, i32* %copy_y, align 4
  %64 = load i32, i32* %new_offset_y, align 4
  %sub57 = sub nsw i32 %63, %64
  %65 = load i32, i32* %copy_width, align 4
  %66 = load i32, i32* %copy_height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %60, i32 %sub56, i32 %sub57, i32 %65, i32 %66, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.50, %land.lhs.true.48, %land.lhs.true.46, %if.end.44
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %68 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call59 = call i32 @gimp_item_is_attached(%struct._GimpItem* %68)
  %69 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call60 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %70)
  %71 = load i32, i32* %new_offset_x, align 4
  %72 = load i32, i32* %new_offset_y, align 4
  call void @gimp_drawable_set_tiles_full(%struct._GimpDrawable* %67, i32 %call59, i8* null, %struct._TileManager* %69, i32 %call60, i32 %71, i32 %72)
  %73 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %73)
  br label %return

return:                                           ; preds = %if.end.58, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_flip(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %new_off_x = alloca i32, align 4
  %new_off_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %3, i32* %off_x, i32* %off_y)
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call2 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %6)
  %7 = load i32, i32* %off_x, align 4
  %8 = load i32, i32* %off_y, align 4
  %9 = load i32, i32* %flip_type.addr, align 4
  %10 = load double, double* %axis.addr, align 8
  %11 = load i32, i32* %clip_result.addr, align 4
  %call3 = call %struct._TileManager* @gimp_drawable_transform_tiles_flip(%struct._GimpDrawable* %4, %struct._GimpContext* %5, %struct._TileManager* %call2, i32 %7, i32 %8, i32 %9, double %10, i32 %11, i32* %new_off_x, i32* %new_off_y)
  store %struct._TileManager* %call3, %struct._TileManager** %tiles, align 8
  %12 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %14 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %15 = load i32, i32* %new_off_x, align 4
  %16 = load i32, i32* %new_off_y, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable* %13, %struct._TileManager* %14, i32 %15, i32 %16, i32 0)
  %17 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_rotate(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %new_off_x = alloca i32, align 4
  %new_off_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %3, i32* %off_x, i32* %off_y)
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call2 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %6)
  %7 = load i32, i32* %off_x, align 4
  %8 = load i32, i32* %off_y, align 4
  %9 = load i32, i32* %rotate_type.addr, align 4
  %10 = load double, double* %center_x.addr, align 8
  %11 = load double, double* %center_y.addr, align 8
  %12 = load i32, i32* %clip_result.addr, align 4
  %call3 = call %struct._TileManager* @gimp_drawable_transform_tiles_rotate(%struct._GimpDrawable* %4, %struct._GimpContext* %5, %struct._TileManager* %call2, i32 %7, i32 %8, i32 %9, double %10, double %11, i32 %12, i32* %new_off_x, i32* %new_off_y)
  store %struct._TileManager* %call3, %struct._TileManager** %tiles, align 8
  %13 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %15 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %16 = load i32, i32* %new_off_x, align 4
  %17 = load i32, i32* %new_off_y, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable* %14, %struct._TileManager* %15, i32 %16, i32 %17, i32 0)
  %18 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_transform(%struct._GimpItem* %item, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %new_off_x = alloca i32, align 4
  %new_off_y = alloca i32, align 4
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
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %3, i32* %off_x, i32* %off_y)
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call2 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %6)
  %7 = load i32, i32* %off_x, align 4
  %8 = load i32, i32* %off_y, align 4
  %9 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %10 = load i32, i32* %direction.addr, align 4
  %11 = load i32, i32* %interpolation_type.addr, align 4
  %12 = load i32, i32* %recursion_level.addr, align 4
  %13 = load i32, i32* %clip_result.addr, align 4
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call3 = call %struct._TileManager* @gimp_drawable_transform_tiles_affine(%struct._GimpDrawable* %4, %struct._GimpContext* %5, %struct._TileManager* %call2, i32 %7, i32 %8, %struct._GimpMatrix3* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32* %new_off_x, i32* %new_off_y, %struct._GimpProgress* %14)
  store %struct._TileManager* %call3, %struct._TileManager** %tiles, align 8
  %15 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %tobool = icmp ne %struct._TileManager* %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %18 = load i32, i32* %new_off_x, align 4
  %19 = load i32, i32* %new_off_y, align 4
  %call4 = call %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable* %16, %struct._TileManager* %17, i32 %18, i32 %19, i32 0)
  %20 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_drawable_get_node(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %node = alloca %struct._GeglNode*, align 8
  %input = alloca %struct._GeglNode*, align 8
  %output = alloca %struct._GeglNode*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load i8*, i8** @gimp_drawable_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  %get_node = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %5, i32 0, i32 20
  %6 = load %struct._GeglNode* (%struct._GimpItem*)*, %struct._GeglNode* (%struct._GimpItem*)** %get_node, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call4 = call %struct._GeglNode* %6(%struct._GimpItem* %7)
  store %struct._GeglNode* %call4, %struct._GeglNode** %node, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %mode_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %9, i32 0, i32 10
  %10 = load %struct._GeglNode*, %struct._GeglNode** %mode_node, align 8
  %cmp = icmp eq %struct._GeglNode* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_warn_message(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i32 857, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_drawable_get_node, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %11 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call5 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* null)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 1
  %13 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private6, align 8
  %mode_node7 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %13, i32 0, i32 10
  store %struct._GeglNode* %call5, %struct._GeglNode** %mode_node7, align 8
  %14 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call8 = call %struct._GeglNode* @gegl_node_get_input_proxy(%struct._GeglNode* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  store %struct._GeglNode* %call8, %struct._GeglNode** %input, align 8
  %15 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call9 = call %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0))
  store %struct._GeglNode* %call9, %struct._GeglNode** %output, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_visible(%struct._GimpItem* %18)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.39

land.lhs.true:                                    ; preds = %do.end
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst, align 8
  %call13 = call i64 @gimp_layer_get_type() #6
  store i64 %call13, i64* %__t, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool14 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool14, label %if.else.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.25

if.else.16:                                       ; preds = %land.lhs.true
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool17 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.else.22

land.lhs.true.18:                                 ; preds = %if.else.16
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %27 = load i64, i64* %__t, align 8
  %cmp20 = icmp eq i64 %26, %27
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %__r, align 4
  br label %if.end.24

if.else.22:                                       ; preds = %land.lhs.true.18, %if.else.16
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %29 = load i64, i64* %__t, align 8
  %call23 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #7
  store i32 %call23, i32* %__r, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.15
  %30 = load i32, i32* %__r, align 4
  store i32 %30, i32* %tmp
  %31 = load i32, i32* %tmp
  %tobool26 = icmp ne i32 %31, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.then.32

land.lhs.true.27:                                 ; preds = %if.end.25
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_layer_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call28)
  %34 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpLayer*
  %call30 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %34)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.else.39, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.27, %if.end.25
  %35 = load %struct._GeglNode*, %struct._GeglNode** %input, align 8
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private33 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %36, i32 0, i32 1
  %37 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private33, align 8
  %mode_node34 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %37, i32 0, i32 10
  %38 = load %struct._GeglNode*, %struct._GeglNode** %mode_node34, align 8
  %call35 = call i32 @gegl_node_connect_to(%struct._GeglNode* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %private36 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %39, i32 0, i32 1
  %40 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private36, align 8
  %mode_node37 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %40, i32 0, i32 10
  %41 = load %struct._GeglNode*, %struct._GeglNode** %mode_node37, align 8
  %42 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call38 = call i32 @gegl_node_connect_to(%struct._GeglNode* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.27, %do.end
  %43 = load %struct._GeglNode*, %struct._GeglNode** %input, align 8
  %44 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call40 = call i32 @gegl_node_connect_to(%struct._GeglNode* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), %struct._GeglNode* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.32
  %45 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %45
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_real_update(%struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %operation = alloca %struct._GObject*, align 8
  %rect = alloca %struct._GeglRectangle, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %tile_source_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %1, i32 0, i32 4
  %2 = load %struct._GeglNode*, %struct._GeglNode** %tile_source_node, align 8
  %tobool = icmp ne %struct._GeglNode* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private1 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private1, align 8
  %tile_source_node2 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %4, i32 0, i32 4
  %5 = load %struct._GeglNode*, %struct._GeglNode** %tile_source_node2, align 8
  %6 = bitcast %struct._GeglNode* %5 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), %struct._GObject** %operation, i8* null)
  %7 = load i32, i32* %x.addr, align 4
  %x3 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 0
  store i32 %7, i32* %x3, align 4
  %8 = load i32, i32* %y.addr, align 4
  %y4 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 1
  store i32 %8, i32* %y4, align 4
  %9 = load i32, i32* %width.addr, align 4
  %width5 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 2
  store i32 %9, i32* %width5, align 4
  %10 = load i32, i32* %height.addr, align 4
  %height6 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %rect, i32 0, i32 3
  store i32 %10, i32* %height6, align 4
  %11 = load %struct._GObject*, %struct._GObject** %operation, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %call = call i64 @gegl_operation_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GeglOperation*
  call void @gegl_operation_invalidate(%struct._GeglOperation* %13, %struct._GeglRectangle* %rect, i32 0)
  %14 = load %struct._GObject*, %struct._GObject** %operation, align 8
  %15 = bitcast %struct._GObject* %14 to i8*
  call void @g_object_unref(i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_viewable_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_drawable_real_estimate_memsize(%struct._GimpDrawable* %drawable, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %0)
  %conv = sext i32 %call to i64
  %1 = load i32, i32* %width.addr, align 4
  %conv1 = sext i32 %1 to i64
  %mul = mul nsw i64 %conv, %conv1
  %2 = load i32, i32* %height.addr, align 4
  %conv2 = sext i32 %2 to i64
  %mul3 = mul nsw i64 %mul, %conv2
  ret i64 %mul3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_real_convert_type(%struct._GimpDrawable* %drawable, %struct._GimpImage* %dest_image, i32 %new_base_type, i32 %push_undo) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %new_base_type.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i32 %new_base_type, i32* %new_base_type.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %new_base_type.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_drawable_real_convert_type, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0))
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %new_base_type.addr, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %do.end
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %3 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_drawable_convert_rgb(%struct._GimpDrawable* %2, i32 %3)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %do.end
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %5 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_drawable_convert_grayscale(%struct._GimpDrawable* %4, i32 %5)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.default, %sw.bb.1, %sw.bb
  ret void
}

declare void @gimp_drawable_real_apply_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32) #1

declare void @gimp_drawable_real_replace_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._TileManager* @gimp_drawable_real_get_tiles(%struct._GimpDrawable* %drawable) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %0, i32 0, i32 1
  %1 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %tiles = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %1, i32 0, i32 1
  %2 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  ret %struct._TileManager* %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_real_set_tiles(%struct._GimpDrawable* %drawable, i32 %push_undo, i8* %undo_desc, %struct._TileManager* %tiles, i32 %type, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %type.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %old_has_alpha = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call = call i32 @tile_manager_bpp(%struct._TileManager* %0)
  %1 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  br label %cond.end.21

cond.false:                                       ; preds = %do.body
  %2 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end.19

cond.false.3:                                     ; preds = %cond.false
  %3 = load i32, i32* %type.addr, align 4
  %cmp4 = icmp eq i32 %3, 3
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false.3
  br label %cond.end.17

cond.false.6:                                     ; preds = %cond.false.3
  %4 = load i32, i32* %type.addr, align 4
  %cmp7 = icmp eq i32 %4, 2
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false.6
  br label %cond.end.15

cond.false.9:                                     ; preds = %cond.false.6
  %5 = load i32, i32* %type.addr, align 4
  %cmp10 = icmp eq i32 %5, 5
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.false.9
  br label %cond.end

cond.false.12:                                    ; preds = %cond.false.9
  %6 = load i32, i32* %type.addr, align 4
  %cmp13 = icmp eq i32 %6, 4
  %cond = select i1 %cmp13, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.12, %cond.true.11
  %cond14 = phi i32 [ 2, %cond.true.11 ], [ %cond, %cond.false.12 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true.8
  %cond16 = phi i32 [ 1, %cond.true.8 ], [ %cond14, %cond.end ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end.15, %cond.true.5
  %cond18 = phi i32 [ 2, %cond.true.5 ], [ %cond16, %cond.end.15 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.true.2
  %cond20 = phi i32 [ 3, %cond.true.2 ], [ %cond18, %cond.end.17 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end.19, %cond.true
  %cond22 = phi i32 [ 4, %cond.true ], [ %cond20, %cond.end.19 ]
  %cmp23 = icmp eq i32 %call, %cond22
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.21
  br label %if.end

if.else:                                          ; preds = %cond.end.21
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_drawable_real_set_tiles, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.54

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %8 = bitcast %struct._GimpDrawable* %7 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call24)
  %9 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  store %struct._GimpItem* %9, %struct._GimpItem** %item, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call26 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %10)
  store i32 %call26, i32* %old_has_alpha, align 4
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %11)
  %12 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call28 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %13)
  %14 = load i8*, i8** %undo_desc.addr, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call29 = call %struct._GimpUndo* @gimp_image_undo_push_drawable_mod(%struct._GimpImage* %call28, i8* %14, %struct._GimpDrawable* %15, i32 0)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %do.end
  %16 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call31 = call %struct._TileManager* @tile_manager_ref(%struct._TileManager* %16)
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %17, i32 0, i32 1
  %18 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %tiles32 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %18, i32 0, i32 1
  %19 = load %struct._TileManager*, %struct._TileManager** %tiles32, align 8
  %tobool33 = icmp ne %struct._TileManager* %19, null
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.30
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private35 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %20, i32 0, i32 1
  %21 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private35, align 8
  %tiles36 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %21, i32 0, i32 1
  %22 = load %struct._TileManager*, %struct._TileManager** %tiles36, align 8
  call void @tile_manager_unref(%struct._TileManager* %22)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.30
  %23 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private38 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %24, i32 0, i32 1
  %25 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private38, align 8
  %tiles39 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %25, i32 0, i32 1
  store %struct._TileManager* %23, %struct._TileManager** %tiles39, align 8
  %26 = load i32, i32* %type.addr, align 4
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private40 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %27, i32 0, i32 1
  %28 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private40, align 8
  %type41 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %28, i32 0, i32 0
  store i32 %26, i32* %type41, align 4
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %30 = load i32, i32* %offset_x.addr, align 4
  %31 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %29, i32 %30, i32 %31)
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %33 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call42 = call i32 @tile_manager_width(%struct._TileManager* %33)
  %34 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %call43 = call i32 @tile_manager_height(%struct._TileManager* %34)
  call void @gimp_item_set_size(%struct._GimpItem* %32, i32 %call42, i32 %call43)
  %35 = load i32, i32* %old_has_alpha, align 4
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call44 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %36)
  %cmp45 = icmp ne i32 %35, %call44
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.37
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_alpha_changed(%struct._GimpDrawable* %37)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.37
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private48 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 1
  %39 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private48, align 8
  %tile_source_node = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %39, i32 0, i32 4
  %40 = load %struct._GeglNode*, %struct._GeglNode** %tile_source_node, align 8
  %tobool49 = icmp ne %struct._GeglNode* %40, null
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.47
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private51 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 1
  %42 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private51, align 8
  %tile_source_node52 = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %42, i32 0, i32 4
  %43 = load %struct._GeglNode*, %struct._GeglNode** %tile_source_node52, align 8
  %44 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call53 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %44)
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct._TileManager* %call53, i8* null)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.50, %if.end.47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_real_push_undo(%struct._GimpDrawable* %drawable, i8* %undo_desc, %struct._TileManager* %tiles, i32 %sparse, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %sparse.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %new_tiles = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %sparse, i32* %sparse.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 0, i32* %new_tiles, align 4
  %0 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %tobool = icmp ne %struct._TileManager* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %3)
  %call1 = call %struct._TileManager* @tile_manager_new(i32 %1, i32 %2, i32 %call)
  store %struct._TileManager* %call1, %struct._TileManager** %tiles.addr, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call2 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %4)
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call2, i32 %5, i32 %6, i32 %7, i32 %8, i32 0)
  %9 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %9, i32 0, i32 0, i32 %10, i32 %11, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  store i32 1, i32* %new_tiles, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call3)
  %14 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %call5 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %14)
  %15 = load i8*, i8** %undo_desc.addr, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %18 = load i32, i32* %sparse.addr, align 4
  %19 = load i32, i32* %x.addr, align 4
  %20 = load i32, i32* %y.addr, align 4
  %21 = load i32, i32* %width.addr, align 4
  %22 = load i32, i32* %height.addr, align 4
  %call6 = call %struct._GimpUndo* @gimp_image_undo_push_drawable(%struct._GimpImage* %call5, i8* %15, %struct._GimpDrawable* %16, %struct._TileManager* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %23 = load i32, i32* %new_tiles, align 4
  %tobool7 = icmp ne i32 %23, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %24 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  call void @tile_manager_unref(%struct._TileManager* %24)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_real_swap_pixels(%struct._GimpDrawable* %drawable, %struct._TileManager* %tiles, i32 %sparse, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %sparse.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %src_tile = alloca %struct._Tile*, align 8
  %dest_tile = alloca %struct._Tile*, align 8
  %PR1 = alloca %struct._PixelRegion, align 8
  %PR2 = alloca %struct._PixelRegion, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %sparse, i32* %sparse.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %sparse.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i32, i32* %height.addr, align 4
  %add = add nsw i32 %3, %4
  %cmp = icmp slt i32 %2, %add
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %x.addr, align 4
  store i32 %5, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %x.addr, align 4
  %8 = load i32, i32* %width.addr, align 4
  %add2 = add nsw i32 %7, %8
  %cmp3 = icmp slt i32 %6, %add2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %9 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %i, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %9, i32 %10, i32 %11, i32 0, i32 0)
  store %struct._Tile* %call, %struct._Tile** %src_tile, align 8
  %12 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  %call5 = call i32 @tile_is_valid(%struct._Tile* %12)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body.4
  %13 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %i, align 4
  %call8 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %13, i32 %14, i32 %15, i32 1, i32 0)
  store %struct._Tile* %call8, %struct._Tile** %src_tile, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call9 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %16)
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %i, align 4
  %call10 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %call9, i32 %17, i32 %18, i32 1, i32 0)
  store %struct._Tile* %call10, %struct._Tile** %dest_tile, align 8
  %19 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %i, align 4
  %22 = load %struct._Tile*, %struct._Tile** %dest_tile, align 8
  call void @tile_manager_map_tile(%struct._TileManager* %19, i32 %20, i32 %21, %struct._Tile* %22)
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %23)
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %i, align 4
  %26 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  call void @tile_manager_map_tile(%struct._TileManager* %call11, i32 %24, i32 %25, %struct._Tile* %26)
  %27 = load %struct._Tile*, %struct._Tile** %dest_tile, align 8
  call void @tile_release(%struct._Tile* %27, i32 0)
  %28 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  call void @tile_release(%struct._Tile* %28, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %j, align 4
  %rem = srem i32 %29, 64
  %sub = sub nsw i32 64, %rem
  %30 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %30, %sub
  store i32 %add12, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %31 = load i32, i32* %i, align 4
  %rem14 = srem i32 %31, 64
  %sub15 = sub nsw i32 64, %rem14
  %32 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %32, %sub15
  store i32 %add16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  br label %if.end.19

if.else:                                          ; preds = %entry
  %33 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %PR1, %struct._TileManager* %33, i32 0, i32 0, i32 %34, i32 %35, i32 1)
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call18 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %36)
  %37 = load i32, i32* %x.addr, align 4
  %38 = load i32, i32* %y.addr, align 4
  %39 = load i32, i32* %width.addr, align 4
  %40 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %PR2, %struct._TileManager* %call18, i32 %37, i32 %38, i32 %39, i32 %40, i32 1)
  call void @swap_region(%struct._PixelRegion* %PR1, %struct._PixelRegion* %PR2)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %for.end.17
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %42 = load i32, i32* %x.addr, align 4
  %43 = load i32, i32* %y.addr, align 4
  %44 = load i32, i32* %width.addr, align 4
  %45 = load i32, i32* %height.addr, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  ret void
}

declare void @g_type_class_add_private(i8*, i64) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

declare void @gimp_drawable_free_shadow_tiles(%struct._GimpDrawable*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_preview_cache_invalidate(%struct._GSList**) #1

declare i64 @tile_manager_get_memsize(%struct._TileManager*, i32) #1

declare i64 @gimp_preview_cache_get_memsize(%struct._GSList*) #1

declare %struct._GeglNode* @gimp_item_peek_node(%struct._GimpItem*) #1

declare %struct._GeglNode* @gegl_node_get_input_proxy(%struct._GeglNode*, i8*) #1

declare %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode*, i8*) #1

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

declare i32 @gegl_node_connect_to(%struct._GeglNode*, i8*, %struct._GeglNode*, i8*) #1

declare i32 @gegl_node_disconnect(%struct._GeglNode*, i8*) #1

declare i32 @gimp_use_gegl(%struct._Gimp*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #2

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_interpolation_to_gegl_filter(i32) #2

declare void @gimp_drawable_apply_operation_to_tiles(%struct._GimpDrawable*, %struct._GimpProgress*, i8*, %struct._GeglNode*, i32, %struct._TileManager*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @scale_region(%struct._PixelRegion*, %struct._PixelRegion*, i32, void (i32, i32, i32, i8*)*, i8*) #1

declare void @gimp_progress_update_and_flush(i32, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare void @gimp_image_get_background(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #1

declare %struct._TileManager* @gimp_drawable_transform_tiles_flip(%struct._GimpDrawable*, %struct._GimpContext*, %struct._TileManager*, i32, i32, i32, double, i32, i32*, i32*) #1

declare %struct._GimpDrawable* @gimp_drawable_transform_paste(%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_transform_tiles_rotate(%struct._GimpDrawable*, %struct._GimpContext*, %struct._TileManager*, i32, i32, i32, double, double, i32, i32*, i32*) #1

declare %struct._TileManager* @gimp_drawable_transform_tiles_affine(%struct._GimpDrawable*, %struct._GimpContext*, %struct._TileManager*, i32, i32, %struct._GimpMatrix3*, i32, i32, i32, i32, i32*, i32*, %struct._GimpProgress*) #1

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gegl_operation_invalidate(%struct._GeglOperation*, %struct._GeglRectangle*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_operation_get_type() #2

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

declare void @gimp_drawable_convert_rgb(%struct._GimpDrawable*, i32) #1

declare void @gimp_drawable_convert_grayscale(%struct._GimpDrawable*, i32) #1

declare %struct._GimpUndo* @gimp_image_undo_push_drawable_mod(%struct._GimpImage*, i8*, %struct._GimpDrawable*, i32) #1

declare %struct._TileManager* @tile_manager_ref(%struct._TileManager*) #1

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #1

declare void @gimp_item_set_size(%struct._GimpItem*, i32, i32) #1

declare %struct._GimpUndo* @gimp_image_undo_push_drawable(%struct._GimpImage*, i8*, %struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #1

declare i32 @tile_is_valid(%struct._Tile*) #1

declare void @tile_manager_map_tile(%struct._TileManager*, i32, i32, %struct._Tile*) #1

declare void @tile_release(%struct._Tile*, i32) #1

declare void @swap_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_drawable_get_pixel_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y, i8* %pixel) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixel.addr = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %pixel, i8** %pixel.addr, align 8
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %6 = bitcast %struct._GimpDrawable* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call i32 @gimp_item_get_width(%struct._GimpItem* %7)
  %cmp5 = icmp sge i32 %4, %call4
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %y.addr, align 4
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call9)
  %12 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_get_height(%struct._GimpItem* %12)
  %cmp12 = icmp sge i32 %9, %call11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call13 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %13)
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %16 = load i8*, i8** %pixel.addr, align 8
  call void @tile_manager_read_pixel_data_1(%struct._TileManager* %call13, i32 %14, i32 %15, i8* %16)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare void @tile_manager_read_pixel_data_1(%struct._TileManager*, i32, i32, i8*) #1

declare %struct._GeglNode* @gegl_node_remove_child(%struct._GeglNode*, %struct._GeglNode*) #1

declare %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode*, %struct._GeglNode*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_fs_notify(%struct._GimpLayer* %fs, %struct._GParamSpec* %pspec, %struct._GimpDrawable* %drawable) #3 {
entry:
  %fs.addr = alloca %struct._GimpLayer*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpLayer* %fs, %struct._GimpLayer** %fs.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %0, i32 0, i32 1
  %1 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 1
  %3 = load i8*, i8** %name1, align 8
  %call2 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0)) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name5 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 1
  %5 = load i8*, i8** %name5, align 8
  %call6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0)) #7
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false.8, label %if.then

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4
  %6 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name9 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %6, i32 0, i32 1
  %7 = load i8*, i8** %name9, align 8
  %call10 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0)) #7
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name13 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %8, i32 0, i32 1
  %9 = load i8*, i8** %name13, align 8
  %call14 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0)) #7
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false.4, %lor.lhs.false, %entry
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_sync_source_node(%struct._GimpDrawable* %10, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.12
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
