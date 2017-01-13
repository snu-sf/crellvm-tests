; ModuleID = './app/core/gimpitem.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type { %struct._GimpObject, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type { %struct._GimpObject, %struct._GimpIdTablePriv* }
%struct._GimpIdTablePriv = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type { %struct._GimpObject, %struct._GimpContainer* }
%struct._GError = type { i32, i32, i8* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GeglNode = type opaque
%struct._GimpItemPrivate = type { i32, i32, %struct._GimpImage*, %struct._GimpParasiteList*, i32, i32, i32, i32, i8, %struct._GeglNode*, %struct._GeglNode* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpUndo = type opaque
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_item_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpItem\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_item_new = private unnamed_addr constant [14 x i8] c"gimp_item_new\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"g_type_is_a (type, GIMP_TYPE_ITEM)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"width > 0 && height > 0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@__func__.gimp_item_removed = private unnamed_addr constant [18 x i8] c"gimp_item_removed\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"GIMP_IS_ITEM (item)\00", align 1
@gimp_item_signals = internal global [4 x i32] zeroinitializer, align 16
@__func__.gimp_item_is_removed = private unnamed_addr constant [21 x i8] c"gimp_item_is_removed\00", align 1
@__func__.gimp_item_unset_removed = private unnamed_addr constant [24 x i8] c"gimp_item_unset_removed\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gimp_item_is_removed (item)\00", align 1
@__func__.gimp_item_is_attached = private unnamed_addr constant [22 x i8] c"gimp_item_is_attached\00", align 1
@__func__.gimp_item_get_parent = private unnamed_addr constant [21 x i8] c"gimp_item_get_parent\00", align 1
@__func__.gimp_item_get_tree = private unnamed_addr constant [19 x i8] c"gimp_item_get_tree\00", align 1
@__func__.gimp_item_get_container = private unnamed_addr constant [24 x i8] c"gimp_item_get_container\00", align 1
@__func__.gimp_item_get_container_iter = private unnamed_addr constant [29 x i8] c"gimp_item_get_container_iter\00", align 1
@__func__.gimp_item_get_index = private unnamed_addr constant [20 x i8] c"gimp_item_get_index\00", align 1
@__func__.gimp_item_get_path = private unnamed_addr constant [19 x i8] c"gimp_item_get_path\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"gimp_item_is_attached (item)\00", align 1
@__func__.gimp_item_duplicate = private unnamed_addr constant [20 x i8] c"gimp_item_duplicate\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"GIMP_IS_IMAGE (private->image)\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"g_type_is_a (new_type, GIMP_TYPE_ITEM)\00", align 1
@__func__.gimp_item_convert = private unnamed_addr constant [18 x i8] c"gimp_item_convert\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"GIMP_IS_IMAGE (GET_PRIVATE (item)->image)\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"GIMP_IS_IMAGE (dest_image)\00", align 1
@__func__.gimp_item_rename = private unnamed_addr constant [17 x i8] c"gimp_item_rename\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_item_get_width = private unnamed_addr constant [20 x i8] c"gimp_item_get_width\00", align 1
@__func__.gimp_item_get_height = private unnamed_addr constant [21 x i8] c"gimp_item_get_height\00", align 1
@__func__.gimp_item_set_size = private unnamed_addr constant [19 x i8] c"gimp_item_set_size\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@__func__.gimp_item_get_offset = private unnamed_addr constant [21 x i8] c"gimp_item_get_offset\00", align 1
@__func__.gimp_item_set_offset = private unnamed_addr constant [21 x i8] c"gimp_item_set_offset\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"offset-x\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"offset-y\00", align 1
@__func__.gimp_item_get_offset_x = private unnamed_addr constant [23 x i8] c"gimp_item_get_offset_x\00", align 1
@__func__.gimp_item_get_offset_y = private unnamed_addr constant [23 x i8] c"gimp_item_get_offset_y\00", align 1
@__func__.gimp_item_translate = private unnamed_addr constant [20 x i8] c"gimp_item_translate\00", align 1
@__func__.gimp_item_check_scaling = private unnamed_addr constant [24 x i8] c"gimp_item_check_scaling\00", align 1
@__func__.gimp_item_scale = private unnamed_addr constant [16 x i8] c"gimp_item_scale\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@__func__.gimp_item_scale_by_factors = private unnamed_addr constant [27 x i8] c"gimp_item_scale_by_factors\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"%s: requested width or height scale equals zero\00", align 1
@__func__.gimp_item_scale_by_origin = private unnamed_addr constant [26 x i8] c"gimp_item_scale_by_origin\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"%s: requested width or height equals zero\00", align 1
@__func__.gimp_item_resize = private unnamed_addr constant [17 x i8] c"gimp_item_resize\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@__func__.gimp_item_flip = private unnamed_addr constant [15 x i8] c"gimp_item_flip\00", align 1
@__func__.gimp_item_rotate = private unnamed_addr constant [17 x i8] c"gimp_item_rotate\00", align 1
@__func__.gimp_item_transform = private unnamed_addr constant [20 x i8] c"gimp_item_transform\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"matrix != NULL\00", align 1
@__func__.gimp_item_stroke = private unnamed_addr constant [17 x i8] c"gimp_item_stroke\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"GIMP_IS_STROKE_OPTIONS (stroke_options)\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"paint_options == NULL || GIMP_IS_PAINT_OPTIONS (paint_options)\00", align 1
@__func__.gimp_item_to_selection = private unnamed_addr constant [23 x i8] c"gimp_item_to_selection\00", align 1
@__func__.gimp_item_get_node = private unnamed_addr constant [19 x i8] c"gimp_item_get_node\00", align 1
@__func__.gimp_item_peek_node = private unnamed_addr constant [20 x i8] c"gimp_item_peek_node\00", align 1
@__func__.gimp_item_get_offset_node = private unnamed_addr constant [26 x i8] c"gimp_item_get_offset_node\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"gegl:translate\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@__func__.gimp_item_get_ID = private unnamed_addr constant [17 x i8] c"gimp_item_get_ID\00", align 1
@__func__.gimp_item_get_by_ID = private unnamed_addr constant [20 x i8] c"gimp_item_get_by_ID\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.gimp_item_get_tattoo = private unnamed_addr constant [21 x i8] c"gimp_item_get_tattoo\00", align 1
@__func__.gimp_item_set_tattoo = private unnamed_addr constant [21 x i8] c"gimp_item_set_tattoo\00", align 1
@__func__.gimp_item_get_image = private unnamed_addr constant [20 x i8] c"gimp_item_get_image\00", align 1
@__func__.gimp_item_set_image = private unnamed_addr constant [20 x i8] c"gimp_item_set_image\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"! gimp_item_is_attached (item)\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"! gimp_item_is_removed (item)\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@__func__.gimp_item_replace_item = private unnamed_addr constant [23 x i8] c"gimp_item_replace_item\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"GIMP_IS_ITEM (replace)\00", align 1
@__func__.gimp_item_set_parasites = private unnamed_addr constant [24 x i8] c"gimp_item_set_parasites\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"GIMP_IS_PARASITE_LIST (parasites)\00", align 1
@__func__.gimp_item_get_parasites = private unnamed_addr constant [24 x i8] c"gimp_item_get_parasites\00", align 1
@__func__.gimp_item_parasite_attach = private unnamed_addr constant [26 x i8] c"gimp_item_parasite_attach\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"parasite != NULL\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"undo-type\04Attach Parasite\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"undo-type\04Attach Parasite to Item\00", align 1
@__func__.gimp_item_parasite_detach = private unnamed_addr constant [26 x i8] c"gimp_item_parasite_detach\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"undo-type\04Remove Parasite from Item\00", align 1
@__func__.gimp_item_parasite_find = private unnamed_addr constant [24 x i8] c"gimp_item_parasite_find\00", align 1
@__func__.gimp_item_parasite_list = private unnamed_addr constant [24 x i8] c"gimp_item_parasite_list\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"count != NULL\00", align 1
@__func__.gimp_item_set_visible = private unnamed_addr constant [22 x i8] c"gimp_item_set_visible\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@__func__.gimp_item_get_visible = private unnamed_addr constant [22 x i8] c"gimp_item_get_visible\00", align 1
@__func__.gimp_item_is_visible = private unnamed_addr constant [21 x i8] c"gimp_item_is_visible\00", align 1
@__func__.gimp_item_set_linked = private unnamed_addr constant [21 x i8] c"gimp_item_set_linked\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"linked\00", align 1
@__func__.gimp_item_get_linked = private unnamed_addr constant [21 x i8] c"gimp_item_get_linked\00", align 1
@__func__.gimp_item_set_lock_content = private unnamed_addr constant [27 x i8] c"gimp_item_set_lock_content\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"gimp_item_can_lock_content (item)\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"lock-content\00", align 1
@__func__.gimp_item_get_lock_content = private unnamed_addr constant [27 x i8] c"gimp_item_get_lock_content\00", align 1
@__func__.gimp_item_can_lock_content = private unnamed_addr constant [27 x i8] c"gimp_item_can_lock_content\00", align 1
@__func__.gimp_item_is_content_locked = private unnamed_addr constant [28 x i8] c"gimp_item_is_content_locked\00", align 1
@__func__.gimp_item_mask_bounds = private unnamed_addr constant [22 x i8] c"gimp_item_mask_bounds\00", align 1
@__func__.gimp_item_mask_intersect = private unnamed_addr constant [25 x i8] c"gimp_item_mask_intersect\00", align 1
@__func__.gimp_item_is_in_set = private unnamed_addr constant [20 x i8] c"gimp_item_is_in_set\00", align 1
@gimp_item_parent_class = internal global i8* null, align 8
@GimpItem_private_offset = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"visibility-changed\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"linked-changed\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"lock-content-changed\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"gimpitem.c\00", align 1
@__func__.gimp_item_constructed = private unnamed_addr constant [22 x i8] c"gimp_item_constructed\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"private->ID != 0\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@__func__.gimp_item_real_duplicate = private unnamed_addr constant [25 x i8] c"gimp_item_real_duplicate\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"%s copy\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_item_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_item_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_item_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 576, void (i8*, i8*)* bitcast (void (i8*)* @gimp_item_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpItem*)* @gimp_item_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_item_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_item_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_item_parent_class, align 8
  %1 = load i32, i32* @GimpItem_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpItem_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpItemClass*
  call void @gimp_item_class_init(%struct._GimpItemClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_init(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  call void @g_object_force_floating(%struct._GObject* %5)
  %6 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %ID = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %6, i32 0, i32 0
  store i32 0, i32* %ID, align 4
  %7 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %tattoo = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %7, i32 0, i32 1
  store i32 0, i32* %tattoo, align 4
  %8 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %8, i32 0, i32 2
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpParasiteList* @gimp_parasite_list_new()
  %9 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %9, i32 0, i32 3
  store %struct._GimpParasiteList* %call3, %struct._GimpParasiteList** %parasites, align 8
  %10 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %10, i32 0, i32 4
  store i32 0, i32* %width, align 4
  %11 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %11, i32 0, i32 5
  store i32 0, i32* %height, align 4
  %12 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %12, i32 0, i32 6
  store i32 0, i32* %offset_x, align 4
  %13 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %13, i32 0, i32 7
  store i32 0, i32* %offset_y, align 4
  %14 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %visible = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %14, i32 0, i32 8
  %bf.load = load i8, i8* %visible, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %visible, align 8
  %15 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %linked = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 8
  %bf.load4 = load i8, i8* %linked, align 8
  %bf.clear5 = and i8 %bf.load4, -3
  store i8 %bf.clear5, i8* %linked, align 8
  %16 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %lock_content = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %16, i32 0, i32 8
  %bf.load6 = load i8, i8* %lock_content, align 8
  %bf.clear7 = and i8 %bf.load6, -5
  store i8 %bf.clear7, i8* %lock_content, align 8
  %17 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %removed = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %17, i32 0, i32 8
  %bf.load8 = load i8, i8* %removed, align 8
  %bf.clear9 = and i8 %bf.load8, -9
  store i8 %bf.clear9, i8* %removed, align 8
  %18 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %18, i32 0, i32 9
  store %struct._GeglNode* null, %struct._GeglNode** %node, align 8
  %19 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_node = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %19, i32 0, i32 10
  store %struct._GeglNode* null, %struct._GeglNode** %offset_node, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_new(i64 %type, %struct._GimpImage* %image, i8* %name, i32 %offset_x, i32 %offset_y, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %type.addr = alloca i64, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %name.addr = alloca i8*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
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
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %type.addr, align 8
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i32 @g_type_is_a(i64 %0, i64 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_item_new, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_image_get_type() #8
  store i64 %call3, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool4, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %do.body.2
  store i32 0, i32* %__r, align 4
  br label %if.end.13

if.else.6:                                        ; preds = %do.body.2
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool7 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else.6
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.12

if.else.10:                                       ; preds = %land.lhs.true, %if.else.6
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #9
  store i32 %call11, i32* %__r, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.5
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13
  br label %if.end.17

if.else.16:                                       ; preds = %if.end.13
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_item_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_item_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %16 = load i64, i64* %type.addr, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call27 = call i8* (i64, i8*, ...) @g_object_new(i64 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._GimpImage* %17, i8* null)
  %18 = bitcast i8* %call27 to %struct._GimpItem*
  store %struct._GimpItem* %18, %struct._GimpItem** %item, align 8
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %20 = bitcast %struct._GimpItem* %19 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #8
  %call29 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %20, i64 %call28)
  %21 = bitcast i8* %call29 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %21, %struct._GimpItemPrivate** %private, align 8
  %22 = load i32, i32* %width.addr, align 4
  %23 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width30 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %23, i32 0, i32 4
  store i32 %22, i32* %width30, align 4
  %24 = load i32, i32* %height.addr, align 4
  %25 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height31 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %25, i32 0, i32 5
  store i32 %24, i32* %height31, align 4
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %27 = load i32, i32* %offset_x.addr, align 4
  %28 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %26, i32 %27, i32 %28)
  %29 = load i8*, i8** %name.addr, align 8
  %tobool32 = icmp ne i8* %29, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.39

land.lhs.true.33:                                 ; preds = %do.end.26
  %30 = load i8*, i8** %name.addr, align 8
  %call34 = call i64 @strlen(i8* %30) #9
  %tobool35 = icmp ne i64 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.39

if.then.36:                                       ; preds = %land.lhs.true.33
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %32 = bitcast %struct._GimpItem* %31 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_object_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call37)
  %33 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpObject*
  %34 = load i8*, i8** %name.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %33, i8* %34)
  br label %if.end.43

if.else.39:                                       ; preds = %land.lhs.true.33, %do.end.26
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %36 = bitcast %struct._GimpItem* %35 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_object_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call40)
  %37 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpObject*
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %39 = bitcast %struct._GimpItem* %38 to %struct._GTypeInstance*
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %41 = bitcast %struct._GTypeClass* %40 to %struct._GimpItemClass*
  %default_name = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %41, i32 0, i32 21
  %42 = load i8*, i8** %default_name, align 8
  call void @gimp_object_set_static_name(%struct._GimpObject* %37, i8* %42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.39, %if.then.36
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  store %struct._GimpItem* %43, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.else.24, %if.else.16, %if.else
  %44 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %44
}

declare i32 @g_type_is_a(i64, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_set_offset(%struct._GimpItem* %item, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_set_offset, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %15, %struct._GimpItemPrivate** %private, align 8
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %18)
  %19 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x14 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %19, i32 0, i32 6
  %20 = load i32, i32* %offset_x14, align 4
  %21 = load i32, i32* %offset_x.addr, align 4
  %cmp15 = icmp ne i32 %20, %21
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %do.end
  %22 = load i32, i32* %offset_x.addr, align 4
  %23 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x17 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %23, i32 0, i32 6
  store i32 %22, i32* %offset_x17, align 4
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %25 = bitcast %struct._GimpItem* %24 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %do.end
  %27 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y20 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %27, i32 0, i32 7
  %28 = load i32, i32* %offset_y20, align 4
  %29 = load i32, i32* %offset_y.addr, align 4
  %cmp21 = icmp ne i32 %28, %29
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.19
  %30 = load i32, i32* %offset_y.addr, align 4
  %31 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y23 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %31, i32 0, i32 7
  store i32 %30, i32* %offset_y23, align 4
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %33 = bitcast %struct._GimpItem* %32 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.19
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_sync_offset_node(%struct._GimpItem* %35)
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %37 = bitcast %struct._GimpItem* %36 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %38)
  br label %return

return:                                           ; preds = %if.end.25, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_removed(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_item_removed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %removed = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 8
  %bf.load = load i8, i8* %removed, align 8
  %bf.clear = and i8 %bf.load, -9
  %bf.set = or i8 %bf.clear, 8
  store i8 %bf.set, i8* %removed, align 8
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_viewable_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpViewable*
  %call15 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %18)
  store %struct._GimpContainer* %call15, %struct._GimpContainer** %children, align 8
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool16 = icmp ne %struct._GimpContainer* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  call void @gimp_container_foreach(%struct._GimpContainer* %20, void (i8*, i8*)* bitcast (void (%struct._GimpItem*)* @gimp_item_removed to void (i8*, i8*)*), i8* null)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %do.end
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %22 = bitcast %struct._GimpItem* %21 to i8*
  %23 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gimp_item_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %22, i32 %23, i32 0)
  br label %return

