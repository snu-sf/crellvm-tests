; ModuleID = './app/core/gimpchannel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpChannelClass = type { %struct._GimpDrawableClass, void (%struct._GimpChannel*)*, i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)*, i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)*, i32 (%struct._GimpChannel*)*, void (%struct._GimpChannel*, double, double, i32)*, void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i8*, i32)*, void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32, i32, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32, i32)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
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
%struct._GimpItemTree = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GeglNode = type opaque
%struct._TileManager = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }
%struct._GimpPickableInterface = type { %struct._GTypeInterface, void (%struct._GimpPickable*)*, %struct._GimpImage* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*)*, %struct._TileManager* (%struct._GimpPickable*)*, i32 (%struct._GimpPickable*, i32, i32, i8*)*, i32 (%struct._GimpPickable*, i32, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpPickable = type opaque
%struct._GimpProjection = type opaque
%struct._GeglColor = type { %struct._GObject, %struct._GeglColorPrivate* }
%struct._GeglColorPrivate = type opaque
%struct._GimpUndo = type opaque
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpPaintCore = type opaque
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GimpLut = type { i8**, i32 }

@gimp_channel_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpChannel\00", align 1
@gimp_channel_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpPickableInterface*)* @gimp_channel_pickable_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_channel_new = private unnamed_addr constant [17 x i8] c"gimp_channel_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_channel_new_from_alpha = private unnamed_addr constant [28 x i8] c"gimp_channel_new_from_alpha\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"gimp_drawable_has_alpha (drawable)\00", align 1
@__func__.gimp_channel_new_from_component = private unnamed_addr constant [32 x i8] c"gimp_channel_new_from_component\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pixel != -1\00", align 1
@__func__.gimp_channel_get_parent = private unnamed_addr constant [24 x i8] c"gimp_channel_get_parent\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CHANNEL (channel)\00", align 1
@__func__.gimp_channel_set_color = private unnamed_addr constant [23 x i8] c"gimp_channel_set_color\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"undo-type\04Set Channel Color\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@channel_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_channel_get_color = private unnamed_addr constant [23 x i8] c"gimp_channel_get_color\00", align 1
@__func__.gimp_channel_get_opacity = private unnamed_addr constant [25 x i8] c"gimp_channel_get_opacity\00", align 1
@__func__.gimp_channel_set_opacity = private unnamed_addr constant [25 x i8] c"gimp_channel_set_opacity\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"undo-type\04Set Channel Opacity\00", align 1
@__func__.gimp_channel_get_show_masked = private unnamed_addr constant [29 x i8] c"gimp_channel_get_show_masked\00", align 1
@__func__.gimp_channel_set_show_masked = private unnamed_addr constant [29 x i8] c"gimp_channel_set_show_masked\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@__func__.gimp_channel_push_undo = private unnamed_addr constant [23 x i8] c"gimp_channel_push_undo\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"gimp_item_is_attached (GIMP_ITEM (channel))\00", align 1
@__func__.gimp_channel_new_mask = private unnamed_addr constant [22 x i8] c"gimp_channel_new_mask\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Selection Mask\00", align 1
@__func__.gimp_channel_boundary = private unnamed_addr constant [22 x i8] c"gimp_channel_boundary\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"segs_in != NULL\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"segs_out != NULL\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"num_segs_in != NULL\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"num_segs_out != NULL\00", align 1
@__func__.gimp_channel_bounds = private unnamed_addr constant [20 x i8] c"gimp_channel_bounds\00", align 1
@__func__.gimp_channel_is_empty = private unnamed_addr constant [22 x i8] c"gimp_channel_is_empty\00", align 1
@__func__.gimp_channel_feather = private unnamed_addr constant [21 x i8] c"gimp_channel_feather\00", align 1
@__func__.gimp_channel_sharpen = private unnamed_addr constant [21 x i8] c"gimp_channel_sharpen\00", align 1
@__func__.gimp_channel_clear = private unnamed_addr constant [19 x i8] c"gimp_channel_clear\00", align 1
@__func__.gimp_channel_all = private unnamed_addr constant [17 x i8] c"gimp_channel_all\00", align 1
@__func__.gimp_channel_invert = private unnamed_addr constant [20 x i8] c"gimp_channel_invert\00", align 1
@__func__.gimp_channel_border = private unnamed_addr constant [20 x i8] c"gimp_channel_border\00", align 1
@__func__.gimp_channel_grow = private unnamed_addr constant [18 x i8] c"gimp_channel_grow\00", align 1
@__func__.gimp_channel_shrink = private unnamed_addr constant [20 x i8] c"gimp_channel_shrink\00", align 1
@gimp_channel_parent_class = internal global i8* null, align 8
@GimpChannel_private_offset = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"gimp-channel\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"undo-type\04Rename Channel\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"undo-type\04Move Channel\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"undo-type\04Scale Channel\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"undo-type\04Resize Channel\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"undo-type\04Flip Channel\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"undo-type\04Rotate Channel\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"undo-type\04Transform Channel\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"undo-type\04Stroke Channel\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"undo-type\04Channel to Selection\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"undo-type\04Reorder Channel\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"undo-type\04Raise Channel\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"undo-type\04Raise Channel to Top\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"undo-type\04Lower Channel\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"undo-type\04Lower Channel to Bottom\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"Channel cannot be raised higher.\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Channel cannot be lowered more.\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"undo-type\04Feather Channel\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"undo-type\04Sharpen Channel\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"undo-type\04Clear Channel\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"undo-type\04Fill Channel\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"undo-type\04Invert Channel\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"undo-type\04Border Channel\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"undo-type\04Grow Channel\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"undo-type\04Shrink Channel\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Qmask\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Quick Mask\00", align 1
@__func__.gimp_channel_duplicate = private unnamed_addr constant [23 x i8] c"gimp_channel_duplicate\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"Cannot stroke empty channel.\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"gimpchannel.c\00", align 1
@__func__.gimp_channel_stroke = private unnamed_addr constant [20 x i8] c"gimp_channel_stroke\00", align 1
@__func__.gimp_channel_get_node = private unnamed_addr constant [22 x i8] c"gimp_channel_get_node\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"channel->color_node == NULL\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"gegl:color\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"channel->mask_node == NULL\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"gegl:opacity\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"channel->invert_node == NULL\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"gegl:invert\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_channel_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_channel_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_channel_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_channel_class_intern_init to void (i8*, i8*)*), i32 160, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpChannel*)* @gimp_channel_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_pickable_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_channel_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_channel_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_channel_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_channel_parent_class, align 8
  %1 = load i32, i32* @GimpChannel_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpChannel_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpChannelClass*
  call void @gimp_channel_class_init(%struct._GimpChannelClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_init(%struct._GimpChannel* %channel) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %0, i32 0, i32 1
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %1 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %show_masked = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %1, i32 0, i32 2
  store i32 0, i32* %show_masked, align 4
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %boundary_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %2, i32 0, i32 6
  store i32 0, i32* %boundary_known, align 4
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_in = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %3, i32 0, i32 7
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_in, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_out = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %4, i32 0, i32 8
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_out, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_in = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %5, i32 0, i32 9
  store i32 0, i32* %num_segs_in, align 4
  %6 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_out = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %6, i32 0, i32 10
  store i32 0, i32* %num_segs_out, align 4
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %7, i32 0, i32 11
  store i32 0, i32* %empty, align 4
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %8, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %9, i32 0, i32 13
  store i32 0, i32* %x1, align 4
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %10, i32 0, i32 14
  store i32 0, i32* %y1, align 4
  %11 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %11, i32 0, i32 15
  store i32 0, i32* %x2, align 4
  %12 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %12, i32 0, i32 16
  store i32 0, i32* %y2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_pickable_iface_init(%struct._GimpPickableInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpPickableInterface*, align 8
  store %struct._GimpPickableInterface* %iface, %struct._GimpPickableInterface** %iface.addr, align 8
  %0 = load %struct._GimpPickableInterface*, %struct._GimpPickableInterface** %iface.addr, align 8
  %get_opacity_at = getelementptr inbounds %struct._GimpPickableInterface, %struct._GimpPickableInterface* %0, i32 0, i32 7
  store i32 (%struct._GimpPickable*, i32, i32)* @gimp_channel_get_opacity_at, i32 (%struct._GimpPickable*, i32, i32)** %get_opacity_at, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %image, i32 %width, i32 %height, i8* %name, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_channel_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_channel_get_type() #7
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load i32, i32* %width.addr, align 4
  %16 = load i32, i32* %height.addr, align 4
  %call12 = call %struct._GimpDrawable* @gimp_drawable_new(i64 %call11, %struct._GimpImage* %13, i8* %14, i32 0, i32 0, i32 %15, i32 %16, i32 2)
  %17 = bitcast %struct._GimpDrawable* %call12 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_channel_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpChannel*
  store %struct._GimpChannel* %18, %struct._GimpChannel** %channel, align 8
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool15 = icmp ne %struct._GimpRGB* %19, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %do.end
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color17 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %20, i32 0, i32 1
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %22 = bitcast %struct._GimpRGB* %color17 to i8*
  %23 = bitcast %struct._GimpRGB* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %do.end
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %show_masked = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %24, i32 0, i32 2
  store i32 1, i32* %show_masked, align 4
  %25 = load i32, i32* %width.addr, align 4
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %26, i32 0, i32 15
  store i32 %25, i32* %x2, align 4
  %27 = load i32, i32* %height.addr, align 4
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %28, i32 0, i32 16
  store i32 %27, i32* %y2, align 4
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  store %struct._GimpChannel* %29, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.9
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpDrawable* @gimp_drawable_new(i64, %struct._GimpImage*, i8*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_channel_new_from_alpha(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, i8* %name, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %name.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_new_from_alpha, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_new_from_alpha, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call40 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %26)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_channel_new_from_alpha, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call46)
  %29 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %call48 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  store i32 %call48, i32* %width, align 4
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call49)
  %32 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  %call51 = call i32 @gimp_item_get_height(%struct._GimpItem* %32)
  store i32 %call51, i32* %height, align 4
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %34 = load i32, i32* %width, align 4
  %35 = load i32, i32* %height, align 4
  %36 = load i8*, i8** %name.addr, align 8
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call52 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %33, i32 %34, i32 %35, i8* %36, %struct._GimpRGB* %37)
  store %struct._GimpChannel* %call52, %struct._GimpChannel** %channel, align 8
  %38 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_channel_clear(%struct._GimpChannel* %38, i8* null, i32 0)
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call53 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %39)
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call53, i32 0, i32 0, i32 %40, i32 %41, i32 0)
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %43 = bitcast %struct._GimpChannel* %42 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_drawable_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call54)
  %44 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpDrawable*
  %call56 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %44)
  %45 = load i32, i32* %width, align 4
  %46 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call56, i32 0, i32 0, i32 %45, i32 %46, i32 1)
  call void @extract_alpha_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* null, %struct._PixelRegion* %destPR)
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %47, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %48 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  store %struct._GimpChannel* %48, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.36, %if.else.9
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %49
}

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define void @gimp_channel_clear(%struct._GimpChannel* %channel, i8* %undo_desc, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_channel_clear, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpChannelClass*
  %clear = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %19, i32 0, i32 7
  %20 = load void (%struct._GimpChannel*, i8*, i32)*, void (%struct._GimpChannel*, i8*, i32)** %clear, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = load i8*, i8** %undo_desc.addr, align 8
  %23 = load i32, i32* %push_undo.addr, align 4
  call void %20(%struct._GimpChannel* %21, i8* %22, i32 %23)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare void @extract_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage* %image, i32 %type, i8* %name, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %projection = alloca %struct._GimpProjection*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %proj_tiles = alloca %struct._TileManager*, align 8
  %src = alloca %struct._PixelRegion, align 8
  %dest = alloca %struct._PixelRegion, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pixel = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_channel_new_from_component, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = load i32, i32* %type.addr, align 4
  %call11 = call i32 @gimp_image_get_component_index(%struct._GimpImage* %13, i32 %14)
  store i32 %call11, i32* %pixel, align 4
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %15 = load i32, i32* %pixel, align 4
  %cmp13 = icmp ne i32 %15, -1
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_channel_new_from_component, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call18 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %16)
  store %struct._GimpProjection* %call18, %struct._GimpProjection** %projection, align 8
  %17 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %18 = bitcast %struct._GimpProjection* %17 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_pickable_interface_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call19)
  %19 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpPickable*
  call void @gimp_pickable_flush(%struct._GimpPickable* %19)
  %20 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %21 = bitcast %struct._GimpProjection* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_pickable_interface_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpPickable*
  %call23 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %22)
  store %struct._TileManager* %call23, %struct._TileManager** %proj_tiles, align 8
  %23 = load %struct._TileManager*, %struct._TileManager** %proj_tiles, align 8
  %call24 = call i32 @tile_manager_width(%struct._TileManager* %23)
  store i32 %call24, i32* %width, align 4
  %24 = load %struct._TileManager*, %struct._TileManager** %proj_tiles, align 8
  %call25 = call i32 @tile_manager_height(%struct._TileManager* %24)
  store i32 %call25, i32* %height, align 4
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %26 = load i32, i32* %width, align 4
  %27 = load i32, i32* %height, align 4
  %28 = load i8*, i8** %name.addr, align 8
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call26 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %25, i32 %26, i32 %27, i8* %28, %struct._GimpRGB* %29)
  store %struct._GimpChannel* %call26, %struct._GimpChannel** %channel, align 8
  %30 = load %struct._TileManager*, %struct._TileManager** %proj_tiles, align 8
  %31 = load i32, i32* %width, align 4
  %32 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %src, %struct._TileManager* %30, i32 0, i32 0, i32 %31, i32 %32, i32 0)
  %33 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %34 = bitcast %struct._GimpChannel* %33 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_drawable_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call27)
  %35 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpDrawable*
  %call29 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %35)
  %36 = load i32, i32* %width, align 4
  %37 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %dest, %struct._TileManager* %call29, i32 0, i32 0, i32 %36, i32 %37, i32 1)
  %38 = load i32, i32* %pixel, align 4
  call void @copy_component(%struct._PixelRegion* %src, %struct._PixelRegion* %dest, i32 %38)
  %39 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  store %struct._GimpChannel* %39, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %40
}

declare i32 @gimp_image_get_component_index(%struct._GimpImage*, i32) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare void @gimp_pickable_flush(%struct._GimpPickable*) #1

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare void @copy_component(%struct._PixelRegion*, %struct._PixelRegion*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_channel_get_parent(%struct._GimpChannel* %channel) #3 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_channel_get_parent, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  %call13 = call %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable* %15)
  %16 = bitcast %struct._GimpViewable* %call13 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_channel_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpChannel*
  store %struct._GimpChannel* %17, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %18
}

declare %struct._GimpViewable* @gimp_viewable_get_parent(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_channel_set_color(%struct._GimpChannel* %channel, %struct._GimpRGB* %color, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %gegl_color = alloca %struct._GeglColor*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_channel_set_color, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.54

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_channel_set_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.54

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color17 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %14, i32 0, i32 1
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call18 = call double @gimp_rgba_distance(%struct._GimpRGB* %color17, %struct._GimpRGB* %15)
  %cmp19 = fcmp ogt double %call18, 1.000000e-04
  br i1 %cmp19, label %if.then.20, label %if.end.54

if.then.20:                                       ; preds = %do.end.16
  %16 = load i32, i32* %push_undo.addr, align 4
  %tobool21 = icmp ne i32 %16, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.34

land.lhs.true.22:                                 ; preds = %if.then.20
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %18 = bitcast %struct._GimpChannel* %17 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call23)
  %19 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  %call25 = call i32 @gimp_item_is_attached(%struct._GimpItem* %19)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %land.lhs.true.22
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %21 = bitcast %struct._GimpChannel* %20 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call29)
  %22 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %22)
  store %struct._GimpImage* %call31, %struct._GimpImage** %image, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call32 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i64 10)
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call33 = call %struct._GimpUndo* @gimp_image_undo_push_channel_color(%struct._GimpImage* %23, i8* %call32, %struct._GimpChannel* %24)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %land.lhs.true.22, %if.then.20
  %25 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color35 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %25, i32 0, i32 1
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %27 = bitcast %struct._GimpRGB* %color35 to i8*
  %28 = bitcast %struct._GimpRGB* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color_node = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %29, i32 0, i32 3
  %30 = load %struct._GeglNode*, %struct._GeglNode** %color_node, align 8
  %tobool36 = icmp ne %struct._GeglNode* %30, null
  br i1 %tobool36, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %if.end.34
  %call39 = call %struct._GeglColor* @gegl_color_new(i8* null)
  store %struct._GeglColor* %call39, %struct._GeglColor** %gegl_color, align 8
  %31 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color40 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %32, i32 0, i32 1
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color40, i32 0, i32 0
  %33 = load double, double* %r, align 8
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color41 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %34, i32 0, i32 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color41, i32 0, i32 1
  %35 = load double, double* %g, align 8
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color42 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %36, i32 0, i32 1
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color42, i32 0, i32 2
  %37 = load double, double* %b, align 8
  %38 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color43 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %38, i32 0, i32 1
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color43, i32 0, i32 3
  %39 = load double, double* %a, align 8
  call void @gegl_color_set_rgba(%struct._GeglColor* %31, double %33, double %35, double %37, double %39)
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color_node44 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %40, i32 0, i32 3
  %41 = load %struct._GeglNode*, %struct._GeglNode** %color_node44, align 8
  %42 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._GeglColor* %42, i8* null)
  %43 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  %44 = bitcast %struct._GeglColor* %43 to i8*
  call void @g_object_unref(i8* %44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.37, %if.end.34
  %45 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %46 = bitcast %struct._GimpChannel* %45 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_drawable_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call46)
  %47 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpDrawable*
  %48 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %49 = bitcast %struct._GimpChannel* %48 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call48)
  %50 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call i32 @gimp_item_get_width(%struct._GimpItem* %50)
  %51 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %52 = bitcast %struct._GimpChannel* %51 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_item_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call51)
  %53 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpItem*
  %call53 = call i32 @gimp_item_get_height(%struct._GimpItem* %53)
  call void @gimp_drawable_update(%struct._GimpDrawable* %47, i32 0, i32 0, i32 %call50, i32 %call53)
  %54 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %55 = bitcast %struct._GimpChannel* %54 to i8*
  %56 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @channel_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %55, i32 %56, i32 0)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.9, %if.else.14, %if.end.45, %do.end.16
  ret void
}

declare double @gimp_rgba_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_channel_color(%struct._GimpImage*, i8*, %struct._GimpChannel*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare %struct._GeglColor* @gegl_color_new(i8*) #1

declare void @gegl_color_set_rgba(%struct._GeglColor*, double, double, double, double) #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_channel_get_color(%struct._GimpChannel* %channel, %struct._GimpRGB* %color) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_channel_get_color, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_channel_get_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color17 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %15, i32 0, i32 1
  %16 = bitcast %struct._GimpRGB* %14 to i8*
  %17 = bitcast %struct._GimpRGB* %color17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_channel_get_opacity(%struct._GimpChannel* %channel) #3 {
entry:
  %retval = alloca double, align 8
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_channel_get_opacity, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %13, i32 0, i32 1
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %14 = load double, double* %a, align 8
  store double %14, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load double, double* %retval
  ret double %15
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_set_opacity(%struct._GimpChannel* %channel, double %opacity, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %opacity.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %gegl_color = alloca %struct._GeglColor*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_channel_set_opacity, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.54

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
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %16, i32 0, i32 1
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %17 = load double, double* %a, align 8
  %18 = load double, double* %opacity.addr, align 8
  %cmp17 = fcmp une double %17, %18
  br i1 %cmp17, label %if.then.18, label %if.end.54

if.then.18:                                       ; preds = %cond.end.15
  %19 = load i32, i32* %push_undo.addr, align 4
  %tobool19 = icmp ne i32 %19, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.32

land.lhs.true.20:                                 ; preds = %if.then.18
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %21 = bitcast %struct._GimpChannel* %20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call21)
  %22 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call i32 @gimp_item_is_attached(%struct._GimpItem* %22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %land.lhs.true.20
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call27)
  %25 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %25)
  store %struct._GimpImage* %call29, %struct._GimpImage** %image, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i64 10)
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call31 = call %struct._GimpUndo* @gimp_image_undo_push_channel_color(%struct._GimpImage* %26, i8* %call30, %struct._GimpChannel* %27)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.25, %land.lhs.true.20, %if.then.18
  %28 = load double, double* %opacity.addr, align 8
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color33 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %29, i32 0, i32 1
  %a34 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color33, i32 0, i32 3
  store double %28, double* %a34, align 8
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color_node = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %30, i32 0, i32 3
  %31 = load %struct._GeglNode*, %struct._GeglNode** %color_node, align 8
  %tobool35 = icmp ne %struct._GeglNode* %31, null
  br i1 %tobool35, label %if.then.36, label %if.end.45

if.then.36:                                       ; preds = %if.end.32
  %call38 = call %struct._GeglColor* @gegl_color_new(i8* null)
  store %struct._GeglColor* %call38, %struct._GeglColor** %gegl_color, align 8
  %32 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  %33 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color39 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %33, i32 0, i32 1
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color39, i32 0, i32 0
  %34 = load double, double* %r, align 8
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color40 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %35, i32 0, i32 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color40, i32 0, i32 1
  %36 = load double, double* %g, align 8
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color41 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %37, i32 0, i32 1
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color41, i32 0, i32 2
  %38 = load double, double* %b, align 8
  %39 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color42 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %39, i32 0, i32 1
  %a43 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color42, i32 0, i32 3
  %40 = load double, double* %a43, align 8
  call void @gegl_color_set_rgba(%struct._GeglColor* %32, double %34, double %36, double %38, double %40)
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %color_node44 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %41, i32 0, i32 3
  %42 = load %struct._GeglNode*, %struct._GeglNode** %color_node44, align 8
  %43 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._GeglColor* %43, i8* null)
  %44 = load %struct._GeglColor*, %struct._GeglColor** %gegl_color, align 8
  %45 = bitcast %struct._GeglColor* %44 to i8*
  call void @g_object_unref(i8* %45)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.36, %if.end.32
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %47 = bitcast %struct._GimpChannel* %46 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_drawable_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call46)
  %48 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpDrawable*
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %50 = bitcast %struct._GimpChannel* %49 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call48)
  %51 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call i32 @gimp_item_get_width(%struct._GimpItem* %51)
  %52 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %53 = bitcast %struct._GimpChannel* %52 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_item_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call51)
  %54 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpItem*
  %call53 = call i32 @gimp_item_get_height(%struct._GimpItem* %54)
  call void @gimp_drawable_update(%struct._GimpDrawable* %48, i32 0, i32 0, i32 %call50, i32 %call53)
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %56 = bitcast %struct._GimpChannel* %55 to i8*
  %57 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @channel_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %56, i32 %57, i32 0)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.9, %if.end.45, %cond.end.15
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_get_show_masked(%struct._GimpChannel* %channel) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_channel_get_show_masked, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %show_masked = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %13, i32 0, i32 2
  %14 = load i32, i32* %show_masked, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_set_show_masked(%struct._GimpChannel* %channel, i32 %show_masked) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %show_masked.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %source = alloca %struct._GeglNode*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %show_masked, i32* %show_masked.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_channel_set_show_masked, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.44

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %show_masked.addr, align 4
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %show_masked11 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %14, i32 0, i32 2
  %15 = load i32, i32* %show_masked11, align 4
  %cmp12 = icmp ne i32 %13, %15
  br i1 %cmp12, label %if.then.13, label %if.end.44

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %show_masked.addr, align 4
  %tobool14 = icmp ne i32 %16, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %show_masked15 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %17, i32 0, i32 2
  store i32 %cond, i32* %show_masked15, align 4
  %18 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %invert_node = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %18, i32 0, i32 4
  %19 = load %struct._GeglNode*, %struct._GeglNode** %invert_node, align 8
  %tobool16 = icmp ne %struct._GeglNode* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.35

if.then.17:                                       ; preds = %if.then.13
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %21 = bitcast %struct._GimpChannel* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_drawable_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpDrawable*
  %call21 = call %struct._GeglNode* @gimp_drawable_get_source_node(%struct._GimpDrawable* %22)
  store %struct._GeglNode* %call21, %struct._GeglNode** %source, align 8
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %show_masked22 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %23, i32 0, i32 2
  %24 = load i32, i32* %show_masked22, align 4
  %tobool23 = icmp ne i32 %24, 0
  br i1 %tobool23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %if.then.17
  %25 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %invert_node25 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %26, i32 0, i32 4
  %27 = load %struct._GeglNode*, %struct._GeglNode** %invert_node25, align 8
  %call26 = call i32 @gegl_node_connect_to(%struct._GeglNode* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._GeglNode* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %invert_node27 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %28, i32 0, i32 4
  %29 = load %struct._GeglNode*, %struct._GeglNode** %invert_node27, align 8
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %mask_node = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %30, i32 0, i32 5
  %31 = load %struct._GeglNode*, %struct._GeglNode** %mask_node, align 8
  %call28 = call i32 @gegl_node_connect_to(%struct._GeglNode* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._GeglNode* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.34

if.else.29:                                       ; preds = %if.then.17
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %invert_node30 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %32, i32 0, i32 4
  %33 = load %struct._GeglNode*, %struct._GeglNode** %invert_node30, align 8
  %call31 = call i32 @gegl_node_disconnect(%struct._GeglNode* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %34 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %mask_node32 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %35, i32 0, i32 5
  %36 = load %struct._GeglNode*, %struct._GeglNode** %mask_node32, align 8
  %call33 = call i32 @gegl_node_connect_to(%struct._GeglNode* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._GeglNode* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.29, %if.then.24
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.13
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %38 = bitcast %struct._GimpChannel* %37 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_drawable_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call36)
  %39 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpDrawable*
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %41 = bitcast %struct._GimpChannel* %40 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call38)
  %42 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call i32 @gimp_item_get_width(%struct._GimpItem* %42)
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %44 = bitcast %struct._GimpChannel* %43 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call41)
  %45 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItem*
  %call43 = call i32 @gimp_item_get_height(%struct._GimpItem* %45)
  call void @gimp_drawable_update(%struct._GimpDrawable* %39, i32 0, i32 0, i32 %call40, i32 %call43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.9, %if.end.35, %do.end
  ret void
}

declare %struct._GeglNode* @gimp_drawable_get_source_node(%struct._GimpDrawable*) #1

declare i32 @gegl_node_connect_to(%struct._GeglNode*, i8*, %struct._GeglNode*, i8*) #1

declare i32 @gegl_node_disconnect(%struct._GeglNode*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_channel_push_undo(%struct._GimpChannel* %channel, i8* %undo_desc) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_channel_push_undo, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.18

if.else.17:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_channel_push_undo, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call20)
  %18 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %call22 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  %19 = load i8*, i8** %undo_desc.addr, align 8
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call23 = call %struct._GimpUndo* @gimp_image_undo_push_mask(%struct._GimpImage* %call22, i8* %19, %struct._GimpChannel* %20)
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = bitcast %struct._GimpChannel* %21 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_drawable_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call24)
  %23 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %23)
  br label %return

return:                                           ; preds = %do.end.19, %if.else.17, %if.else.9
  ret void
}

declare %struct._GimpUndo* @gimp_image_undo_push_mask(%struct._GimpImage*, i8*, %struct._GimpChannel*) #1