return:                                           ; preds = %if.end.18, %if.else.9
  ret void
}

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_is_removed(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_is_removed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %removed = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 8
  %bf.load = load i8, i8* %removed, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_item_unset_removed(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %children = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_unset_removed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_removed(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_unset_removed, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.31

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #8
  %call19 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call18)
  %16 = bitcast i8* %call19 to %struct._GimpItemPrivate*
  %removed = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %16, i32 0, i32 8
  %bf.load = load i8, i8* %removed, align 8
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, i8* %removed, align 8
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %18 = bitcast %struct._GimpItem* %17 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_viewable_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call20)
  %19 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpViewable*
  %call22 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %19)
  store %struct._GimpContainer* %call22, %struct._GimpContainer** %children, align 8
  %20 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  %tobool23 = icmp ne %struct._GimpContainer* %20, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.end.17
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %children, align 8
  call void @gimp_container_foreach(%struct._GimpContainer* %21, void (i8*, i8*)* bitcast (void (%struct._GimpItem*)* @gimp_item_unset_removed to void (i8*, i8*)*), i8* null)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %do.end.17
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %23 = bitcast %struct._GimpItem* %22 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %25 = bitcast %struct._GTypeClass* %24 to %struct._GimpItemClass*
  %unset_removed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %25, i32 0, i32 5
  %26 = load void (%struct._GimpItem*)*, void (%struct._GimpItem*)** %unset_removed, align 8
  %tobool27 = icmp ne void (%struct._GimpItem*)* %26, null
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.25
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %28 = bitcast %struct._GimpItem* %27 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %30 = bitcast %struct._GTypeClass* %29 to %struct._GimpItemClass*
  %unset_removed30 = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %30, i32 0, i32 5
  %31 = load void (%struct._GimpItem*)*, void (%struct._GimpItem*)** %unset_removed30, align 8
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void %31(%struct._GimpItem* %32)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.9, %if.else.15, %if.then.28, %if.end.25
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_is_attached(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_is_attached, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call11 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %13)
  store %struct._GimpItem* %call11, %struct._GimpItem** %parent, align 8
  %14 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %tobool12 = icmp ne %struct._GimpItem* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  store i32 %call14, i32* %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpItemClass*
  %is_attached = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %19, i32 0, i32 6
  %20 = load i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)** %is_attached, align 8
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call17 = call i32 %20(%struct._GimpItem* %21)
  store i32 %call17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.13, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_get_parent, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  %call13 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %15)
  %16 = bitcast %struct._GimpViewable* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  store %struct._GimpItem* %17, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %18
}

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GimpItemTree*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_item_get_tree, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpItemTree* null, %struct._GimpItemTree** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpItemClass*
  %get_tree = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %16, i32 0, i32 8
  %17 = load %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)** %get_tree, align 8
  %tobool12 = icmp ne %struct._GimpItemTree* (%struct._GimpItem*)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %19 = bitcast %struct._GimpItem* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpItemClass*
  %get_tree15 = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %21, i32 0, i32 8
  %22 = load %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)** %get_tree15, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call16 = call %struct._GimpItemTree* %22(%struct._GimpItem* %23)
  store %struct._GimpItemTree* %call16, %struct._GimpItemTree** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  store %struct._GimpItemTree* null, %struct._GimpItemTree** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.else.9
  %24 = load %struct._GimpItemTree*, %struct._GimpItemTree** %retval
  ret %struct._GimpItemTree* %24
}

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  %tree = alloca %struct._GimpItemTree*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_get_container, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call11 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %13)
  store %struct._GimpItem* %call11, %struct._GimpItem** %parent, align 8
  %14 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %tobool12 = icmp ne %struct._GimpItem* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %16 = bitcast %struct._GimpItem* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_viewable_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpViewable*
  %call16 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %17)
  store %struct._GimpContainer* %call16, %struct._GimpContainer** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call18 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %18)
  store %struct._GimpItemTree* %call18, %struct._GimpItemTree** %tree, align 8
  %19 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %tobool19 = icmp ne %struct._GimpItemTree* %19, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %20 = load %struct._GimpItemTree*, %struct._GimpItemTree** %tree, align 8
  %container = getelementptr inbounds %struct._GimpItemTree, %struct._GimpItemTree* %20, i32 0, i32 1
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  store %struct._GimpContainer* %21, %struct._GimpContainer** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.13, %if.else.9
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %22
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_item_get_container_iter(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_item_get_container_iter, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call11 = call %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %13)
  store %struct._GimpContainer* %call11, %struct._GimpContainer** %container, align 8
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool12 = icmp ne %struct._GimpContainer* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %16 = bitcast %struct._GimpContainer* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_list_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpList*
  %list = getelementptr inbounds %struct._GimpList, %struct._GimpList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %18, %struct._GList** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.else.9
  %19 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %19
}

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_index(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_get_index, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call11 = call %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %13)
  store %struct._GimpContainer* %call11, %struct._GimpContainer** %container, align 8
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool12 = icmp ne %struct._GimpContainer* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_object_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpObject*
  %call16 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %15, %struct._GimpObject* %18)
  store i32 %call16, i32* %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.else.9
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_item_get_path(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %path = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GList* null, %struct._GList** %path, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_item_get_path, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_item_get_path, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call18 = call %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %14)
  store %struct._GimpContainer* %call18, %struct._GimpContainer** %container, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %do.end.17
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %tobool19 = icmp ne %struct._GimpContainer* %15, null
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %18 = bitcast %struct._GimpItem* %17 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_object_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call21)
  %19 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpObject*
  %call23 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %16, %struct._GimpObject* %19)
  store i32 %call23, i32* %index, align 4
  %20 = load %struct._GList*, %struct._GList** %path, align 8
  %21 = load i32, i32* %index, align 4
  %conv = zext i32 %21 to i64
  %22 = inttoptr i64 %conv to i8*
  %call24 = call %struct._GList* @g_list_prepend(%struct._GList* %20, i8* %22)
  store %struct._GList* %call24, %struct._GList** %path, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call25 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %23)
  store %struct._GimpItem* %call25, %struct._GimpItem** %item.addr, align 8
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %tobool26 = icmp ne %struct._GimpItem* %24, null
  br i1 %tobool26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %while.body
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call28 = call %struct._GimpContainer* @gimp_item_get_container(%struct._GimpItem* %25)
  store %struct._GimpContainer* %call28, %struct._GimpContainer** %container, align 8
  br label %if.end.30

if.else.29:                                       ; preds = %while.body
  store %struct._GimpContainer* null, %struct._GimpContainer** %container, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct._GList*, %struct._GList** %path, align 8
  store %struct._GList* %26, %struct._GList** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.15, %if.else.9
  %27 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %27
}

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %item, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_type.addr = alloca i64, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i64 %new_type, i64* %new_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %15, %struct._GimpItemPrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %16, i32 0, i32 2
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = bitcast %struct._GimpImage* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst15, align 8
  %call18 = call i64 @gimp_image_get_type() #8
  store i64 %call18, i64* %__t17, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %do.body.13
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %do.body.13
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %tobool25 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type28, align 8
  %25 = load i64, i64* %__t17, align 8
  %cmp29 = icmp eq i64 %24, %25
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %__r20, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true.26, %if.else.23
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %27 = load i64, i64* %__t17, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #9
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %28 = load i32, i32* %__r20, align 4
  store i32 %28, i32* %tmp35
  %29 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.34
  br label %if.end.39

if.else.38:                                       ; preds = %if.end.34
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %30 = load i64, i64* %new_type.addr, align 8
  %call42 = call i64 @gimp_item_get_type() #8
  %call43 = call i32 @g_type_is_a(i64 %30, i64 %call42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.41
  br label %if.end.47

if.else.46:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %32 = bitcast %struct._GimpItem* %31 to %struct._GTypeInstance*
  %g_class49 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class49, align 8
  %34 = bitcast %struct._GTypeClass* %33 to %struct._GimpItemClass*
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %34, i32 0, i32 9
  %35 = load %struct._GimpItem* (%struct._GimpItem*, i64)*, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %36 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %37 = load i64, i64* %new_type.addr, align 8
  %call50 = call %struct._GimpItem* %35(%struct._GimpItem* %36, i64 %37)
  store %struct._GimpItem* %call50, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %do.end.48, %if.else.46, %if.else.38, %if.else.9
  %38 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %38
}

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %item, %struct._GimpImage* %dest_image, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %new_type.addr = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %__inst43 = alloca %struct._GTypeInstance*, align 8
  %__t45 = alloca i64, align 8
  %__r48 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  store i64 %new_type, i64* %new_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_item_convert, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #8
  %call15 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast i8* %call15 to %struct._GimpItemPrivate*
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %17 = bitcast %struct._GimpImage* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst13, align 8
  %call18 = call i64 @gimp_image_get_type() #8
  store i64 %call18, i64* %__t17, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %do.body.11
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %do.body.11
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %tobool25 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type28, align 8
  %24 = load i64, i64* %__t17, align 8
  %cmp29 = icmp eq i64 %23, %24
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %__r20, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true.26, %if.else.23
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %26 = load i64, i64* %__t17, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #9
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %27 = load i32, i32* %__r20, align 4
  store i32 %27, i32* %tmp35
  %28 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %28, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.34
  br label %if.end.39

if.else.38:                                       ; preds = %if.end.34
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_item_convert, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %29 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %30 = bitcast %struct._GimpImage* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst43, align 8
  %call46 = call i64 @gimp_image_get_type() #8
  store i64 %call46, i64* %__t45, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %tobool49 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool49, label %if.else.51, label %if.then.50

if.then.50:                                       ; preds = %do.body.41
  store i32 0, i32* %__r48, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %do.body.41
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %tobool53 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.59

land.lhs.true.54:                                 ; preds = %if.else.51
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %g_class55 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class55, align 8
  %g_type56 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type56, align 8
  %37 = load i64, i64* %__t45, align 8
  %cmp57 = icmp eq i64 %36, %37
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %__r48, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %land.lhs.true.54, %if.else.51
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst43, align 8
  %39 = load i64, i64* %__t45, align 8
  %call60 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #9
  store i32 %call60, i32* %__r48, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  %40 = load i32, i32* %__r48, align 4
  store i32 %40, i32* %tmp63
  %41 = load i32, i32* %tmp63
  %tobool64 = icmp ne i32 %41, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.62
  br label %if.end.67

if.else.66:                                       ; preds = %if.end.62
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_item_convert, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.67:                                        ; preds = %if.then.65
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %42 = load i64, i64* %new_type.addr, align 8
  %call70 = call i64 @gimp_item_get_type() #8
  %call71 = call i32 @g_type_is_a(i64 %42, i64 %call70)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.69
  br label %if.end.75

if.else.74:                                       ; preds = %do.body.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_item_convert, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.75:                                        ; preds = %if.then.73
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %44 = load i64, i64* %new_type.addr, align 8
  %call77 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %43, i64 %44)
  store %struct._GimpItem* %call77, %struct._GimpItem** %new_item, align 8
  %45 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %tobool78 = icmp ne %struct._GimpItem* %45, null
  br i1 %tobool78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %do.end.76
  %46 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %47 = bitcast %struct._GimpItem* %46 to %struct._GTypeInstance*
  %g_class80 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class80, align 8
  %49 = bitcast %struct._GTypeClass* %48 to %struct._GimpItemClass*
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %49, i32 0, i32 10
  %50 = load void (%struct._GimpItem*, %struct._GimpImage*)*, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %51 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %52 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  call void %50(%struct._GimpItem* %51, %struct._GimpImage* %52)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %do.end.76
  %53 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  store %struct._GimpItem* %53, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.else.74, %if.else.66, %if.else.38, %if.else.9
  %54 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %54
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_rename(%struct._GimpItem* %item, i8* %new_name, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_rename, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_rename, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %19, %struct._GimpItemClass** %item_class, align 8
  %20 = load i8*, i8** %new_name.addr, align 8
  %tobool19 = icmp ne i8* %20, null
  br i1 %tobool19, label %lor.lhs.false.20, label %if.then.22

lor.lhs.false.20:                                 ; preds = %do.end.17
  %21 = load i8*, i8** %new_name.addr, align 8
  %22 = load i8, i8* %21, align 1
  %tobool21 = icmp ne i8 %22, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false.20, %do.end.17
  %23 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %default_name = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %23, i32 0, i32 21
  %24 = load i8*, i8** %default_name, align 8
  store i8* %24, i8** %new_name.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %lor.lhs.false.20
  %25 = load i8*, i8** %new_name.addr, align 8
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %27 = bitcast %struct._GimpItem* %26 to i8*
  %call24 = call i8* @gimp_object_get_name(i8* %27)
  %call25 = call i32 @strcmp(i8* %25, i8* %call24) #9
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %28 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %28, i32 0, i32 11
  %29 = load i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)** %rename, align 8
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %31 = load i8*, i8** %new_name.addr, align 8
  %32 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %32, i32 0, i32 22
  %33 = load i8*, i8** %rename_desc, align 8
  %34 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call28 = call i32 %29(%struct._GimpItem* %30, i8* %31, i8* %33, %struct._GError** %34)
  store i32 %call28, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.23
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.27, %if.else.15, %if.else.9
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_width(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_get_width, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %width = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 4
  %16 = load i32, i32* %width, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_height(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_get_height, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %height = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 5
  %16 = load i32, i32* %height, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_item_set_size(%struct._GimpItem* %item, i32 %width, i32 %height) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_item_set_size, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.34

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %15, %struct._GimpItemPrivate** %private, align 8
  %16 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width13 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %16, i32 0, i32 4
  %17 = load i32, i32* %width13, align 4
  %18 = load i32, i32* %width.addr, align 4
  %cmp14 = icmp ne i32 %17, %18
  br i1 %cmp14, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %19 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height15 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %19, i32 0, i32 5
  %20 = load i32, i32* %height15, align 4
  %21 = load i32, i32* %height.addr, align 4
  %cmp16 = icmp ne i32 %20, %21
  br i1 %cmp16, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %lor.lhs.false, %do.end
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %23 = bitcast %struct._GimpItem* %22 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %24)
  %25 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width19 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %25, i32 0, i32 4
  %26 = load i32, i32* %width19, align 4
  %27 = load i32, i32* %width.addr, align 4
  %cmp20 = icmp ne i32 %26, %27
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.then.17
  %28 = load i32, i32* %width.addr, align 4
  %29 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width22 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %29, i32 0, i32 4
  store i32 %28, i32* %width22, align 4
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %31 = bitcast %struct._GimpItem* %30 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.then.17
  %33 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height25 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %33, i32 0, i32 5
  %34 = load i32, i32* %height25, align 4
  %35 = load i32, i32* %height.addr, align 4
  %cmp26 = icmp ne i32 %34, %35
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.24
  %36 = load i32, i32* %height.addr, align 4
  %37 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height28 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %37, i32 0, i32 5
  store i32 %36, i32* %height28, align 4
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %39 = bitcast %struct._GimpItem* %38 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.24
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %42 = bitcast %struct._GimpItem* %41 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %43)
  %44 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %45 = bitcast %struct._GimpItem* %44 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_viewable_get_type() #8
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call32)
  %46 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpViewable*
  call void @gimp_viewable_size_changed(%struct._GimpViewable* %46)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.9, %if.end.30, %lor.lhs.false
  ret void
}

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare void @gimp_viewable_size_changed(%struct._GimpViewable*) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_get_offset(%struct._GimpItem* %item, i32* %offset_x, i32* %offset_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %offset_x.addr = alloca i32*, align 8
  %offset_y.addr = alloca i32*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32* %offset_x, i32** %offset_x.addr, align 8
  store i32* %offset_y, i32** %offset_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_get_offset, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %15, %struct._GimpItemPrivate** %private, align 8
  %16 = load i32*, i32** %offset_x.addr, align 8
  %tobool13 = icmp ne i32* %16, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x15 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %17, i32 0, i32 6
  %18 = load i32, i32* %offset_x15, align 4
  %19 = load i32*, i32** %offset_x.addr, align 8
  store i32 %18, i32* %19, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.end
  %20 = load i32*, i32** %offset_y.addr, align 8
  %tobool17 = icmp ne i32* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %21 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y19 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %21, i32 0, i32 7
  %22 = load i32, i32* %offset_y19, align 4
  %23 = load i32*, i32** %offset_y.addr, align 8
  store i32 %22, i32* %23, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.18, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_sync_offset_node(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %3 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_node = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %3, i32 0, i32 10
  %4 = load %struct._GeglNode*, %struct._GeglNode** %offset_node, align 8
  %tobool = icmp ne %struct._GeglNode* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_node2 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %5, i32 0, i32 10
  %6 = load %struct._GeglNode*, %struct._GeglNode** %offset_node2, align 8
  %7 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %7, i32 0, i32 6
  %8 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %8 to double
  %9 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %9, i32 0, i32 7
  %10 = load i32, i32* %offset_y, align 4
  %conv3 = sitofp i32 %10 to double
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), double %conv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), double %conv3, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_offset_x(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_item_get_offset_x, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %offset_x = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 6
  %16 = load i32, i32* %offset_x, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_offset_y(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_item_get_offset_y, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %offset_y = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 7
  %16 = load i32, i32* %offset_y, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_item_translate(%struct._GimpItem* %item, i32 %offset_x, i32 %offset_y, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %item_class = alloca %struct._GimpItemClass*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_translate, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.24

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %16, %struct._GimpItemClass** %item_class, align 8
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %17)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %19 = load i32, i32* %push_undo.addr, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %21, i32 0, i32 23
  %22 = load i8*, i8** %translate_desc, align 8
  %call19 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %20, i32 20, i8* %22)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %23 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %23, i32 0, i32 12
  %24 = load void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32)** %translate, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %26 = load i32, i32* %offset_x.addr, align 4
  %27 = load i32, i32* %offset_y.addr, align 4
  %28 = load i32, i32* %push_undo.addr, align 4
  call void %24(%struct._GimpItem* %25, i32 %26, i32 %27, i32 %28)
  %29 = load i32, i32* %push_undo.addr, align 4
  %tobool21 = icmp ne i32 %29, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %30)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.9, %if.then.22, %if.end.20
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_get_image, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %16, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %17
}

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_check_scaling(%struct._GimpItem* %item, i32 %new_width, i32 %new_height) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %img_scale_w = alloca double, align 8
  %img_scale_h = alloca double, align 8
  %new_item_width = alloca i32, align 4
  %new_item_height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_check_scaling, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call11 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %13)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %14 = load i32, i32* %new_width.addr, align 4
  %conv = sitofp i32 %14 to double
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call12 = call i32 @gimp_image_get_width(%struct._GimpImage* %15)
  %conv13 = sitofp i32 %call12 to double
  %div = fdiv double %conv, %conv13
  store double %div, double* %img_scale_w, align 8
  %16 = load i32, i32* %new_height.addr, align 4
  %conv14 = sitofp i32 %16 to double
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i32 @gimp_image_get_height(%struct._GimpImage* %17)
  %conv16 = sitofp i32 %call15 to double
  %div17 = fdiv double %conv14, %conv16
  store double %div17, double* %img_scale_h, align 8
  %18 = load double, double* %img_scale_w, align 8
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call18 = call i32 @gimp_item_get_width(%struct._GimpItem* %19)
  %conv19 = sitofp i32 %call18 to double
  %mul = fmul double %18, %conv19
  %add = fadd double %mul, 5.000000e-01
  %conv20 = fptosi double %add to i32
  store i32 %conv20, i32* %new_item_width, align 4
  %20 = load double, double* %img_scale_h, align 8
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call21 = call i32 @gimp_item_get_height(%struct._GimpItem* %21)
  %conv22 = sitofp i32 %call21 to double
  %mul23 = fmul double %20, %conv22
  %add24 = fadd double %mul23, 5.000000e-01
  %conv25 = fptosi double %add24 to i32
  store i32 %conv25, i32* %new_item_height, align 4
  %22 = load i32, i32* %new_item_width, align 4
  %cmp26 = icmp sgt i32 %22, 0
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end
  %23 = load i32, i32* %new_item_height, align 4
  %cmp28 = icmp sgt i32 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %24 = phi i1 [ false, %do.end ], [ %cmp28, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.else.9
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_scale(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %new_offset_x, i32 %new_offset_y, i32 %interpolation, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32, align 4
  %new_offset_y.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %new_offset_x, i32* %new_offset_x.addr, align 4
  store i32 %new_offset_y, i32* %new_offset_y.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_item_scale, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.58

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp12 = icmp eq %struct._GimpProgress* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = bitcast %struct._GimpProgress* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_progress_interface_get_type() #8
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_item_scale, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.58

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load i32, i32* %new_width.addr, align 4
  %cmp40 = icmp slt i32 %27, 1
  br i1 %cmp40, label %if.then.43, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %do.end.39
  %28 = load i32, i32* %new_height.addr, align 4
  %cmp42 = icmp slt i32 %28, 1
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.41, %do.end.39
  br label %if.end.58

if.end.44:                                        ; preds = %lor.lhs.false.41
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %30 = bitcast %struct._GimpItem* %29 to %struct._GTypeInstance*
  %g_class45 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class45, align 8
  %32 = bitcast %struct._GTypeClass* %31 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %32, %struct._GimpItemClass** %item_class, align 8
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call46 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %33)
  store %struct._GimpImage* %call46, %struct._GimpImage** %image, align 8
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call47 = call i32 @gimp_item_is_attached(%struct._GimpItem* %34)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.44
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %36 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %36, i32 0, i32 24
  %37 = load i8*, i8** %scale_desc, align 8
  %call50 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %35, i32 21, i8* %37)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.44
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %39 = bitcast %struct._GimpItem* %38 to %struct._GTypeInstance*
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call52 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %40)
  %41 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %41, i32 0, i32 13
  %42 = load void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %44 = load i32, i32* %new_width.addr, align 4
  %45 = load i32, i32* %new_height.addr, align 4
  %46 = load i32, i32* %new_offset_x.addr, align 4
  %47 = load i32, i32* %new_offset_y.addr, align 4
  %48 = load i32, i32* %interpolation.addr, align 4
  %49 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void %42(%struct._GimpItem* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, %struct._GimpProgress* %49)
  %50 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %51 = bitcast %struct._GimpItem* %50 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %52)
  %53 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call54 = call i32 @gimp_item_is_attached(%struct._GimpItem* %53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.51
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call57 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %54)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.9, %if.else.37, %if.then.43, %if.then.56, %if.end.51
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_item_scale_by_factors(%struct._GimpItem* %item, double %w_factor, double %h_factor, i32 %interpolation, %struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %w_factor.addr = alloca double, align 8
  %h_factor.addr = alloca double, align 8
  %interpolation.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %new_width = alloca i32, align 4
  %new_height = alloca i32, align 4
  %new_offset_x = alloca i32, align 4
  %new_offset_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store double %w_factor, double* %w_factor.addr, align 8
  store double %h_factor, double* %h_factor.addr, align 8
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_scale_by_factors, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp12 = icmp eq %struct._GimpProgress* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = bitcast %struct._GimpProgress* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_progress_interface_get_type() #8
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_scale_by_factors, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %28 = bitcast %struct._GimpItem* %27 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #8
  %call41 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %28, i64 %call40)
  %29 = bitcast i8* %call41 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %29, %struct._GimpItemPrivate** %private, align 8
  %30 = load double, double* %w_factor.addr, align 8
  %cmp42 = fcmp oeq double %30, 0.000000e+00
  br i1 %cmp42, label %if.then.45, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %do.end.39
  %31 = load double, double* %h_factor.addr, align 8
  %cmp44 = fcmp oeq double %31, 0.000000e+00
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.43, %do.end.39
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_scale_by_factors, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %lor.lhs.false.43
  %32 = load double, double* %w_factor.addr, align 8
  %33 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %33, i32 0, i32 6
  %34 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %34 to double
  %mul = fmul double %32, %conv
  %cmp47 = fcmp olt double %mul, 0.000000e+00
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.46
  %35 = load double, double* %w_factor.addr, align 8
  %36 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x49 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %36, i32 0, i32 6
  %37 = load i32, i32* %offset_x49, align 4
  %conv50 = sitofp i32 %37 to double
  %mul51 = fmul double %35, %conv50
  %sub = fsub double %mul51, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %if.end.46
  %38 = load double, double* %w_factor.addr, align 8
  %39 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x52 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %39, i32 0, i32 6
  %40 = load i32, i32* %offset_x52, align 4
  %conv53 = sitofp i32 %40 to double
  %mul54 = fmul double %38, %conv53
  %add = fadd double %mul54, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %add, %cond.false ]
  %conv55 = fptosi double %cond to i32
  store i32 %conv55, i32* %new_offset_x, align 4
  %41 = load double, double* %h_factor.addr, align 8
  %42 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %42, i32 0, i32 7
  %43 = load i32, i32* %offset_y, align 4
  %conv56 = sitofp i32 %43 to double
  %mul57 = fmul double %41, %conv56
  %cmp58 = fcmp olt double %mul57, 0.000000e+00
  br i1 %cmp58, label %cond.true.60, label %cond.false.65