declare void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %image, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %new_channel = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_new_mask, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %height.addr, align 4
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)) #5
  %call12 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %13, i32 %14, i32 %15, i8* %call11, %struct._GimpRGB* null)
  store %struct._GimpChannel* %call12, %struct._GimpChannel** %new_channel, align 8
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_drawable_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDrawable*
  %call15 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %18)
  call void @tile_manager_set_validate_proc(%struct._TileManager* %call15, void (%struct._TileManager*, %struct._Tile*, i8*)* bitcast (void (%struct._TileManager*, %struct._Tile*)* @gimp_channel_validate_tile to void (%struct._TileManager*, %struct._Tile*, i8*)*), i8* null)
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  store %struct._GimpChannel* %19, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %20
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare void @tile_manager_set_validate_proc(%struct._TileManager*, void (%struct._TileManager*, %struct._Tile*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_validate_tile(%struct._TileManager* %tm, %struct._Tile* %tile) #3 {
entry:
  %tm.addr = alloca %struct._TileManager*, align 8
  %tile.addr = alloca %struct._Tile*, align 8
  store %struct._TileManager* %tm, %struct._TileManager** %tm.addr, align 8
  store %struct._Tile* %tile, %struct._Tile** %tile.addr, align 8
  %0 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call = call i8* @tile_data_pointer(%struct._Tile* %0, i32 0, i32 0)
  %1 = load %struct._Tile*, %struct._Tile** %tile.addr, align 8
  %call1 = call i32 @tile_size(%struct._Tile* %1)
  %conv = sext i32 %call1 to i64
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %conv, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_boundary(%struct._GimpChannel* %channel, %struct._BoundSeg** %segs_in, %struct._BoundSeg** %segs_out, i32* %num_segs_in, i32* %num_segs_out, i32 %x1, i32 %y1, i32 %x2, i32 %y2) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %segs_in.addr = alloca %struct._BoundSeg**, align 8
  %segs_out.addr = alloca %struct._BoundSeg**, align 8
  %num_segs_in.addr = alloca i32*, align 8
  %num_segs_out.addr = alloca i32*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._BoundSeg** %segs_in, %struct._BoundSeg*** %segs_in.addr, align 8
  store %struct._BoundSeg** %segs_out, %struct._BoundSeg*** %segs_out.addr, align 8
  store i32* %num_segs_in, i32** %num_segs_in.addr, align 8
  store i32* %num_segs_out, i32** %num_segs_out.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_boundary, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_in.addr, align 8
  %cmp12 = icmp ne %struct._BoundSeg** %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_boundary, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_out.addr, align 8
  %cmp18 = icmp ne %struct._BoundSeg** %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_boundary, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i32*, i32** %num_segs_in.addr, align 8
  %cmp24 = icmp ne i32* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_boundary, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %16 = load i32*, i32** %num_segs_out.addr, align 8
  %cmp30 = icmp ne i32* %16, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_boundary, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %18 = bitcast %struct._GimpChannel* %17 to %struct._GTypeInstance*
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GimpChannelClass*
  %boundary = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %20, i32 0, i32 2
  %21 = load i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)*, i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)** %boundary, align 8
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %23 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_in.addr, align 8
  %24 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_out.addr, align 8
  %25 = load i32*, i32** %num_segs_in.addr, align 8
  %26 = load i32*, i32** %num_segs_out.addr, align 8
  %27 = load i32, i32* %x1.addr, align 4
  %28 = load i32, i32* %y1.addr, align 4
  %29 = load i32, i32* %x2.addr, align 4
  %30 = load i32, i32* %y2.addr, align 4
  %call36 = call i32 %21(%struct._GimpChannel* %22, %struct._BoundSeg** %23, %struct._BoundSeg** %24, i32* %25, i32* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %call36, i32* %retval
  br label %return

return:                                           ; preds = %do.end.34, %if.else.32, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_bounds(%struct._GimpChannel* %channel, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  %tmp_x1 = alloca i32, align 4
  %tmp_y1 = alloca i32, align 4
  %tmp_x2 = alloca i32, align 4
  %tmp_y2 = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_channel_bounds, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpChannelClass*
  %bounds = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %16, i32 0, i32 3
  %17 = load i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)*, i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)** %bounds, align 8
  %18 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call13 = call i32 %17(%struct._GimpChannel* %18, i32* %tmp_x1, i32* %tmp_y1, i32* %tmp_x2, i32* %tmp_y2)
  store i32 %call13, i32* %retval1, align 4
  %19 = load i32*, i32** %x1.addr, align 8
  %tobool14 = icmp ne i32* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %do.end
  %20 = load i32, i32* %tmp_x1, align 4
  %21 = load i32*, i32** %x1.addr, align 8
  store i32 %20, i32* %21, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %22 = load i32*, i32** %y1.addr, align 8
  %tobool17 = icmp ne i32* %22, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %23 = load i32, i32* %tmp_y1, align 4
  %24 = load i32*, i32** %y1.addr, align 8
  store i32 %23, i32* %24, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %25 = load i32*, i32** %x2.addr, align 8
  %tobool20 = icmp ne i32* %25, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %26 = load i32, i32* %tmp_x2, align 4
  %27 = load i32*, i32** %x2.addr, align 8
  store i32 %26, i32* %27, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %28 = load i32*, i32** %y2.addr, align 8
  %tobool23 = icmp ne i32* %28, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %29 = load i32, i32* %tmp_y2, align 4
  %30 = load i32*, i32** %y2.addr, align 8
  store i32 %29, i32* %30, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %31 = load i32, i32* %retval1, align 4
  store i32 %31, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.else.10
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @gimp_channel_is_empty(%struct._GimpChannel* %channel) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_is_empty, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpChannelClass*
  %is_empty = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %16, i32 0, i32 4
  %17 = load i32 (%struct._GimpChannel*)*, i32 (%struct._GimpChannel*)** %is_empty, align 8
  %18 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call12 = call i32 %17(%struct._GimpChannel* %18)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_feather(%struct._GimpChannel* %channel, double %radius_x, double %radius_y, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca double, align 8
  %radius_y.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store double %radius_x, double* %radius_x.addr, align 8
  store double %radius_y, double* %radius_y.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_channel_feather, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpChannelClass*
  %feather = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %19, i32 0, i32 5
  %20 = load void (%struct._GimpChannel*, double, double, i32)*, void (%struct._GimpChannel*, double, double, i32)** %feather, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = load double, double* %radius_x.addr, align 8
  %23 = load double, double* %radius_y.addr, align 8
  %24 = load i32, i32* %push_undo.addr, align 4
  call void %20(%struct._GimpChannel* %21, double %22, double %23, i32 %24)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_sharpen(%struct._GimpChannel* %channel, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_channel_sharpen, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpChannelClass*
  %sharpen = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %19, i32 0, i32 6
  %20 = load void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32)** %sharpen, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = load i32, i32* %push_undo.addr, align 4
  call void %20(%struct._GimpChannel* %21, i32 %22)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_all(%struct._GimpChannel* %channel, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_channel_all, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpChannelClass*
  %all = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %19, i32 0, i32 8
  %20 = load void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32)** %all, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = load i32, i32* %push_undo.addr, align 4
  call void %20(%struct._GimpChannel* %21, i32 %22)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_invert(%struct._GimpChannel* %channel, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_channel_invert, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpChannelClass*
  %invert = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %19, i32 0, i32 9
  %20 = load void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32)** %invert, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = load i32, i32* %push_undo.addr, align 4
  call void %20(%struct._GimpChannel* %21, i32 %22)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_border(%struct._GimpChannel* %channel, i32 %radius_x, i32 %radius_y, i32 %feather, i32 %edge_lock, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %edge_lock.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store i32 %edge_lock, i32* %edge_lock.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_channel_border, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpChannelClass*
  %border = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %19, i32 0, i32 10
  %20 = load void (%struct._GimpChannel*, i32, i32, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32, i32, i32)** %border, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = load i32, i32* %radius_x.addr, align 4
  %23 = load i32, i32* %radius_y.addr, align 4
  %24 = load i32, i32* %feather.addr, align 4
  %25 = load i32, i32* %edge_lock.addr, align 4
  %26 = load i32, i32* %push_undo.addr, align 4
  call void %20(%struct._GimpChannel* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_grow(%struct._GimpChannel* %channel, i32 %radius_x, i32 %radius_y, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_channel_grow, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpChannelClass*
  %grow = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %19, i32 0, i32 11
  %20 = load void (%struct._GimpChannel*, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32)** %grow, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = load i32, i32* %radius_x.addr, align 4
  %23 = load i32, i32* %radius_y.addr, align 4
  %24 = load i32, i32* %push_undo.addr, align 4
  call void %20(%struct._GimpChannel* %21, i32 %22, i32 %23, i32 %24)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_channel_shrink(%struct._GimpChannel* %channel, i32 %radius_x, i32 %radius_y, i32 %edge_lock, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %edge_lock.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store i32 %edge_lock, i32* %edge_lock.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_channel_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_channel_shrink, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_attached(%struct._GimpItem* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  store i32 0, i32* %push_undo.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %do.end
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpChannelClass*
  %shrink = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %19, i32 0, i32 12
  %20 = load void (%struct._GimpChannel*, i32, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32, i32)** %shrink, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = load i32, i32* %radius_x.addr, align 4
  %23 = load i32, i32* %radius_y.addr, align 4
  %24 = load i32, i32* %edge_lock.addr, align 4
  %25 = load i32, i32* %push_undo.addr, align 4
  call void %20(%struct._GimpChannel* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_class_init(%struct._GimpChannelClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpChannelClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %drawable_class = alloca %struct._GimpDrawableClass*, align 8
  store %struct._GimpChannelClass* %klass, %struct._GimpChannelClass** %klass.addr, align 8
  %0 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpChannelClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpChannelClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpChannelClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpChannelClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %11, %struct._GimpItemClass** %item_class, align 8
  %12 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpChannelClass* %12 to %struct._GTypeClass*
  %call7 = call i64 @gimp_drawable_get_type() #7
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call7)
  %14 = bitcast %struct._GTypeClass* %call8 to %struct._GimpDrawableClass*
  store %struct._GimpDrawableClass* %14, %struct._GimpDrawableClass** %drawable_class, align 8
  %15 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpChannelClass* %15 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i64 %17, i32 1, i32 680, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call9, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @channel_signals, i32 0, i64 0), align 4
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_channel_finalize, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %19, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_channel_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %20 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %20, i32 0, i32 12
  store i8* (%struct._GimpViewable*, i8**)* @gimp_channel_get_description, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %21 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8** %default_stock_id, align 8
  %22 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %is_attached = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %22, i32 0, i32 6
  store i32 (%struct._GimpItem*)* @gimp_channel_is_attached, i32 (%struct._GimpItem*)** %is_attached, align 8
  %23 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %get_tree = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %23, i32 0, i32 8
  store %struct._GimpItemTree* (%struct._GimpItem*)* @gimp_channel_get_tree, %struct._GimpItemTree* (%struct._GimpItem*)** %get_tree, align 8
  %24 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %24, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpItem*, i64)* @gimp_channel_duplicate, %struct._GimpItem* (%struct._GimpItem*, i64)** %duplicate, align 8
  %25 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %25, i32 0, i32 10
  store void (%struct._GimpItem*, %struct._GimpImage*)* @gimp_channel_convert, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %26 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %26, i32 0, i32 12
  store void (%struct._GimpItem*, i32, i32, i32)* @gimp_channel_translate, void (%struct._GimpItem*, i32, i32, i32)** %translate, align 8
  %27 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %27, i32 0, i32 13
  store void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_channel_scale, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %28 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %28, i32 0, i32 14
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)* @gimp_channel_resize, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %29 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %29, i32 0, i32 15
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)* @gimp_channel_flip, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %30 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %30, i32 0, i32 16
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)* @gimp_channel_rotate, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %31 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %31, i32 0, i32 17
  store void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_channel_transform, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)** %transform, align 8
  %32 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %stroke = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %32, i32 0, i32 18
  store i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)* @gimp_channel_stroke, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)** %stroke, align 8
  %33 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %to_selection = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %33, i32 0, i32 19
  store void (%struct._GimpItem*, i32, i32, i32, double, double)* @gimp_channel_to_selection, void (%struct._GimpItem*, i32, i32, i32, double, double)** %to_selection, align 8
  %34 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %get_node = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %34, i32 0, i32 20
  store %struct._GeglNode* (%struct._GimpItem*)* @gimp_channel_get_node, %struct._GeglNode* (%struct._GimpItem*)** %get_node, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #5
  %35 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %default_name = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %35, i32 0, i32 21
  store i8* %call10, i8** %default_name, align 8
  %call11 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), i64 10)
  %36 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rename_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %36, i32 0, i32 22
  store i8* %call11, i8** %rename_desc, align 8
  %call12 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), i64 10)
  %37 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %37, i32 0, i32 23
  store i8* %call12, i8** %translate_desc, align 8
  %call13 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i64 10)
  %38 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %38, i32 0, i32 24
  store i8* %call13, i8** %scale_desc, align 8
  %call14 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i64 10)
  %39 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %39, i32 0, i32 25
  store i8* %call14, i8** %resize_desc, align 8
  %call15 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i64 10)
  %40 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %40, i32 0, i32 26
  store i8* %call15, i8** %flip_desc, align 8
  %call16 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i64 10)
  %41 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %41, i32 0, i32 27
  store i8* %call16, i8** %rotate_desc, align 8
  %call17 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i64 10)
  %42 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %transform_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %42, i32 0, i32 28
  store i8* %call17, i8** %transform_desc, align 8
  %call18 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i32 0, i32 0), i64 10)
  %43 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %stroke_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %43, i32 0, i32 30
  store i8* %call18, i8** %stroke_desc, align 8
  %call19 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), i64 10)
  %44 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %to_selection_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %44, i32 0, i32 29
  store i8* %call19, i8** %to_selection_desc, align 8
  %call20 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i64 10)
  %45 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %reorder_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %45, i32 0, i32 31
  store i8* %call20, i8** %reorder_desc, align 8
  %call21 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i64 10)
  %46 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %raise_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %46, i32 0, i32 32
  store i8* %call21, i8** %raise_desc, align 8
  %call22 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i64 10)
  %47 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %raise_to_top_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %47, i32 0, i32 33
  store i8* %call22, i8** %raise_to_top_desc, align 8
  %call23 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i64 10)
  %48 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %lower_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %48, i32 0, i32 34
  store i8* %call23, i8** %lower_desc, align 8
  %call24 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), i64 10)
  %49 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %lower_to_bottom_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %49, i32 0, i32 35
  store i8* %call24, i8** %lower_to_bottom_desc, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i32 0, i32 0)) #5
  %50 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %raise_failed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %50, i32 0, i32 36
  store i8* %call25, i8** %raise_failed, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i32 0, i32 0)) #5
  %51 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %lower_failed = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %51, i32 0, i32 37
  store i8* %call26, i8** %lower_failed, align 8
  %52 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %invalidate_boundary = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %52, i32 0, i32 4
  store void (%struct._GimpDrawable*)* @gimp_channel_invalidate_boundary, void (%struct._GimpDrawable*)** %invalidate_boundary, align 8
  %53 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %get_active_components = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %53, i32 0, i32 5
  store void (%struct._GimpDrawable*, i32*)* @gimp_channel_get_active_components, void (%struct._GimpDrawable*, i32*)** %get_active_components, align 8
  %54 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %apply_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %54, i32 0, i32 7
  store void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)* @gimp_channel_apply_region, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)** %apply_region, align 8
  %55 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %replace_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %55, i32 0, i32 8
  store void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)* @gimp_channel_replace_region, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)** %replace_region, align 8
  %56 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %project_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %56, i32 0, i32 9
  store void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)* @gimp_channel_project_region, void (%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32)** %project_region, align 8
  %57 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %set_tiles = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %57, i32 0, i32 11
  store void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)* @gimp_channel_set_tiles, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)** %set_tiles, align 8
  %58 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %swap_pixels = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %58, i32 0, i32 13
  store void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)* @gimp_channel_swap_pixels, void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)** %swap_pixels, align 8
  %59 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %boundary = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %59, i32 0, i32 2
  store i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)* @gimp_channel_real_boundary, i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)** %boundary, align 8
  %60 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %bounds = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %60, i32 0, i32 3
  store i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)* @gimp_channel_real_bounds, i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)** %bounds, align 8
  %61 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %is_empty = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %61, i32 0, i32 4
  store i32 (%struct._GimpChannel*)* @gimp_channel_real_is_empty, i32 (%struct._GimpChannel*)** %is_empty, align 8
  %62 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %feather = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %62, i32 0, i32 5
  store void (%struct._GimpChannel*, double, double, i32)* @gimp_channel_real_feather, void (%struct._GimpChannel*, double, double, i32)** %feather, align 8
  %63 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %sharpen = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %63, i32 0, i32 6
  store void (%struct._GimpChannel*, i32)* @gimp_channel_real_sharpen, void (%struct._GimpChannel*, i32)** %sharpen, align 8
  %64 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %clear = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %64, i32 0, i32 7
  store void (%struct._GimpChannel*, i8*, i32)* @gimp_channel_real_clear, void (%struct._GimpChannel*, i8*, i32)** %clear, align 8
  %65 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %all = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %65, i32 0, i32 8
  store void (%struct._GimpChannel*, i32)* @gimp_channel_real_all, void (%struct._GimpChannel*, i32)** %all, align 8
  %66 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %invert = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %66, i32 0, i32 9
  store void (%struct._GimpChannel*, i32)* @gimp_channel_real_invert, void (%struct._GimpChannel*, i32)** %invert, align 8
  %67 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %border = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %67, i32 0, i32 10
  store void (%struct._GimpChannel*, i32, i32, i32, i32, i32)* @gimp_channel_real_border, void (%struct._GimpChannel*, i32, i32, i32, i32, i32)** %border, align 8
  %68 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %grow = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %68, i32 0, i32 11
  store void (%struct._GimpChannel*, i32, i32, i32)* @gimp_channel_real_grow, void (%struct._GimpChannel*, i32, i32, i32)** %grow, align 8
  %69 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %shrink = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %69, i32 0, i32 12
  store void (%struct._GimpChannel*, i32, i32, i32, i32)* @gimp_channel_real_shrink, void (%struct._GimpChannel*, i32, i32, i32, i32)** %shrink, align 8
  %call27 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i64 10)
  %70 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %feather_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %70, i32 0, i32 13
  store i8* %call27, i8** %feather_desc, align 8
  %call28 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i32 0, i32 0), i64 10)
  %71 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %sharpen_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %71, i32 0, i32 14
  store i8* %call28, i8** %sharpen_desc, align 8
  %call29 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0), i64 10)
  %72 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %clear_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %72, i32 0, i32 15
  store i8* %call29, i8** %clear_desc, align 8
  %call30 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i64 10)
  %73 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %all_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %73, i32 0, i32 16
  store i8* %call30, i8** %all_desc, align 8
  %call31 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), i64 10)
  %74 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %invert_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %74, i32 0, i32 17
  store i8* %call31, i8** %invert_desc, align 8
  %call32 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i64 10)
  %75 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %border_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %75, i32 0, i32 18
  store i8* %call32, i8** %border_desc, align 8
  %call33 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0), i64 10)
  %76 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %grow_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %76, i32 0, i32 19
  store i8* %call33, i8** %grow_desc, align 8
  %call34 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i64 10)
  %77 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %klass.addr, align 8
  %shrink_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %77, i32 0, i32 20
  store i8* %call34, i8** %shrink_desc, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %segs_in = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %3, i32 0, i32 7
  %4 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %tobool = icmp ne %struct._BoundSeg* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %segs_in2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %5, i32 0, i32 7
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in2, align 8
  %7 = bitcast %struct._BoundSeg* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %segs_in3 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %8, i32 0, i32 7
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_in3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %segs_out = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %9, i32 0, i32 8
  %10 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %tobool4 = icmp ne %struct._BoundSeg* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %segs_out6 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %11, i32 0, i32 8
  %12 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out6, align 8
  %13 = bitcast %struct._BoundSeg* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %segs_out7 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %14, i32 0, i32 8
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_out7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load i8*, i8** @gimp_channel_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_channel_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %num_segs_in = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %3, i32 0, i32 9
  %4 = load i32, i32* %num_segs_in, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 20
  %5 = load i64*, i64** %gui_size.addr, align 8
  %6 = load i64, i64* %5, align 8
  %add = add i64 %6, %mul
  store i64 %add, i64* %5, align 8
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %num_segs_out = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %7, i32 0, i32 10
  %8 = load i32, i32* %num_segs_out, align 4
  %conv2 = sext i32 %8 to i64
  %mul3 = mul i64 %conv2, 20
  %9 = load i64*, i64** %gui_size.addr, align 8
  %10 = load i64, i64* %9, align 8
  %add4 = add i64 %10, %mul3
  store i64 %add4, i64* %9, align 8
  %11 = load i8*, i8** @gimp_channel_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call5)
  %13 = bitcast %struct._GTypeClass* %call6 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  %14 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %15 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %16 = load i64*, i64** %gui_size.addr, align 8
  %call7 = call i64 %14(%struct._GimpObject* %15, i64* %16)
  ret i64 %call7
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_channel_get_description(%struct._GimpViewable* %viewable, i8** %tooltip) #3 {
entry:
  %retval = alloca i8*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %tooltip.addr = alloca i8**, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8** %tooltip, i8*** %tooltip.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to i8*
  %call = call i8* @gimp_object_get_name(i8* %1)
  %call1 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* %call) #8
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0)) #5
  %call3 = call noalias i8* @g_strdup(i8* %call2)
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @gimp_channel_parent_class, align 8
  %3 = bitcast i8* %2 to %struct._GTypeClass*
  %call4 = call i64 @gimp_viewable_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %3, i64 %call4)
  %4 = bitcast %struct._GTypeClass* %call5 to %struct._GimpViewableClass*
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %4, i32 0, i32 12
  %5 = load i8* (%struct._GimpViewable*, i8**)*, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %7 = load i8**, i8*** %tooltip.addr, align 8
  %call6 = call i8* %5(%struct._GimpViewable* %6, i8** %7)
  store i8* %call6, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_channel_is_attached(%struct._GimpItem* %item) #3 {
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
  %call9 = call %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage* %14)
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
define internal %struct._GimpItemTree* @gimp_channel_get_tree(%struct._GimpItem* %item) #3 {
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
  %call2 = call %struct._GimpItemTree* @gimp_image_get_channel_tree(%struct._GimpImage* %2)
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
define internal %struct._GimpItem* @gimp_channel_duplicate(%struct._GimpItem* %item, i64 %new_type) #3 {
entry:
  %retval = alloca %struct._GimpItem*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_type.addr = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %new_channel = alloca %struct._GimpChannel*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_channel_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i32 0, i32 0))
  store %struct._GimpItem* null, %struct._GimpItem** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** @gimp_channel_parent_class, align 8
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
  %call5 = call i64 @gimp_channel_get_type() #7
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
  br i1 %tobool16, label %if.then.17, label %if.end.32

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_channel_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpChannel*
  store %struct._GimpChannel* %22, %struct._GimpChannel** %channel, align 8
  %23 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %24 = bitcast %struct._GimpItem* %23 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_channel_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpChannel*
  store %struct._GimpChannel* %25, %struct._GimpChannel** %new_channel, align 8
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %color = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %26, i32 0, i32 1
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color24 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %27, i32 0, i32 1
  %28 = bitcast %struct._GimpRGB* %color to i8*
  %29 = bitcast %struct._GimpRGB* %color24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 32, i32 8, i1 false)
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %show_masked = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %30, i32 0, i32 2
  %31 = load i32, i32* %show_masked, align 4
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %show_masked25 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %32, i32 0, i32 2
  store i32 %31, i32* %show_masked25, align 4
  %33 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %33, i32 0, i32 12
  %34 = load i32, i32* %bounds_known, align 4
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %bounds_known26 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %35, i32 0, i32 12
  store i32 %34, i32* %bounds_known26, align 4
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %36, i32 0, i32 11
  %37 = load i32, i32* %empty, align 4
  %38 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %empty27 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %38, i32 0, i32 11
  store i32 %37, i32* %empty27, align 4
  %39 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %39, i32 0, i32 13
  %40 = load i32, i32* %x1, align 4
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %x128 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %41, i32 0, i32 13
  store i32 %40, i32* %x128, align 4
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %42, i32 0, i32 14
  %43 = load i32, i32* %y1, align 4
  %44 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %y129 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %44, i32 0, i32 14
  store i32 %43, i32* %y129, align 4
  %45 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %45, i32 0, i32 15
  %46 = load i32, i32* %x2, align 4
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %x230 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %47, i32 0, i32 15
  store i32 %46, i32* %x230, align 4
  %48 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %48, i32 0, i32 16
  %49 = load i32, i32* %y2, align 4
  %50 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %y231 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %50, i32 0, i32 16
  store i32 %49, i32* %y231, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.17, %if.end.15
  %51 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  store %struct._GimpItem* %51, %struct._GimpItem** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.else
  %52 = load %struct._GimpItem*, %struct._GimpItem** %retval
  ret %struct._GimpItem* %52
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_convert(%struct._GimpItem* %item, %struct._GimpImage* %dest_image) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %dest_image.addr = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %bg = alloca [1 x i8], align 1
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpImage* %dest_image, %struct._GimpImage** %dest_image.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %5, %struct._GimpDrawable** %drawable, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call4 = call i32 @gimp_drawable_is_gray(%struct._GimpDrawable* %6)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  call void @gimp_drawable_convert_type(%struct._GimpDrawable* %7, %struct._GimpImage* null, i32 1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call5 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.18

if.then.7:                                        ; preds = %if.end
  %9 = bitcast [1 x i8]* %bg to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 1, i32 1, i1 false)
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call8 = call i32 @gimp_item_get_width(%struct._GimpItem* %10)
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call9 = call i32 @gimp_item_get_height(%struct._GimpItem* %11)
  %call10 = call %struct._TileManager* @tile_manager_new(i32 %call8, i32 %call9, i32 1)
  store %struct._TileManager* %call10, %struct._TileManager** %new_tiles, align 8
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call11 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %12)
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %13)
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call13 = call i32 @gimp_item_get_height(%struct._GimpItem* %14)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call11, i32 0, i32 0, i32 %call12, i32 %call13, i32 0)
  %15 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call14 = call i32 @gimp_item_get_width(%struct._GimpItem* %16)
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %17)
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %15, i32 0, i32 0, i32 %call14, i32 %call15, i32 1)
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %bg, i32 0, i32 0
  call void @flatten_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, i8* %arraydecay)
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %19 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call16 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %20)
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call17 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %21)
  call void @gimp_drawable_set_tiles_full(%struct._GimpDrawable* %18, i32 0, i8* null, %struct._TileManager* %19, i32 2, i32 %call16, i32 %call17)
  %22 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.7, %if.end
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %call19 = call i64 @gimp_channel_get_type() #7
  %cmp = icmp eq i64 %26, %call19
  br i1 %cmp, label %if.then.20, label %if.end.30

if.then.20:                                       ; preds = %if.end.18
  %27 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %call21 = call i32 @gimp_image_get_width(%struct._GimpImage* %27)
  store i32 %call21, i32* %width, align 4
  %28 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %call22 = call i32 @gimp_image_get_height(%struct._GimpImage* %28)
  store i32 %call22, i32* %height, align 4
  %29 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_set_offset(%struct._GimpItem* %29, i32 0, i32 0)
  %30 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call23 = call i32 @gimp_item_get_width(%struct._GimpItem* %30)
  %31 = load i32, i32* %width, align 4
  %cmp24 = icmp ne i32 %call23, %31
  br i1 %cmp24, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %32 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call25 = call i32 @gimp_item_get_height(%struct._GimpItem* %32)
  %33 = load i32, i32* %height, align 4
  %cmp26 = icmp ne i32 %call25, %33
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.20
  %34 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %35, i32 0, i32 1
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call28 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %36)
  %37 = load i32, i32* %width, align 4
  %38 = load i32, i32* %height, align 4
  call void @gimp_item_resize(%struct._GimpItem* %34, %struct._GimpContext* %call28, i32 %37, i32 %38, i32 0, i32 0)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %lor.lhs.false
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.18
  %39 = load i8*, i8** @gimp_channel_parent_class, align 8
  %40 = bitcast i8* %39 to %struct._GTypeClass*
  %call31 = call i64 @gimp_item_get_type() #7
  %call32 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %40, i64 %call31)
  %41 = bitcast %struct._GTypeClass* %call32 to %struct._GimpItemClass*
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %41, i32 0, i32 10
  %42 = load void (%struct._GimpItem*, %struct._GimpImage*)*, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %43 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %44 = load %struct._GimpImage*, %struct._GimpImage** %dest_image.addr, align 8
  call void %42(%struct._GimpItem* %43, %struct._GimpImage* %44)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_translate(%struct._GimpItem* %item, i32 %off_x, i32 %off_y, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %tmp_mask = alloca %struct._GimpChannel*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  store %struct._GimpChannel* null, %struct._GimpChannel** %tmp_mask, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call2 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %3, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %5 = bitcast %struct._GimpItem* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_drawable_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDrawable*
  %7 = load i32, i32* %x1, align 4
  %8 = load i32, i32* %y1, align 4
  %9 = load i32, i32* %x2, align 4
  %10 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* %y2, align 4
  %12 = load i32, i32* %y1, align 4
  %sub5 = sub nsw i32 %11, %12
  call void @gimp_drawable_update(%struct._GimpDrawable* %6, i32 %7, i32 %8, i32 %sub, i32 %sub5)
  %13 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %14, i8* null)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %16 = bitcast %struct._GimpChannel* %15 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_drawable_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call6)
  %17 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %x1, align 4
  %19 = load i32, i32* %off_x.addr, align 4
  %add = add nsw i32 %18, %19
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %21 = bitcast %struct._GimpChannel* %20 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call8)
  %22 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_width(%struct._GimpItem* %22)
  %cmp = icmp sgt i32 %add, %call10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call11)
  %25 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_get_width(%struct._GimpItem* %25)
  br label %cond.end.19

cond.false:                                       ; preds = %if.end
  %26 = load i32, i32* %x1, align 4
  %27 = load i32, i32* %off_x.addr, align 4
  %add14 = add nsw i32 %26, %27
  %cmp15 = icmp slt i32 %add14, 0
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.false
  br label %cond.end

cond.false.17:                                    ; preds = %cond.false
  %28 = load i32, i32* %x1, align 4
  %29 = load i32, i32* %off_x.addr, align 4
  %add18 = add nsw i32 %28, %29
  br label %cond.end

cond.end:                                         ; preds = %cond.false.17, %cond.true.16
  %cond = phi i32 [ 0, %cond.true.16 ], [ %add18, %cond.false.17 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end, %cond.true
  %cond20 = phi i32 [ %call13, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond20, i32* %x1, align 4
  %30 = load i32, i32* %y1, align 4
  %31 = load i32, i32* %off_y.addr, align 4
  %add21 = add nsw i32 %30, %31
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %33 = bitcast %struct._GimpChannel* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call i32 @gimp_item_get_height(%struct._GimpItem* %34)
  %cmp25 = icmp sgt i32 %add21, %call24
  br i1 %cmp25, label %cond.true.26, label %cond.false.30

cond.true.26:                                     ; preds = %cond.end.19
  %35 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %36 = bitcast %struct._GimpChannel* %35 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call27)
  %37 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call i32 @gimp_item_get_height(%struct._GimpItem* %37)
  br label %cond.end.38

cond.false.30:                                    ; preds = %cond.end.19
  %38 = load i32, i32* %y1, align 4
  %39 = load i32, i32* %off_y.addr, align 4
  %add31 = add nsw i32 %38, %39
  %cmp32 = icmp slt i32 %add31, 0
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.false.30
  br label %cond.end.36

cond.false.34:                                    ; preds = %cond.false.30
  %40 = load i32, i32* %y1, align 4
  %41 = load i32, i32* %off_y.addr, align 4
  %add35 = add nsw i32 %40, %41
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.33
  %cond37 = phi i32 [ 0, %cond.true.33 ], [ %add35, %cond.false.34 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.26
  %cond39 = phi i32 [ %call29, %cond.true.26 ], [ %cond37, %cond.end.36 ]
  store i32 %cond39, i32* %y1, align 4
  %42 = load i32, i32* %x2, align 4
  %43 = load i32, i32* %off_x.addr, align 4
  %add40 = add nsw i32 %42, %43
  %44 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %45 = bitcast %struct._GimpChannel* %44 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call41)
  %46 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItem*
  %call43 = call i32 @gimp_item_get_width(%struct._GimpItem* %46)
  %cmp44 = icmp sgt i32 %add40, %call43
  br i1 %cmp44, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %cond.end.38
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %48 = bitcast %struct._GimpChannel* %47 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call46)
  %49 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %call48 = call i32 @gimp_item_get_width(%struct._GimpItem* %49)
  br label %cond.end.57