cond.true.60:                                     ; preds = %cond.end
  %44 = load double, double* %h_factor.addr, align 8
  %45 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y61 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %45, i32 0, i32 7
  %46 = load i32, i32* %offset_y61, align 4
  %conv62 = sitofp i32 %46 to double
  %mul63 = fmul double %44, %conv62
  %sub64 = fsub double %mul63, 5.000000e-01
  br label %cond.end.70

cond.false.65:                                    ; preds = %cond.end
  %47 = load double, double* %h_factor.addr, align 8
  %48 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y66 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %48, i32 0, i32 7
  %49 = load i32, i32* %offset_y66, align 4
  %conv67 = sitofp i32 %49 to double
  %mul68 = fmul double %47, %conv67
  %add69 = fadd double %mul68, 5.000000e-01
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.65, %cond.true.60
  %cond71 = phi double [ %sub64, %cond.true.60 ], [ %add69, %cond.false.65 ]
  %conv72 = fptosi double %cond71 to i32
  store i32 %conv72, i32* %new_offset_y, align 4
  %50 = load double, double* %w_factor.addr, align 8
  %51 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call73 = call i32 @gimp_item_get_width(%struct._GimpItem* %51)
  %conv74 = sitofp i32 %call73 to double
  %mul75 = fmul double %50, %conv74
  %add76 = fadd double %mul75, 5.000000e-01
  %conv77 = fptosi double %add76 to i32
  store i32 %conv77, i32* %new_width, align 4
  %52 = load double, double* %h_factor.addr, align 8
  %53 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call78 = call i32 @gimp_item_get_height(%struct._GimpItem* %53)
  %conv79 = sitofp i32 %call78 to double
  %mul80 = fmul double %52, %conv79
  %add81 = fadd double %mul80, 5.000000e-01
  %conv82 = fptosi double %add81 to i32
  store i32 %conv82, i32* %new_height, align 4
  %54 = load i32, i32* %new_width, align 4
  %cmp83 = icmp ne i32 %54, 0
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.89

land.lhs.true.85:                                 ; preds = %cond.end.70
  %55 = load i32, i32* %new_height, align 4
  %cmp86 = icmp ne i32 %55, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true.85
  %56 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %57 = load i32, i32* %new_width, align 4
  %58 = load i32, i32* %new_height, align 4
  %59 = load i32, i32* %new_offset_x, align 4
  %60 = load i32, i32* %new_offset_y, align 4
  %61 = load i32, i32* %interpolation.addr, align 4
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_scale(%struct._GimpItem* %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, %struct._GimpProgress* %62)
  store i32 1, i32* %retval
  br label %return

if.end.89:                                        ; preds = %land.lhs.true.85, %cond.end.70
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.88, %if.then.45, %if.else.37, %if.else.9
  %63 = load i32, i32* %retval
  ret i32 %63
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
define void @gimp_item_scale_by_origin(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %interpolation, %struct._GimpProgress* %progress, i32 %local_origin) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %local_origin.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemPrivate*, align 8
  %new_offset_x = alloca i32, align 4
  %new_offset_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %local_origin, i32* %local_origin.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_item_scale_by_origin, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp12 = icmp eq %struct._GimpProgress* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %15 = bitcast %struct._GimpProgress* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_progress_interface_get_type() #8
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_item_scale_by_origin, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %28 = bitcast %struct._GimpItem* %27 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #8
  %call41 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %28, i64 %call40)
  %29 = bitcast i8* %call41 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %29, %struct._GimpItemPrivate** %private, align 8
  %30 = load i32, i32* %new_width.addr, align 4
  %cmp42 = icmp eq i32 %30, 0
  br i1 %cmp42, label %if.then.45, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %do.end.39
  %31 = load i32, i32* %new_height.addr, align 4
  %cmp44 = icmp eq i32 %31, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.43, %do.end.39
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_item_scale_by_origin, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %lor.lhs.false.43
  %32 = load i32, i32* %local_origin.addr, align 4
  %tobool47 = icmp ne i32 %32, 0
  br i1 %tobool47, label %if.then.48, label %if.else.59

if.then.48:                                       ; preds = %if.end.46
  %33 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %33, i32 0, i32 6
  %34 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %34 to double
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call49 = call i32 @gimp_item_get_width(%struct._GimpItem* %35)
  %36 = load i32, i32* %new_width.addr, align 4
  %sub = sub nsw i32 %call49, %36
  %conv50 = sitofp i32 %sub to double
  %div = fdiv double %conv50, 2.000000e+00
  %add = fadd double %conv, %div
  %conv51 = fptosi double %add to i32
  store i32 %conv51, i32* %new_offset_x, align 4
  %37 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %37, i32 0, i32 7
  %38 = load i32, i32* %offset_y, align 4
  %conv52 = sitofp i32 %38 to double
  %39 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call53 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  %40 = load i32, i32* %new_height.addr, align 4
  %sub54 = sub nsw i32 %call53, %40
  %conv55 = sitofp i32 %sub54 to double
  %div56 = fdiv double %conv55, 2.000000e+00
  %add57 = fadd double %conv52, %div56
  %conv58 = fptosi double %add57 to i32
  store i32 %conv58, i32* %new_offset_y, align 4
  br label %if.end.75

if.else.59:                                       ; preds = %if.end.46
  %41 = load i32, i32* %new_width.addr, align 4
  %conv60 = sitofp i32 %41 to double
  %42 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x61 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %42, i32 0, i32 6
  %43 = load i32, i32* %offset_x61, align 4
  %conv62 = sitofp i32 %43 to double
  %mul = fmul double %conv60, %conv62
  %44 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call63 = call i32 @gimp_item_get_width(%struct._GimpItem* %44)
  %conv64 = sitofp i32 %call63 to double
  %div65 = fdiv double %mul, %conv64
  %conv66 = fptosi double %div65 to i32
  store i32 %conv66, i32* %new_offset_x, align 4
  %45 = load i32, i32* %new_height.addr, align 4
  %conv67 = sitofp i32 %45 to double
  %46 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y68 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %46, i32 0, i32 7
  %47 = load i32, i32* %offset_y68, align 4
  %conv69 = sitofp i32 %47 to double
  %mul70 = fmul double %conv67, %conv69
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call71 = call i32 @gimp_item_get_height(%struct._GimpItem* %48)
  %conv72 = sitofp i32 %call71 to double
  %div73 = fdiv double %mul70, %conv72
  %conv74 = fptosi double %div73 to i32
  store i32 %conv74, i32* %new_offset_y, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.59, %if.then.48
  %49 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %50 = load i32, i32* %new_width.addr, align 4
  %51 = load i32, i32* %new_height.addr, align 4
  %52 = load i32, i32* %new_offset_x, align 4
  %53 = load i32, i32* %new_offset_y, align 4
  %54 = load i32, i32* %interpolation.addr, align 4
  %55 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_item_scale(%struct._GimpItem* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, %struct._GimpProgress* %55)
  br label %return

return:                                           ; preds = %if.end.75, %if.then.45, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_item_resize(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %item_class = alloca %struct._GimpItemClass*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_resize, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.56

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_resize, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.56

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load i32, i32* %new_width.addr, align 4
  %cmp39 = icmp slt i32 %26, 1
  br i1 %cmp39, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.38
  %27 = load i32, i32* %new_height.addr, align 4
  %cmp40 = icmp slt i32 %27, 1
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %do.end.38
  br label %if.end.56

if.end.42:                                        ; preds = %lor.lhs.false
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %29 = bitcast %struct._GimpItem* %28 to %struct._GTypeInstance*
  %g_class43 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class43, align 8
  %31 = bitcast %struct._GTypeClass* %30 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %31, %struct._GimpItemClass** %item_class, align 8
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call44 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %32)
  store %struct._GimpImage* %call44, %struct._GimpImage** %image, align 8
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call45 = call i32 @gimp_item_is_attached(%struct._GimpItem* %33)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.42
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %35 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %35, i32 0, i32 25
  %36 = load i8*, i8** %resize_desc, align 8
  %call48 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %34, i32 22, i8* %36)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.42
  %37 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %38 = bitcast %struct._GimpItem* %37 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %39)
  %40 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %40, i32 0, i32 14
  %41 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %44 = load i32, i32* %new_width.addr, align 4
  %45 = load i32, i32* %new_height.addr, align 4
  %46 = load i32, i32* %offset_x.addr, align 4
  %47 = load i32, i32* %offset_y.addr, align 4
  call void %41(%struct._GimpItem* %42, %struct._GimpContext* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %49 = bitcast %struct._GimpItem* %48 to %struct._GTypeInstance*
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 80)
  %50 = bitcast %struct._GTypeInstance* %call51 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %50)
  %51 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call52 = call i32 @gimp_item_is_attached(%struct._GimpItem* %51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.49
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call55 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %52)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.9, %if.else.36, %if.then.41, %if.then.54, %if.end.49
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_item_flip(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %item_class = alloca %struct._GimpItemClass*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_item_flip, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_item_flip, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_context_get_type() #8
  store i64 %call23, i64* %__t22, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %do.body.18
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type33, align 8
  %22 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %21, %22
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %24 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %25 = load i32, i32* %__r25, align 4
  store i32 %25, i32* %tmp40
  %26 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_item_flip, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %28 = bitcast %struct._GimpItem* %27 to %struct._GTypeInstance*
  %g_class46 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class46, align 8
  %30 = bitcast %struct._GTypeClass* %29 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %30, %struct._GimpItemClass** %item_class, align 8
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call47 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  store %struct._GimpImage* %call47, %struct._GimpImage** %image, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %33 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %33, i32 0, i32 26
  %34 = load i8*, i8** %flip_desc, align 8
  %call48 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %32, i32 32, i8* %34)
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %36 = bitcast %struct._GimpItem* %35 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %37)
  %38 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %38, i32 0, i32 15
  %39 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %42 = load i32, i32* %flip_type.addr, align 4
  %43 = load double, double* %axis.addr, align 8
  %44 = load i32, i32* %clip_result.addr, align 4
  call void %39(%struct._GimpItem* %40, %struct._GimpContext* %41, i32 %42, double %43, i32 %44)
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %46 = bitcast %struct._GimpItem* %45 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %47)
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call51 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %48)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_item_rotate(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  %item_class = alloca %struct._GimpItemClass*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_rotate, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_rotate, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_context_get_type() #8
  store i64 %call23, i64* %__t22, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %do.body.18
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type33, align 8
  %22 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %21, %22
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %24 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %25 = load i32, i32* %__r25, align 4
  store i32 %25, i32* %tmp40
  %26 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_rotate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %28 = bitcast %struct._GimpItem* %27 to %struct._GTypeInstance*
  %g_class46 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class46, align 8
  %30 = bitcast %struct._GTypeClass* %29 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %30, %struct._GimpItemClass** %item_class, align 8
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call47 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  store %struct._GimpImage* %call47, %struct._GimpImage** %image, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %33 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %33, i32 0, i32 27
  %34 = load i8*, i8** %rotate_desc, align 8
  %call48 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %32, i32 32, i8* %34)
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %36 = bitcast %struct._GimpItem* %35 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 80)
  %37 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %37)
  %38 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %38, i32 0, i32 16
  %39 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %42 = load i32, i32* %rotate_type.addr, align 4
  %43 = load double, double* %center_x.addr, align 8
  %44 = load double, double* %center_y.addr, align 8
  %45 = load i32, i32* %clip_result.addr, align 4
  call void %39(%struct._GimpItem* %40, %struct._GimpContext* %41, i32 %42, double %43, double %44, i32 %45)
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %47 = bitcast %struct._GimpItem* %46 to %struct._GTypeInstance*
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call50 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %48)
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call51 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %49)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_item_transform(%struct._GimpItem* %item, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %__inst55 = alloca %struct._GTypeInstance*, align 8
  %__t57 = alloca i64, align 8
  %__r60 = alloca i32, align 4
  %tmp75 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i32 %clip_result, i32* %clip_result.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_transform, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_transform, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_context_get_type() #8
  store i64 %call23, i64* %__t22, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %do.body.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %do.body.18
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type33, align 8
  %22 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %21, %22
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %24 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %25 = load i32, i32* %__r25, align 4
  store i32 %25, i32* %tmp40
  %26 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_transform, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %27 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %cmp47 = icmp ne %struct._GimpMatrix3* %27, null
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.46
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_transform, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp53 = icmp eq %struct._GimpProgress* %28, null
  br i1 %cmp53, label %if.then.77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.52
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %30 = bitcast %struct._GimpProgress* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst55, align 8
  %call58 = call i64 @gimp_progress_interface_get_type() #8
  store i64 %call58, i64* %__t57, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %tobool61 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool61, label %if.else.63, label %if.then.62

if.then.62:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r60, align 4
  br label %if.end.74

if.else.63:                                       ; preds = %lor.lhs.false
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %g_class64 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class64, align 8
  %tobool65 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool65, label %land.lhs.true.66, label %if.else.71

land.lhs.true.66:                                 ; preds = %if.else.63
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %g_class67 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class67, align 8
  %g_type68 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type68, align 8
  %37 = load i64, i64* %__t57, align 8
  %cmp69 = icmp eq i64 %36, %37
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %land.lhs.true.66
  store i32 1, i32* %__r60, align 4
  br label %if.end.73

if.else.71:                                       ; preds = %land.lhs.true.66, %if.else.63
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst55, align 8
  %39 = load i64, i64* %__t57, align 8
  %call72 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #9
  store i32 %call72, i32* %__r60, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.70
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.62
  %40 = load i32, i32* %__r60, align 4
  store i32 %40, i32* %tmp75
  %41 = load i32, i32* %tmp75
  %tobool76 = icmp ne i32 %41, 0
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.end.74, %do.body.52
  br label %if.end.79

if.else.78:                                       ; preds = %if.end.74
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_transform, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.79:                                        ; preds = %if.then.77
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %43 = bitcast %struct._GimpItem* %42 to %struct._GTypeInstance*
  %g_class81 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class81, align 8
  %45 = bitcast %struct._GTypeClass* %44 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %45, %struct._GimpItemClass** %item_class, align 8
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call82 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %46)
  store %struct._GimpImage* %call82, %struct._GimpImage** %image, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %48 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %48, i32 0, i32 28
  %49 = load i8*, i8** %transform_desc, align 8
  %call83 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %47, i32 32, i8* %49)
  %50 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %51 = bitcast %struct._GimpItem* %50 to %struct._GTypeInstance*
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call84 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %52)
  %53 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %53, i32 0, i32 17
  %54 = load void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)** %transform, align 8
  %55 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %56 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %57 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %58 = load i32, i32* %direction.addr, align 4
  %59 = load i32, i32* %interpolation.addr, align 4
  %60 = load i32, i32* %recursion_level.addr, align 4
  %61 = load i32, i32* %clip_result.addr, align 4
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void %54(%struct._GimpItem* %55, %struct._GimpContext* %56, %struct._GimpMatrix3* %57, i32 %58, i32 %59, i32 %60, i32 %61, %struct._GimpProgress* %62)
  %63 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %64 = bitcast %struct._GimpItem* %63 to %struct._GTypeInstance*
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 80)
  %65 = bitcast %struct._GTypeInstance* %call85 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %65)
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call86 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %66)
  br label %return

return:                                           ; preds = %do.end.80, %if.else.78, %if.else.49, %if.else.43, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_stroke(%struct._GimpItem* %item, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, %struct._GimpStrokeOptions* %stroke_options, %struct._GimpPaintOptions* %paint_options, i32 %push_undo, %struct._GimpProgress* %progress, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %stroke_options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %push_undo.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %__inst58 = alloca %struct._GTypeInstance*, align 8
  %__t60 = alloca i64, align 8
  %__r63 = alloca i32, align 4
  %tmp78 = alloca i32, align 4
  %__inst86 = alloca %struct._GTypeInstance*, align 8
  %__t88 = alloca i64, align 8
  %__r91 = alloca i32, align 4
  %tmp106 = alloca i32, align 4
  %__inst115 = alloca %struct._GTypeInstance*, align 8
  %__t117 = alloca i64, align 8
  %__r120 = alloca i32, align 4
  %tmp135 = alloca i32, align 4
  %__inst145 = alloca %struct._GTypeInstance*, align 8
  %__t147 = alloca i64, align 8
  %__r150 = alloca i32, align 4
  %tmp165 = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpStrokeOptions* %stroke_options, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %retval1, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_stroke, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_stroke, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_drawable_get_type() #8
  store i64 %call24, i64* %__t23, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %do.body.19
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %do.body.19
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type34, align 8
  %22 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %21, %22
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %24 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %25 = load i32, i32* %__r26, align 4
  store i32 %25, i32* %tmp41
  %26 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %26, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_stroke, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #8
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call48)
  %29 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call i32 @gimp_item_is_attached(%struct._GimpItem* %29)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.54

if.else.53:                                       ; preds = %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_stroke, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.52
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.55
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = bitcast %struct._GimpContext* %30 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %31, %struct._GTypeInstance** %__inst58, align 8
  %call61 = call i64 @gimp_context_get_type() #8
  store i64 %call61, i64* %__t60, align 8
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %tobool64 = icmp ne %struct._GTypeInstance* %32, null
  br i1 %tobool64, label %if.else.66, label %if.then.65

if.then.65:                                       ; preds = %do.body.56
  store i32 0, i32* %__r63, align 4
  br label %if.end.77

if.else.66:                                       ; preds = %do.body.56
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class67 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class67, align 8
  %tobool68 = icmp ne %struct._GTypeClass* %34, null
  br i1 %tobool68, label %land.lhs.true.69, label %if.else.74

land.lhs.true.69:                                 ; preds = %if.else.66
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %g_class70 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class70, align 8
  %g_type71 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type71, align 8
  %38 = load i64, i64* %__t60, align 8
  %cmp72 = icmp eq i64 %37, %38
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %land.lhs.true.69
  store i32 1, i32* %__r63, align 4
  br label %if.end.76

if.else.74:                                       ; preds = %land.lhs.true.69, %if.else.66
  %39 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst58, align 8
  %40 = load i64, i64* %__t60, align 8
  %call75 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %39, i64 %40) #9
  store i32 %call75, i32* %__r63, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.then.73
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.65
  %41 = load i32, i32* %__r63, align 4
  store i32 %41, i32* %tmp78
  %42 = load i32, i32* %tmp78
  %tobool79 = icmp ne i32 %42, 0
  br i1 %tobool79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.end.77
  br label %if.end.82

if.else.81:                                       ; preds = %if.end.77
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_stroke, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.80
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %do.body.84

do.body.84:                                       ; preds = %do.end.83
  %43 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %44 = bitcast %struct._GimpStrokeOptions* %43 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %44, %struct._GTypeInstance** %__inst86, align 8
  %call89 = call i64 @gimp_stroke_options_get_type() #8
  store i64 %call89, i64* %__t88, align 8
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %tobool92 = icmp ne %struct._GTypeInstance* %45, null
  br i1 %tobool92, label %if.else.94, label %if.then.93

if.then.93:                                       ; preds = %do.body.84
  store i32 0, i32* %__r91, align 4
  br label %if.end.105

if.else.94:                                       ; preds = %do.body.84
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %g_class95 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class95, align 8
  %tobool96 = icmp ne %struct._GTypeClass* %47, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.else.102

land.lhs.true.97:                                 ; preds = %if.else.94
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %g_class98 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class98, align 8
  %g_type99 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type99, align 8
  %51 = load i64, i64* %__t88, align 8
  %cmp100 = icmp eq i64 %50, %51
  br i1 %cmp100, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %land.lhs.true.97
  store i32 1, i32* %__r91, align 4
  br label %if.end.104

if.else.102:                                      ; preds = %land.lhs.true.97, %if.else.94
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst86, align 8
  %53 = load i64, i64* %__t88, align 8
  %call103 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %52, i64 %53) #9
  store i32 %call103, i32* %__r91, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.102, %if.then.101
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.93
  %54 = load i32, i32* %__r91, align 4
  store i32 %54, i32* %tmp106
  %55 = load i32, i32* %tmp106
  %tobool107 = icmp ne i32 %55, 0
  br i1 %tobool107, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %if.end.105
  br label %if.end.110

if.else.109:                                      ; preds = %if.end.105
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_stroke, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.110:                                       ; preds = %if.then.108
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %do.body.112

do.body.112:                                      ; preds = %do.end.111
  %56 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %cmp113 = icmp eq %struct._GimpPaintOptions* %56, null
  br i1 %cmp113, label %if.then.137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.112
  %57 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %58 = bitcast %struct._GimpPaintOptions* %57 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %58, %struct._GTypeInstance** %__inst115, align 8
  %call118 = call i64 @gimp_paint_options_get_type() #8
  store i64 %call118, i64* %__t117, align 8
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst115, align 8
  %tobool121 = icmp ne %struct._GTypeInstance* %59, null
  br i1 %tobool121, label %if.else.123, label %if.then.122

if.then.122:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %__r120, align 4
  br label %if.end.134

if.else.123:                                      ; preds = %lor.lhs.false
  %60 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst115, align 8
  %g_class124 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class124, align 8
  %tobool125 = icmp ne %struct._GTypeClass* %61, null
  br i1 %tobool125, label %land.lhs.true.126, label %if.else.131

land.lhs.true.126:                                ; preds = %if.else.123
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst115, align 8
  %g_class127 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class127, align 8
  %g_type128 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %63, i32 0, i32 0
  %64 = load i64, i64* %g_type128, align 8
  %65 = load i64, i64* %__t117, align 8
  %cmp129 = icmp eq i64 %64, %65
  br i1 %cmp129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %land.lhs.true.126
  store i32 1, i32* %__r120, align 4
  br label %if.end.133

if.else.131:                                      ; preds = %land.lhs.true.126, %if.else.123
  %66 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst115, align 8
  %67 = load i64, i64* %__t117, align 8
  %call132 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %66, i64 %67) #9
  store i32 %call132, i32* %__r120, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.131, %if.then.130
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.122
  %68 = load i32, i32* %__r120, align 4
  store i32 %68, i32* %tmp135
  %69 = load i32, i32* %tmp135
  %tobool136 = icmp ne i32 %69, 0
  br i1 %tobool136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %if.end.134, %do.body.112
  br label %if.end.139

if.else.138:                                      ; preds = %if.end.134
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_stroke, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.139:                                       ; preds = %if.then.137
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.139
  br label %do.body.141

do.body.141:                                      ; preds = %do.end.140
  %70 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp142 = icmp eq %struct._GimpProgress* %70, null
  br i1 %cmp142, label %if.then.167, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %do.body.141
  %71 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %72 = bitcast %struct._GimpProgress* %71 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %72, %struct._GTypeInstance** %__inst145, align 8
  %call148 = call i64 @gimp_progress_interface_get_type() #8
  store i64 %call148, i64* %__t147, align 8
  %73 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst145, align 8
  %tobool151 = icmp ne %struct._GTypeInstance* %73, null
  br i1 %tobool151, label %if.else.153, label %if.then.152

if.then.152:                                      ; preds = %lor.lhs.false.143
  store i32 0, i32* %__r150, align 4
  br label %if.end.164

if.else.153:                                      ; preds = %lor.lhs.false.143
  %74 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst145, align 8
  %g_class154 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %74, i32 0, i32 0
  %75 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class154, align 8
  %tobool155 = icmp ne %struct._GTypeClass* %75, null
  br i1 %tobool155, label %land.lhs.true.156, label %if.else.161

land.lhs.true.156:                                ; preds = %if.else.153
  %76 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst145, align 8
  %g_class157 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %76, i32 0, i32 0
  %77 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class157, align 8
  %g_type158 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %77, i32 0, i32 0
  %78 = load i64, i64* %g_type158, align 8
  %79 = load i64, i64* %__t147, align 8
  %cmp159 = icmp eq i64 %78, %79
  br i1 %cmp159, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %land.lhs.true.156
  store i32 1, i32* %__r150, align 4
  br label %if.end.163

if.else.161:                                      ; preds = %land.lhs.true.156, %if.else.153
  %80 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst145, align 8
  %81 = load i64, i64* %__t147, align 8
  %call162 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %80, i64 %81) #9
  store i32 %call162, i32* %__r150, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.161, %if.then.160
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.152
  %82 = load i32, i32* %__r150, align 4
  store i32 %82, i32* %tmp165
  %83 = load i32, i32* %tmp165
  %tobool166 = icmp ne i32 %83, 0
  br i1 %tobool166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %if.end.164, %do.body.141
  br label %if.end.169

if.else.168:                                      ; preds = %if.end.164
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_stroke, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.169:                                       ; preds = %if.then.167
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  br label %do.body.171

do.body.171:                                      ; preds = %do.end.170
  %84 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp172 = icmp eq %struct._GError** %84, null
  br i1 %cmp172, label %if.then.175, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %do.body.171
  %85 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %86 = load %struct._GError*, %struct._GError** %85, align 8
  %cmp174 = icmp eq %struct._GError* %86, null
  br i1 %cmp174, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %lor.lhs.false.173, %do.body.171
  br label %if.end.177

if.else.176:                                      ; preds = %lor.lhs.false.173
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_stroke, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.177:                                       ; preds = %if.then.175
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  %87 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %88 = bitcast %struct._GimpItem* %87 to %struct._GTypeInstance*
  %g_class179 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %88, i32 0, i32 0
  %89 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class179, align 8
  %90 = bitcast %struct._GTypeClass* %89 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %90, %struct._GimpItemClass** %item_class, align 8
  %91 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %stroke = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %91, i32 0, i32 18
  %92 = load i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)** %stroke, align 8
  %tobool180 = icmp ne i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)* %92, null
  br i1 %tobool180, label %if.then.181, label %if.end.194

if.then.181:                                      ; preds = %do.end.178
  %93 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call183 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %93)
  store %struct._GimpImage* %call183, %struct._GimpImage** %image, align 8
  %94 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %95 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %96 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void @gimp_stroke_options_prepare(%struct._GimpStrokeOptions* %94, %struct._GimpContext* %95, %struct._GimpPaintOptions* %96)
  %97 = load i32, i32* %push_undo.addr, align 4
  %tobool184 = icmp ne i32 %97, 0
  br i1 %tobool184, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %if.then.181
  %98 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %99 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %stroke_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %99, i32 0, i32 30
  %100 = load i8*, i8** %stroke_desc, align 8
  %call186 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %98, i32 33, i8* %100)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %if.then.181
  %101 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %stroke188 = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %101, i32 0, i32 18
  %102 = load i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)** %stroke188, align 8
  %103 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %104 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %105 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %106 = load i32, i32* %push_undo.addr, align 4
  %107 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %108 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call189 = call i32 %102(%struct._GimpItem* %103, %struct._GimpDrawable* %104, %struct._GimpStrokeOptions* %105, i32 %106, %struct._GimpProgress* %107, %struct._GError** %108)
  store i32 %call189, i32* %retval1, align 4
  %109 = load i32, i32* %push_undo.addr, align 4
  %tobool190 = icmp ne i32 %109, 0
  br i1 %tobool190, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %if.end.187
  %110 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call192 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %110)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.191, %if.end.187
  %111 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  call void @gimp_stroke_options_finish(%struct._GimpStrokeOptions* %111)
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %do.end.178
  %112 = load i32, i32* %retval1, align 4
  store i32 %112, i32* %retval
  br label %return

return:                                           ; preds = %if.end.194, %if.else.176, %if.else.168, %if.else.138, %if.else.109, %if.else.81, %if.else.53, %if.else.44, %if.else.16, %if.else.10
  %113 = load i32, i32* %retval
  ret i32 %113
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_stroke_options_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

declare void @gimp_stroke_options_prepare(%struct._GimpStrokeOptions*, %struct._GimpContext*, %struct._GimpPaintOptions*) #1

declare void @gimp_stroke_options_finish(%struct._GimpStrokeOptions*) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_to_selection(%struct._GimpItem* %item, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_item_to_selection, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_item_to_selection, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.22

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %17 = bitcast %struct._GTypeClass* %16 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %17, %struct._GimpItemClass** %item_class, align 8
  %18 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %to_selection = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %18, i32 0, i32 19
  %19 = load void (%struct._GimpItem*, i32, i32, i32, double, double)*, void (%struct._GimpItem*, i32, i32, i32, double, double)** %to_selection, align 8
  %tobool19 = icmp ne void (%struct._GimpItem*, i32, i32, i32, double, double)* %19, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.end.17
  %20 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %to_selection21 = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %20, i32 0, i32 19
  %21 = load void (%struct._GimpItem*, i32, i32, i32, double, double)*, void (%struct._GimpItem*, i32, i32, i32, double, double)** %to_selection21, align 8
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %23 = load i32, i32* %op.addr, align 4
  %24 = load i32, i32* %antialias.addr, align 4
  %25 = load i32, i32* %feather.addr, align 4
  %26 = load double, double* %feather_radius_x.addr, align 8
  %27 = load double, double* %feather_radius_y.addr, align 8
  call void %21(%struct._GimpItem* %22, i32 %23, i32 %24, i32 %25, double %26, double %27)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.else.15, %if.then.20, %do.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GeglNode*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_item_get_node, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GeglNode* null, %struct._GeglNode** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %15, %struct._GimpItemPrivate** %private, align 8
  %16 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %16, i32 0, i32 9
  %17 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %tobool13 = icmp ne %struct._GeglNode* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node15 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %18, i32 0, i32 9
  %19 = load %struct._GeglNode*, %struct._GeglNode** %node15, align 8
  store %struct._GeglNode* %19, %struct._GeglNode** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %23 = bitcast %struct._GTypeClass* %22 to %struct._GimpItemClass*
  %get_node = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %23, i32 0, i32 20
  %24 = load %struct._GeglNode* (%struct._GimpItem*)*, %struct._GeglNode* (%struct._GimpItem*)** %get_node, align 8
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call18 = call %struct._GeglNode* %24(%struct._GimpItem* %25)
  store %struct._GeglNode* %call18, %struct._GeglNode** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.else.9
  %26 = load %struct._GeglNode*, %struct._GeglNode** %retval
  ret %struct._GeglNode* %26
}