cond.false.49:                                    ; preds = %cond.end.38
  %50 = load i32, i32* %x2, align 4
  %51 = load i32, i32* %off_x.addr, align 4
  %add50 = add nsw i32 %50, %51
  %cmp51 = icmp slt i32 %add50, 0
  br i1 %cmp51, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %cond.false.49
  br label %cond.end.55

cond.false.53:                                    ; preds = %cond.false.49
  %52 = load i32, i32* %x2, align 4
  %53 = load i32, i32* %off_x.addr, align 4
  %add54 = add nsw i32 %52, %53
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.52
  %cond56 = phi i32 [ 0, %cond.true.52 ], [ %add54, %cond.false.53 ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.55, %cond.true.45
  %cond58 = phi i32 [ %call48, %cond.true.45 ], [ %cond56, %cond.end.55 ]
  store i32 %cond58, i32* %x2, align 4
  %54 = load i32, i32* %y2, align 4
  %55 = load i32, i32* %off_y.addr, align 4
  %add59 = add nsw i32 %54, %55
  %56 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %57 = bitcast %struct._GimpChannel* %56 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_item_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call60)
  %58 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpItem*
  %call62 = call i32 @gimp_item_get_height(%struct._GimpItem* %58)
  %cmp63 = icmp sgt i32 %add59, %call62
  br i1 %cmp63, label %cond.true.64, label %cond.false.68

cond.true.64:                                     ; preds = %cond.end.57
  %59 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %60 = bitcast %struct._GimpChannel* %59 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_item_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call65)
  %61 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpItem*
  %call67 = call i32 @gimp_item_get_height(%struct._GimpItem* %61)
  br label %cond.end.76

cond.false.68:                                    ; preds = %cond.end.57
  %62 = load i32, i32* %y2, align 4
  %63 = load i32, i32* %off_y.addr, align 4
  %add69 = add nsw i32 %62, %63
  %cmp70 = icmp slt i32 %add69, 0
  br i1 %cmp70, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %cond.false.68
  br label %cond.end.74

cond.false.72:                                    ; preds = %cond.false.68
  %64 = load i32, i32* %y2, align 4
  %65 = load i32, i32* %off_y.addr, align 4
  %add73 = add nsw i32 %64, %65
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.71
  %cond75 = phi i32 [ 0, %cond.true.71 ], [ %add73, %cond.false.72 ]
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.end.74, %cond.true.64
  %cond77 = phi i32 [ %call67, %cond.true.64 ], [ %cond75, %cond.end.74 ]
  store i32 %cond77, i32* %y2, align 4
  %66 = load i32, i32* %x2, align 4
  %67 = load i32, i32* %x1, align 4
  %sub78 = sub nsw i32 %66, %67
  store i32 %sub78, i32* %width, align 4
  %68 = load i32, i32* %y2, align 4
  %69 = load i32, i32* %y1, align 4
  %sub79 = sub nsw i32 %68, %69
  store i32 %sub79, i32* %height, align 4
  %70 = load i32, i32* %width, align 4
  %cmp80 = icmp ne i32 %70, 0
  br i1 %cmp80, label %land.lhs.true, label %if.end.93

land.lhs.true:                                    ; preds = %cond.end.76
  %71 = load i32, i32* %height, align 4
  %cmp81 = icmp ne i32 %71, 0
  br i1 %cmp81, label %if.then.82, label %if.end.93

if.then.82:                                       ; preds = %land.lhs.true
  %72 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call83 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %72)
  %73 = load i32, i32* %width, align 4
  %74 = load i32, i32* %height, align 4
  %call84 = call %struct._GimpChannel* @gimp_channel_new_mask(%struct._GimpImage* %call83, i32 %73, i32 %74)
  store %struct._GimpChannel* %call84, %struct._GimpChannel** %tmp_mask, align 8
  %75 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %76 = bitcast %struct._GimpChannel* %75 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_drawable_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call85)
  %77 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpDrawable*
  %call87 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %77)
  %78 = load i32, i32* %x1, align 4
  %79 = load i32, i32* %off_x.addr, align 4
  %sub88 = sub nsw i32 %78, %79
  %80 = load i32, i32* %y1, align 4
  %81 = load i32, i32* %off_y.addr, align 4
  %sub89 = sub nsw i32 %80, %81
  %82 = load i32, i32* %width, align 4
  %83 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call87, i32 %sub88, i32 %sub89, i32 %82, i32 %83, i32 0)
  %84 = load %struct._GimpChannel*, %struct._GimpChannel** %tmp_mask, align 8
  %85 = bitcast %struct._GimpChannel* %84 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_drawable_get_type() #7
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call90)
  %86 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpDrawable*
  %call92 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %86)
  %87 = load i32, i32* %width, align 4
  %88 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call92, i32 0, i32 0, i32 %87, i32 %88, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.82, %land.lhs.true, %cond.end.76
  %89 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %90 = bitcast %struct._GimpChannel* %89 to %struct._GTypeInstance*
  %call94 = call i64 @gimp_drawable_get_type() #7
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call94)
  %91 = bitcast %struct._GTypeInstance* %call95 to %struct._GimpDrawable*
  %call96 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %91)
  %92 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %93 = bitcast %struct._GimpChannel* %92 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_item_get_type() #7
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call97)
  %94 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpItem*
  %call99 = call i32 @gimp_item_get_width(%struct._GimpItem* %94)
  %95 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %96 = bitcast %struct._GimpChannel* %95 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_item_get_type() #7
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call100)
  %97 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpItem*
  %call102 = call i32 @gimp_item_get_height(%struct._GimpItem* %97)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call96, i32 0, i32 0, i32 %call99, i32 %call102, i32 1)
  call void @clear_region(%struct._PixelRegion* %srcPR)
  %98 = load i32, i32* %width, align 4
  %cmp103 = icmp ne i32 %98, 0
  br i1 %cmp103, label %land.lhs.true.104, label %if.end.113

land.lhs.true.104:                                ; preds = %if.end.93
  %99 = load i32, i32* %height, align 4
  %cmp105 = icmp ne i32 %99, 0
  br i1 %cmp105, label %if.then.106, label %if.end.113

if.then.106:                                      ; preds = %land.lhs.true.104
  %100 = load %struct._GimpChannel*, %struct._GimpChannel** %tmp_mask, align 8
  %101 = bitcast %struct._GimpChannel* %100 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_drawable_get_type() #7
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call107)
  %102 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpDrawable*
  %call109 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %102)
  %103 = load i32, i32* %width, align 4
  %104 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call109, i32 0, i32 0, i32 %103, i32 %104, i32 0)
  %105 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %106 = bitcast %struct._GimpChannel* %105 to %struct._GTypeInstance*
  %call110 = call i64 @gimp_drawable_get_type() #7
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call110)
  %107 = bitcast %struct._GTypeInstance* %call111 to %struct._GimpDrawable*
  %call112 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %107)
  %108 = load i32, i32* %x1, align 4
  %109 = load i32, i32* %y1, align 4
  %110 = load i32, i32* %width, align 4
  %111 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call112, i32 %108, i32 %109, i32 %110, i32 %111, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %112 = load %struct._GimpChannel*, %struct._GimpChannel** %tmp_mask, align 8
  %113 = bitcast %struct._GimpChannel* %112 to i8*
  call void @g_object_unref(i8* %113)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.106, %land.lhs.true.104, %if.end.93
  %114 = load i32, i32* %width, align 4
  %cmp114 = icmp eq i32 %114, 0
  br i1 %cmp114, label %if.then.116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.113
  %115 = load i32, i32* %height, align 4
  %cmp115 = icmp eq i32 %115, 0
  br i1 %cmp115, label %if.then.116, label %if.else.127

if.then.116:                                      ; preds = %lor.lhs.false, %if.end.113
  %116 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %116, i32 0, i32 11
  store i32 1, i32* %empty, align 4
  %117 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x1117 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %117, i32 0, i32 13
  store i32 0, i32* %x1117, align 4
  %118 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y1118 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %118, i32 0, i32 14
  store i32 0, i32* %y1118, align 4
  %119 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %120 = bitcast %struct._GimpChannel* %119 to %struct._GTypeInstance*
  %call119 = call i64 @gimp_item_get_type() #7
  %call120 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call119)
  %121 = bitcast %struct._GTypeInstance* %call120 to %struct._GimpItem*
  %call121 = call i32 @gimp_item_get_width(%struct._GimpItem* %121)
  %122 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x2122 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %122, i32 0, i32 15
  store i32 %call121, i32* %x2122, align 4
  %123 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %124 = bitcast %struct._GimpChannel* %123 to %struct._GTypeInstance*
  %call123 = call i64 @gimp_item_get_type() #7
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call123)
  %125 = bitcast %struct._GTypeInstance* %call124 to %struct._GimpItem*
  %call125 = call i32 @gimp_item_get_height(%struct._GimpItem* %125)
  %126 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y2126 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %126, i32 0, i32 16
  store i32 %call125, i32* %y2126, align 4
  br label %if.end.132