; Function Attrs: nounwind uwtable
define %struct._GeglNode* @gimp_item_peek_node(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GeglNode*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_peek_node, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GeglNode* null, %struct._GeglNode** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %node = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 9
  %16 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  store %struct._GeglNode* %16, %struct._GeglNode** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GeglNode*, %struct._GeglNode** %retval
  ret %struct._GeglNode* %17
}

; Function Attrs: nounwind uwtable
define %struct._GeglNode* @gimp_item_get_offset_node(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GeglNode*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %node = alloca %struct._GeglNode*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_item_get_offset_node, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GeglNode* null, %struct._GeglNode** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %15, %struct._GimpItemPrivate** %private, align 8
  %16 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_node = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %16, i32 0, i32 10
  %17 = load %struct._GeglNode*, %struct._GeglNode** %offset_node, align 8
  %tobool13 = icmp ne %struct._GeglNode* %17, null
  br i1 %tobool13, label %if.end.20, label %if.then.14

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call16 = call %struct._GeglNode* @gimp_item_get_node(%struct._GimpItem* %18)
  store %struct._GeglNode* %call16, %struct._GeglNode** %node, align 8
  %19 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %20 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %20, i32 0, i32 6
  %21 = load i32, i32* %offset_x, align 4
  %conv = sitofp i32 %21 to double
  %22 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %22, i32 0, i32 7
  %23 = load i32, i32* %offset_y, align 4
  %conv17 = sitofp i32 %23 to double
  %call18 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), double %conv, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), double %conv17, i8* null)
  %24 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_node19 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %24, i32 0, i32 10
  store %struct._GeglNode* %call18, %struct._GeglNode** %offset_node19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %do.end
  %25 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_node21 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %25, i32 0, i32 10
  %26 = load %struct._GeglNode*, %struct._GeglNode** %offset_node21, align 8
  store %struct._GeglNode* %26, %struct._GeglNode** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.9
  %27 = load %struct._GeglNode*, %struct._GeglNode** %retval
  ret %struct._GeglNode* %27
}

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_ID(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_item_get_ID, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %ID = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 0
  %16 = load i32, i32* %ID, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpItem* @gimp_item_get_by_ID(%struct._Gimp* %gimp, i32 %item_id) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %item_id.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %item_id, i32* %item_id.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_get_by_ID, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %item_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 30
  %14 = load %struct._GimpIdTable*, %struct._GimpIdTable** %item_table, align 8
  %cmp11 = icmp eq %struct._GimpIdTable* %14, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %item_table14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 30
  %16 = load %struct._GimpIdTable*, %struct._GimpIdTable** %item_table14, align 8
  %17 = load i32, i32* %item_id.addr, align 4
  %call15 = call i8* @gimp_id_table_lookup(%struct._GimpIdTable* %16, i32 %17)
  %18 = bitcast i8* %call15 to %struct._GimpItem*
  store %struct._GimpItem* %18, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  %19 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %19
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

declare i8* @gimp_id_table_lookup(%struct._GimpIdTable*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_tattoo(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_get_tattoo, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %tattoo = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 1
  %16 = load i32, i32* %tattoo, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_item_set_tattoo(%struct._GimpItem* %item, i32 %tattoo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %tattoo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %tattoo, i32* %tattoo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_set_tattoo, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %tattoo.addr, align 4
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %tattoo13 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %16, i32 0, i32 1
  store i32 %13, i32* %tattoo13, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_item_set_image(%struct._GimpItem* %item, %struct._GimpImage* %image) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst27 = alloca %struct._GTypeInstance*, align 8
  %__t29 = alloca i64, align 8
  %__r32 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_set_image, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_set_image, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call19 = call i32 @gimp_item_is_removed(%struct._GimpItem* %14)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.18
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_set_image, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %16 = bitcast %struct._GimpImage* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst27, align 8
  %call30 = call i64 @gimp_image_get_type() #8
  store i64 %call30, i64* %__t29, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %tobool33 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool33, label %if.else.35, label %if.then.34

if.then.34:                                       ; preds = %do.body.25
  store i32 0, i32* %__r32, align 4
  br label %if.end.46

if.else.35:                                       ; preds = %do.body.25
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %tobool37 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.43

land.lhs.true.38:                                 ; preds = %if.else.35
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %g_type40 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type40, align 8
  %23 = load i64, i64* %__t29, align 8
  %cmp41 = icmp eq i64 %22, %23
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %land.lhs.true.38
  store i32 1, i32* %__r32, align 4
  br label %if.end.45

if.else.43:                                       ; preds = %land.lhs.true.38, %if.else.35
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %25 = load i64, i64* %__t29, align 8
  %call44 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #9
  store i32 %call44, i32* %__r32, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.34
  %26 = load i32, i32* %__r32, align 4
  store i32 %26, i32* %tmp47
  %27 = load i32, i32* %tmp47
  %tobool48 = icmp ne i32 %27, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.end.46
  br label %if.end.51

if.else.50:                                       ; preds = %if.end.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_set_image, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %29 = bitcast %struct._GimpItem* %28 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_get_type() #8
  %call54 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %29, i64 %call53)
  %30 = bitcast i8* %call54 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %30, %struct._GimpItemPrivate** %private, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %32 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image55 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %32, i32 0, i32 2
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image55, align 8
  %cmp56 = icmp eq %struct._GimpImage* %31, %33
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %do.end.52
  br label %return

if.end.58:                                        ; preds = %do.end.52
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %35 = bitcast %struct._GimpItem* %34 to %struct._GTypeInstance*
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call59 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %36)
  %37 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %ID = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %37, i32 0, i32 0
  %38 = load i32, i32* %ID, align 4
  %cmp60 = icmp eq i32 %38, 0
  br i1 %cmp60, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %if.end.58
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %39, i32 0, i32 1
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %item_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %40, i32 0, i32 30
  %41 = load %struct._GimpIdTable*, %struct._GimpIdTable** %item_table, align 8
  %42 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %43 = bitcast %struct._GimpItem* %42 to i8*
  %call62 = call i32 @gimp_id_table_insert(%struct._GimpIdTable* %41, i8* %43)
  %44 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %ID63 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %44, i32 0, i32 0
  store i32 %call62, i32* %ID63, align 4
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %46 = bitcast %struct._GimpItem* %45 to %struct._GTypeInstance*
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call64 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %if.end.58
  %48 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %tattoo = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %48, i32 0, i32 1
  %49 = load i32, i32* %tattoo, align 4
  %cmp66 = icmp eq i32 %49, 0
  br i1 %cmp66, label %if.then.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.65
  %50 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image67 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %50, i32 0, i32 2
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image67, align 8
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp68 = icmp ne %struct._GimpImage* %51, %52
  br i1 %cmp68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %lor.lhs.false, %if.end.65
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call70 = call i32 @gimp_image_get_new_tattoo(%struct._GimpImage* %53)
  %54 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %tattoo71 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %54, i32 0, i32 1
  store i32 %call70, i32* %tattoo71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %lor.lhs.false
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %56 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image73 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %56, i32 0, i32 2
  store %struct._GimpImage* %55, %struct._GimpImage** %image73, align 8
  %57 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %58 = bitcast %struct._GimpItem* %57 to %struct._GTypeInstance*
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 80)
  %59 = bitcast %struct._GTypeInstance* %call74 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %60 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %61 = bitcast %struct._GimpItem* %60 to %struct._GTypeInstance*
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 80)
  %62 = bitcast %struct._GTypeInstance* %call75 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %62)
  br label %return

return:                                           ; preds = %if.end.72, %if.then.57, %if.else.50, %if.else.22, %if.else.15, %if.else.9
  ret void
}

declare i32 @gimp_id_table_insert(%struct._GimpIdTable*, i8*) #1

declare i32 @gimp_image_get_new_tattoo(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_replace_item(%struct._GimpItem* %item, %struct._GimpItem* %replace) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %replace.addr = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst27 = alloca %struct._GTypeInstance*, align 8
  %__t29 = alloca i64, align 8
  %__r32 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpItem* %replace, %struct._GimpItem** %replace.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_item_replace_item, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_item_replace_item, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call19 = call i32 @gimp_item_is_removed(%struct._GimpItem* %14)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.18
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_item_replace_item, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %15 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %16 = bitcast %struct._GimpItem* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst27, align 8
  %call30 = call i64 @gimp_item_get_type() #8
  store i64 %call30, i64* %__t29, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %tobool33 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool33, label %if.else.35, label %if.then.34

if.then.34:                                       ; preds = %do.body.25
  store i32 0, i32* %__r32, align 4
  br label %if.end.46

if.else.35:                                       ; preds = %do.body.25
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %tobool37 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.43

land.lhs.true.38:                                 ; preds = %if.else.35
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %g_type40 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type40, align 8
  %23 = load i64, i64* %__t29, align 8
  %cmp41 = icmp eq i64 %22, %23
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %land.lhs.true.38
  store i32 1, i32* %__r32, align 4
  br label %if.end.45

if.else.43:                                       ; preds = %land.lhs.true.38, %if.else.35
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst27, align 8
  %25 = load i64, i64* %__t29, align 8
  %call44 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #9
  store i32 %call44, i32* %__r32, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.34
  %26 = load i32, i32* %__r32, align 4
  store i32 %26, i32* %tmp47
  %27 = load i32, i32* %tmp47
  %tobool48 = icmp ne i32 %27, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.end.46
  br label %if.end.51

if.else.50:                                       ; preds = %if.end.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_item_replace_item, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0))
  br label %return

if.end.51:                                        ; preds = %if.then.49
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  %28 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %29 = bitcast %struct._GimpItem* %28 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_get_type() #8
  %call54 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %29, i64 %call53)
  %30 = bitcast i8* %call54 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %30, %struct._GimpItemPrivate** %private, align 8
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %32 = bitcast %struct._GimpItem* %31 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_object_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call55)
  %33 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpObject*
  %34 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %35 = bitcast %struct._GimpItem* %34 to i8*
  %call57 = call i8* @gimp_object_get_name(i8* %35)
  call void @gimp_object_set_name(%struct._GimpObject* %33, i8* %call57)
  %36 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %ID = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %36, i32 0, i32 0
  %37 = load i32, i32* %ID, align 4
  %tobool58 = icmp ne i32 %37, 0
  br i1 %tobool58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %do.end.52
  %38 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call60 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %38)
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call60, i32 0, i32 1
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %item_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 30
  %40 = load %struct._GimpIdTable*, %struct._GimpIdTable** %item_table, align 8
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call61 = call i32 @gimp_item_get_ID(%struct._GimpItem* %41)
  %call62 = call i32 @gimp_id_table_remove(%struct._GimpIdTable* %40, i32 %call61)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %do.end.52
  %42 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %call64 = call i32 @gimp_item_get_ID(%struct._GimpItem* %42)
  %43 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %ID65 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %43, i32 0, i32 0
  store i32 %call64, i32* %ID65, align 4
  %44 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call66 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %44)
  %gimp67 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call66, i32 0, i32 1
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp67, align 8
  %item_table68 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %45, i32 0, i32 30
  %46 = load %struct._GimpIdTable*, %struct._GimpIdTable** %item_table68, align 8
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call69 = call i32 @gimp_item_get_ID(%struct._GimpItem* %47)
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %49 = bitcast %struct._GimpItem* %48 to i8*
  call void @gimp_id_table_replace(%struct._GimpIdTable* %46, i32 %call69, i8* %49)
  %50 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %51 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %call70 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %51)
  call void @gimp_item_set_image(%struct._GimpItem* %50, %struct._GimpImage* %call70)
  %52 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %53 = bitcast %struct._GimpItem* %52 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_item_get_type() #8
  %call72 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %53, i64 %call71)
  %54 = bitcast i8* %call72 to %struct._GimpItemPrivate*
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %54, i32 0, i32 2
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %55 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %56 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %call73 = call i32 @gimp_item_get_tattoo(%struct._GimpItem* %56)
  call void @gimp_item_set_tattoo(%struct._GimpItem* %55, i32 %call73)
  %57 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  call void @gimp_item_set_tattoo(%struct._GimpItem* %57, i32 0)
  %58 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %58, i32 0, i32 3
  %59 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %60 = bitcast %struct._GimpParasiteList* %59 to i8*
  call void @g_object_unref(i8* %60)
  %61 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %62 = bitcast %struct._GimpItem* %61 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_item_get_type() #8
  %call75 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %62, i64 %call74)
  %63 = bitcast i8* %call75 to %struct._GimpItemPrivate*
  %parasites76 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %63, i32 0, i32 3
  %64 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites76, align 8
  %65 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites77 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %65, i32 0, i32 3
  store %struct._GimpParasiteList* %64, %struct._GimpParasiteList** %parasites77, align 8
  %66 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %67 = bitcast %struct._GimpItem* %66 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_item_get_type() #8
  %call79 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %67, i64 %call78)
  %68 = bitcast i8* %call79 to %struct._GimpItemPrivate*
  %parasites80 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %68, i32 0, i32 3
  store %struct._GimpParasiteList* null, %struct._GimpParasiteList** %parasites80, align 8
  %69 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %69, i32* %offset_x, i32* %offset_y)
  %70 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %71 = load i32, i32* %offset_x, align 4
  %72 = load i32, i32* %offset_y, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %70, i32 %71, i32 %72)
  %73 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %74 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %call81 = call i32 @gimp_item_get_width(%struct._GimpItem* %74)
  %75 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %call82 = call i32 @gimp_item_get_height(%struct._GimpItem* %75)
  call void @gimp_item_set_size(%struct._GimpItem* %73, i32 %call81, i32 %call82)
  %76 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %77 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %call83 = call i32 @gimp_item_get_visible(%struct._GimpItem* %77)
  call void @gimp_item_set_visible(%struct._GimpItem* %76, i32 %call83, i32 0)
  %78 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %79 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %call84 = call i32 @gimp_item_get_linked(%struct._GimpItem* %79)
  call void @gimp_item_set_linked(%struct._GimpItem* %78, i32 %call84, i32 0)
  %80 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %81 = load %struct._GimpItem*, %struct._GimpItem** %replace.addr, align 8
  %call85 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %81)
  call void @gimp_item_set_lock_content(%struct._GimpItem* %80, i32 %call85, i32 0)
  br label %return

return:                                           ; preds = %if.end.63, %if.else.50, %if.else.22, %if.else.15, %if.else.9
  ret void
}

declare i32 @gimp_id_table_remove(%struct._GimpIdTable*, i32) #1

declare void @gimp_id_table_replace(%struct._GimpIdTable*, i32, i8*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_set_visible(%struct._GimpItem* %item, i32 %visible, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %visible.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %visible, i32* %visible.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_set_visible, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %visible.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  store i32 %cond, i32* %visible.addr, align 4
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_get_visible(%struct._GimpItem* %14)
  %15 = load i32, i32* %visible.addr, align 4
  %cmp13 = icmp ne i32 %call12, %15
  br i1 %cmp13, label %if.then.14, label %if.end.31

if.then.14:                                       ; preds = %do.end
  %16 = load i32, i32* %push_undo.addr, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.26

land.lhs.true.16:                                 ; preds = %if.then.14
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call17 = call i32 @gimp_item_is_attached(%struct._GimpItem* %17)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %land.lhs.true.16
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call21 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  store %struct._GimpImage* %call21, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool22 = icmp ne %struct._GimpImage* %19, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.19
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call24 = call %struct._GimpUndo* @gimp_image_undo_push_item_visibility(%struct._GimpImage* %20, i8* null, %struct._GimpItem* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %land.lhs.true.16, %if.then.14
  %22 = load i32, i32* %visible.addr, align 4
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #8
  %call28 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %24, i64 %call27)
  %25 = bitcast i8* %call28 to %struct._GimpItemPrivate*
  %visible29 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %25, i32 0, i32 8
  %26 = trunc i32 %22 to i8
  %bf.load = load i8, i8* %visible29, align 8
  %bf.value = and i8 %26, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %visible29, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %28 = bitcast %struct._GimpItem* %27 to i8*
  %29 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gimp_item_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %28, i32 %29, i32 0)
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %31 = bitcast %struct._GimpItem* %30 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.9, %if.end.26, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_visible(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_get_visible, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %visible = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 8
  %bf.load = load i8, i8* %visible, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_item_set_linked(%struct._GimpItem* %item, i32 %linked, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %linked.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %linked, i32* %linked.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_set_linked, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.31

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %linked.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  store i32 %cond, i32* %linked.addr, align 4
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_get_linked(%struct._GimpItem* %14)
  %15 = load i32, i32* %linked.addr, align 4
  %cmp13 = icmp ne i32 %call12, %15
  br i1 %cmp13, label %if.then.14, label %if.end.31

if.then.14:                                       ; preds = %do.end
  %16 = load i32, i32* %push_undo.addr, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.26

land.lhs.true.16:                                 ; preds = %if.then.14
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call17 = call i32 @gimp_item_is_attached(%struct._GimpItem* %17)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %land.lhs.true.16
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call21 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  store %struct._GimpImage* %call21, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool22 = icmp ne %struct._GimpImage* %19, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.19
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call24 = call %struct._GimpUndo* @gimp_image_undo_push_item_linked(%struct._GimpImage* %20, i8* null, %struct._GimpItem* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %land.lhs.true.16, %if.then.14
  %22 = load i32, i32* %linked.addr, align 4
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #8
  %call28 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %24, i64 %call27)
  %25 = bitcast i8* %call28 to %struct._GimpItemPrivate*
  %linked29 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %25, i32 0, i32 8
  %26 = trunc i32 %22 to i8
  %bf.load = load i8, i8* %linked29, align 8
  %bf.value = and i8 %26, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %linked29, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %28 = bitcast %struct._GimpItem* %27 to i8*
  %29 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gimp_item_signals, i32 0, i64 2), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %28, i32 %29, i32 0)
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %31 = bitcast %struct._GimpItem* %30 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.9, %if.end.26, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_linked(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_get_linked, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %linked = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 8
  %bf.load = load i8, i8* %linked, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_item_set_lock_content(%struct._GimpItem* %item, i32 %lock_content, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %lock_content.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %lock_content, i32* %lock_content.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_set_lock_content, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.32

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_can_lock_content(%struct._GimpItem* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_set_lock_content, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.32

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load i32, i32* %lock_content.addr, align 4
  %tobool18 = icmp ne i32 %14, 0
  %cond = select i1 %tobool18, i32 1, i32 0
  store i32 %cond, i32* %lock_content.addr, align 4
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call19 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %15)
  %16 = load i32, i32* %lock_content.addr, align 4
  %cmp20 = icmp ne i32 %call19, %16
  br i1 %cmp20, label %if.then.21, label %if.end.32

if.then.21:                                       ; preds = %do.end.17
  %17 = load i32, i32* %push_undo.addr, align 4
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.27

land.lhs.true.23:                                 ; preds = %if.then.21
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call24 = call i32 @gimp_item_is_attached(%struct._GimpItem* %18)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %land.lhs.true.23, %if.then.21
  %19 = load i32, i32* %lock_content.addr, align 4
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_item_get_type() #8
  %call29 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %21, i64 %call28)
  %22 = bitcast i8* %call29 to %struct._GimpItemPrivate*
  %lock_content30 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %22, i32 0, i32 8
  %23 = trunc i32 %19 to i8
  %bf.load = load i8, i8* %lock_content30, align 8
  %bf.value = and i8 %23, 1
  %bf.shl = shl i8 %bf.value, 2
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %lock_content30, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %25 = bitcast %struct._GimpItem* %24 to i8*
  %26 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gimp_item_signals, i32 0, i64 3), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %25, i32 %26, i32 0)
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %28 = bitcast %struct._GimpItem* %27 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.9, %if.else.15, %if.end.27, %do.end.17
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_lock_content(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_get_lock_content, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %lock_content = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 8
  %bf.load = load i8, i8* %lock_content, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_item_set_parasites(%struct._GimpItem* %item, %struct._GimpParasiteList* %parasites) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %parasites.addr = alloca %struct._GimpParasiteList*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpParasiteList* %parasites, %struct._GimpParasiteList** %parasites.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_set_parasites, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.47

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites.addr, align 8
  %14 = bitcast %struct._GimpParasiteList* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_parasite_list_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_set_parasites, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.47

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %27 = bitcast %struct._GimpItem* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #8
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %28, %struct._GimpItemPrivate** %private, align 8
  %29 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites.addr, align 8
  %30 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites41 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %30, i32 0, i32 3
  %31 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites41, align 8
  %cmp42 = icmp ne %struct._GimpParasiteList* %29, %31
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %do.end.38
  %32 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites44 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %32, i32 0, i32 3
  %33 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites44, align 8
  %34 = bitcast %struct._GimpParasiteList* %33 to i8*
  call void @g_object_unref(i8* %34)
  %35 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites.addr, align 8
  %36 = bitcast %struct._GimpParasiteList* %35 to i8*
  %call45 = call i8* @g_object_ref(i8* %36)
  %37 = bitcast i8* %call45 to %struct._GimpParasiteList*
  %38 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites46 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %38, i32 0, i32 3
  store %struct._GimpParasiteList* %37, %struct._GimpParasiteList** %parasites46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.9, %if.else.36, %if.then.43, %do.end.38
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_parasite_list_get_type() #2

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasiteList* @gimp_item_get_parasites(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca %struct._GimpParasiteList*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_get_parasites, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpParasiteList* null, %struct._GimpParasiteList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 3
  %16 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  store %struct._GimpParasiteList* %16, %struct._GimpParasiteList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %retval
  ret %struct._GimpParasiteList* %17
}

; Function Attrs: nounwind uwtable
define void @gimp_item_parasite_attach(%struct._GimpItem* %item, %struct._GimpParasite* %parasite, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %push_undo.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemPrivate*, align 8
  %copy = alloca %struct._GimpParasite, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_item_parasite_attach, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.66

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %cmp12 = icmp ne %struct._GimpParasite* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_item_parasite_attach, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.66

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #8
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %16, %struct._GimpItemPrivate** %private, align 8
  %17 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %18 = bitcast %struct._GimpParasite* %copy to i8*
  %19 = bitcast %struct._GimpParasite* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 24, i32 8, i1 false)
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call19 = call i32 @gimp_item_is_attached(%struct._GimpItem* %20)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %do.end.16
  %21 = load i32, i32* %push_undo.addr, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %if.then.24, label %if.end.46

if.then.24:                                       ; preds = %if.end.22
  %call25 = call i32 @gimp_parasite_is_undoable(%struct._GimpParasite* %copy)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %if.then.24
  %22 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %22, i32 0, i32 2
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call28 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), i64 10)
  %call29 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %23, i32 34, i8* %call28)
  %24 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image30 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %24, i32 0, i32 2
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image30, align 8
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call31 = call %struct._GimpUndo* @gimp_image_undo_push_item_parasite(%struct._GimpImage* %25, i8* null, %struct._GimpItem* %26, %struct._GimpParasite* %copy)
  br label %if.end.45

if.else.32:                                       ; preds = %if.then.24
  %call33 = call i32 @gimp_parasite_is_persistent(%struct._GimpParasite* %copy)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.44

land.lhs.true.35:                                 ; preds = %if.else.32
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call36 = call i8* @gimp_parasite_name(%struct._GimpParasite* %copy)
  %call37 = call %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem* %27, i8* %call36)
  %call38 = call i32 @gimp_parasite_compare(%struct._GimpParasite* %copy, %struct._GimpParasite* %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.44, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.35
  %28 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image41 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %28, i32 0, i32 2
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image41, align 8
  %call42 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0), i64 10)
  %call43 = call %struct._GimpUndo* @gimp_image_undo_push_cantundo(%struct._GimpImage* %29, i8* %call42)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %land.lhs.true.35, %if.else.32
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.27
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.22
  %30 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %30, i32 0, i32 3
  %31 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  call void @gimp_parasite_list_add(%struct._GimpParasiteList* %31, %struct._GimpParasite* %copy)
  %call47 = call i32 @gimp_parasite_has_flag(%struct._GimpParasite* %copy, i64 32768)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.end.46
  call void @gimp_parasite_shift_parent(%struct._GimpParasite* %copy)
  %32 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image50 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %32, i32 0, i32 2
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image50, align 8
  call void @gimp_image_parasite_attach(%struct._GimpImage* %33, %struct._GimpParasite* %copy)
  br label %if.end.57

if.else.51:                                       ; preds = %if.end.46
  %call52 = call i32 @gimp_parasite_has_flag(%struct._GimpParasite* %copy, i64 8388608)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.else.51
  call void @gimp_parasite_shift_parent(%struct._GimpParasite* %copy)
  call void @gimp_parasite_shift_parent(%struct._GimpParasite* %copy)
  %34 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image55 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %34, i32 0, i32 2
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image55, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %35, i32 0, i32 1
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_parasite_attach(%struct._Gimp* %36, %struct._GimpParasite* %copy)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.else.51
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.49
  %37 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call58 = call i32 @gimp_item_is_attached(%struct._GimpItem* %37)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.66

land.lhs.true.60:                                 ; preds = %if.end.57
  %call61 = call i32 @gimp_parasite_is_undoable(%struct._GimpParasite* %copy)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %land.lhs.true.60
  %38 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image64 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %38, i32 0, i32 2
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image64, align 8
  %call65 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %39)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.9, %if.else.14, %if.then.63, %land.lhs.true.60, %if.end.57
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @gimp_parasite_is_undoable(%struct._GimpParasite*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare %struct._GimpUndo* @gimp_image_undo_push_item_parasite(%struct._GimpImage*, i8*, %struct._GimpItem*, %struct._GimpParasite*) #1

declare i32 @gimp_parasite_is_persistent(%struct._GimpParasite*) #1

declare i32 @gimp_parasite_compare(%struct._GimpParasite*, %struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_item_parasite_find(%struct._GimpItem* %item, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpParasite*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_parasite_find, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpParasite* null, %struct._GimpParasite** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 3
  %16 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %17 = load i8*, i8** %name.addr, align 8
  %call13 = call %struct._GimpParasite* @gimp_parasite_list_find(%struct._GimpParasiteList* %16, i8* %17)
  store %struct._GimpParasite* %call13, %struct._GimpParasite** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GimpParasite*, %struct._GimpParasite** %retval
  ret %struct._GimpParasite* %18
}

declare i8* @gimp_parasite_name(%struct._GimpParasite*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_cantundo(%struct._GimpImage*, i8*) #1

declare void @gimp_parasite_list_add(%struct._GimpParasiteList*, %struct._GimpParasite*) #1

declare i32 @gimp_parasite_has_flag(%struct._GimpParasite*, i64) #1

declare void @gimp_parasite_shift_parent(%struct._GimpParasite*) #1

declare void @gimp_image_parasite_attach(%struct._GimpImage*, %struct._GimpParasite*) #1

declare void @gimp_parasite_attach(%struct._Gimp*, %struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define void @gimp_item_parasite_detach(%struct._GimpItem* %item, i8* %name, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %name.addr = alloca i8*, align 8
  %push_undo.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemPrivate*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_item_parasite_detach, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_item_parasite_detach, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #8
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %16, %struct._GimpItemPrivate** %private, align 8
  %17 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %17, i32 0, i32 3
  %18 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %19 = load i8*, i8** %name.addr, align 8
  %call19 = call %struct._GimpParasite* @gimp_parasite_list_find(%struct._GimpParasiteList* %18, i8* %19)
  store %struct._GimpParasite* %call19, %struct._GimpParasite** %parasite, align 8
  %20 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool20 = icmp ne %struct._GimpParasite* %20, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %do.end.16
  br label %return

if.end.22:                                        ; preds = %do.end.16
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call23 = call i32 @gimp_item_is_attached(%struct._GimpItem* %21)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.22
  %22 = load i32, i32* %push_undo.addr, align 4
  %tobool27 = icmp ne i32 %22, 0
  br i1 %tobool27, label %if.then.28, label %if.end.44

if.then.28:                                       ; preds = %if.end.26
  %23 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call29 = call i32 @gimp_parasite_is_undoable(%struct._GimpParasite* %23)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.then.28
  %24 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %24, i32 0, i32 2
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0), i64 10)
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %27 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call33 = call i8* @gimp_parasite_name(%struct._GimpParasite* %27)
  %call34 = call %struct._GimpUndo* @gimp_image_undo_push_item_parasite_remove(%struct._GimpImage* %25, i8* %call32, %struct._GimpItem* %26, i8* %call33)
  br label %if.end.43

if.else.35:                                       ; preds = %if.then.28
  %28 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call36 = call i32 @gimp_parasite_is_persistent(%struct._GimpParasite* %28)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.else.35
  %29 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image39 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %29, i32 0, i32 2
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image39, align 8
  %call40 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0), i64 10)
  %call41 = call %struct._GimpUndo* @gimp_image_undo_push_cantundo(%struct._GimpImage* %30, i8* %call40)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.else.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.31
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.26
  %31 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites45 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %31, i32 0, i32 3
  %32 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites45, align 8
  %33 = load i8*, i8** %name.addr, align 8
  call void @gimp_parasite_list_remove(%struct._GimpParasiteList* %32, i8* %33)
  br label %return

return:                                           ; preds = %if.end.44, %if.then.21, %if.else.14, %if.else.9
  ret void
}

declare %struct._GimpParasite* @gimp_parasite_list_find(%struct._GimpParasiteList*, i8*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_item_parasite_remove(%struct._GimpImage*, i8*, %struct._GimpItem*, i8*) #1

declare void @gimp_parasite_list_remove(%struct._GimpParasiteList*, i8*) #1

; Function Attrs: nounwind uwtable
define i8** @gimp_item_parasite_list(%struct._GimpItem* %item, i32* %count) #3 {
entry:
  %retval = alloca i8**, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %count.addr = alloca i32*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %list = alloca i8**, align 8
  %cur = alloca i8**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_parasite_list, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %count.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_item_parasite_list, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #8
  %call18 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast i8* %call18 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %16, %struct._GimpItemPrivate** %private, align 8
  %17 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %17, i32 0, i32 3
  %18 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %call19 = call i32 @gimp_parasite_list_length(%struct._GimpParasiteList* %18)
  %19 = load i32*, i32** %count.addr, align 8
  store i32 %call19, i32* %19, align 4
  %20 = load i32*, i32** %count.addr, align 8
  %21 = load i32, i32* %20, align 4
  %conv = sext i32 %21 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %22 = bitcast i8* %call20 to i8**
  store i8** %22, i8*** %list, align 8
  store i8** %22, i8*** %cur, align 8
  %23 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites21 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %23, i32 0, i32 3
  %24 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites21, align 8
  %25 = bitcast i8*** %cur to i8*
  call void @gimp_parasite_list_foreach(%struct._GimpParasiteList* %24, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._GimpParasite*, i8***)* @gimp_item_parasite_list_foreach_func to void (i8*, i8*, i8*)*), i8* %25)
  %26 = load i8**, i8*** %list, align 8
  store i8** %26, i8*** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %27 = load i8**, i8*** %retval
  ret i8** %27
}