if.else.127:                                      ; preds = %lor.lhs.false
  %127 = load i32, i32* %x1, align 4
  %128 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x1128 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %128, i32 0, i32 13
  store i32 %127, i32* %x1128, align 4
  %129 = load i32, i32* %y1, align 4
  %130 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y1129 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %130, i32 0, i32 14
  store i32 %129, i32* %y1129, align 4
  %131 = load i32, i32* %x2, align 4
  %132 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x2130 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %132, i32 0, i32 15
  store i32 %131, i32* %x2130, align 4
  %133 = load i32, i32* %y2, align 4
  %134 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y2131 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %134, i32 0, i32 16
  store i32 %133, i32* %y2131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.127, %if.then.116
  %135 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %136 = bitcast %struct._GimpItem* %135 to %struct._GTypeInstance*
  %call133 = call i64 @gimp_drawable_get_type() #7
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call133)
  %137 = bitcast %struct._GTypeInstance* %call134 to %struct._GimpDrawable*
  %138 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x1135 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %138, i32 0, i32 13
  %139 = load i32, i32* %x1135, align 4
  %140 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y1136 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %140, i32 0, i32 14
  %141 = load i32, i32* %y1136, align 4
  %142 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x2137 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %142, i32 0, i32 15
  %143 = load i32, i32* %x2137, align 4
  %144 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x1138 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %144, i32 0, i32 13
  %145 = load i32, i32* %x1138, align 4
  %sub139 = sub nsw i32 %143, %145
  %146 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y2140 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %146, i32 0, i32 16
  %147 = load i32, i32* %y2140, align 4
  %148 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y1141 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %148, i32 0, i32 14
  %149 = load i32, i32* %y1141, align 4
  %sub142 = sub nsw i32 %147, %149
  call void @gimp_drawable_update(%struct._GimpDrawable* %137, i32 %139, i32 %141, i32 %sub139, i32 %sub142)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_scale(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %new_offset_x, i32 %new_offset_y, i32 %interpolation_type, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32, align 4
  %new_offset_y.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %new_tiles = alloca %struct._TileManager*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %new_offset_x, i32* %new_offset_x.addr, align 4
  store i32 %new_offset_y, i32* %new_offset_y.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %5, i32 0, i32 0
  %6 = load i64, i64* %g_type, align 8
  %call2 = call i64 @gimp_channel_get_type() #7
  %cmp = icmp eq i64 %6, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %new_offset_x.addr, align 4
  store i32 0, i32* %new_offset_y.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %7, i32 0, i32 12
  %8 = load i32, i32* %bounds_known, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %9, i32 0, i32 11
  %10 = load i32, i32* %empty, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %12 = bitcast %struct._GimpItem* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %13, %struct._GimpDrawable** %drawable, align 8
  %14 = load i32, i32* %new_width.addr, align 4
  %15 = load i32, i32* %new_height.addr, align 4
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call7 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %16)
  %call8 = call %struct._TileManager* @tile_manager_new(i32 %14, i32 %15, i32 %call7)
  store %struct._TileManager* %call8, %struct._TileManager** %new_tiles, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %18 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call9 = call i32 @gimp_item_is_attached(%struct._GimpItem* %18)
  %19 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call10 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %20)
  %21 = load i32, i32* %new_offset_x.addr, align 4
  %22 = load i32, i32* %new_offset_y.addr, align 4
  call void @gimp_drawable_set_tiles_full(%struct._GimpDrawable* %17, i32 %call9, i8* null, %struct._TileManager* %19, i32 %call10, i32 %21, i32 %22)
  %23 = load %struct._TileManager*, %struct._TileManager** %new_tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %23)
  %24 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %25 = bitcast %struct._GimpItem* %24 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_channel_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call11)
  %26 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpChannel*
  call void @gimp_channel_clear(%struct._GimpChannel* %26, i8* null, i32 0)
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %if.end
  %27 = load i8*, i8** @gimp_channel_parent_class, align 8
  %28 = bitcast i8* %27 to %struct._GTypeClass*
  %call13 = call i64 @gimp_item_get_type() #7
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %28, i64 %call13)
  %29 = bitcast %struct._GTypeClass* %call14 to %struct._GimpItemClass*
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %29, i32 0, i32 13
  %30 = load void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %31 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %32 = load i32, i32* %new_width.addr, align 4
  %33 = load i32, i32* %new_height.addr, align 4
  %34 = load i32, i32* %new_offset_x.addr, align 4
  %35 = load i32, i32* %new_offset_y.addr, align 4
  %36 = load i32, i32* %interpolation_type.addr, align 4
  %37 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void %30(%struct._GimpItem* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, %struct._GimpProgress* %37)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_resize(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load i8*, i8** @gimp_channel_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_item_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpItemClass*
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %2, i32 0, i32 14
  %3 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i32, i32* %new_width.addr, align 4
  %7 = load i32, i32* %new_height.addr, align 4
  %8 = load i32, i32* %offset_x.addr, align 4
  %9 = load i32, i32* %offset_y.addr, align 4
  call void %3(%struct._GimpItem* %4, %struct._GimpContext* %5, i32 %6, i32 %7, i32 %8, i32 %9)
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %11 = bitcast %struct._GimpItem* %10 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %call2 = call i64 @gimp_channel_get_type() #7
  %cmp = icmp eq i64 %13, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_set_offset(%struct._GimpItem* %14, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_flip(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %flip_type.addr = alloca i32, align 4
  %axis.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %flip_type, i32* %flip_type.addr, align 4
  store double %axis, double* %axis.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %call = call i64 @gimp_channel_get_type() #7
  %cmp = icmp eq i64 %3, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %clip_result.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** @gimp_channel_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call i64 @gimp_item_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call1)
  %6 = bitcast %struct._GTypeClass* %call2 to %struct._GimpItemClass*
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %6, i32 0, i32 15
  %7 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %10 = load i32, i32* %flip_type.addr, align 4
  %11 = load double, double* %axis.addr, align 8
  %12 = load i32, i32* %clip_result.addr, align 4
  call void %7(%struct._GimpItem* %8, %struct._GimpContext* %9, i32 %10, double %11, i32 %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_rotate(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %rotate_type, double %center_x, double %center_y, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotate_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotate_type, i32* %rotate_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load i8*, i8** @gimp_channel_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_item_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpItemClass*
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %2, i32 0, i32 16
  %3 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i32, i32* %rotate_type.addr, align 4
  %7 = load double, double* %center_x.addr, align 8
  %8 = load double, double* %center_y.addr, align 8
  %9 = load i32, i32* %clip_result.addr, align 4
  call void %3(%struct._GimpItem* %4, %struct._GimpContext* %5, i32 %6, double %7, double %8, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_transform(%struct._GimpItem* %item, %struct._GimpContext* %context, %struct._GimpMatrix3* %matrix, i32 %direction, i32 %interpolation_type, i32 %recursion_level, i32 %clip_result, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %direction.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %recursion_level.addr = alloca i32, align 4
  %clip_result.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
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
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %call = call i64 @gimp_channel_get_type() #7
  %cmp = icmp eq i64 %3, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %clip_result.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** @gimp_channel_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call i64 @gimp_item_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call1)
  %6 = bitcast %struct._GTypeClass* %call2 to %struct._GimpItemClass*
  %transform = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %6, i32 0, i32 17
  %7 = load void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)** %transform, align 8
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %10 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %11 = load i32, i32* %direction.addr, align 4
  %12 = load i32, i32* %interpolation_type.addr, align 4
  %13 = load i32, i32* %recursion_level.addr, align 4
  %14 = load i32, i32* %clip_result.addr, align 4
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void %7(%struct._GimpItem* %8, %struct._GimpContext* %9, %struct._GimpMatrix3* %10, i32 %11, i32 %12, i32 %13, i32 %14, %struct._GimpProgress* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_channel_stroke(%struct._GimpItem* %item, %struct._GimpDrawable* %drawable, %struct._GimpStrokeOptions* %stroke_options, i32 %push_undo, %struct._GimpProgress* %progress, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %stroke_options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %push_undo.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %segs_in = alloca %struct._BoundSeg*, align 8
  %segs_out = alloca %struct._BoundSeg*, align 8
  %n_segs_in = alloca i32, align 4
  %n_segs_out = alloca i32, align 4
  %retval2 = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %paint_options = alloca %struct._GimpPaintOptions*, align 8
  %emulate_dynamics = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpStrokeOptions* %stroke_options, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  store i32 0, i32* %retval2, align 4
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %call3 = call i32 @gimp_channel_boundary(%struct._GimpChannel* %3, %struct._BoundSeg** %segs_in, %struct._BoundSeg** %segs_out, i32* %n_segs_in, i32* %n_segs_out, i32 0, i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call4 = call i32 @gimp_error_quark() #7
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0)) #5
  call void @g_set_error_literal(%struct._GError** %4, i32 %call4, i32 0, i8* %call5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %6 = bitcast %struct._GimpChannel* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %7, i32* %offset_x, i32* %offset_y)
  %8 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %call8 = call i32 @gimp_stroke_options_get_method(%struct._GimpStrokeOptions* %8)
  switch i32 %call8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %10 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %11 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %12 = load i32, i32* %n_segs_in, align 4
  %13 = load i32, i32* %offset_x, align 4
  %14 = load i32, i32* %offset_y, align 4
  %15 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_drawable_stroke_boundary(%struct._GimpDrawable* %9, %struct._GimpStrokeOptions* %10, %struct._BoundSeg* %11, i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 1, i32* %retval2, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %16 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %17 = bitcast %struct._GimpStrokeOptions* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_context_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpContext*
  %call12 = call %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext* %18)
  store %struct._GimpPaintInfo* %call12, %struct._GimpPaintInfo** %paint_info, align 8
  %19 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %paint_type = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %19, i32 0, i32 2
  %20 = load i64, i64* %paint_type, align 8
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %20, i8* null)
  %21 = bitcast i8* %call13 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %21, %struct._GimpPaintCore** %core, align 8
  %22 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %call14 = call %struct._GimpPaintOptions* @gimp_stroke_options_get_paint_options(%struct._GimpStrokeOptions* %22)
  store %struct._GimpPaintOptions* %call14, %struct._GimpPaintOptions** %paint_options, align 8
  %23 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %call15 = call i32 @gimp_stroke_options_get_emulate_dynamics(%struct._GimpStrokeOptions* %23)
  store i32 %call15, i32* %emulate_dynamics, align 4
  %24 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %27 = load i32, i32* %emulate_dynamics, align 4
  %28 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %29 = load i32, i32* %n_segs_in, align 4
  %30 = load i32, i32* %offset_x, align 4
  %31 = load i32, i32* %offset_y, align 4
  %32 = load i32, i32* %push_undo.addr, align 4
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_paint_core_stroke_boundary(%struct._GimpPaintCore* %24, %struct._GimpDrawable* %25, %struct._GimpPaintOptions* %26, i32 %27, %struct._BoundSeg* %28, i32 %29, i32 %30, i32 %31, i32 %32, %struct._GError** %33)
  store i32 %call16, i32* %retval2, align 4
  %34 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %35 = bitcast %struct._GimpPaintCore* %34 to i8*
  call void @g_object_unref(i8* %35)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i32 774, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_channel_stroke, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

do.end:                                           ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.9, %sw.bb
  %36 = load i32, i32* %retval2, align 4
  store i32 %36, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %do.body, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_to_selection(%struct._GimpItem* %item, i32 %op, i32 %antialias, i32 %feather, double %feather_radius_x, double %feather_radius_y) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %op.addr = alloca i32, align 4
  %antialias.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %feather_radius_x.addr = alloca double, align 8
  %feather_radius_y.addr = alloca double, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %antialias, i32* %antialias.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store double %feather_radius_x, double* %feather_radius_x.addr, align 8
  store double %feather_radius_y, double* %feather_radius_y.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %4, i32* %off_x, i32* %off_y)
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %5)
  %6 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %7 = bitcast %struct._GimpItem* %6 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %9 = bitcast %struct._GTypeClass* %8 to %struct._GimpItemClass*
  %to_selection_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %9, i32 0, i32 29
  %10 = load i8*, i8** %to_selection_desc, align 8
  %11 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %12 = load i32, i32* %off_x, align 4
  %13 = load i32, i32* %off_y, align 4
  %14 = load i32, i32* %op.addr, align 4
  %15 = load i32, i32* %feather.addr, align 4
  %16 = load double, double* %feather_radius_x.addr, align 8
  %17 = load double, double* %feather_radius_x.addr, align 8
  call void @gimp_channel_select_channel(%struct._GimpChannel* %call3, i8* %10, %struct._GimpChannel* %11, i32 %12, i32 %13, i32 %14, i32 %15, double %16, double %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_channel_get_node(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %node = alloca %struct._GeglNode*, align 8
  %source = alloca %struct._GeglNode*, align 8
  %mode_node = alloca %struct._GeglNode*, align 8
  %color = alloca %struct._GeglColor*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %4 = bitcast %struct._GimpItem* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_channel_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpChannel*
  store %struct._GimpChannel* %5, %struct._GimpChannel** %channel, align 8
  %6 = load i8*, i8** @gimp_channel_parent_class, align 8
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
  %12 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %13 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %call8 = call %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode* %12, %struct._GeglNode* %13)
  %call9 = call %struct._GeglColor* @gegl_color_new(i8* null)
  store %struct._GeglColor* %call9, %struct._GeglColor** %color, align 8
  %14 = load %struct._GeglColor*, %struct._GeglColor** %color, align 8
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color10 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %15, i32 0, i32 1
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color10, i32 0, i32 0
  %16 = load double, double* %r, align 8
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color11 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %17, i32 0, i32 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color11, i32 0, i32 1
  %18 = load double, double* %g, align 8
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color12 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %19, i32 0, i32 1
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color12, i32 0, i32 2
  %20 = load double, double* %b, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color13 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %21, i32 0, i32 1
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color13, i32 0, i32 3
  %22 = load double, double* %a, align 8
  call void @gegl_color_set_rgba(%struct._GeglColor* %14, double %16, double %18, double %20, double %22)
  br label %do.body

do.body:                                          ; preds = %entry
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color_node = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %23, i32 0, i32 3
  %24 = load %struct._GeglNode*, %struct._GeglNode** %color_node, align 8
  %cmp = icmp eq %struct._GeglNode* %24, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_warn_message(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i32 899, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_get_node, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %25 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %26 = load %struct._GeglColor*, %struct._GeglColor** %color, align 8
  %call14 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._GeglColor* %26, i8* null)
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color_node15 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %27, i32 0, i32 3
  store %struct._GeglNode* %call14, %struct._GeglNode** %color_node15, align 8
  %28 = load %struct._GeglColor*, %struct._GeglColor** %color, align 8
  %29 = bitcast %struct._GeglColor* %28 to i8*
  call void @g_object_unref(i8* %29)
  br label %do.body.16

do.body.16:                                       ; preds = %do.end
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %mask_node = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %30, i32 0, i32 5
  %31 = load %struct._GeglNode*, %struct._GeglNode** %mask_node, align 8
  %cmp17 = icmp eq %struct._GeglNode* %31, null
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.20

if.else.19:                                       ; preds = %do.body.16
  call void @g_warn_message(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i32 908, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_get_node, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %32 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call22 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i8* null)
  %33 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %mask_node23 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %33, i32 0, i32 5
  store %struct._GeglNode* %call22, %struct._GeglNode** %mask_node23, align 8
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %color_node24 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %34, i32 0, i32 3
  %35 = load %struct._GeglNode*, %struct._GeglNode** %color_node24, align 8
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %mask_node25 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %36, i32 0, i32 5
  %37 = load %struct._GeglNode*, %struct._GeglNode** %mask_node25, align 8
  %call26 = call i32 @gegl_node_connect_to(%struct._GeglNode* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._GeglNode* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.21
  %38 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %invert_node = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %38, i32 0, i32 4
  %39 = load %struct._GeglNode*, %struct._GeglNode** %invert_node, align 8
  %cmp28 = icmp eq %struct._GeglNode* %39, null
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.27
  call void @g_warn_message(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i32 916, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_channel_get_node, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %40 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %call33 = call %struct._GeglNode* (%struct._GeglNode*, i8*, ...) @gegl_node_new_child(%struct._GeglNode* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i8* null)
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %invert_node34 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %41, i32 0, i32 4
  store %struct._GeglNode* %call33, %struct._GeglNode** %invert_node34, align 8
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %show_masked = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %42, i32 0, i32 2
  %43 = load i32, i32* %show_masked, align 4
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %if.then.35, label %if.else.41

if.then.35:                                       ; preds = %do.end.32
  %44 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %45 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %invert_node36 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %45, i32 0, i32 4
  %46 = load %struct._GeglNode*, %struct._GeglNode** %invert_node36, align 8
  %call37 = call i32 @gegl_node_connect_to(%struct._GeglNode* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._GeglNode* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %invert_node38 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %47, i32 0, i32 4
  %48 = load %struct._GeglNode*, %struct._GeglNode** %invert_node38, align 8
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %mask_node39 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %49, i32 0, i32 5
  %50 = load %struct._GeglNode*, %struct._GeglNode** %mask_node39, align 8
  %call40 = call i32 @gegl_node_connect_to(%struct._GeglNode* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._GeglNode* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.44

if.else.41:                                       ; preds = %do.end.32
  %51 = load %struct._GeglNode*, %struct._GeglNode** %source, align 8
  %52 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %mask_node42 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %52, i32 0, i32 5
  %53 = load %struct._GeglNode*, %struct._GeglNode** %mask_node42, align 8
  %call43 = call i32 @gegl_node_connect_to(%struct._GeglNode* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._GeglNode* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.35
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call45 = call %struct._GeglNode* @gimp_drawable_get_mode_node(%struct._GimpDrawable* %54)
  store %struct._GeglNode* %call45, %struct._GeglNode** %mode_node, align 8
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %mask_node46 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %55, i32 0, i32 5
  %56 = load %struct._GeglNode*, %struct._GeglNode** %mask_node46, align 8
  %57 = load %struct._GeglNode*, %struct._GeglNode** %mode_node, align 8
  %call47 = call i32 @gegl_node_connect_to(%struct._GeglNode* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._GeglNode* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  %58 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %58
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_invalidate_boundary(%struct._GimpDrawable* %drawable) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  %boundary_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %2, i32 0, i32 6
  store i32 0, i32* %boundary_known, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_get_active_components(%struct._GimpDrawable* %drawable, i32* %active) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %active.addr = alloca i32*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32* %active, i32** %active.addr, align 8
  %0 = load i32*, i32** %active.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %1 = load i32*, i32** %active.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %1, i64 1
  store i32 0, i32* %arrayidx1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_apply_region(%struct._GimpDrawable* %drawable, %struct._PixelRegion* %src2PR, i32 %push_undo, i8* %undo_desc, double %opacity, i32 %mode, %struct._TileManager* %src1_tiles, %struct._PixelRegion* %destPR, i32 %x, i32 %y) #3 {
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
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %0)
  %1 = load i8*, i8** @gimp_channel_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call)
  %3 = bitcast %struct._GTypeClass* %call1 to %struct._GimpDrawableClass*
  %apply_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %3, i32 0, i32 7
  %4 = load void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32)** %apply_region, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %7 = load i32, i32* %push_undo.addr, align 4
  %8 = load i8*, i8** %undo_desc.addr, align 8
  %9 = load double, double* %opacity.addr, align 8
  %10 = load i32, i32* %mode.addr, align 4
  %11 = load %struct._TileManager*, %struct._TileManager** %src1_tiles.addr, align 8
  %12 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  call void %4(%struct._GimpDrawable* %5, %struct._PixelRegion* %6, i32 %7, i8* %8, double %9, i32 %10, %struct._TileManager* %11, %struct._PixelRegion* %12, i32 %13, i32 %14)
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_channel_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call2)
  %17 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpChannel*
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %17, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_replace_region(%struct._GimpDrawable* %drawable, %struct._PixelRegion* %src2PR, i32 %push_undo, i8* %undo_desc, double %opacity, %struct._PixelRegion* %maskPR, i32 %x, i32 %y) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %src2PR.addr = alloca %struct._PixelRegion*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %maskPR.addr = alloca %struct._PixelRegion*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._PixelRegion* %src2PR, %struct._PixelRegion** %src2PR.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store %struct._PixelRegion* %maskPR, %struct._PixelRegion** %maskPR.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %0)
  %1 = load i8*, i8** @gimp_channel_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call)
  %3 = bitcast %struct._GTypeClass* %call1 to %struct._GimpDrawableClass*
  %replace_region = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %3, i32 0, i32 8
  %4 = load void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)*, void (%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32)** %replace_region, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %src2PR.addr, align 8
  %7 = load i32, i32* %push_undo.addr, align 4
  %8 = load i8*, i8** %undo_desc.addr, align 8
  %9 = load double, double* %opacity.addr, align 8
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %maskPR.addr, align 8
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %y.addr, align 4
  call void %4(%struct._GimpDrawable* %5, %struct._PixelRegion* %6, i32 %7, i8* %8, double %9, %struct._PixelRegion* %10, i32 %11, i32 %12)
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_channel_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call2)
  %15 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpChannel*
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %15, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  ret void
}

declare void @gimp_channel_project_region(%struct._GimpDrawable*, i32, i32, i32, i32, %struct._PixelRegion*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_set_tiles(%struct._GimpDrawable* %drawable, i32 %push_undo, i8* %undo_desc, %struct._TileManager* %tiles, i32 %type, i32 %offset_x, i32 %offset_y) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %push_undo.addr = alloca i32, align 4
  %undo_desc.addr = alloca i8*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %type.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  %0 = load i8*, i8** @gimp_channel_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpDrawableClass*
  %set_tiles = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %2, i32 0, i32 11
  %3 = load void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)*, void (%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32)** %set_tiles, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %5 = load i32, i32* %push_undo.addr, align 4
  %6 = load i8*, i8** %undo_desc.addr, align 8
  %7 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %8 = load i32, i32* %type.addr, align 4
  %9 = load i32, i32* %offset_x.addr, align 4
  %10 = load i32, i32* %offset_y.addr, align 4
  call void %3(%struct._GimpDrawable* %4, i32 %5, i8* %6, %struct._TileManager* %7, i32 %8, i32 %9, i32 %10)
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_channel_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call2)
  %13 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpChannel*
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %13, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_swap_pixels(%struct._GimpDrawable* %drawable, %struct._TileManager* %tiles, i32 %sparse, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %tiles.addr = alloca %struct._TileManager*, align 8
  %sparse.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._TileManager* %tiles, %struct._TileManager** %tiles.addr, align 8
  store i32 %sparse, i32* %sparse.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %0)
  %1 = load i8*, i8** @gimp_channel_parent_class, align 8
  %2 = bitcast i8* %1 to %struct._GTypeClass*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %2, i64 %call)
  %3 = bitcast %struct._GTypeClass* %call1 to %struct._GimpDrawableClass*
  %swap_pixels = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %3, i32 0, i32 13
  %4 = load void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)*, void (%struct._GimpDrawable*, %struct._TileManager*, i32, i32, i32, i32, i32)** %swap_pixels, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = load %struct._TileManager*, %struct._TileManager** %tiles.addr, align 8
  %7 = load i32, i32* %sparse.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %width.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  call void %4(%struct._GimpDrawable* %5, %struct._TileManager* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_channel_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call2)
  %14 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpChannel*
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %14, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_channel_real_boundary(%struct._GimpChannel* %channel, %struct._BoundSeg** %segs_in, %struct._BoundSeg** %segs_out, i32* %num_segs_in, i32* %num_segs_out, i32 %x1, i32 %y1, i32 %x2, i32 %y2) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %segs_in.addr = alloca %struct._BoundSeg**, align 8
  %segs_out.addr = alloca %struct._BoundSeg**, align 8
  %num_segs_in.addr = alloca i32*, align 8
  %num_segs_out.addr = alloca i32*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %x3 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %y4 = alloca i32, align 4
  %bPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._BoundSeg** %segs_in, %struct._BoundSeg*** %segs_in.addr, align 8
  store %struct._BoundSeg** %segs_out, %struct._BoundSeg*** %segs_out.addr, align 8
  store i32* %num_segs_in, i32** %num_segs_in.addr, align 8
  store i32* %num_segs_out, i32** %num_segs_out.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %boundary_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %0, i32 0, i32 6
  %1 = load i32, i32* %boundary_known, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.51, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_in1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %2, i32 0, i32 7
  %3 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in1, align 8
  %4 = bitcast %struct._BoundSeg* %3 to i8*
  call void @g_free(i8* %4)
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_out2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %5, i32 0, i32 8
  %6 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out2, align 8
  %7 = bitcast %struct._BoundSeg* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call = call i32 @gimp_channel_bounds(%struct._GimpChannel* %8, i32* %x3, i32* %y3, i32* %x4, i32* %y4)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then.4, label %if.else.44

if.then.4:                                        ; preds = %if.then
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %10 = bitcast %struct._GimpChannel* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_drawable_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDrawable*
  %call7 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %11)
  %12 = load i32, i32* %x3, align 4
  %13 = load i32, i32* %y3, align 4
  %14 = load i32, i32* %x4, align 4
  %15 = load i32, i32* %x3, align 4
  %sub = sub nsw i32 %14, %15
  %16 = load i32, i32* %y4, align 4
  %17 = load i32, i32* %y3, align 4
  %sub8 = sub nsw i32 %16, %17
  call void @pixel_region_init(%struct._PixelRegion* %bPR, %struct._TileManager* %call7, i32 %12, i32 %13, i32 %sub, i32 %sub8, i32 0)
  %18 = load i32, i32* %x1.addr, align 4
  %19 = load i32, i32* %y1.addr, align 4
  %20 = load i32, i32* %x2.addr, align 4
  %21 = load i32, i32* %y2.addr, align 4
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_out9 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %22, i32 0, i32 10
  %call10 = call %struct._BoundSeg* @boundary_find(%struct._PixelRegion* %bPR, i32 1, i32 %18, i32 %19, i32 %20, i32 %21, i8 zeroext 127, i32* %num_segs_out9)
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_out11 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %23, i32 0, i32 8
  store %struct._BoundSeg* %call10, %struct._BoundSeg** %segs_out11, align 8
  %24 = load i32, i32* %x1.addr, align 4
  %25 = load i32, i32* %x3, align 4
  %cmp = icmp sgt i32 %24, %25
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %26 = load i32, i32* %x1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %27 = load i32, i32* %x3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, i32* %x1.addr, align 4
  %28 = load i32, i32* %y1.addr, align 4
  %29 = load i32, i32* %y3, align 4
  %cmp12 = icmp sgt i32 %28, %29
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end
  %30 = load i32, i32* %y1.addr, align 4
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  %31 = load i32, i32* %y3, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %30, %cond.true.13 ], [ %31, %cond.false.14 ]
  store i32 %cond16, i32* %y1.addr, align 4
  %32 = load i32, i32* %x2.addr, align 4
  %33 = load i32, i32* %x4, align 4
  %cmp17 = icmp slt i32 %32, %33
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.15
  %34 = load i32, i32* %x2.addr, align 4
  br label %cond.end.20

cond.false.19:                                    ; preds = %cond.end.15
  %35 = load i32, i32* %x4, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i32 [ %34, %cond.true.18 ], [ %35, %cond.false.19 ]
  store i32 %cond21, i32* %x2.addr, align 4
  %36 = load i32, i32* %y2.addr, align 4
  %37 = load i32, i32* %y4, align 4
  %cmp22 = icmp slt i32 %36, %37
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end.20
  %38 = load i32, i32* %y2.addr, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end.20
  %39 = load i32, i32* %y4, align 4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i32 [ %38, %cond.true.23 ], [ %39, %cond.false.24 ]
  store i32 %cond26, i32* %y2.addr, align 4
  %40 = load i32, i32* %x2.addr, align 4
  %41 = load i32, i32* %x1.addr, align 4
  %cmp27 = icmp sgt i32 %40, %41
  br i1 %cmp27, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.25
  %42 = load i32, i32* %y2.addr, align 4
  %43 = load i32, i32* %y1.addr, align 4
  %cmp28 = icmp sgt i32 %42, %43
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true
  %44 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %45 = bitcast %struct._GimpChannel* %44 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_drawable_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call30)
  %46 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpDrawable*
  %call32 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %46)
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %48 = bitcast %struct._GimpChannel* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_item_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpItem*
  %call35 = call i32 @gimp_item_get_width(%struct._GimpItem* %49)
  %50 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %51 = bitcast %struct._GimpChannel* %50 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call36)
  %52 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_height(%struct._GimpItem* %52)
  call void @pixel_region_init(%struct._PixelRegion* %bPR, %struct._TileManager* %call32, i32 0, i32 0, i32 %call35, i32 %call38, i32 0)
  %53 = load i32, i32* %x1.addr, align 4
  %54 = load i32, i32* %y1.addr, align 4
  %55 = load i32, i32* %x2.addr, align 4
  %56 = load i32, i32* %y2.addr, align 4
  %57 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_in39 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %57, i32 0, i32 9
  %call40 = call %struct._BoundSeg* @boundary_find(%struct._PixelRegion* %bPR, i32 0, i32 %53, i32 %54, i32 %55, i32 %56, i8 zeroext 127, i32* %num_segs_in39)
  %58 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_in41 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %58, i32 0, i32 7
  store %struct._BoundSeg* %call40, %struct._BoundSeg** %segs_in41, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %cond.end.25
  %59 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_in42 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %59, i32 0, i32 7
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_in42, align 8
  %60 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_in43 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %60, i32 0, i32 9
  store i32 0, i32* %num_segs_in43, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.29
  br label %if.end.49