declare i32 @gimp_parasite_list_length(%struct._GimpParasiteList*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @gimp_parasite_list_foreach(%struct._GimpParasiteList*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_parasite_list_foreach_func(i8* %name, %struct._GimpParasite* %parasite, i8*** %cur) #3 {
entry:
  %name.addr = alloca i8*, align 8
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  %cur.addr = alloca i8***, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  store i8*** %cur, i8**** %cur.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  %1 = load i8***, i8**** %cur.addr, align 8
  %2 = load i8**, i8*** %1, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %2, i32 1
  store i8** %incdec.ptr, i8*** %1, align 8
  store i8* %call, i8** %2, align 8
  ret void
}

declare %struct._GimpUndo* @gimp_image_undo_push_item_visibility(%struct._GimpImage*, i8*, %struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_is_visible(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %parent = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_item_is_visible, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call11 = call i32 @gimp_item_get_visible(%struct._GimpItem* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %do.end
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call15 = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %14)
  store %struct._GimpItem* %call15, %struct._GimpItem** %parent, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %tobool16 = icmp ne %struct._GimpItem* %15, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.13
  %16 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %call18 = call i32 @gimp_item_is_visible(%struct._GimpItem* %16)
  store i32 %call18, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.13
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.end.19, %if.then.17, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare %struct._GimpUndo* @gimp_image_undo_push_item_linked(%struct._GimpImage*, i8*, %struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_can_lock_content(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_item_can_lock_content, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_is_content_locked(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_item_is_content_locked, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpItemClass*
  %is_content_locked = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %16, i32 0, i32 7
  %17 = load i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)** %is_content_locked, align 8
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 %17(%struct._GimpItem* %18)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @gimp_item_mask_bounds(%struct._GimpItem* %item, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %selection = alloca %struct._GimpChannel*, align 8
  %tmp_x1 = alloca i32, align 4
  %tmp_y1 = alloca i32, align 4
  %tmp_x2 = alloca i32, align 4
  %tmp_y2 = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_mask_bounds, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_mask_bounds, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call19 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %14)
  store %struct._GimpImage* %call19, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %15)
  store %struct._GimpChannel* %call20, %struct._GimpChannel** %selection, align 8
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call21)
  %18 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp23 = icmp ne %struct._GimpItem* %18, %19
  br i1 %cmp23, label %land.lhs.true.24, label %if.else.85

land.lhs.true.24:                                 ; preds = %do.end.18
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %call25 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %20, i32* %tmp_x1, i32* %tmp_y1, i32* %tmp_x2, i32* %tmp_y2)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.85

if.then.27:                                       ; preds = %land.lhs.true.24
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %21, i32* %off_x, i32* %off_y)
  %22 = load i32, i32* %tmp_x1, align 4
  %23 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %22, %23
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call30 = call i32 @gimp_item_get_width(%struct._GimpItem* %24)
  %cmp31 = icmp sgt i32 %sub, %call30
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.27
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call32 = call i32 @gimp_item_get_width(%struct._GimpItem* %25)
  br label %cond.end.38

cond.false:                                       ; preds = %if.then.27
  %26 = load i32, i32* %tmp_x1, align 4
  %27 = load i32, i32* %off_x, align 4
  %sub33 = sub nsw i32 %26, %27
  %cmp34 = icmp slt i32 %sub33, 0
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false
  br label %cond.end

cond.false.36:                                    ; preds = %cond.false
  %28 = load i32, i32* %tmp_x1, align 4
  %29 = load i32, i32* %off_x, align 4
  %sub37 = sub nsw i32 %28, %29
  br label %cond.end

cond.end:                                         ; preds = %cond.false.36, %cond.true.35
  %cond = phi i32 [ 0, %cond.true.35 ], [ %sub37, %cond.false.36 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end, %cond.true
  %cond39 = phi i32 [ %call32, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond39, i32* %tmp_x1, align 4
  %30 = load i32, i32* %tmp_y1, align 4
  %31 = load i32, i32* %off_y, align 4
  %sub40 = sub nsw i32 %30, %31
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call41 = call i32 @gimp_item_get_height(%struct._GimpItem* %32)
  %cmp42 = icmp sgt i32 %sub40, %call41
  br i1 %cmp42, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.end.38
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call44 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  br label %cond.end.53

cond.false.45:                                    ; preds = %cond.end.38
  %34 = load i32, i32* %tmp_y1, align 4
  %35 = load i32, i32* %off_y, align 4
  %sub46 = sub nsw i32 %34, %35
  %cmp47 = icmp slt i32 %sub46, 0
  br i1 %cmp47, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.false.45
  br label %cond.end.51

cond.false.49:                                    ; preds = %cond.false.45
  %36 = load i32, i32* %tmp_y1, align 4
  %37 = load i32, i32* %off_y, align 4
  %sub50 = sub nsw i32 %36, %37
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.49, %cond.true.48
  %cond52 = phi i32 [ 0, %cond.true.48 ], [ %sub50, %cond.false.49 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.43
  %cond54 = phi i32 [ %call44, %cond.true.43 ], [ %cond52, %cond.end.51 ]
  store i32 %cond54, i32* %tmp_y1, align 4
  %38 = load i32, i32* %tmp_x2, align 4
  %39 = load i32, i32* %off_x, align 4
  %sub55 = sub nsw i32 %38, %39
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call56 = call i32 @gimp_item_get_width(%struct._GimpItem* %40)
  %cmp57 = icmp sgt i32 %sub55, %call56
  br i1 %cmp57, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %cond.end.53
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call59 = call i32 @gimp_item_get_width(%struct._GimpItem* %41)
  br label %cond.end.68

cond.false.60:                                    ; preds = %cond.end.53
  %42 = load i32, i32* %tmp_x2, align 4
  %43 = load i32, i32* %off_x, align 4
  %sub61 = sub nsw i32 %42, %43
  %cmp62 = icmp slt i32 %sub61, 0
  br i1 %cmp62, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.false.60
  br label %cond.end.66

cond.false.64:                                    ; preds = %cond.false.60
  %44 = load i32, i32* %tmp_x2, align 4
  %45 = load i32, i32* %off_x, align 4
  %sub65 = sub nsw i32 %44, %45
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.63
  %cond67 = phi i32 [ 0, %cond.true.63 ], [ %sub65, %cond.false.64 ]
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.end.66, %cond.true.58
  %cond69 = phi i32 [ %call59, %cond.true.58 ], [ %cond67, %cond.end.66 ]
  store i32 %cond69, i32* %tmp_x2, align 4
  %46 = load i32, i32* %tmp_y2, align 4
  %47 = load i32, i32* %off_y, align 4
  %sub70 = sub nsw i32 %46, %47
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call71 = call i32 @gimp_item_get_height(%struct._GimpItem* %48)
  %cmp72 = icmp sgt i32 %sub70, %call71
  br i1 %cmp72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.end.68
  %49 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call74 = call i32 @gimp_item_get_height(%struct._GimpItem* %49)
  br label %cond.end.83

cond.false.75:                                    ; preds = %cond.end.68
  %50 = load i32, i32* %tmp_y2, align 4
  %51 = load i32, i32* %off_y, align 4
  %sub76 = sub nsw i32 %50, %51
  %cmp77 = icmp slt i32 %sub76, 0
  br i1 %cmp77, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %cond.false.75
  br label %cond.end.81

cond.false.79:                                    ; preds = %cond.false.75
  %52 = load i32, i32* %tmp_y2, align 4
  %53 = load i32, i32* %off_y, align 4
  %sub80 = sub nsw i32 %52, %53
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.79, %cond.true.78
  %cond82 = phi i32 [ 0, %cond.true.78 ], [ %sub80, %cond.false.79 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.81, %cond.true.73
  %cond84 = phi i32 [ %call74, %cond.true.73 ], [ %cond82, %cond.end.81 ]
  store i32 %cond84, i32* %tmp_y2, align 4
  store i32 1, i32* %retval1, align 4
  br label %if.end.88

if.else.85:                                       ; preds = %land.lhs.true.24, %do.end.18
  store i32 0, i32* %tmp_x1, align 4
  store i32 0, i32* %tmp_y1, align 4
  %54 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call86 = call i32 @gimp_item_get_width(%struct._GimpItem* %54)
  store i32 %call86, i32* %tmp_x2, align 4
  %55 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call87 = call i32 @gimp_item_get_height(%struct._GimpItem* %55)
  store i32 %call87, i32* %tmp_y2, align 4
  store i32 0, i32* %retval1, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %cond.end.83
  %56 = load i32*, i32** %x1.addr, align 8
  %tobool89 = icmp ne i32* %56, null
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.88
  %57 = load i32, i32* %tmp_x1, align 4
  %58 = load i32*, i32** %x1.addr, align 8
  store i32 %57, i32* %58, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.88
  %59 = load i32*, i32** %y1.addr, align 8
  %tobool92 = icmp ne i32* %59, null
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.91
  %60 = load i32, i32* %tmp_y1, align 4
  %61 = load i32*, i32** %y1.addr, align 8
  store i32 %60, i32* %61, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.end.91
  %62 = load i32*, i32** %x2.addr, align 8
  %tobool95 = icmp ne i32* %62, null
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.94
  %63 = load i32, i32* %tmp_x2, align 4
  %64 = load i32*, i32** %x2.addr, align 8
  store i32 %63, i32* %64, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.end.94
  %65 = load i32*, i32** %y2.addr, align 8
  %tobool98 = icmp ne i32* %65, null
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.97
  %66 = load i32, i32* %tmp_y2, align 4
  %67 = load i32*, i32** %y2.addr, align 8
  store i32 %66, i32* %67, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.97
  %68 = load i32, i32* %retval1, align 4
  store i32 %68, i32* %retval
  br label %return

return:                                           ; preds = %if.end.100, %if.else.16, %if.else.10
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_mask_intersect(%struct._GimpItem* %item, i32* %x, i32* %y, i32* %width, i32* %height) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %selection = alloca %struct._GimpChannel*, align 8
  %tmp_x = alloca i32, align 4
  %tmp_y = alloca i32, align 4
  %tmp_width = alloca i32, align 4
  %tmp_height = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_item_mask_intersect, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.12
  br label %if.end.17

if.else.16:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_item_mask_intersect, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call19 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %14)
  store %struct._GimpImage* %call19, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %15)
  store %struct._GimpChannel* %call20, %struct._GimpChannel** %selection, align 8
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call21)
  %18 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %cmp23 = icmp ne %struct._GimpItem* %18, %19
  br i1 %cmp23, label %land.lhs.true.24, label %if.else.36

land.lhs.true.24:                                 ; preds = %do.end.18
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %call25 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %20, i32* %tmp_x, i32* %tmp_y, i32* %tmp_width, i32* %tmp_height)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.36

if.then.27:                                       ; preds = %land.lhs.true.24
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %21, i32* %off_x, i32* %off_y)
  %22 = load i32, i32* %tmp_x, align 4
  %23 = load i32, i32* %tmp_width, align 4
  %sub = sub nsw i32 %23, %22
  store i32 %sub, i32* %tmp_width, align 4
  %24 = load i32, i32* %tmp_y, align 4
  %25 = load i32, i32* %tmp_height, align 4
  %sub30 = sub nsw i32 %25, %24
  store i32 %sub30, i32* %tmp_height, align 4
  %26 = load i32, i32* %tmp_x, align 4
  %27 = load i32, i32* %off_x, align 4
  %sub31 = sub nsw i32 %26, %27
  %28 = load i32, i32* %tmp_y, align 4
  %29 = load i32, i32* %off_y, align 4
  %sub32 = sub nsw i32 %28, %29
  %30 = load i32, i32* %tmp_width, align 4
  %31 = load i32, i32* %tmp_height, align 4
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call33 = call i32 @gimp_item_get_width(%struct._GimpItem* %32)
  %33 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call34 = call i32 @gimp_item_get_height(%struct._GimpItem* %33)
  %call35 = call i32 @gimp_rectangle_intersect(i32 %sub31, i32 %sub32, i32 %30, i32 %31, i32 0, i32 0, i32 %call33, i32 %call34, i32* %tmp_x, i32* %tmp_y, i32* %tmp_width, i32* %tmp_height)
  store i32 %call35, i32* %retval1, align 4
  br label %if.end.39

if.else.36:                                       ; preds = %land.lhs.true.24, %do.end.18
  store i32 0, i32* %tmp_x, align 4
  store i32 0, i32* %tmp_y, align 4
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call37 = call i32 @gimp_item_get_width(%struct._GimpItem* %34)
  store i32 %call37, i32* %tmp_width, align 4
  %35 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call38 = call i32 @gimp_item_get_height(%struct._GimpItem* %35)
  store i32 %call38, i32* %tmp_height, align 4
  store i32 1, i32* %retval1, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.27
  %36 = load i32*, i32** %x.addr, align 8
  %tobool40 = icmp ne i32* %36, null
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  %37 = load i32, i32* %tmp_x, align 4
  %38 = load i32*, i32** %x.addr, align 8
  store i32 %37, i32* %38, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  %39 = load i32*, i32** %y.addr, align 8
  %tobool43 = icmp ne i32* %39, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.42
  %40 = load i32, i32* %tmp_y, align 4
  %41 = load i32*, i32** %y.addr, align 8
  store i32 %40, i32* %41, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.42
  %42 = load i32*, i32** %width.addr, align 8
  %tobool46 = icmp ne i32* %42, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.45
  %43 = load i32, i32* %tmp_width, align 4
  %44 = load i32*, i32** %width.addr, align 8
  store i32 %43, i32* %44, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.45
  %45 = load i32*, i32** %height.addr, align 8
  %tobool49 = icmp ne i32* %45, null
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.48
  %46 = load i32, i32* %tmp_height, align 4
  %47 = load i32*, i32** %height.addr, align 8
  store i32 %46, i32* %47, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.48
  %48 = load i32, i32* %retval1, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.else.16, %if.else.10
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_is_in_set(%struct._GimpItem* %item, i32 %set) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %set.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %set, i32* %set.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_item_is_in_set, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %15, %struct._GimpItemPrivate** %private, align 8
  %16 = load i32, i32* %set.addr, align 4
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 2, label %sw.bb.14
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %do.end
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call15 = call i32 @gimp_item_get_width(%struct._GimpItem* %17)
  %18 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %18, i32 0, i32 2
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_get_width(%struct._GimpImage* %19)
  %cmp17 = icmp eq i32 %call15, %call16
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.14
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call18 = call i32 @gimp_item_get_height(%struct._GimpItem* %20)
  %21 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image19 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %21, i32 0, i32 2
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image19, align 8
  %call20 = call i32 @gimp_image_get_height(%struct._GimpImage* %22)
  %cmp21 = icmp eq i32 %call18, %call20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.14
  %23 = phi i1 [ false, %sw.bb.14 ], [ %cmp21, %land.rhs ]
  %land.ext = zext i1 %23 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %do.end
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call23 = call i32 @gimp_item_get_visible(%struct._GimpItem* %24)
  store i32 %call23, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %do.end
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call25 = call i32 @gimp_item_get_linked(%struct._GimpItem* %25)
  store i32 %call25, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.24, %sw.bb.22, %land.end, %sw.bb.13, %sw.bb, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_class_init(%struct._GimpItemClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpItemClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpItemClass* %klass, %struct._GimpItemClass** %klass.addr, align 8
  %0 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpItemClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpItemClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpItemClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #8
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpItemClass* %9 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i64 %11, i32 1, i32 280, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call5, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gimp_item_signals, i32 0, i64 0), align 4
  %12 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpItemClass* %12 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type6, align 8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i64 %14, i32 1, i32 288, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gimp_item_signals, i32 0, i64 1), align 4
  %15 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpItemClass* %15 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type8, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i64 %17, i32 1, i32 296, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call9, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gimp_item_signals, i32 0, i64 2), align 4
  %18 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpItemClass* %18 to %struct._GTypeClass*
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type10, align 8
  %call11 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i64 %20, i32 1, i32 304, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call11, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @gimp_item_signals, i32 0, i64 3), align 4
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %21, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_item_constructed, void (%struct._GObject*)** %constructed, align 8
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %22, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_item_finalize, void (%struct._GObject*)** %finalize, align 8
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %23, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_item_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %24, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_item_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %25 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %25, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_item_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %26 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_preview_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %26, i32 0, i32 6
  store void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_item_get_preview_size, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_preview_size, align 8
  %27 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_popup_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %27, i32 0, i32 7
  store i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_item_get_popup_size, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_popup_size, align 8
  %28 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %removed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %28, i32 0, i32 1
  store void (%struct._GimpItem*)* null, void (%struct._GimpItem*)** %removed, align 8
  %29 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %visibility_changed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %29, i32 0, i32 2
  store void (%struct._GimpItem*)* @gimp_item_real_visibility_changed, void (%struct._GimpItem*)** %visibility_changed, align 8
  %30 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %linked_changed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %30, i32 0, i32 3
  store void (%struct._GimpItem*)* null, void (%struct._GimpItem*)** %linked_changed, align 8
  %31 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %lock_content_changed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %31, i32 0, i32 4
  store void (%struct._GimpItem*)* null, void (%struct._GimpItem*)** %lock_content_changed, align 8
  %32 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %unset_removed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %32, i32 0, i32 5
  store void (%struct._GimpItem*)* null, void (%struct._GimpItem*)** %unset_removed, align 8
  %33 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %is_attached = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %33, i32 0, i32 6
  store i32 (%struct._GimpItem*)* null, i32 (%struct._GimpItem*)** %is_attached, align 8
  %34 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %is_content_locked = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %34, i32 0, i32 7
  store i32 (%struct._GimpItem*)* @gimp_item_real_is_content_locked, i32 (%struct._GimpItem*)** %is_content_locked, align 8
  %35 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %get_tree = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %35, i32 0, i32 8
  store %struct._GimpItemTree* (%struct._GimpItem*)* null, %struct._GimpItemTree* (%struct._GimpItem*)** %get_tree, align 8
  %36 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %36, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpItem*, i64)* @gimp_item_real_duplicate, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %37 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %37, i32 0, i32 10
  store void (%struct._GimpItem*, %struct._GimpImage*)* @gimp_item_real_convert, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %38 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %rename = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %38, i32 0, i32 11
  store i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)* @gimp_item_real_rename, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)** %rename, align 8
  %39 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %translate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %39, i32 0, i32 12
  store void (%struct._GimpItem*, i32, i32, i32)* @gimp_item_real_translate, void (%struct._GimpItem*, i32, i32, i32)** %translate, align 8
  %40 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %40, i32 0, i32 13
  store void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_item_real_scale, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %41 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %41, i32 0, i32 14
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)* @gimp_item_real_resize, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %42 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %42, i32 0, i32 15
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)* null, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %43 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %43, i32 0, i32 16
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)* null, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %44 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %transform = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %44, i32 0, i32 17
  store void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)* null, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)** %transform, align 8
  %45 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %stroke = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %45, i32 0, i32 18
  store i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)* null, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)** %stroke, align 8
  %46 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %to_selection = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %46, i32 0, i32 19
  store void (%struct._GimpItem*, i32, i32, i32, double, double)* null, void (%struct._GimpItem*, i32, i32, i32, double, double)** %to_selection, align 8
  %47 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %get_node = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %47, i32 0, i32 20
  store %struct._GeglNode* (%struct._GimpItem*)* @gimp_item_real_get_node, %struct._GeglNode* (%struct._GimpItem*)** %get_node, align 8
  %48 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %default_name = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %48, i32 0, i32 21
  store i8* null, i8** %default_name, align 8
  %49 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %rename_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %49, i32 0, i32 22
  store i8* null, i8** %rename_desc, align 8
  %50 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %50, i32 0, i32 23
  store i8* null, i8** %translate_desc, align 8
  %51 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %scale_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %51, i32 0, i32 24
  store i8* null, i8** %scale_desc, align 8
  %52 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %resize_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %52, i32 0, i32 25
  store i8* null, i8** %resize_desc, align 8
  %53 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %flip_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %53, i32 0, i32 26
  store i8* null, i8** %flip_desc, align 8
  %54 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %rotate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %54, i32 0, i32 27
  store i8* null, i8** %rotate_desc, align 8
  %55 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %transform_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %55, i32 0, i32 28
  store i8* null, i8** %transform_desc, align 8
  %56 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call i64 @gimp_image_get_type() #8
  %call13 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call12, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %56, i32 1, %struct._GParamSpec* %call13)
  %57 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %57, i32 2, %struct._GParamSpec* %call14)
  %58 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i32 1, i32 262144, i32 1, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %58, i32 3, %struct._GParamSpec* %call15)
  %59 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 1, i32 262144, i32 1, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %59, i32 4, %struct._GParamSpec* %call16)
  %60 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call17 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %60, i32 5, %struct._GParamSpec* %call17)
  %61 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i32 -262144, i32 262144, i32 0, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %61, i32 6, %struct._GParamSpec* %call18)
  %62 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* null, i32 1, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %62, i32 7, %struct._GParamSpec* %call19)
  %63 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call20 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* null, i32 0, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %63, i32 8, %struct._GParamSpec* %call20)
  %64 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* null, i32 0, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %64, i32 9, %struct._GParamSpec* %call21)
  %65 = load %struct._GimpItemClass*, %struct._GimpItemClass** %klass.addr, align 8
  %66 = bitcast %struct._GimpItemClass* %65 to i8*
  call void @g_type_class_add_private(i8* %66, i64 64)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %3 = load i8*, i8** @gimp_item_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_item_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %12, i32 0, i32 2
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_image_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 326, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_constructed, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %26 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %ID = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %26, i32 0, i32 0
  %27 = load i32, i32* %ID, align 4
  %cmp20 = icmp ne i32 %27, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 327, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_item_constructed, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0)) #10
  unreachable

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %3 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %3, i32 0, i32 9
  %4 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %tobool = icmp ne %struct._GeglNode* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node2 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %5, i32 0, i32 9
  %6 = load %struct._GeglNode*, %struct._GeglNode** %node2, align 8
  %7 = bitcast %struct._GeglNode* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node3 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %8, i32 0, i32 9
  store %struct._GeglNode* null, %struct._GeglNode** %node3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %9, i32 0, i32 2
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool4 = icmp ne %struct._GimpImage* %10, null
  br i1 %tobool4, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image5 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %11, i32 0, i32 2
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool6 = icmp ne %struct._Gimp* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  %14 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image8 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %14, i32 0, i32 2
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image8, align 8
  %gimp9 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %item_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 30
  %17 = load %struct._GimpIdTable*, %struct._GimpIdTable** %item_table, align 8
  %18 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %ID = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %ID, align 4
  %call10 = call i32 @gimp_id_table_remove(%struct._GimpIdTable* %17, i32 %19)
  %20 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image11 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %20, i32 0, i32 2
  store %struct._GimpImage* null, %struct._GimpImage** %image11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %land.lhs.true, %if.end
  %21 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %21, i32 0, i32 3
  %22 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %tobool13 = icmp ne %struct._GimpParasiteList* %22, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %23 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites15 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %23, i32 0, i32 3
  %24 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites15, align 8
  %25 = bitcast %struct._GimpParasiteList* %24 to i8*
  call void @g_object_unref(i8* %25)
  %26 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites16 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %26, i32 0, i32 3
  store %struct._GimpParasiteList* null, %struct._GimpParasiteList** %parasites16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  %27 = load i8*, i8** @gimp_item_parent_class, align 8
  %28 = bitcast i8* %27 to %struct._GTypeClass*
  %call18 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %28, i64 80)
  %29 = bitcast %struct._GTypeClass* %call18 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %29, i32 0, i32 6
  %30 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %30(%struct._GObject* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  store %struct._GimpItem* %2, %struct._GimpItem** %item, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpImage*
  call void @gimp_item_set_image(%struct._GimpItem* %4, %struct._GimpImage* %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 371, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %5, i32 0, i32 2
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = bitcast %struct._GimpImage* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %ID = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %9, i32 0, i32 0
  %10 = load i32, i32* %ID, align 4
  call void @g_value_set_int(%struct._GValue* %8, i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %12, i32 0, i32 4
  %13 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %11, i32 %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 5
  %16 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %14, i32 %16)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %18, i32 0, i32 6
  %19 = load i32, i32* %offset_x, align 4
  call void @g_value_set_int(%struct._GValue* %17, i32 %19)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %21 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %21, i32 0, i32 7
  %22 = load i32, i32* %offset_y, align 4
  call void @g_value_set_int(%struct._GValue* %20, i32 %22)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %24 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %visible = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %24, i32 0, i32 8
  %bf.load = load i8, i8* %visible, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  call void @g_value_set_boolean(%struct._GValue* %23, i32 %bf.cast)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %linked = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %26, i32 0, i32 8
  %bf.load9 = load i8, i8* %linked, align 8
  %bf.lshr = lshr i8 %bf.load9, 1
  %bf.clear10 = and i8 %bf.lshr, 1
  %bf.cast11 = zext i8 %bf.clear10 to i32
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %bf.cast11)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %lock_content = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %28, i32 0, i32 8
  %bf.load13 = load i8, i8* %lock_content, align 8
  %bf.lshr14 = lshr i8 %bf.load13, 2
  %bf.clear15 = and i8 %bf.lshr14, 1
  %bf.cast16 = zext i8 %bf.clear15 to i32
  call void @g_value_set_boolean(%struct._GValue* %27, i32 %bf.cast16)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %29, %struct._GObject** %_glib__object, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %30, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = load i32, i32* %property_id.addr, align 4
  store i32 %31, i32* %_glib__property_id, align 4
  %32 = load i32, i32* %_glib__property_id, align 4
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %33, i32 0, i32 1
  %34 = load i8*, i8** %name, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = bitcast %struct._GParamSpec* %35 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %38)
  %39 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %42)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 415, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %32, i8* %34, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.12, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_item_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %3, i32 0, i32 3
  %4 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %5 = bitcast %struct._GimpParasiteList* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %7 = load i64*, i64** %gui_size.addr, align 8
  %call4 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %6, i64* %7)
  %8 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %8, %call4
  store i64 %add, i64* %memsize, align 8
  %9 = load i64, i64* %memsize, align 8
  %10 = load i8*, i8** @gimp_item_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #8
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call5)
  %12 = bitcast %struct._GTypeClass* %call6 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %12, i32 0, i32 3
  %13 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %15 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 %13(%struct._GimpObject* %14, i64* %15)
  %add8 = add nsw i64 %9, %call7
  ret i64 %add8
}