if.else.44:                                       ; preds = %if.then
  %61 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_in45 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %61, i32 0, i32 7
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_in45, align 8
  %62 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_out46 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %62, i32 0, i32 8
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_out46, align 8
  %63 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_in47 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %63, i32 0, i32 9
  store i32 0, i32* %num_segs_in47, align 4
  %64 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_out48 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %64, i32 0, i32 10
  store i32 0, i32* %num_segs_out48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.44, %if.end
  %65 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %boundary_known50 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %65, i32 0, i32 6
  store i32 1, i32* %boundary_known50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.49, %entry
  %66 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_in52 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %66, i32 0, i32 7
  %67 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in52, align 8
  %68 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_in.addr, align 8
  store %struct._BoundSeg* %67, %struct._BoundSeg** %68, align 8
  %69 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_out53 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %69, i32 0, i32 8
  %70 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out53, align 8
  %71 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_out.addr, align 8
  store %struct._BoundSeg* %70, %struct._BoundSeg** %71, align 8
  %72 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_in54 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %72, i32 0, i32 9
  %73 = load i32, i32* %num_segs_in54, align 4
  %74 = load i32*, i32** %num_segs_in.addr, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_out55 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %75, i32 0, i32 10
  %76 = load i32, i32* %num_segs_out55, align 4
  %77 = load i32*, i32** %num_segs_out.addr, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %78, i32 0, i32 11
  %79 = load i32, i32* %empty, align 4
  %tobool56 = icmp ne i32 %79, 0
  %lnot = xor i1 %tobool56, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_channel_real_bounds(%struct._GimpChannel* %channel, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %data = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %ex = alloca i32, align 4
  %ey = alloca i32, align 4
  %tx1 = alloca i32, align 4
  %tx2 = alloca i32, align 4
  %ty1 = alloca i32, align 4
  %ty2 = alloca i32, align 4
  %minx = alloca i32, align 4
  %maxx = alloca i32, align 4
  %pr = alloca i8*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %0, i32 0, i32 12
  %1 = load i32, i32* %bounds_known, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x11 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %2, i32 0, i32 13
  %3 = load i32, i32* %x11, align 4
  %4 = load i32*, i32** %x1.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y12 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %5, i32 0, i32 14
  %6 = load i32, i32* %y12, align 4
  %7 = load i32*, i32** %y1.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x23 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %8, i32 0, i32 15
  %9 = load i32, i32* %x23, align 4
  %10 = load i32*, i32** %x2.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y24 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %11, i32 0, i32 16
  %12 = load i32, i32* %y24, align 4
  %13 = load i32*, i32** %y2.addr, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %14, i32 0, i32 11
  %15 = load i32, i32* %empty, align 4
  %tobool5 = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool5, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call)
  %18 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_item_get_width(%struct._GimpItem* %18)
  store i32 %call7, i32* %tx1, align 4
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %20 = bitcast %struct._GimpChannel* %19 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call8)
  %21 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_height(%struct._GimpItem* %21)
  store i32 %call10, i32* %ty1, align 4
  store i32 0, i32* %tx2, align 4
  store i32 0, i32* %ty2, align 4
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_drawable_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call11)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawable*
  %call13 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %24)
  %25 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %26 = bitcast %struct._GimpChannel* %25 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call14)
  %27 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_get_width(%struct._GimpItem* %27)
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %29 = bitcast %struct._GimpChannel* %28 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call17)
  %30 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_get_height(%struct._GimpItem* %30)
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call13, i32 0, i32 0, i32 %call16, i32 %call19, i32 0)
  %call20 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %maskPR)
  %31 = bitcast %struct._PixelRegionIterator* %call20 to i8*
  store i8* %31, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.111, %if.end
  %32 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %32, null
  br i1 %cmp, label %for.body, label %for.end.113

for.body:                                         ; preds = %for.cond
  %data21 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 0
  %33 = load i8*, i8** %data21, align 8
  store i8* %33, i8** %data, align 8
  store i8* %33, i8** %data1, align 8
  %x22 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 6
  %34 = load i32, i32* %x22, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %35 = load i32, i32* %w, align 4
  %add = add nsw i32 %34, %35
  store i32 %add, i32* %ex, align 4
  %y23 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 7
  %36 = load i32, i32* %y23, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 9
  %37 = load i32, i32* %h, align 4
  %add24 = add nsw i32 %36, %37
  store i32 %add24, i32* %ey, align 4
  %x25 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 6
  %38 = load i32, i32* %x25, align 4
  %39 = load i32, i32* %tx1, align 4
  %cmp26 = icmp slt i32 %38, %39
  br i1 %cmp26, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %40 = load i32, i32* %ex, align 4
  %41 = load i32, i32* %tx2, align 4
  %cmp27 = icmp sgt i32 %40, %41
  br i1 %cmp27, label %if.then.33, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %y29 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 7
  %42 = load i32, i32* %y29, align 4
  %43 = load i32, i32* %ty1, align 4
  %cmp30 = icmp slt i32 %42, %43
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.28
  %44 = load i32, i32* %ey, align 4
  %45 = load i32, i32* %ty2, align 4
  %cmp32 = icmp sgt i32 %44, %45
  br i1 %cmp32, label %if.then.33, label %if.end.110

if.then.33:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false.28, %lor.lhs.false, %for.body
  %46 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %46, i64 0
  %47 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %47 to i32
  %tobool34 = icmp ne i32 %conv, 0
  br i1 %tobool34, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.33
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 5
  %48 = load i32, i32* %rowstride, align 4
  %h35 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 9
  %49 = load i32, i32* %h35, align 4
  %sub = sub nsw i32 %49, 1
  %mul = mul nsw i32 %48, %sub
  %w36 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %50 = load i32, i32* %w36, align 4
  %add37 = add nsw i32 %mul, %50
  %sub38 = sub nsw i32 %add37, 1
  %idxprom = sext i32 %sub38 to i64
  %51 = load i8*, i8** %data, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %51, i64 %idxprom
  %52 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %52 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %land.lhs.true
  %x43 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 6
  %53 = load i32, i32* %x43, align 4
  %54 = load i32, i32* %tx1, align 4
  %cmp44 = icmp slt i32 %53, %54
  br i1 %cmp44, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.42
  %x47 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 6
  %55 = load i32, i32* %x47, align 4
  store i32 %55, i32* %tx1, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.then.42
  %56 = load i32, i32* %ex, align 4
  %57 = load i32, i32* %tx2, align 4
  %cmp49 = icmp sgt i32 %56, %57
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %58 = load i32, i32* %ex, align 4
  %sub52 = sub nsw i32 %58, 1
  store i32 %sub52, i32* %tx2, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  %y54 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 7
  %59 = load i32, i32* %y54, align 4
  %60 = load i32, i32* %ty1, align 4
  %cmp55 = icmp slt i32 %59, %60
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.53
  %y58 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 7
  %61 = load i32, i32* %y58, align 4
  store i32 %61, i32* %ty1, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.53
  %62 = load i32, i32* %ey, align 4
  %63 = load i32, i32* %ty2, align 4
  %cmp60 = icmp sgt i32 %62, %63
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.59
  %64 = load i32, i32* %ey, align 4
  %sub63 = sub nsw i32 %64, 1
  store i32 %sub63, i32* %ty2, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.59
  br label %if.end.109

if.else:                                          ; preds = %land.lhs.true, %if.then.33
  %y65 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 7
  %65 = load i32, i32* %y65, align 4
  store i32 %65, i32* %y, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.105, %if.else
  %66 = load i32, i32* %y, align 4
  %67 = load i32, i32* %ey, align 4
  %cmp67 = icmp slt i32 %66, %67
  br i1 %cmp67, label %for.body.69, label %for.end.108

for.body.69:                                      ; preds = %for.cond.66
  %x70 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 6
  %68 = load i32, i32* %x70, align 4
  store i32 %68, i32* %x, align 4
  %69 = load i8*, i8** %data1, align 8
  store i8* %69, i8** %data, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.101, %for.body.69
  %70 = load i32, i32* %x, align 4
  %71 = load i32, i32* %ex, align 4
  %cmp72 = icmp slt i32 %70, %71
  br i1 %cmp72, label %for.body.74, label %for.end.104

for.body.74:                                      ; preds = %for.cond.71
  %72 = load i8*, i8** %data, align 8
  %73 = load i8, i8* %72, align 1
  %tobool75 = icmp ne i8 %73, 0
  br i1 %tobool75, label %if.then.76, label %if.end.100

if.then.76:                                       ; preds = %for.body.74
  %74 = load i32, i32* %x, align 4
  store i32 %74, i32* %minx, align 4
  %75 = load i32, i32* %x, align 4
  store i32 %75, i32* %maxx, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc, %if.then.76
  %76 = load i32, i32* %x, align 4
  %77 = load i32, i32* %ex, align 4
  %cmp78 = icmp slt i32 %76, %77
  br i1 %cmp78, label %for.body.80, label %for.end

for.body.80:                                      ; preds = %for.cond.77
  %78 = load i8*, i8** %data, align 8
  %79 = load i8, i8* %78, align 1
  %tobool81 = icmp ne i8 %79, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %for.body.80
  %80 = load i32, i32* %x, align 4
  store i32 %80, i32* %maxx, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %for.body.80
  br label %for.inc

for.inc:                                          ; preds = %if.end.83
  %81 = load i32, i32* %x, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %x, align 4
  %82 = load i8*, i8** %data, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr, i8** %data, align 8
  br label %for.cond.77

for.end:                                          ; preds = %for.cond.77
  %83 = load i32, i32* %minx, align 4
  %84 = load i32, i32* %tx1, align 4
  %cmp84 = icmp slt i32 %83, %84
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.end
  %85 = load i32, i32* %minx, align 4
  store i32 %85, i32* %tx1, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %for.end
  %86 = load i32, i32* %maxx, align 4
  %87 = load i32, i32* %tx2, align 4
  %cmp88 = icmp sgt i32 %86, %87
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  %88 = load i32, i32* %maxx, align 4
  store i32 %88, i32* %tx2, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.87
  %89 = load i32, i32* %y, align 4
  %90 = load i32, i32* %ty1, align 4
  %cmp92 = icmp slt i32 %89, %90
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.91
  %91 = load i32, i32* %y, align 4
  store i32 %91, i32* %ty1, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.end.91
  %92 = load i32, i32* %y, align 4
  %93 = load i32, i32* %ty2, align 4
  %cmp96 = icmp sgt i32 %92, %93
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.95
  %94 = load i32, i32* %y, align 4
  store i32 %94, i32* %ty2, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.95
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %for.body.74
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %95 = load i32, i32* %x, align 4
  %inc102 = add nsw i32 %95, 1
  store i32 %inc102, i32* %x, align 4
  %96 = load i8*, i8** %data, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr103, i8** %data, align 8
  br label %for.cond.71

for.end.104:                                      ; preds = %for.cond.71
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104
  %97 = load i32, i32* %y, align 4
  %inc106 = add nsw i32 %97, 1
  store i32 %inc106, i32* %y, align 4
  %rowstride107 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 5
  %98 = load i32, i32* %rowstride107, align 4
  %99 = load i8*, i8** %data1, align 8
  %idx.ext = sext i32 %98 to i64
  %add.ptr = getelementptr inbounds i8, i8* %99, i64 %idx.ext
  store i8* %add.ptr, i8** %data1, align 8
  br label %for.cond.66

for.end.108:                                      ; preds = %for.cond.66
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.108, %if.end.64
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %lor.lhs.false.31
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %100 = load i8*, i8** %pr, align 8
  %101 = bitcast i8* %100 to %struct._PixelRegionIterator*
  %call112 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %101)
  %102 = bitcast %struct._PixelRegionIterator* %call112 to i8*
  store i8* %102, i8** %pr, align 8
  br label %for.cond

for.end.113:                                      ; preds = %for.cond
  %103 = load i32, i32* %tx2, align 4
  %add114 = add nsw i32 %103, 1
  %104 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %105 = bitcast %struct._GimpChannel* %104 to %struct._GTypeInstance*
  %call115 = call i64 @gimp_item_get_type() #7
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call115)
  %106 = bitcast %struct._GTypeInstance* %call116 to %struct._GimpItem*
  %call117 = call i32 @gimp_item_get_width(%struct._GimpItem* %106)
  %cmp118 = icmp sgt i32 %add114, %call117
  br i1 %cmp118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.113
  %107 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %108 = bitcast %struct._GimpChannel* %107 to %struct._GTypeInstance*
  %call120 = call i64 @gimp_item_get_type() #7
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call120)
  %109 = bitcast %struct._GTypeInstance* %call121 to %struct._GimpItem*
  %call122 = call i32 @gimp_item_get_width(%struct._GimpItem* %109)
  br label %cond.end.129

cond.false:                                       ; preds = %for.end.113
  %110 = load i32, i32* %tx2, align 4
  %add123 = add nsw i32 %110, 1
  %cmp124 = icmp slt i32 %add123, 0
  br i1 %cmp124, label %cond.true.126, label %cond.false.127

cond.true.126:                                    ; preds = %cond.false
  br label %cond.end

cond.false.127:                                   ; preds = %cond.false
  %111 = load i32, i32* %tx2, align 4
  %add128 = add nsw i32 %111, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.127, %cond.true.126
  %cond = phi i32 [ 0, %cond.true.126 ], [ %add128, %cond.false.127 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end, %cond.true
  %cond130 = phi i32 [ %call122, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond130, i32* %tx2, align 4
  %112 = load i32, i32* %ty2, align 4
  %add131 = add nsw i32 %112, 1
  %113 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %114 = bitcast %struct._GimpChannel* %113 to %struct._GTypeInstance*
  %call132 = call i64 @gimp_item_get_type() #7
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call132)
  %115 = bitcast %struct._GTypeInstance* %call133 to %struct._GimpItem*
  %call134 = call i32 @gimp_item_get_height(%struct._GimpItem* %115)
  %cmp135 = icmp sgt i32 %add131, %call134
  br i1 %cmp135, label %cond.true.137, label %cond.false.141

cond.true.137:                                    ; preds = %cond.end.129
  %116 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %117 = bitcast %struct._GimpChannel* %116 to %struct._GTypeInstance*
  %call138 = call i64 @gimp_item_get_type() #7
  %call139 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call138)
  %118 = bitcast %struct._GTypeInstance* %call139 to %struct._GimpItem*
  %call140 = call i32 @gimp_item_get_height(%struct._GimpItem* %118)
  br label %cond.end.150

cond.false.141:                                   ; preds = %cond.end.129
  %119 = load i32, i32* %ty2, align 4
  %add142 = add nsw i32 %119, 1
  %cmp143 = icmp slt i32 %add142, 0
  br i1 %cmp143, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %cond.false.141
  br label %cond.end.148

cond.false.146:                                   ; preds = %cond.false.141
  %120 = load i32, i32* %ty2, align 4
  %add147 = add nsw i32 %120, 1
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.146, %cond.true.145
  %cond149 = phi i32 [ 0, %cond.true.145 ], [ %add147, %cond.false.146 ]
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.148, %cond.true.137
  %cond151 = phi i32 [ %call140, %cond.true.137 ], [ %cond149, %cond.end.148 ]
  store i32 %cond151, i32* %ty2, align 4
  %121 = load i32, i32* %tx1, align 4
  %122 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %123 = bitcast %struct._GimpChannel* %122 to %struct._GTypeInstance*
  %call152 = call i64 @gimp_item_get_type() #7
  %call153 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call152)
  %124 = bitcast %struct._GTypeInstance* %call153 to %struct._GimpItem*
  %call154 = call i32 @gimp_item_get_width(%struct._GimpItem* %124)
  %cmp155 = icmp eq i32 %121, %call154
  br i1 %cmp155, label %land.lhs.true.157, label %if.else.175

land.lhs.true.157:                                ; preds = %cond.end.150
  %125 = load i32, i32* %ty1, align 4
  %126 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %127 = bitcast %struct._GimpChannel* %126 to %struct._GTypeInstance*
  %call158 = call i64 @gimp_item_get_type() #7
  %call159 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call158)
  %128 = bitcast %struct._GTypeInstance* %call159 to %struct._GimpItem*
  %call160 = call i32 @gimp_item_get_height(%struct._GimpItem* %128)
  %cmp161 = icmp eq i32 %125, %call160
  br i1 %cmp161, label %if.then.163, label %if.else.175

if.then.163:                                      ; preds = %land.lhs.true.157
  %129 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty164 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %129, i32 0, i32 11
  store i32 1, i32* %empty164, align 4
  %130 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x1165 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %130, i32 0, i32 13
  store i32 0, i32* %x1165, align 4
  %131 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y1166 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %131, i32 0, i32 14
  store i32 0, i32* %y1166, align 4
  %132 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %133 = bitcast %struct._GimpChannel* %132 to %struct._GTypeInstance*
  %call167 = call i64 @gimp_item_get_type() #7
  %call168 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call167)
  %134 = bitcast %struct._GTypeInstance* %call168 to %struct._GimpItem*
  %call169 = call i32 @gimp_item_get_width(%struct._GimpItem* %134)
  %135 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x2170 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %135, i32 0, i32 15
  store i32 %call169, i32* %x2170, align 4
  %136 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %137 = bitcast %struct._GimpChannel* %136 to %struct._GTypeInstance*
  %call171 = call i64 @gimp_item_get_type() #7
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call171)
  %138 = bitcast %struct._GTypeInstance* %call172 to %struct._GimpItem*
  %call173 = call i32 @gimp_item_get_height(%struct._GimpItem* %138)
  %139 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y2174 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %139, i32 0, i32 16
  store i32 %call173, i32* %y2174, align 4
  br label %if.end.181

if.else.175:                                      ; preds = %land.lhs.true.157, %cond.end.150
  %140 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty176 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %140, i32 0, i32 11
  store i32 0, i32* %empty176, align 4
  %141 = load i32, i32* %tx1, align 4
  %142 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x1177 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %142, i32 0, i32 13
  store i32 %141, i32* %x1177, align 4
  %143 = load i32, i32* %ty1, align 4
  %144 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y1178 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %144, i32 0, i32 14
  store i32 %143, i32* %y1178, align 4
  %145 = load i32, i32* %tx2, align 4
  %146 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x2179 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %146, i32 0, i32 15
  store i32 %145, i32* %x2179, align 4
  %147 = load i32, i32* %ty2, align 4
  %148 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y2180 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %148, i32 0, i32 16
  store i32 %147, i32* %y2180, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.175, %if.then.163
  %149 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known182 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %149, i32 0, i32 12
  store i32 1, i32* %bounds_known182, align 4
  %150 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x1183 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %150, i32 0, i32 13
  %151 = load i32, i32* %x1183, align 4
  %152 = load i32*, i32** %x1.addr, align 8
  store i32 %151, i32* %152, align 4
  %153 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x2184 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %153, i32 0, i32 15
  %154 = load i32, i32* %x2184, align 4
  %155 = load i32*, i32** %x2.addr, align 8
  store i32 %154, i32* %155, align 4
  %156 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y1185 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %156, i32 0, i32 14
  %157 = load i32, i32* %y1185, align 4
  %158 = load i32*, i32** %y1.addr, align 8
  store i32 %157, i32* %158, align 4
  %159 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y2186 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %159, i32 0, i32 16
  %160 = load i32, i32* %y2186, align 4
  %161 = load i32*, i32** %y2.addr, align 8
  store i32 %160, i32* %161, align 4
  %162 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty187 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %162, i32 0, i32 11
  %163 = load i32, i32* %empty187, align 4
  %tobool188 = icmp ne i32 %163, 0
  %lnot189 = xor i1 %tobool188, true
  %lnot.ext190 = zext i1 %lnot189 to i32
  store i32 %lnot.ext190, i32* %retval
  br label %return

return:                                           ; preds = %if.end.181, %if.then
  %164 = load i32, i32* %retval
  ret i32 %164
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_channel_real_is_empty(%struct._GimpChannel* %channel) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %data = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %pr = alloca i8*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %0, i32 0, i32 12
  %1 = load i32, i32* %bounds_known, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %2, i32 0, i32 11
  %3 = load i32, i32* %empty, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = bitcast %struct._GimpChannel* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %call2 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %6)
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %8 = bitcast %struct._GimpChannel* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %call5 = call i32 @gimp_item_get_width(%struct._GimpItem* %9)
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %11 = bitcast %struct._GimpChannel* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_item_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpItem*
  %call8 = call i32 @gimp_item_get_height(%struct._GimpItem* %12)
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call2, i32 0, i32 0, i32 %call5, i32 %call8, i32 0)
  %call9 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %maskPR)
  %13 = bitcast %struct._PixelRegionIterator* %call9 to i8*
  store i8* %13, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %if.end
  %14 = load i8*, i8** %pr, align 8
  %cmp = icmp ne i8* %14, null
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %data10 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 0
  %15 = load i8*, i8** %data10, align 8
  store i8* %15, i8** %data, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.20, %for.body
  %16 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 9
  %17 = load i32, i32* %h, align 4
  %cmp12 = icmp slt i32 %16, %17
  br i1 %cmp12, label %for.body.13, label %for.end.22

for.body.13:                                      ; preds = %for.cond.11
  store i32 0, i32* %x, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.13
  %18 = load i32, i32* %x, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %19 = load i32, i32* %w, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %20 = load i8*, i8** %data, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %data, align 8
  %21 = load i8, i8* %20, align 1
  %tobool17 = icmp ne i8 %21, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.16
  %22 = load i8*, i8** %pr, align 8
  %23 = bitcast i8* %22 to %struct._PixelRegionIterator*
  call void @pixel_regions_process_stop(%struct._PixelRegionIterator* %23)
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %24 = load i32, i32* %x, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %25 = load i32, i32* %y, align 4
  %inc21 = add nsw i32 %25, 1
  store i32 %inc21, i32* %y, align 4
  br label %for.cond.11

for.end.22:                                       ; preds = %for.cond.11
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %26 = load i8*, i8** %pr, align 8
  %27 = bitcast i8* %26 to %struct._PixelRegionIterator*
  %call24 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %27)
  %28 = bitcast %struct._PixelRegionIterator* %call24 to i8*
  store i8* %28, i8** %pr, align 8
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_in = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %29, i32 0, i32 7
  %30 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in, align 8
  %tobool26 = icmp ne %struct._BoundSeg* %30, null
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %for.end.25
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_in28 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %31, i32 0, i32 7
  %32 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_in28, align 8
  %33 = bitcast %struct._BoundSeg* %32 to i8*
  call void @g_free(i8* %33)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %for.end.25
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_out = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %34, i32 0, i32 8
  %35 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out, align 8
  %tobool30 = icmp ne %struct._BoundSeg* %35, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_out32 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %36, i32 0, i32 8
  %37 = load %struct._BoundSeg*, %struct._BoundSeg** %segs_out32, align 8
  %38 = bitcast %struct._BoundSeg* %37 to i8*
  call void @g_free(i8* %38)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %39 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty34 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %39, i32 0, i32 11
  store i32 1, i32* %empty34, align 4
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_in35 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %40, i32 0, i32 7
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_in35, align 8
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %segs_out36 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %41, i32 0, i32 8
  store %struct._BoundSeg* null, %struct._BoundSeg** %segs_out36, align 8
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_in = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %42, i32 0, i32 9
  store i32 0, i32* %num_segs_in, align 4
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %num_segs_out = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %43, i32 0, i32 10
  store i32 0, i32* %num_segs_out, align 4
  %44 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known37 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %44, i32 0, i32 12
  store i32 1, i32* %bounds_known37, align 4
  %45 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %boundary_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %45, i32 0, i32 6
  store i32 1, i32* %boundary_known, align 4
  %46 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %46, i32 0, i32 13
  store i32 0, i32* %x1, align 4
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %47, i32 0, i32 14
  store i32 0, i32* %y1, align 4
  %48 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %49 = bitcast %struct._GimpChannel* %48 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_item_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call38)
  %50 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpItem*
  %call40 = call i32 @gimp_item_get_width(%struct._GimpItem* %50)
  %51 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %51, i32 0, i32 15
  store i32 %call40, i32* %x2, align 4
  %52 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %53 = bitcast %struct._GimpChannel* %52 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call41)
  %54 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItem*
  %call43 = call i32 @gimp_item_get_height(%struct._GimpItem* %54)
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %55, i32 0, i32 16
  store i32 %call43, i32* %y2, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.18, %if.then
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_real_feather(%struct._GimpChannel* %channel, double %radius_x, double %radius_y, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca double, align 8
  %radius_y.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store double %radius_x, double* %radius_x.addr, align 8
  store double %radius_y, double* %radius_y.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %3 = bitcast %struct._GimpChannel* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GimpChannelClass*
  %feather_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %5, i32 0, i32 13
  %6 = load i8*, i8** %feather_desc, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %1, i8* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %8 = bitcast %struct._GimpChannel* %7 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call)
  %9 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %11 = bitcast %struct._GimpChannel* %10 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call2)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  %call4 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %12)
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_item_get_width(%struct._GimpItem* %15)
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_height(%struct._GimpItem* %18)
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call4, i32 0, i32 0, i32 %call7, i32 %call10, i32 1)
  %19 = load double, double* %radius_x.addr, align 8
  %20 = load double, double* %radius_y.addr, align 8
  call void @gaussian_blur_region(%struct._PixelRegion* %srcPR, double %19, double %20)
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %21, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_drawable_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call11)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawable*
  %25 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %26 = bitcast %struct._GimpChannel* %25 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call13)
  %27 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_get_width(%struct._GimpItem* %27)
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %29 = bitcast %struct._GimpChannel* %28 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call16)
  %30 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  %call18 = call i32 @gimp_item_get_height(%struct._GimpItem* %30)
  call void @gimp_drawable_update(%struct._GimpDrawable* %24, i32 0, i32 0, i32 %call15, i32 %call18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_real_sharpen(%struct._GimpChannel* %channel, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %push_undo.addr = alloca i32, align 4
  %maskPR = alloca %struct._PixelRegion, align 8
  %lut = alloca %struct._GimpLut*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %3 = bitcast %struct._GimpChannel* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GimpChannelClass*
  %sharpen_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %5, i32 0, i32 14
  %6 = load i8*, i8** %sharpen_desc, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %1, i8* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %8 = bitcast %struct._GimpChannel* %7 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call)
  %9 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %11 = bitcast %struct._GimpChannel* %10 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call2)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  %call4 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %12)
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_item_get_width(%struct._GimpItem* %15)
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_height(%struct._GimpItem* %18)
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call4, i32 0, i32 0, i32 %call7, i32 %call10, i32 1)
  %call11 = call %struct._GimpLut* @threshold_lut_new(double 5.000000e-01, i32 1)
  store %struct._GimpLut* %call11, %struct._GimpLut** %lut, align 8
  %19 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %20 = bitcast %struct._GimpLut* %19 to i8*
  call void (void ()*, i8*, i32, ...) @pixel_regions_process_parallel(void ()* bitcast (void (%struct._GimpLut*, %struct._PixelRegion*)* @gimp_lut_process_inline to void ()*), i8* %20, i32 1, %struct._PixelRegion* %maskPR)
  %21 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  call void @gimp_lut_free(%struct._GimpLut* %21)
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %22, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_drawable_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call12)
  %25 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDrawable*
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %27 = bitcast %struct._GimpChannel* %26 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call14)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_get_width(%struct._GimpItem* %28)
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %30 = bitcast %struct._GimpChannel* %29 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call17)
  %31 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_get_height(%struct._GimpItem* %31)
  call void @gimp_drawable_update(%struct._GimpDrawable* %25, i32 0, i32 0, i32 %call16, i32 %call19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_real_clear(%struct._GimpChannel* %channel, i8* %undo_desc, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %push_undo.addr = alloca i32, align 4
  %maskPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %undo_desc.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %3 = bitcast %struct._GimpChannel* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GimpChannelClass*
  %clear_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %5, i32 0, i32 15
  %6 = load i8*, i8** %clear_desc, align 8
  store i8* %6, i8** %undo_desc.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %8 = load i8*, i8** %undo_desc.addr, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %7, i8* %8)
  br label %if.end.4

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %10 = bitcast %struct._GimpChannel* %9 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %12 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %12, i32 0, i32 12
  %13 = load i32, i32* %bounds_known, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.end.4
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %14, i32 0, i32 11
  %15 = load i32, i32* %empty, align 4
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %if.else.14, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_drawable_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDrawable*
  %call10 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %18)
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %19, i32 0, i32 13
  %20 = load i32, i32* %x1, align 4
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %21, i32 0, i32 14
  %22 = load i32, i32* %y1, align 4
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %23, i32 0, i32 15
  %24 = load i32, i32* %x2, align 4
  %25 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x111 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %25, i32 0, i32 13
  %26 = load i32, i32* %x111, align 4
  %sub = sub nsw i32 %24, %26
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %27, i32 0, i32 16
  %28 = load i32, i32* %y2, align 4
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y112 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %29, i32 0, i32 14
  %30 = load i32, i32* %y112, align 4
  %sub13 = sub nsw i32 %28, %30
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call10, i32 %20, i32 %22, i32 %sub, i32 %sub13, i32 1)
  call void @clear_region(%struct._PixelRegion* %maskPR)
  br label %if.end.24

if.else.14:                                       ; preds = %land.lhs.true, %if.end.4
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %32 = bitcast %struct._GimpChannel* %31 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_drawable_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call15)
  %33 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDrawable*
  %call17 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %33)
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %35 = bitcast %struct._GimpChannel* %34 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call18)
  %36 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_width(%struct._GimpItem* %36)
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %38 = bitcast %struct._GimpChannel* %37 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call21)
  %39 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call17, i32 0, i32 0, i32 %call20, i32 %call23, i32 1)
  call void @clear_region(%struct._PixelRegion* %maskPR)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.14, %if.then.7
  %40 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known25 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %40, i32 0, i32 12
  store i32 1, i32* %bounds_known25, align 4
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty26 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %41, i32 0, i32 11
  store i32 1, i32* %empty26, align 4
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x127 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %42, i32 0, i32 13
  store i32 0, i32* %x127, align 4
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y128 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %43, i32 0, i32 14
  store i32 0, i32* %y128, align 4
  %44 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %45 = bitcast %struct._GimpChannel* %44 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call29)
  %46 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call i32 @gimp_item_get_width(%struct._GimpItem* %46)
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x232 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %47, i32 0, i32 15
  store i32 %call31, i32* %x232, align 4
  %48 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %49 = bitcast %struct._GimpChannel* %48 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_item_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call33)
  %50 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpItem*
  %call35 = call i32 @gimp_item_get_height(%struct._GimpItem* %50)
  %51 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y236 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %51, i32 0, i32 16
  store i32 %call35, i32* %y236, align 4
  %52 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %53 = bitcast %struct._GimpChannel* %52 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_drawable_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call37)
  %54 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDrawable*
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %56 = bitcast %struct._GimpChannel* %55 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call39)
  %57 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  %call41 = call i32 @gimp_item_get_width(%struct._GimpItem* %57)
  %58 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %59 = bitcast %struct._GimpChannel* %58 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_item_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call42)
  %60 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpItem*
  %call44 = call i32 @gimp_item_get_height(%struct._GimpItem* %60)
  call void @gimp_drawable_update(%struct._GimpDrawable* %54, i32 0, i32 0, i32 %call41, i32 %call44)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_real_all(%struct._GimpChannel* %channel, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %push_undo.addr = alloca i32, align 4
  %maskPR = alloca %struct._PixelRegion, align 8
  %bg = alloca i8, align 1
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store i8 -1, i8* %bg, align 1
  %0 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %3 = bitcast %struct._GimpChannel* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GimpChannelClass*
  %all_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %5, i32 0, i32 16
  %6 = load i8*, i8** %all_desc, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %1, i8* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %8 = bitcast %struct._GimpChannel* %7 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call)
  %9 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %11 = bitcast %struct._GimpChannel* %10 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_drawable_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call2)
  %12 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDrawable*
  %call4 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %12)
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call5)
  %15 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call i32 @gimp_item_get_width(%struct._GimpItem* %15)
  %16 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %17 = bitcast %struct._GimpChannel* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call i32 @gimp_item_get_height(%struct._GimpItem* %18)
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call4, i32 0, i32 0, i32 %call7, i32 %call10, i32 1)
  call void @color_region(%struct._PixelRegion* %maskPR, i8* %bg)
  %19 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %19, i32 0, i32 12
  store i32 1, i32* %bounds_known, align 4
  %20 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %20, i32 0, i32 11
  store i32 0, i32* %empty, align 4
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %21, i32 0, i32 13
  store i32 0, i32* %x1, align 4
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %22, i32 0, i32 14
  store i32 0, i32* %y1, align 4
  %23 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %24 = bitcast %struct._GimpChannel* %23 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call11)
  %25 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_get_width(%struct._GimpItem* %25)
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %26, i32 0, i32 15
  store i32 %call13, i32* %x2, align 4
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %28 = bitcast %struct._GimpChannel* %27 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call14)
  %29 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_get_height(%struct._GimpItem* %29)
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %30, i32 0, i32 16
  store i32 %call16, i32* %y2, align 4
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %32 = bitcast %struct._GimpChannel* %31 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_drawable_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call17)
  %33 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDrawable*
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %35 = bitcast %struct._GimpChannel* %34 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call19)
  %36 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_get_width(%struct._GimpItem* %36)
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %38 = bitcast %struct._GimpChannel* %37 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call22)
  %39 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  call void @gimp_drawable_update(%struct._GimpDrawable* %33, i32 0, i32 0, i32 %call21, i32 %call24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_real_invert(%struct._GimpChannel* %channel, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %push_undo.addr = alloca i32, align 4
  %maskPR = alloca %struct._PixelRegion, align 8
  %lut = alloca %struct._GimpLut*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i32, i32* %push_undo.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %3 = bitcast %struct._GimpChannel* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GimpChannelClass*
  %invert_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %5, i32 0, i32 17
  %6 = load i8*, i8** %invert_desc, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %1, i8* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %8 = bitcast %struct._GimpChannel* %7 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call)
  %9 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %10, i32 0, i32 12
  %11 = load i32, i32* %bounds_known, align 4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %12, i32 0, i32 11
  %13 = load i32, i32* %empty, align 4
  %tobool3 = icmp ne i32 %13, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  call void @gimp_channel_all(%struct._GimpChannel* %14, i32 0)
  br label %if.end.25

if.else.5:                                        ; preds = %land.lhs.true, %if.end
  %15 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %16 = bitcast %struct._GimpChannel* %15 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_drawable_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call6)
  %17 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawable*
  %call8 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %17)
  %18 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %19 = bitcast %struct._GimpChannel* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  %call11 = call i32 @gimp_item_get_width(%struct._GimpItem* %20)
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %22 = bitcast %struct._GimpChannel* %21 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call12)
  %23 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_get_height(%struct._GimpItem* %23)
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call8, i32 0, i32 0, i32 %call11, i32 %call14, i32 1)
  %call15 = call %struct._GimpLut* @invert_lut_new(i32 1)
  store %struct._GimpLut* %call15, %struct._GimpLut** %lut, align 8
  %24 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %25 = bitcast %struct._GimpLut* %24 to i8*
  call void (void ()*, i8*, i32, ...) @pixel_regions_process_parallel(void ()* bitcast (void (%struct._GimpLut*, %struct._PixelRegion*)* @gimp_lut_process_inline to void ()*), i8* %25, i32 1, %struct._PixelRegion* %maskPR)
  %26 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  call void @gimp_lut_free(%struct._GimpLut* %26)
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known16 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %27, i32 0, i32 12
  store i32 0, i32* %bounds_known16, align 4
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %29 = bitcast %struct._GimpChannel* %28 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_drawable_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call17)
  %30 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDrawable*
  %31 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %32 = bitcast %struct._GimpChannel* %31 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call19)
  %33 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_get_width(%struct._GimpItem* %33)
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %35 = bitcast %struct._GimpChannel* %34 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call22)
  %36 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call i32 @gimp_item_get_height(%struct._GimpItem* %36)
  call void @gimp_drawable_update(%struct._GimpDrawable* %30, i32 0, i32 0, i32 %call21, i32 %call24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.5, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_real_border(%struct._GimpChannel* %channel, i32 %radius_x, i32 %radius_y, i32 %feather, i32 %edge_lock, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %edge_lock.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %bPR = alloca %struct._PixelRegion, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store i32 %edge_lock, i32* %edge_lock.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i32, i32* %radius_x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %radius_y.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call = call i32 @gimp_channel_bounds(%struct._GimpChannel* %2, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call4 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %4 = load i32, i32* %x1, align 4
  %5 = load i32, i32* %radius_x.addr, align 4
  %sub = sub nsw i32 %4, %5
  %cmp8 = icmp slt i32 %sub, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %x1, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end.7
  %6 = load i32, i32* %radius_x.addr, align 4
  %7 = load i32, i32* %x1, align 4
  %sub10 = sub nsw i32 %7, %6
  store i32 %sub10, i32* %x1, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %8 = load i32, i32* %x2, align 4
  %9 = load i32, i32* %radius_x.addr, align 4
  %add = add nsw i32 %8, %9
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %11 = bitcast %struct._GimpChannel* %10 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call12)
  %12 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call i32 @gimp_item_get_width(%struct._GimpItem* %12)
  %cmp15 = icmp sgt i32 %add, %call14
  br i1 %cmp15, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %if.end.11
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_item_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call17)
  %15 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpItem*
  %call19 = call i32 @gimp_item_get_width(%struct._GimpItem* %15)
  store i32 %call19, i32* %x2, align 4
  br label %if.end.22

if.else.20:                                       ; preds = %if.end.11
  %16 = load i32, i32* %radius_x.addr, align 4
  %17 = load i32, i32* %x2, align 4
  %add21 = add nsw i32 %17, %16
  store i32 %add21, i32* %x2, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.16
  %18 = load i32, i32* %y1, align 4
  %19 = load i32, i32* %radius_y.addr, align 4
  %sub23 = sub nsw i32 %18, %19
  %cmp24 = icmp slt i32 %sub23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.22
  store i32 0, i32* %y1, align 4
  br label %if.end.28

if.else.26:                                       ; preds = %if.end.22
  %20 = load i32, i32* %radius_y.addr, align 4
  %21 = load i32, i32* %y1, align 4
  %sub27 = sub nsw i32 %21, %20
  store i32 %sub27, i32* %y1, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.25
  %22 = load i32, i32* %y2, align 4
  %23 = load i32, i32* %radius_y.addr, align 4
  %add29 = add nsw i32 %22, %23
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %25 = bitcast %struct._GimpChannel* %24 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_item_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call30)
  %26 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpItem*
  %call32 = call i32 @gimp_item_get_height(%struct._GimpItem* %26)
  %cmp33 = icmp sgt i32 %add29, %call32
  br i1 %cmp33, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %if.end.28
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %28 = bitcast %struct._GimpChannel* %27 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call35)
  %29 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %call37 = call i32 @gimp_item_get_height(%struct._GimpItem* %29)
  store i32 %call37, i32* %y2, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %if.end.28
  %30 = load i32, i32* %radius_y.addr, align 4
  %31 = load i32, i32* %y2, align 4
  %add39 = add nsw i32 %31, %30
  store i32 %add39, i32* %y2, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.34
  %32 = load i32, i32* %push_undo.addr, align 4
  %tobool41 = icmp ne i32 %32, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.40
  %33 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %35 = bitcast %struct._GimpChannel* %34 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %37 = bitcast %struct._GTypeClass* %36 to %struct._GimpChannelClass*
  %border_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %37, i32 0, i32 18
  %38 = load i8*, i8** %border_desc, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %33, i8* %38)
  br label %if.end.46