declare void @gimp_item_get_preview_size(%struct._GimpViewable*, i32, i32, i32, i32*, i32*) #1

declare i32 @gimp_item_get_popup_size(%struct._GimpViewable*, i32, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_item_real_visibility_changed(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %input = alloca %struct._GeglNode*, align 8
  %output = alloca %struct._GeglNode*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %3 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %3, i32 0, i32 9
  %4 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %tobool = icmp ne %struct._GeglNode* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call i32 @gimp_item_get_visible(%struct._GimpItem* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %6 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node5 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %6, i32 0, i32 9
  %7 = load %struct._GeglNode*, %struct._GeglNode** %node5, align 8
  %call6 = call %struct._GeglNode* @gegl_node_get_input_proxy(%struct._GeglNode* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0))
  store %struct._GeglNode* %call6, %struct._GeglNode** %input, align 8
  %8 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node7 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %8, i32 0, i32 9
  %9 = load %struct._GeglNode*, %struct._GeglNode** %node7, align 8
  %call8 = call %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0))
  store %struct._GeglNode* %call8, %struct._GeglNode** %output, align 8
  %10 = load %struct._GeglNode*, %struct._GeglNode** %input, align 8
  %11 = load %struct._GeglNode*, %struct._GeglNode** %output, align 8
  %call9 = call i32 @gegl_node_connect_to(%struct._GeglNode* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), %struct._GeglNode* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.else, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_item_real_is_content_locked(%struct._GimpItem* %item) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call %struct._GimpItem* @gimp_item_get_parent(%struct._GimpItem* %0)
  store %struct._GimpItem* %call, %struct._GimpItem** %parent, align 8
  %1 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %tobool = icmp ne %struct._GimpItem* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %call1 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #8
  %call4 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast i8* %call4 to %struct._GimpItemPrivate*
  %lock_content = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %5, i32 0, i32 8
  %bf.load = load i8, i8* %lock_content, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  store i32 %bf.cast, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_item_real_duplicate(%struct._GimpItem* %item, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_type.addr = alloca i64, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %new_name = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %name = alloca i8*, align 8
  %ext = alloca i8*, align 8
  %number = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i64 %new_type, i64* %new_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_item_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_item_real_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %15, %struct._GimpItemPrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %16, i32 0, i32 2
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = bitcast %struct._GimpImage* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst15, align 8
  %call18 = call i64 @gimp_image_get_type() #8
  store i64 %call18, i64* %__t17, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %do.body.13
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %do.body.13
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %tobool25 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type28, align 8
  %25 = load i64, i64* %__t17, align 8
  %cmp29 = icmp eq i64 %24, %25
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %__r20, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true.26, %if.else.23
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %27 = load i64, i64* %__t17, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #9
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %28 = load i32, i32* %__r20, align 4
  store i32 %28, i32* %tmp35
  %29 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.34
  br label %if.end.39

if.else.38:                                       ; preds = %if.end.34
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_item_real_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %30 = load i64, i64* %new_type.addr, align 8
  %call42 = call i64 @gimp_item_get_type() #8
  %call43 = call i32 @g_type_is_a(i64 %30, i64 %call42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.41
  br label %if.end.47

if.else.46:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_item_real_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %32 = bitcast %struct._GimpItem* %31 to i8*
  %call53 = call i8* @gimp_object_get_name(i8* %32)
  store i8* %call53, i8** %name, align 8
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.48
  %33 = load i8*, i8** %name, align 8
  %cmp55 = icmp ne i8* %33, null
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %do.body.54
  br label %if.end.58

if.else.57:                                       ; preds = %do.body.54
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_item_real_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end.58:                                        ; preds = %if.then.56
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %34 = load i8*, i8** %name, align 8
  %call60 = call i8* @strrchr(i8* %34, i32 35) #9
  store i8* %call60, i8** %ext, align 8
  %call61 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0)) #5
  %call62 = call i64 @strlen(i8* %call61) #9
  %conv = trunc i64 %call62 to i32
  store i32 %conv, i32* %len, align 4
  %35 = load i8*, i8** %name, align 8
  %call63 = call i64 @strlen(i8* %35) #9
  %36 = load i32, i32* %len, align 4
  %conv64 = sext i32 %36 to i64
  %cmp65 = icmp uge i64 %call63, %conv64
  br i1 %cmp65, label %land.lhs.true.67, label %lor.lhs.false

land.lhs.true.67:                                 ; preds = %do.end.59
  %37 = load i8*, i8** %name, align 8
  %call68 = call i64 @strlen(i8* %37) #9
  %38 = load i32, i32* %len, align 4
  %conv69 = sext i32 %38 to i64
  %sub = sub i64 %call68, %conv69
  %39 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 %sub
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0)) #5
  %call71 = call i32 @strcmp(i8* %arrayidx, i8* %call70) #9
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then.88, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.67, %do.end.59
  %40 = load i8*, i8** %ext, align 8
  %tobool74 = icmp ne i8* %40, null
  br i1 %tobool74, label %land.lhs.true.75, label %if.else.90

land.lhs.true.75:                                 ; preds = %lor.lhs.false
  %41 = load i8*, i8** %ext, align 8
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 1
  %call76 = call i32 @atoi(i8* %add.ptr) #9
  store i32 %call76, i32* %number, align 4
  %cmp77 = icmp sgt i32 %call76, 0
  br i1 %cmp77, label %land.lhs.true.79, label %if.else.90

land.lhs.true.79:                                 ; preds = %land.lhs.true.75
  %42 = load i32, i32* %number, align 4
  %conv80 = sitofp i32 %42 to double
  %call81 = call double @log10(double %conv80) #5
  %add = fadd double %call81, 1.000000e+00
  %conv82 = fptosi double %add to i32
  %conv83 = sext i32 %conv82 to i64
  %43 = load i8*, i8** %ext, align 8
  %add.ptr84 = getelementptr inbounds i8, i8* %43, i64 1
  %call85 = call i64 @strlen(i8* %add.ptr84) #9
  %cmp86 = icmp eq i64 %conv83, %call85
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %land.lhs.true.79, %land.lhs.true.67
  %44 = load i8*, i8** %name, align 8
  %call89 = call noalias i8* @g_strdup(i8* %44)
  store i8* %call89, i8** %new_name, align 8
  br label %if.end.93

if.else.90:                                       ; preds = %land.lhs.true.79, %land.lhs.true.75, %lor.lhs.false
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0)) #5
  %45 = load i8*, i8** %name, align 8
  %call92 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call91, i8* %45)
  store i8* %call92, i8** %new_name, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.88
  %46 = load i64, i64* %new_type.addr, align 8
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call94 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %47)
  %48 = load i8*, i8** %new_name, align 8
  %49 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %49, i32 0, i32 6
  %50 = load i32, i32* %offset_x, align 4
  %51 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %51, i32 0, i32 7
  %52 = load i32, i32* %offset_y, align 4
  %53 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call95 = call i32 @gimp_item_get_width(%struct._GimpItem* %53)
  %54 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call96 = call i32 @gimp_item_get_height(%struct._GimpItem* %54)
  %call97 = call %struct._GimpItem* @gimp_item_new(i64 %46, %struct._GimpImage* %call94, i8* %48, i32 %50, i32 %52, i32 %call95, i32 %call96)
  store %struct._GimpItem* %call97, %struct._GimpItem** %new_item, align 8
  %55 = load i8*, i8** %new_name, align 8
  call void @g_free(i8* %55)
  %56 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %57 = bitcast %struct._GimpItem* %56 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_item_get_type() #8
  %call99 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %57, i64 %call98)
  %58 = bitcast i8* %call99 to %struct._GimpItemPrivate*
  %parasites = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %58, i32 0, i32 3
  %59 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %60 = bitcast %struct._GimpParasiteList* %59 to i8*
  call void @g_object_unref(i8* %60)
  %61 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %parasites100 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %61, i32 0, i32 3
  %62 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites100, align 8
  %call101 = call %struct._GimpParasiteList* @gimp_parasite_list_copy(%struct._GimpParasiteList* %62)
  %63 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %64 = bitcast %struct._GimpItem* %63 to %struct._GTypeInstance*
  %call102 = call i64 @gimp_item_get_type() #8
  %call103 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %64, i64 %call102)
  %65 = bitcast i8* %call103 to %struct._GimpItemPrivate*
  %parasites104 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %65, i32 0, i32 3
  store %struct._GimpParasiteList* %call101, %struct._GimpParasiteList** %parasites104, align 8
  %66 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %67 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call105 = call i32 @gimp_item_get_visible(%struct._GimpItem* %67)
  call void @gimp_item_set_visible(%struct._GimpItem* %66, i32 %call105, i32 0)
  %68 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %69 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call106 = call i32 @gimp_item_get_linked(%struct._GimpItem* %69)
  call void @gimp_item_set_linked(%struct._GimpItem* %68, i32 %call106, i32 0)
  %70 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %call107 = call i32 @gimp_item_can_lock_content(%struct._GimpItem* %70)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.end.93
  %71 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %72 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call110 = call i32 @gimp_item_get_lock_content(%struct._GimpItem* %72)
  call void @gimp_item_set_lock_content(%struct._GimpItem* %71, i32 %call110, i32 0)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %if.end.93
  %73 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  store %struct._GimpItem* %73, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.111, %if.else.57, %if.else.46, %if.else.38, %if.else.9
  %74 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %74
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_real_convert(%struct._GimpItem* %item, %struct._GimpImage* %dest_image) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  call void @gimp_item_set_image(%struct._GimpItem* %0, %struct._GimpImage* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_item_real_rename(%struct._GimpItem* %item, i8* %new_name, i8* %undo_desc, %struct._GError** %error) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_name.addr = alloca i8*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call i32 @gimp_item_is_attached(%struct._GimpItem* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call1 = call %struct._GimpItemTree* @gimp_item_get_tree(%struct._GimpItem* %1)
  %2 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %3 = load i8*, i8** %new_name.addr, align 8
  %4 = load i8*, i8** %undo_desc.addr, align 8
  call void @gimp_item_tree_rename_item(%struct._GimpItemTree* %call1, %struct._GimpItem* %2, i8* %3, i32 1, i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %6 = bitcast %struct._GimpItem* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_object_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpObject*
  %8 = load i8*, i8** %new_name.addr, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %7, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_real_translate(%struct._GimpItem* %item, i32 %offset_x, i32 %offset_y, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemPrivate*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x2 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %4, i32 0, i32 6
  %5 = load i32, i32* %offset_x2, align 4
  %6 = load i32, i32* %offset_x.addr, align 4
  %add = add nsw i32 %5, %6
  %7 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y3 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %7, i32 0, i32 7
  %8 = load i32, i32* %offset_y3, align 4
  %9 = load i32, i32* %offset_y.addr, align 4
  %add4 = add nsw i32 %8, %9
  call void @gimp_item_set_offset(%struct._GimpItem* %3, i32 %add, i32 %add4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_real_scale(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %new_offset_x, i32 %new_offset_y, i32 %interpolation, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32, align 4
  %new_offset_y.addr = alloca i32, align 4
  %interpolation.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %new_offset_x, i32* %new_offset_x.addr, align 4
  store i32 %new_offset_y, i32* %new_offset_y.addr, align 4
  store i32 %interpolation, i32* %interpolation.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %3 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %3, i32 0, i32 4
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* %new_width.addr, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %new_width.addr, align 4
  %7 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width2 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %7, i32 0, i32 4
  store i32 %6, i32* %width2, align 4
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %9 = bitcast %struct._GimpItem* %8 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %11, i32 0, i32 5
  %12 = load i32, i32* %height, align 4
  %13 = load i32, i32* %new_height.addr, align 4
  %cmp4 = icmp ne i32 %12, %13
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %14 = load i32, i32* %new_height.addr, align 4
  %15 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height6 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 5
  store i32 %14, i32* %height6, align 4
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %20 = load i32, i32* %new_offset_x.addr, align 4
  %21 = load i32, i32* %new_offset_y.addr, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %19, i32 %20, i32 %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_item_real_resize(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %private = alloca %struct._GimpItemPrivate*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %3 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %3, i32 0, i32 4
  %4 = load i32, i32* %width, align 4
  %5 = load i32, i32* %new_width.addr, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %new_width.addr, align 4
  %7 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %width2 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %7, i32 0, i32 4
  store i32 %6, i32* %width2, align 4
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %9 = bitcast %struct._GimpItem* %8 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %11, i32 0, i32 5
  %12 = load i32, i32* %height, align 4
  %13 = load i32, i32* %new_height.addr, align 4
  %cmp4 = icmp ne i32 %12, %13
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %14 = load i32, i32* %new_height.addr, align 4
  %15 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %height6 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %15, i32 0, i32 5
  store i32 %14, i32* %height6, align 4
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %17 = bitcast %struct._GimpItem* %16 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %20 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_x9 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %20, i32 0, i32 6
  %21 = load i32, i32* %offset_x9, align 4
  %22 = load i32, i32* %offset_x.addr, align 4
  %sub = sub nsw i32 %21, %22
  %23 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %offset_y10 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %23, i32 0, i32 7
  %24 = load i32, i32* %offset_y10, align 4
  %25 = load i32, i32* %offset_y.addr, align 4
  %sub11 = sub nsw i32 %24, %25
  call void @gimp_item_set_offset(%struct._GimpItem* %19, i32 %sub, i32 %sub11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_item_real_get_node(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %private = alloca %struct._GimpItemPrivate*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpItemPrivate*
  store %struct._GimpItemPrivate* %2, %struct._GimpItemPrivate** %private, align 8
  %call2 = call %struct._GeglNode* @gegl_node_new()
  %3 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %3, i32 0, i32 9
  store %struct._GeglNode* %call2, %struct._GeglNode** %node, align 8
  %4 = load %struct._GimpItemPrivate*, %struct._GimpItemPrivate** %private, align 8
  %node3 = getelementptr inbounds %struct._GimpItemPrivate, %struct._GimpItemPrivate* %4, i32 0, i32 9
  %5 = load %struct._GeglNode*, %struct._GeglNode** %node3, align 8
  ret %struct._GeglNode* %5
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i8* @g_type_name(i64) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare %struct._GeglNode* @gegl_node_get_input_proxy(%struct._GeglNode*, i8*) #1

declare %struct._GeglNode* @gegl_node_get_output_proxy(%struct._GeglNode*, i8*) #1

declare i32 @gegl_node_connect_to(%struct._GeglNode*, i8*, %struct._GeglNode*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind
declare i8* @gettext(i8*) #7

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare double @log10(double) #7

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

declare %struct._GimpParasiteList* @gimp_parasite_list_copy(%struct._GimpParasiteList*) #1

declare void @gimp_item_tree_rename_item(%struct._GimpItemTree*, %struct._GimpItem*, i8*, i32, i8*) #1

declare %struct._GeglNode* @gegl_node_new() #1

declare void @g_object_force_floating(%struct._GObject*) #1

declare %struct._GimpParasiteList* @gimp_parasite_list_new() #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

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
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