if.else.43:                                       ; preds = %if.end.40
  %39 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %40 = bitcast %struct._GimpChannel* %39 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_drawable_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call44)
  %41 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %41)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %43 = bitcast %struct._GimpChannel* %42 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_drawable_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call47)
  %44 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpDrawable*
  %call49 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %44)
  %45 = load i32, i32* %x1, align 4
  %46 = load i32, i32* %y1, align 4
  %47 = load i32, i32* %x2, align 4
  %48 = load i32, i32* %x1, align 4
  %sub50 = sub nsw i32 %47, %48
  %49 = load i32, i32* %y2, align 4
  %50 = load i32, i32* %y1, align 4
  %sub51 = sub nsw i32 %49, %50
  call void @pixel_region_init(%struct._PixelRegion* %bPR, %struct._TileManager* %call49, i32 %45, i32 %46, i32 %sub50, i32 %sub51, i32 1)
  %51 = load i32, i32* %radius_x.addr, align 4
  %conv = trunc i32 %51 to i16
  %52 = load i32, i32* %radius_y.addr, align 4
  %conv52 = trunc i32 %52 to i16
  %53 = load i32, i32* %feather.addr, align 4
  %54 = load i32, i32* %edge_lock.addr, align 4
  call void @border_region(%struct._PixelRegion* %bPR, i16 signext %conv, i16 signext %conv52, i32 %53, i32 %54)
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %55, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %56 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %57 = bitcast %struct._GimpChannel* %56 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_drawable_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call53)
  %58 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDrawable*
  %59 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %60 = bitcast %struct._GimpChannel* %59 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_item_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call55)
  %61 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpItem*
  %call57 = call i32 @gimp_item_get_width(%struct._GimpItem* %61)
  %62 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %63 = bitcast %struct._GimpChannel* %62 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_item_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call58)
  %64 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpItem*
  %call60 = call i32 @gimp_item_get_height(%struct._GimpItem* %64)
  call void @gimp_drawable_update(%struct._GimpDrawable* %58, i32 0, i32 0, i32 %call57, i32 %call60)
  br label %return

return:                                           ; preds = %if.end.46, %if.then.6, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_real_grow(%struct._GimpChannel* %channel, i32 %radius_x, i32 %radius_y, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %bPR = alloca %struct._PixelRegion, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i32, i32* %radius_x.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %radius_y.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %radius_x.addr, align 4
  %cmp2 = icmp sle i32 %2, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.7

land.lhs.true.3:                                  ; preds = %if.end
  %3 = load i32, i32* %radius_y.addr, align 4
  %cmp4 = icmp sle i32 %3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true.3
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i32, i32* %radius_x.addr, align 4
  %sub = sub nsw i32 0, %5
  %6 = load i32, i32* %radius_y.addr, align 4
  %sub6 = sub nsw i32 0, %6
  %7 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_channel_shrink(%struct._GimpChannel* %4, i32 %sub, i32 %sub6, i32 0, i32 %7)
  br label %return

if.end.7:                                         ; preds = %land.lhs.true.3, %if.end
  %8 = load i32, i32* %radius_x.addr, align 4
  %cmp8 = icmp slt i32 %8, 0
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %9 = load i32, i32* %radius_y.addr, align 4
  %cmp9 = icmp slt i32 %9, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.7
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call = call i32 @gimp_channel_bounds(%struct._GimpChannel* %10, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.11
  br label %return

if.end.13:                                        ; preds = %if.end.11
  %11 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call14 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %12 = load i32, i32* %x1, align 4
  %13 = load i32, i32* %radius_x.addr, align 4
  %sub18 = sub nsw i32 %12, %13
  %cmp19 = icmp sgt i32 %sub18, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  %14 = load i32, i32* %x1, align 4
  %15 = load i32, i32* %radius_x.addr, align 4
  %sub21 = sub nsw i32 %14, %15
  store i32 %sub21, i32* %x1, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end.17
  store i32 0, i32* %x1, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  %16 = load i32, i32* %y1, align 4
  %17 = load i32, i32* %radius_y.addr, align 4
  %sub23 = sub nsw i32 %16, %17
  %cmp24 = icmp sgt i32 %sub23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.end.22
  %18 = load i32, i32* %y1, align 4
  %19 = load i32, i32* %radius_y.addr, align 4
  %sub26 = sub nsw i32 %18, %19
  store i32 %sub26, i32* %y1, align 4
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.22
  store i32 0, i32* %y1, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.25
  %20 = load i32, i32* %x2, align 4
  %21 = load i32, i32* %radius_x.addr, align 4
  %add = add nsw i32 %20, %21
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call29)
  %24 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  %call31 = call i32 @gimp_item_get_width(%struct._GimpItem* %24)
  %cmp32 = icmp slt i32 %add, %call31
  br i1 %cmp32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.end.28
  %25 = load i32, i32* %x2, align 4
  %26 = load i32, i32* %radius_x.addr, align 4
  %add34 = add nsw i32 %25, %26
  store i32 %add34, i32* %x2, align 4
  br label %if.end.39

if.else.35:                                       ; preds = %if.end.28
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %28 = bitcast %struct._GimpChannel* %27 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_item_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call36)
  %29 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpItem*
  %call38 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  store i32 %call38, i32* %x2, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.35, %if.then.33
  %30 = load i32, i32* %y2, align 4
  %31 = load i32, i32* %radius_y.addr, align 4
  %add40 = add nsw i32 %30, %31
  %32 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %33 = bitcast %struct._GimpChannel* %32 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call41)
  %34 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItem*
  %call43 = call i32 @gimp_item_get_height(%struct._GimpItem* %34)
  %cmp44 = icmp slt i32 %add40, %call43
  br i1 %cmp44, label %if.then.45, label %if.else.47

if.then.45:                                       ; preds = %if.end.39
  %35 = load i32, i32* %y2, align 4
  %36 = load i32, i32* %radius_y.addr, align 4
  %add46 = add nsw i32 %35, %36
  store i32 %add46, i32* %y2, align 4
  br label %if.end.51

if.else.47:                                       ; preds = %if.end.39
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %38 = bitcast %struct._GimpChannel* %37 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call48)
  %39 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  store i32 %call50, i32* %y2, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.47, %if.then.45
  %40 = load i32, i32* %push_undo.addr, align 4
  %tobool52 = icmp ne i32 %40, 0
  br i1 %tobool52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.end.51
  %41 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %42 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %43 = bitcast %struct._GimpChannel* %42 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %45 = bitcast %struct._GTypeClass* %44 to %struct._GimpChannelClass*
  %grow_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %45, i32 0, i32 19
  %46 = load i8*, i8** %grow_desc, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %41, i8* %46)
  br label %if.end.57

if.else.54:                                       ; preds = %if.end.51
  %47 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %48 = bitcast %struct._GimpChannel* %47 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_drawable_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call55)
  %49 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %49)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  %50 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %51 = bitcast %struct._GimpChannel* %50 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_drawable_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call58)
  %52 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpDrawable*
  %call60 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %52)
  %53 = load i32, i32* %x1, align 4
  %54 = load i32, i32* %y1, align 4
  %55 = load i32, i32* %x2, align 4
  %56 = load i32, i32* %x1, align 4
  %sub61 = sub nsw i32 %55, %56
  %57 = load i32, i32* %y2, align 4
  %58 = load i32, i32* %y1, align 4
  %sub62 = sub nsw i32 %57, %58
  call void @pixel_region_init(%struct._PixelRegion* %bPR, %struct._TileManager* %call60, i32 %53, i32 %54, i32 %sub61, i32 %sub62, i32 1)
  %59 = load i32, i32* %radius_x.addr, align 4
  %conv = trunc i32 %59 to i16
  %60 = load i32, i32* %radius_y.addr, align 4
  %conv63 = trunc i32 %60 to i16
  call void @fatten_region(%struct._PixelRegion* %bPR, i16 signext %conv, i16 signext %conv63)
  %61 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %61, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %62 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %63 = bitcast %struct._GimpChannel* %62 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_drawable_get_type() #7
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call64)
  %64 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpDrawable*
  %65 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %66 = bitcast %struct._GimpChannel* %65 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_item_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call66)
  %67 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpItem*
  %call68 = call i32 @gimp_item_get_width(%struct._GimpItem* %67)
  %68 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %69 = bitcast %struct._GimpChannel* %68 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_item_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call69)
  %70 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpItem*
  %call71 = call i32 @gimp_item_get_height(%struct._GimpItem* %70)
  call void @gimp_drawable_update(%struct._GimpDrawable* %64, i32 0, i32 0, i32 %call68, i32 %call71)
  br label %return

return:                                           ; preds = %if.end.57, %if.then.16, %if.then.12, %if.then.10, %if.then.5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_real_shrink(%struct._GimpChannel* %channel, i32 %radius_x, i32 %radius_y, i32 %edge_lock, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %edge_lock.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  %bPR = alloca %struct._PixelRegion, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store i32 %edge_lock, i32* %edge_lock.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i32, i32* %radius_x.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %radius_y.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %radius_x.addr, align 4
  %cmp2 = icmp sle i32 %2, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.7

land.lhs.true.3:                                  ; preds = %if.end
  %3 = load i32, i32* %radius_y.addr, align 4
  %cmp4 = icmp sle i32 %3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true.3
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i32, i32* %radius_x.addr, align 4
  %sub = sub nsw i32 0, %5
  %6 = load i32, i32* %radius_y.addr, align 4
  %sub6 = sub nsw i32 0, %6
  %7 = load i32, i32* %push_undo.addr, align 4
  call void @gimp_channel_grow(%struct._GimpChannel* %4, i32 %sub, i32 %sub6, i32 %7)
  br label %return

if.end.7:                                         ; preds = %land.lhs.true.3, %if.end
  %8 = load i32, i32* %radius_x.addr, align 4
  %cmp8 = icmp slt i32 %8, 0
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %9 = load i32, i32* %radius_y.addr, align 4
  %cmp9 = icmp slt i32 %9, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.7
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %10 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call = call i32 @gimp_channel_bounds(%struct._GimpChannel* %10, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.11
  br label %return

if.end.13:                                        ; preds = %if.end.11
  %11 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call14 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %12 = load i32, i32* %x1, align 4
  %cmp18 = icmp sgt i32 %12, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %13 = load i32, i32* %x1, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %x1, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %14 = load i32, i32* %y1, align 4
  %cmp21 = icmp sgt i32 %14, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %15 = load i32, i32* %y1, align 4
  %dec23 = add nsw i32 %15, -1
  store i32 %dec23, i32* %y1, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %16 = load i32, i32* %x2, align 4
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %18 = bitcast %struct._GimpChannel* %17 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call25)
  %19 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %call27 = call i32 @gimp_item_get_width(%struct._GimpItem* %19)
  %cmp28 = icmp slt i32 %16, %call27
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.24
  %20 = load i32, i32* %x2, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %x2, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.24
  %21 = load i32, i32* %y2, align 4
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call31)
  %24 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call i32 @gimp_item_get_height(%struct._GimpItem* %24)
  %cmp34 = icmp slt i32 %21, %call33
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.30
  %25 = load i32, i32* %y2, align 4
  %inc36 = add nsw i32 %25, 1
  store i32 %inc36, i32* %y2, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.30
  %26 = load i32, i32* %push_undo.addr, align 4
  %tobool38 = icmp ne i32 %26, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.end.37
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %29 = bitcast %struct._GimpChannel* %28 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %31 = bitcast %struct._GTypeClass* %30 to %struct._GimpChannelClass*
  %shrink_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %31, i32 0, i32 20
  %32 = load i8*, i8** %shrink_desc, align 8
  call void @gimp_channel_push_undo(%struct._GimpChannel* %27, i8* %32)
  br label %if.end.42

if.else:                                          ; preds = %if.end.37
  %33 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %34 = bitcast %struct._GimpChannel* %33 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_drawable_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call40)
  %35 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawable*
  call void @gimp_drawable_invalidate_boundary(%struct._GimpDrawable* %35)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.39
  %36 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %37 = bitcast %struct._GimpChannel* %36 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_drawable_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call43)
  %38 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDrawable*
  %call45 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %38)
  %39 = load i32, i32* %x1, align 4
  %40 = load i32, i32* %y1, align 4
  %41 = load i32, i32* %x2, align 4
  %42 = load i32, i32* %x1, align 4
  %sub46 = sub nsw i32 %41, %42
  %43 = load i32, i32* %y2, align 4
  %44 = load i32, i32* %y1, align 4
  %sub47 = sub nsw i32 %43, %44
  call void @pixel_region_init(%struct._PixelRegion* %bPR, %struct._TileManager* %call45, i32 %39, i32 %40, i32 %sub46, i32 %sub47, i32 1)
  %45 = load i32, i32* %radius_x.addr, align 4
  %conv = trunc i32 %45 to i16
  %46 = load i32, i32* %radius_y.addr, align 4
  %conv48 = trunc i32 %46 to i16
  %47 = load i32, i32* %edge_lock.addr, align 4
  call void @thin_region(%struct._PixelRegion* %bPR, i16 signext %conv, i16 signext %conv48, i32 %47)
  %48 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %48, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %49 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %50 = bitcast %struct._GimpChannel* %49 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_drawable_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call49)
  %51 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDrawable*
  %52 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %53 = bitcast %struct._GimpChannel* %52 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_item_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call51)
  %54 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpItem*
  %call53 = call i32 @gimp_item_get_width(%struct._GimpItem* %54)
  %55 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %56 = bitcast %struct._GimpChannel* %55 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_item_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call54)
  %57 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpItem*
  %call56 = call i32 @gimp_item_get_height(%struct._GimpItem* %57)
  call void @gimp_drawable_update(%struct._GimpDrawable* %51, i32 0, i32 0, i32 %call53, i32 %call56)
  br label %return

return:                                           ; preds = %if.end.42, %if.then.16, %if.then.12, %if.then.10, %if.then.5, %if.then
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gimp_object_get_name(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage*) #1

declare %struct._GimpItemTree* @gimp_image_get_channel_tree(%struct._GimpImage*) #1

declare i32 @g_type_is_a(i64, i64) #1

declare i32 @gimp_drawable_is_gray(%struct._GimpDrawable*) #1

declare void @gimp_drawable_convert_type(%struct._GimpDrawable*, %struct._GimpImage*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare void @flatten_region(%struct._PixelRegion*, %struct._PixelRegion*, i8*) #1

declare void @gimp_drawable_set_tiles_full(%struct._GimpDrawable*, i32, i8*, %struct._TileManager*, i32, i32, i32) #1

declare i32 @gimp_item_get_offset_x(%struct._GimpItem*) #1

declare i32 @gimp_item_get_offset_y(%struct._GimpItem*) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #1

declare void @gimp_item_resize(%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @clear_region(%struct._PixelRegion*) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i32 @gimp_stroke_options_get_method(%struct._GimpStrokeOptions*) #1

declare void @gimp_drawable_stroke_boundary(%struct._GimpDrawable*, %struct._GimpStrokeOptions*, %struct._BoundSeg*, i32, i32, i32, i32) #1

declare %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GimpPaintOptions* @gimp_stroke_options_get_paint_options(%struct._GimpStrokeOptions*) #1

declare i32 @gimp_stroke_options_get_emulate_dynamics(%struct._GimpStrokeOptions*) #1

declare i32 @gimp_paint_core_stroke_boundary(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, %struct._BoundSeg*, i32, i32, i32, i32, %struct._GError**) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare void @gimp_channel_select_channel(%struct._GimpChannel*, i8*, %struct._GimpChannel*, i32, i32, i32, i32, double, double) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare %struct._GeglNode* @gegl_node_add_child(%struct._GeglNode*, %struct._GeglNode*) #1

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #1

declare %struct._GeglNode* @gegl_node_new_child(%struct._GeglNode*, i8*, ...) #1

declare %struct._GeglNode* @gimp_drawable_get_mode_node(%struct._GimpDrawable*) #1

declare %struct._BoundSeg* @boundary_find(%struct._PixelRegion*, i32, i32, i32, i32, i32, i8 zeroext, i32*) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare void @pixel_regions_process_stop(%struct._PixelRegionIterator*) #1

declare void @gaussian_blur_region(%struct._PixelRegion*, double, double) #1

declare %struct._GimpLut* @threshold_lut_new(double, i32) #1

declare void @pixel_regions_process_parallel(void ()*, i8*, i32, ...) #1

declare void @gimp_lut_process_inline(%struct._GimpLut*, %struct._PixelRegion*) #1

declare void @gimp_lut_free(%struct._GimpLut*) #1

declare void @color_region(%struct._PixelRegion*, i8*) #1

declare %struct._GimpLut* @invert_lut_new(i32) #1

declare void @border_region(%struct._PixelRegion*, i16 signext, i16 signext, i32, i32) #1

declare void @fatten_region(%struct._PixelRegion*, i16 signext, i16 signext) #1

declare void @thin_region(%struct._PixelRegion*, i16 signext, i16 signext, i32) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_channel_get_opacity_at(%struct._GimpPickable* %pickable, i32 %x, i32 %y) #3 {
entry:
  %retval = alloca i32, align 4
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %channel = alloca %struct._GimpChannel*, align 8
  %tile = alloca %struct._Tile*, align 8
  %val = alloca i32, align 4
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %1 = bitcast %struct._GimpPickable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannel*
  store %struct._GimpChannel* %2, %struct._GimpChannel** %channel, align 8
  %3 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %3, i32 0, i32 12
  %4 = load i32, i32* %bounds_known, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %empty = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %5, i32 0, i32 11
  %6 = load i32, i32* %empty, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %x.addr, align 4
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %8, i32 0, i32 13
  %9 = load i32, i32* %x1, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %10 = load i32, i32* %x.addr, align 4
  %11 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %11, i32 0, i32 15
  %12 = load i32, i32* %x2, align 4
  %cmp4 = icmp sge i32 %10, %12
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %y.addr, align 4
  %14 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y1 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %14, i32 0, i32 14
  %15 = load i32, i32* %y1, align 4
  %cmp6 = icmp slt i32 %13, %15
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.5
  %16 = load i32, i32* %y.addr, align 4
  %17 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %17, i32 0, i32 16
  %18 = load i32, i32* %y2, align 4
  %cmp8 = icmp sge i32 %16, %18
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false.7, %lor.lhs.false.5, %lor.lhs.false, %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end
  br label %if.end.27

if.else.11:                                       ; preds = %entry
  %19 = load i32, i32* %x.addr, align 4
  %cmp12 = icmp slt i32 %19, 0
  br i1 %cmp12, label %if.then.25, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.else.11
  %20 = load i32, i32* %x.addr, align 4
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %22 = bitcast %struct._GimpChannel* %21 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call14)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i32 @gimp_item_get_width(%struct._GimpItem* %23)
  %cmp17 = icmp sge i32 %20, %call16
  br i1 %cmp17, label %if.then.25, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.13
  %24 = load i32, i32* %y.addr, align 4
  %cmp19 = icmp slt i32 %24, 0
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.18
  %25 = load i32, i32* %y.addr, align 4
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %27 = bitcast %struct._GimpChannel* %26 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call21)
  %28 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call i32 @gimp_item_get_height(%struct._GimpItem* %28)
  %cmp24 = icmp sge i32 %25, %call23
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false.18, %lor.lhs.false.13, %if.else.11
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %lor.lhs.false.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.10
  %29 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %30 = bitcast %struct._GimpChannel* %29 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_drawable_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call28)
  %31 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDrawable*
  %call30 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %31)
  %32 = load i32, i32* %x.addr, align 4
  %33 = load i32, i32* %y.addr, align 4
  %call31 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %call30, i32 %32, i32 %33, i32 1, i32 0)
  store %struct._Tile* %call31, %struct._Tile** %tile, align 8
  %34 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %35 = load i32, i32* %x.addr, align 4
  %36 = load i32, i32* %y.addr, align 4
  %call32 = call i8* @tile_data_pointer(%struct._Tile* %34, i32 %35, i32 %36)
  %37 = load i8, i8* %call32, align 1
  %conv = zext i8 %37 to i32
  store i32 %conv, i32* %val, align 4
  %38 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %38, i32 0)
  %39 = load i32, i32* %val, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.25, %if.then.9, %if.then.3
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare void @tile_release(%struct._Tile*, i32) #1

declare i32 @tile_size(%struct._Tile*) #1

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
