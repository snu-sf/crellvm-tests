; ModuleID = './app/core/gimpselection.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSelectionClass = type { %struct._GimpChannelClass }
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
%struct._GimpContainer = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpItemTree = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type { i32, %struct._TileManager*, %struct._TileManager*, %struct._GeglNode*, %struct._GeglNode*, %struct._GimpLayer*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, %struct._GSList*, i32 }
%struct._TileManager = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GeglNode = type opaque
%struct._GimpStrokeOptions = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpSelection = type { %struct._GimpChannel, i32 }
%struct._GimpPickable = type opaque

@gimp_selection_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpSelection\00", align 1
@gimp_selection_new.black = private unnamed_addr constant %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01 }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_selection_new = private unnamed_addr constant [19 x i8] c"gimp_selection_new\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"width > 0 && height > 0\00", align 1
@__func__.gimp_selection_push_stroking = private unnamed_addr constant [29 x i8] c"gimp_selection_push_stroking\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"GIMP_IS_SELECTION (selection)\00", align 1
@__func__.gimp_selection_pop_stroking = private unnamed_addr constant [28 x i8] c"gimp_selection_pop_stroking\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"selection->stroking_count > 0\00", align 1
@__func__.gimp_selection_load = private unnamed_addr constant [20 x i8] c"gimp_selection_load\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CHANNEL (channel)\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"width == gimp_item_get_width (GIMP_ITEM (channel))\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"height == gimp_item_get_height (GIMP_ITEM (channel))\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"undo-type\04Channel to Selection\00", align 1
@__func__.gimp_selection_save = private unnamed_addr constant [20 x i8] c"gimp_selection_save\00", align 1
@__func__.gimp_selection_extract = private unnamed_addr constant [23 x i8] c"gimp_selection_extract\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PICKABLE (pickable)\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (pickable))\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"Unable to cut or copy because the selected region is empty.\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"gimpselection.c\00", align 1
@__func__.gimp_selection_float = private unnamed_addr constant [21 x i8] c"gimp_selection_float\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"Cannot float selection because the selected region is empty.\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"undo-type\04Float Selection\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Floated Layer\00", align 1
@gimp_selection_parent_class = internal global i8* null, align 8
@GimpSelection_private_offset = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [15 x i8] c"gimp-selection\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Selection Mask\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"undo-type\04Move Selection\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"undo-type\04Stroke Selection\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"undo-type\04Feather Selection\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"undo-type\04Sharpen Selection\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"undo-type\04Select None\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"undo-type\04Select All\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"undo-type\04Invert Selection\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"undo-type\04Border Selection\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"undo-type\04Grow Selection\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"undo-type\04Shrink Selection\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"There is no selection to stroke.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_selection_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_selection_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_selection_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_channel_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 840, void (i8*, i8*)* bitcast (void (i8*)* @gimp_selection_class_intern_init to void (i8*, i8*)*), i32 168, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSelection*)* @gimp_selection_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_selection_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_selection_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_selection_parent_class, align 8
  %1 = load i32, i32* @GimpSelection_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSelection_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSelectionClass*
  call void @gimp_selection_class_init(%struct._GimpSelectionClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_init(%struct._GimpSelection* %selection) #3 {
entry:
  %selection.addr = alloca %struct._GimpSelection*, align 8
  store %struct._GimpSelection* %selection, %struct._GimpSelection** %selection.addr, align 8
  %0 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %stroking_count = getelementptr inbounds %struct._GimpSelection, %struct._GimpSelection* %0, i32 0, i32 1
  store i32 0, i32* %stroking_count, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_selection_new(%struct._GimpImage* %image, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %black = alloca %struct._GimpRGB, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = bitcast %struct._GimpRGB* %black to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @gimp_selection_new.black to i8*), i64 32, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = bitcast %struct._GimpImage* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #8
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_selection_new, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load i32, i32* %width.addr, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %15 = load i32, i32* %height.addr, align 4
  %cmp14 = icmp sgt i32 %15, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_selection_new, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %call19 = call i64 @gimp_selection_get_type() #8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %17 = load i32, i32* %width.addr, align 4
  %18 = load i32, i32* %height.addr, align 4
  %call20 = call %struct._GimpDrawable* @gimp_drawable_new(i64 %call19, %struct._GimpImage* %16, i8* null, i32 0, i32 0, i32 %17, i32 %18, i32 2)
  %19 = bitcast %struct._GimpDrawable* %call20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_channel_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call21)
  %20 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpChannel*
  store %struct._GimpChannel* %20, %struct._GimpChannel** %channel, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_channel_set_color(%struct._GimpChannel* %21, %struct._GimpRGB* %black, i32 0)
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  call void @gimp_channel_set_show_masked(%struct._GimpChannel* %22, i32 1)
  %23 = load i32, i32* %width.addr, align 4
  %24 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %x2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %24, i32 0, i32 15
  store i32 %23, i32* %x2, align 4
  %25 = load i32, i32* %height.addr, align 4
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %y2 = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %26, i32 0, i32 16
  store i32 %25, i32* %y2, align 4
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  store %struct._GimpChannel* %27, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  %28 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %28
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpDrawable* @gimp_drawable_new(i64, %struct._GimpImage*, i8*, i32, i32, i32, i32, i32) #1

declare void @gimp_channel_set_color(%struct._GimpChannel*, %struct._GimpRGB*, i32) #1

declare void @gimp_channel_set_show_masked(%struct._GimpChannel*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_selection_push_stroking(%struct._GimpSelection* %selection) #3 {
entry:
  %retval = alloca i32, align 4
  %selection.addr = alloca %struct._GimpSelection*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSelection* %selection, %struct._GimpSelection** %selection.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_selection_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_selection_push_stroking, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %stroking_count = getelementptr inbounds %struct._GimpSelection, %struct._GimpSelection* %13, i32 0, i32 1
  %14 = load i32, i32* %stroking_count, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %stroking_count, align 4
  %15 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %stroking_count11 = getelementptr inbounds %struct._GimpSelection, %struct._GimpSelection* %15, i32 0, i32 1
  %16 = load i32, i32* %stroking_count11, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_selection_pop_stroking(%struct._GimpSelection* %selection) #3 {
entry:
  %retval = alloca i32, align 4
  %selection.addr = alloca %struct._GimpSelection*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSelection* %selection, %struct._GimpSelection** %selection.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_selection_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_selection_pop_stroking, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %stroking_count = getelementptr inbounds %struct._GimpSelection, %struct._GimpSelection* %13, i32 0, i32 1
  %14 = load i32, i32* %stroking_count, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_selection_pop_stroking, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %stroking_count17 = getelementptr inbounds %struct._GimpSelection, %struct._GimpSelection* %15, i32 0, i32 1
  %16 = load i32, i32* %stroking_count17, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %stroking_count17, align 4
  %17 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %stroking_count18 = getelementptr inbounds %struct._GimpSelection, %struct._GimpSelection* %17, i32 0, i32 1
  %18 = load i32, i32* %stroking_count18, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @gimp_selection_load(%struct._GimpSelection* %selection, %struct._GimpChannel* %channel) #3 {
entry:
  %selection.addr = alloca %struct._GimpSelection*, align 8
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
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
  store %struct._GimpSelection* %selection, %struct._GimpSelection** %selection.addr, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_selection_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_selection_load, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %14 = bitcast %struct._GimpChannel* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_channel_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_selection_load, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %27 = bitcast %struct._GimpSelection* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  %call41 = call i32 @gimp_item_get_width(%struct._GimpItem* %28)
  store i32 %call41, i32* %width, align 4
  %29 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %30 = bitcast %struct._GimpSelection* %29 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_item_get_type() #8
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call42)
  %31 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpItem*
  %call44 = call i32 @gimp_item_get_height(%struct._GimpItem* %31)
  store i32 %call44, i32* %height, align 4
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.38
  %32 = load i32, i32* %width, align 4
  %33 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %34 = bitcast %struct._GimpChannel* %33 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_item_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call46)
  %35 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpItem*
  %call48 = call i32 @gimp_item_get_width(%struct._GimpItem* %35)
  %cmp49 = icmp eq i32 %32, %call48
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_selection_load, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %36 = load i32, i32* %height, align 4
  %37 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %38 = bitcast %struct._GimpChannel* %37 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_item_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call55)
  %39 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpItem*
  %call57 = call i32 @gimp_item_get_height(%struct._GimpItem* %39)
  %cmp58 = icmp eq i32 %36, %call57
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.61

if.else.60:                                       ; preds = %do.body.54
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_selection_load, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.61:                                        ; preds = %if.then.59
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  %40 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %41 = bitcast %struct._GimpSelection* %40 to %struct._GTypeInstance*
  %call63 = call i64 @gimp_channel_get_type() #8
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call63)
  %42 = bitcast %struct._GTypeInstance* %call64 to %struct._GimpChannel*
  %call65 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i64 10)
  call void @gimp_channel_push_undo(%struct._GimpChannel* %42, i8* %call65)
  %43 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %44 = bitcast %struct._GimpChannel* %43 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_drawable_get_type() #8
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call66)
  %45 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpDrawable*
  %call68 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %45)
  %46 = load i32, i32* %width, align 4
  %47 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call68, i32 0, i32 0, i32 %46, i32 %47, i32 0)
  %48 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %49 = bitcast %struct._GimpSelection* %48 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_drawable_get_type() #8
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call69)
  %50 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpDrawable*
  %call71 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %50)
  %51 = load i32, i32* %width, align 4
  %52 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %call71, i32 0, i32 0, i32 %51, i32 %52, i32 1)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %53 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %54 = bitcast %struct._GimpSelection* %53 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_channel_get_type() #8
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call72)
  %55 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpChannel*
  %bounds_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %55, i32 0, i32 12
  store i32 0, i32* %bounds_known, align 4
  %56 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %57 = bitcast %struct._GimpSelection* %56 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_drawable_get_type() #8
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call74)
  %58 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpDrawable*
  %59 = load i32, i32* %width, align 4
  %60 = load i32, i32* %height, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %58, i32 0, i32 0, i32 %59, i32 %60)
  br label %return

return:                                           ; preds = %do.end.62, %if.else.60, %if.else.51, %if.else.36, %if.else.9
  ret void
}

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_channel_push_undo(%struct._GimpChannel*, i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpChannel* @gimp_selection_save(%struct._GimpSelection* %selection) #3 {
entry:
  %retval = alloca %struct._GimpChannel*, align 8
  %selection.addr = alloca %struct._GimpSelection*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_channel = alloca %struct._GimpChannel*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSelection* %selection, %struct._GimpSelection** %selection.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_selection_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_selection_save, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpChannel* null, %struct._GimpChannel** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %14 = bitcast %struct._GimpSelection* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %15)
  store %struct._GimpImage* %call13, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %17 = bitcast %struct._GimpSelection* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  %call16 = call i64 @gimp_channel_get_type() #8
  %call17 = call %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem* %18, i64 %call16)
  %19 = bitcast %struct._GimpItem* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_channel_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call18)
  %20 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpChannel*
  store %struct._GimpChannel* %20, %struct._GimpChannel** %new_channel, align 8
  %21 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %22 = bitcast %struct._GimpChannel* %21 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call20)
  %23 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %23, i32 0, i32 0)
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %25 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %call22 = call i32 @gimp_image_add_channel(%struct._GimpImage* %24, %struct._GimpChannel* %25, %struct._GimpChannel* inttoptr (i64 1 to %struct._GimpChannel*), i32 -1, i32 1)
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  store %struct._GimpChannel* %26, %struct._GimpChannel** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %27 = load %struct._GimpChannel*, %struct._GimpChannel** %retval
  ret %struct._GimpChannel* %27
}

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpItem* @gimp_item_duplicate(%struct._GimpItem*, i64) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

declare i32 @gimp_image_add_channel(%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpChannel*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._TileManager* @gimp_selection_extract(%struct._GimpSelection* %selection, %struct._GimpPickable* %pickable, %struct._GimpContext* %context, i32 %cut_image, i32 %keep_indexed, i32 %add_alpha, i32* %offset_x, i32* %offset_y, %struct._GError** %error) #3 {
entry:
  %retval = alloca %struct._TileManager*, align 8
  %selection.addr = alloca %struct._GimpSelection*, align 8
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %cut_image.addr = alloca i32, align 4
  %keep_indexed.addr = alloca i32, align 4
  %add_alpha.addr = alloca i32, align 4
  %offset_x.addr = alloca i32*, align 8
  %offset_y.addr = alloca i32*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %image = alloca %struct._GimpImage*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %bg_color = alloca [4 x i8], align 1
  %colormap = alloca i8*, align 8
  %base_type = alloca i32, align 4
  %bytes = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %non_empty = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst40 = alloca %struct._GTypeInstance*, align 8
  %__t42 = alloca i64, align 8
  %__r45 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  %__inst75 = alloca %struct._GTypeInstance*, align 8
  %__t77 = alloca i64, align 8
  %__r80 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %__inst110 = alloca %struct._GTypeInstance*, align 8
  %__t112 = alloca i64, align 8
  %__r115 = alloca i32, align 4
  %tmp130 = alloca i32, align 4
  %__inst213 = alloca %struct._GTypeInstance*, align 8
  %__t215 = alloca i64, align 8
  %__r218 = alloca i32, align 4
  %tmp233 = alloca i32, align 4
  %maskPR = alloca %struct._PixelRegion, align 8
  %__inst270 = alloca %struct._GTypeInstance*, align 8
  %__t272 = alloca i64, align 8
  %__r275 = alloca i32, align 4
  %tmp290 = alloca i32, align 4
  %__inst314 = alloca %struct._GTypeInstance*, align 8
  %__t316 = alloca i64, align 8
  %__r319 = alloca i32, align 4
  %tmp334 = alloca i32, align 4
  %__inst340 = alloca %struct._GTypeInstance*, align 8
  %__t342 = alloca i64, align 8
  %__r345 = alloca i32, align 4
  %tmp360 = alloca i32, align 4
  %__inst367 = alloca %struct._GTypeInstance*, align 8
  %__t369 = alloca i64, align 8
  %__r372 = alloca i32, align 4
  %tmp387 = alloca i32, align 4
  %__inst395 = alloca %struct._GTypeInstance*, align 8
  %__t397 = alloca i64, align 8
  %__r400 = alloca i32, align 4
  %tmp415 = alloca i32, align 4
  store %struct._GimpSelection* %selection, %struct._GimpSelection** %selection.addr, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %cut_image, i32* %cut_image.addr, align 4
  store i32 %keep_indexed, i32* %keep_indexed.addr, align 4
  store i32 %add_alpha, i32* %add_alpha.addr, align 4
  store i32* %offset_x, i32** %offset_x.addr, align 8
  store i32* %offset_y, i32** %offset_y.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %base_type, align 4
  store i32 0, i32* %bytes, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_selection_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_selection_extract, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = bitcast %struct._GimpPickable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_pickable_interface_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_selection_extract, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %27 = bitcast %struct._GimpPickable* %26 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %27, %struct._GTypeInstance** %__inst40, align 8
  %call43 = call i64 @gimp_item_get_type() #8
  store i64 %call43, i64* %__t42, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %tobool46 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool46, label %if.else.48, label %if.then.47

if.then.47:                                       ; preds = %do.end.38
  store i32 0, i32* %__r45, align 4
  br label %if.end.59

if.else.48:                                       ; preds = %do.end.38
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class49 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class49, align 8
  %tobool50 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.else.56

land.lhs.true.51:                                 ; preds = %if.else.48
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %g_class52 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class52, align 8
  %g_type53 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type53, align 8
  %34 = load i64, i64* %__t42, align 8
  %cmp54 = icmp eq i64 %33, %34
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true.51
  store i32 1, i32* %__r45, align 4
  br label %if.end.58

if.else.56:                                       ; preds = %land.lhs.true.51, %if.else.48
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst40, align 8
  %36 = load i64, i64* %__t42, align 8
  %call57 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #9
  store i32 %call57, i32* %__r45, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.47
  %37 = load i32, i32* %__r45, align 4
  store i32 %37, i32* %tmp60
  %38 = load i32, i32* %tmp60
  %tobool61 = icmp ne i32 %38, 0
  br i1 %tobool61, label %if.then.62, label %if.end.72

if.then.62:                                       ; preds = %if.end.59
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  %39 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %40 = bitcast %struct._GimpPickable* %39 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_item_get_type() #8
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call64)
  %41 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpItem*
  %call66 = call i32 @gimp_item_is_attached(%struct._GimpItem* %41)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.70

if.else.69:                                       ; preds = %do.body.63
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_selection_extract, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.70:                                        ; preds = %if.then.68
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %if.end.59
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.72
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %43 = bitcast %struct._GimpContext* %42 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %43, %struct._GTypeInstance** %__inst75, align 8
  %call78 = call i64 @gimp_context_get_type() #8
  store i64 %call78, i64* %__t77, align 8
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %tobool81 = icmp ne %struct._GTypeInstance* %44, null
  br i1 %tobool81, label %if.else.83, label %if.then.82

if.then.82:                                       ; preds = %do.body.73
  store i32 0, i32* %__r80, align 4
  br label %if.end.94

if.else.83:                                       ; preds = %do.body.73
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %g_class84 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class84, align 8
  %tobool85 = icmp ne %struct._GTypeClass* %46, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.else.91

land.lhs.true.86:                                 ; preds = %if.else.83
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %g_class87 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class87, align 8
  %g_type88 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %48, i32 0, i32 0
  %49 = load i64, i64* %g_type88, align 8
  %50 = load i64, i64* %__t77, align 8
  %cmp89 = icmp eq i64 %49, %50
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %land.lhs.true.86
  store i32 1, i32* %__r80, align 4
  br label %if.end.93

if.else.91:                                       ; preds = %land.lhs.true.86, %if.else.83
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst75, align 8
  %52 = load i64, i64* %__t77, align 8
  %call92 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %51, i64 %52) #9
  store i32 %call92, i32* %__r80, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.82
  %53 = load i32, i32* %__r80, align 4
  store i32 %53, i32* %tmp95
  %54 = load i32, i32* %tmp95
  %tobool96 = icmp ne i32 %54, 0
  br i1 %tobool96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %if.end.94
  br label %if.end.99

if.else.98:                                       ; preds = %if.end.94
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_selection_extract, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.99:                                        ; preds = %if.then.97
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp102 = icmp eq %struct._GError** %55, null
  br i1 %cmp102, label %if.then.104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.101
  %56 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %57 = load %struct._GError*, %struct._GError** %56, align 8
  %cmp103 = icmp eq %struct._GError* %57, null
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %lor.lhs.false, %do.body.101
  br label %if.end.106

if.else.105:                                      ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_selection_extract, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.106:                                       ; preds = %if.then.104
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  %58 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call108 = call %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %58)
  store %struct._GimpImage* %call108, %struct._GimpImage** %image, align 8
  %59 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %60 = bitcast %struct._GimpPickable* %59 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %60, %struct._GTypeInstance** %__inst110, align 8
  %call113 = call i64 @gimp_drawable_get_type() #8
  store i64 %call113, i64* %__t112, align 8
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst110, align 8
  %tobool116 = icmp ne %struct._GTypeInstance* %61, null
  br i1 %tobool116, label %if.else.118, label %if.then.117

if.then.117:                                      ; preds = %do.end.107
  store i32 0, i32* %__r115, align 4
  br label %if.end.129

if.else.118:                                      ; preds = %do.end.107
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst110, align 8
  %g_class119 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class119, align 8
  %tobool120 = icmp ne %struct._GTypeClass* %63, null
  br i1 %tobool120, label %land.lhs.true.121, label %if.else.126

land.lhs.true.121:                                ; preds = %if.else.118
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst110, align 8
  %g_class122 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %64, i32 0, i32 0
  %65 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class122, align 8
  %g_type123 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %65, i32 0, i32 0
  %66 = load i64, i64* %g_type123, align 8
  %67 = load i64, i64* %__t112, align 8
  %cmp124 = icmp eq i64 %66, %67
  br i1 %cmp124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %land.lhs.true.121
  store i32 1, i32* %__r115, align 4
  br label %if.end.128

if.else.126:                                      ; preds = %land.lhs.true.121, %if.else.118
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst110, align 8
  %69 = load i64, i64* %__t112, align 8
  %call127 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %68, i64 %69) #9
  store i32 %call127, i32* %__r115, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %if.then.125
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.117
  %70 = load i32, i32* %__r115, align 4
  store i32 %70, i32* %tmp130
  %71 = load i32, i32* %tmp130
  %tobool131 = icmp ne i32 %71, 0
  br i1 %tobool131, label %if.then.132, label %if.else.136

if.then.132:                                      ; preds = %if.end.129
  %72 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %73 = bitcast %struct._GimpPickable* %72 to %struct._GTypeInstance*
  %call133 = call i64 @gimp_item_get_type() #8
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call133)
  %74 = bitcast %struct._GTypeInstance* %call134 to %struct._GimpItem*
  %call135 = call i32 @gimp_item_mask_bounds(%struct._GimpItem* %74, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  store i32 %call135, i32* %non_empty, align 4
  br label %if.end.140

if.else.136:                                      ; preds = %if.end.129
  %75 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %76 = bitcast %struct._GimpSelection* %75 to %struct._GTypeInstance*
  %call137 = call i64 @gimp_channel_get_type() #8
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call137)
  %77 = bitcast %struct._GTypeInstance* %call138 to %struct._GimpChannel*
  %call139 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %77, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  store i32 %call139, i32* %non_empty, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.136, %if.then.132
  %78 = load i32, i32* %non_empty, align 4
  %tobool141 = icmp ne i32 %78, 0
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.149

land.lhs.true.142:                                ; preds = %if.end.140
  %79 = load i32, i32* %x1, align 4
  %80 = load i32, i32* %x2, align 4
  %cmp143 = icmp eq i32 %79, %80
  br i1 %cmp143, label %if.then.146, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %land.lhs.true.142
  %81 = load i32, i32* %y1, align 4
  %82 = load i32, i32* %y2, align 4
  %cmp145 = icmp eq i32 %81, %82
  br i1 %cmp145, label %if.then.146, label %if.end.149

if.then.146:                                      ; preds = %lor.lhs.false.144, %land.lhs.true.142
  %83 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call147 = call i32 @gimp_error_quark() #8
  %call148 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i32 0, i32 0)) #4
  call void @g_set_error_literal(%struct._GError** %83, i32 %call147, i32 0, i8* %call148)
  store %struct._TileManager* null, %struct._TileManager** %retval
  br label %return

if.end.149:                                       ; preds = %lor.lhs.false.144, %if.end.140
  %84 = load i32, i32* %non_empty, align 4
  %tobool150 = icmp ne i32 %84, 0
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.149
  store i32 1, i32* %add_alpha.addr, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.end.149
  %85 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call153 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %85)
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %cond.true, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %if.end.152
  %86 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call156 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %86)
  %cmp157 = icmp eq i32 %call156, 1
  br i1 %cmp157, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.155, %if.end.152
  br label %cond.end.170

cond.false:                                       ; preds = %lor.lhs.false.155
  %87 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call158 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %87)
  %cmp159 = icmp eq i32 %call158, 2
  br i1 %cmp159, label %cond.true.163, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %cond.false
  %88 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call161 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %88)
  %cmp162 = icmp eq i32 %call161, 3
  br i1 %cmp162, label %cond.true.163, label %cond.false.164

cond.true.163:                                    ; preds = %lor.lhs.false.160, %cond.false
  br label %cond.end

cond.false.164:                                   ; preds = %lor.lhs.false.160
  %89 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call165 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %89)
  %cmp166 = icmp eq i32 %call165, 4
  br i1 %cmp166, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.164
  %90 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call167 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %90)
  %cmp168 = icmp eq i32 %call167, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.164
  %91 = phi i1 [ true, %cond.false.164 ], [ %cmp168, %lor.rhs ]
  %cond = select i1 %91, i32 2, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true.163
  %cond169 = phi i32 [ 1, %cond.true.163 ], [ %cond, %lor.end ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end, %cond.true
  %cond171 = phi i32 [ 0, %cond.true ], [ %cond169, %cond.end ]
  switch i32 %cond171, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.178
    i32 2, label %sw.bb.185
  ]

sw.bb:                                            ; preds = %cond.end.170
  %92 = load i32, i32* %add_alpha.addr, align 4
  %tobool172 = icmp ne i32 %92, 0
  br i1 %tobool172, label %cond.true.173, label %cond.false.174

cond.true.173:                                    ; preds = %sw.bb
  br label %cond.end.176

cond.false.174:                                   ; preds = %sw.bb
  %93 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call175 = call i32 @gimp_pickable_get_bytes(%struct._GimpPickable* %93)
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.174, %cond.true.173
  %cond177 = phi i32 [ 4, %cond.true.173 ], [ %call175, %cond.false.174 ]
  store i32 %cond177, i32* %bytes, align 4
  store i32 0, i32* %base_type, align 4
  br label %sw.epilog

sw.bb.178:                                        ; preds = %cond.end.170
  %94 = load i32, i32* %add_alpha.addr, align 4
  %tobool179 = icmp ne i32 %94, 0
  br i1 %tobool179, label %cond.true.180, label %cond.false.181

cond.true.180:                                    ; preds = %sw.bb.178
  br label %cond.end.183

cond.false.181:                                   ; preds = %sw.bb.178
  %95 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call182 = call i32 @gimp_pickable_get_bytes(%struct._GimpPickable* %95)
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.181, %cond.true.180
  %cond184 = phi i32 [ 2, %cond.true.180 ], [ %call182, %cond.false.181 ]
  store i32 %cond184, i32* %bytes, align 4
  store i32 1, i32* %base_type, align 4
  br label %sw.epilog

sw.bb.185:                                        ; preds = %cond.end.170
  %96 = load i32, i32* %keep_indexed.addr, align 4
  %tobool186 = icmp ne i32 %96, 0
  br i1 %tobool186, label %if.then.187, label %if.else.194

if.then.187:                                      ; preds = %sw.bb.185
  %97 = load i32, i32* %add_alpha.addr, align 4
  %tobool188 = icmp ne i32 %97, 0
  br i1 %tobool188, label %cond.true.189, label %cond.false.190

cond.true.189:                                    ; preds = %if.then.187
  br label %cond.end.192

cond.false.190:                                   ; preds = %if.then.187
  %98 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call191 = call i32 @gimp_pickable_get_bytes(%struct._GimpPickable* %98)
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.190, %cond.true.189
  %cond193 = phi i32 [ 2, %cond.true.189 ], [ %call191, %cond.false.190 ]
  store i32 %cond193, i32* %bytes, align 4
  store i32 1, i32* %base_type, align 4
  br label %if.end.208

if.else.194:                                      ; preds = %sw.bb.185
  %99 = load i32, i32* %add_alpha.addr, align 4
  %tobool195 = icmp ne i32 %99, 0
  br i1 %tobool195, label %lor.end.206, label %lor.rhs.196

lor.rhs.196:                                      ; preds = %if.else.194
  %100 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call197 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %100)
  %cmp198 = icmp eq i32 %call197, 1
  br i1 %cmp198, label %lor.end.205, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %lor.rhs.196
  %101 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call200 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %101)
  %cmp201 = icmp eq i32 %call200, 3
  br i1 %cmp201, label %lor.end.205, label %lor.rhs.202

lor.rhs.202:                                      ; preds = %lor.lhs.false.199
  %102 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call203 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %102)
  %cmp204 = icmp eq i32 %call203, 5
  br label %lor.end.205

lor.end.205:                                      ; preds = %lor.rhs.202, %lor.lhs.false.199, %lor.rhs.196
  %103 = phi i1 [ true, %lor.lhs.false.199 ], [ true, %lor.rhs.196 ], [ %cmp204, %lor.rhs.202 ]
  br label %lor.end.206

lor.end.206:                                      ; preds = %lor.end.205, %if.else.194
  %104 = phi i1 [ true, %if.else.194 ], [ %103, %lor.end.205 ]
  %cond207 = select i1 %104, i32 4, i32 3
  store i32 %cond207, i32* %bytes, align 4
  store i32 2, i32* %base_type, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %lor.end.206, %cond.end.192
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.170
  br label %do.body.209

do.body.209:                                      ; preds = %sw.default
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 709, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_selection_extract, i32 0, i32 0), i8* null) #10
  unreachable

do.end.210:                                       ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.210, %if.end.208, %cond.end.183, %cond.end.176
  %105 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %106 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %107 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call211 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %107)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  call void @gimp_image_get_background(%struct._GimpImage* %105, %struct._GimpContext* %106, i32 %call211, i8* %arraydecay)
  %108 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %109 = bitcast %struct._GimpPickable* %108 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %109, %struct._GTypeInstance** %__inst213, align 8
  %call216 = call i64 @gimp_drawable_get_type() #8
  store i64 %call216, i64* %__t215, align 8
  %110 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst213, align 8
  %tobool219 = icmp ne %struct._GTypeInstance* %110, null
  br i1 %tobool219, label %if.else.221, label %if.then.220

if.then.220:                                      ; preds = %sw.epilog
  store i32 0, i32* %__r218, align 4
  br label %if.end.232

if.else.221:                                      ; preds = %sw.epilog
  %111 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst213, align 8
  %g_class222 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %111, i32 0, i32 0
  %112 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class222, align 8
  %tobool223 = icmp ne %struct._GTypeClass* %112, null
  br i1 %tobool223, label %land.lhs.true.224, label %if.else.229

land.lhs.true.224:                                ; preds = %if.else.221
  %113 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst213, align 8
  %g_class225 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %113, i32 0, i32 0
  %114 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class225, align 8
  %g_type226 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %114, i32 0, i32 0
  %115 = load i64, i64* %g_type226, align 8
  %116 = load i64, i64* %__t215, align 8
  %cmp227 = icmp eq i64 %115, %116
  br i1 %cmp227, label %if.then.228, label %if.else.229

if.then.228:                                      ; preds = %land.lhs.true.224
  store i32 1, i32* %__r218, align 4
  br label %if.end.231

if.else.229:                                      ; preds = %land.lhs.true.224, %if.else.221
  %117 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst213, align 8
  %118 = load i64, i64* %__t215, align 8
  %call230 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %117, i64 %118) #9
  store i32 %call230, i32* %__r218, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.229, %if.then.228
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.220
  %119 = load i32, i32* %__r218, align 4
  store i32 %119, i32* %tmp233
  %120 = load i32, i32* %tmp233
  %tobool234 = icmp ne i32 %120, 0
  br i1 %tobool234, label %if.then.235, label %if.else.249

if.then.235:                                      ; preds = %if.end.232
  %121 = load i32, i32* %cut_image.addr, align 4
  %tobool236 = icmp ne i32 %121, 0
  br i1 %tobool236, label %land.lhs.true.237, label %if.end.243

land.lhs.true.237:                                ; preds = %if.then.235
  %122 = load i32, i32* %non_empty, align 4
  %tobool238 = icmp ne i32 %122, 0
  br i1 %tobool238, label %if.then.239, label %if.end.243

if.then.239:                                      ; preds = %land.lhs.true.237
  %123 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %124 = bitcast %struct._GimpPickable* %123 to %struct._GTypeInstance*
  %call240 = call i64 @gimp_drawable_get_type() #8
  %call241 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call240)
  %125 = bitcast %struct._GTypeInstance* %call241 to %struct._GimpDrawable*
  %126 = load i32, i32* %x1, align 4
  %127 = load i32, i32* %y1, align 4
  %128 = load i32, i32* %x2, align 4
  %129 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %128, %129
  %130 = load i32, i32* %y2, align 4
  %131 = load i32, i32* %y1, align 4
  %sub242 = sub nsw i32 %130, %131
  call void @gimp_drawable_push_undo(%struct._GimpDrawable* %125, i8* null, i32 %126, i32 %127, i32 %sub, i32 %sub242, %struct._TileManager* null, i32 0)
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.239, %land.lhs.true.237, %if.then.235
  %132 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %133 = bitcast %struct._GimpPickable* %132 to %struct._GTypeInstance*
  %call244 = call i64 @gimp_item_get_type() #8
  %call245 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call244)
  %134 = bitcast %struct._GTypeInstance* %call245 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %134, i32* %off_x, i32* %off_y)
  %135 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %136 = bitcast %struct._GimpPickable* %135 to %struct._GTypeInstance*
  %call246 = call i64 @gimp_drawable_get_type() #8
  %call247 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call246)
  %137 = bitcast %struct._GTypeInstance* %call247 to %struct._GimpDrawable*
  %call248 = call i8* @gimp_drawable_get_colormap(%struct._GimpDrawable* %137)
  store i8* %call248, i8** %colormap, align 8
  br label %if.end.250

if.else.249:                                      ; preds = %if.end.232
  store i32 0, i32* %off_y, align 4
  store i32 0, i32* %off_x, align 4
  store i8* null, i8** %colormap, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.249, %if.end.243
  %138 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  call void @gimp_pickable_flush(%struct._GimpPickable* %138)
  %139 = load i32, i32* %x2, align 4
  %140 = load i32, i32* %x1, align 4
  %sub251 = sub nsw i32 %139, %140
  %141 = load i32, i32* %y2, align 4
  %142 = load i32, i32* %y1, align 4
  %sub252 = sub nsw i32 %141, %142
  %143 = load i32, i32* %bytes, align 4
  %call253 = call %struct._TileManager* @tile_manager_new(i32 %sub251, i32 %sub252, i32 %143)
  store %struct._TileManager* %call253, %struct._TileManager** %tiles, align 8
  %144 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call254 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %144)
  %145 = load i32, i32* %x1, align 4
  %146 = load i32, i32* %y1, align 4
  %147 = load i32, i32* %x2, align 4
  %148 = load i32, i32* %x1, align 4
  %sub255 = sub nsw i32 %147, %148
  %149 = load i32, i32* %y2, align 4
  %150 = load i32, i32* %y1, align 4
  %sub256 = sub nsw i32 %149, %150
  %151 = load i32, i32* %cut_image.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call254, i32 %145, i32 %146, i32 %sub255, i32 %sub256, i32 %151)
  %152 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %153 = load i32, i32* %x2, align 4
  %154 = load i32, i32* %x1, align 4
  %sub257 = sub nsw i32 %153, %154
  %155 = load i32, i32* %y2, align 4
  %156 = load i32, i32* %y1, align 4
  %sub258 = sub nsw i32 %155, %156
  call void @pixel_region_init(%struct._PixelRegion* %destPR, %struct._TileManager* %152, i32 0, i32 0, i32 %sub257, i32 %sub258, i32 1)
  %157 = load i32, i32* %non_empty, align 4
  %tobool259 = icmp ne i32 %157, 0
  br i1 %tobool259, label %if.then.260, label %if.else.300

if.then.260:                                      ; preds = %if.end.250
  %158 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %159 = bitcast %struct._GimpSelection* %158 to %struct._GTypeInstance*
  %call262 = call i64 @gimp_drawable_get_type() #8
  %call263 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %159, i64 %call262)
  %160 = bitcast %struct._GTypeInstance* %call263 to %struct._GimpDrawable*
  %call264 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %160)
  %161 = load i32, i32* %x1, align 4
  %162 = load i32, i32* %off_x, align 4
  %add = add nsw i32 %161, %162
  %163 = load i32, i32* %y1, align 4
  %164 = load i32, i32* %off_y, align 4
  %add265 = add nsw i32 %163, %164
  %165 = load i32, i32* %x2, align 4
  %166 = load i32, i32* %x1, align 4
  %sub266 = sub nsw i32 %165, %166
  %167 = load i32, i32* %y2, align 4
  %168 = load i32, i32* %y1, align 4
  %sub267 = sub nsw i32 %167, %168
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %call264, i32 %add, i32 %add265, i32 %sub266, i32 %sub267, i32 0)
  %169 = load i8*, i8** %colormap, align 8
  %arraydecay268 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  %170 = load i32, i32* %base_type, align 4
  %171 = load i32, i32* %cut_image.addr, align 4
  call void @extract_from_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, %struct._PixelRegion* %maskPR, i8* %169, i8* %arraydecay268, i32 %170, i32 %171)
  %172 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %173 = bitcast %struct._GimpPickable* %172 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %173, %struct._GTypeInstance** %__inst270, align 8
  %call273 = call i64 @gimp_drawable_get_type() #8
  store i64 %call273, i64* %__t272, align 8
  %174 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst270, align 8
  %tobool276 = icmp ne %struct._GTypeInstance* %174, null
  br i1 %tobool276, label %if.else.278, label %if.then.277

if.then.277:                                      ; preds = %if.then.260
  store i32 0, i32* %__r275, align 4
  br label %if.end.289

if.else.278:                                      ; preds = %if.then.260
  %175 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst270, align 8
  %g_class279 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %175, i32 0, i32 0
  %176 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class279, align 8
  %tobool280 = icmp ne %struct._GTypeClass* %176, null
  br i1 %tobool280, label %land.lhs.true.281, label %if.else.286

land.lhs.true.281:                                ; preds = %if.else.278
  %177 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst270, align 8
  %g_class282 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %177, i32 0, i32 0
  %178 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class282, align 8
  %g_type283 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %178, i32 0, i32 0
  %179 = load i64, i64* %g_type283, align 8
  %180 = load i64, i64* %__t272, align 8
  %cmp284 = icmp eq i64 %179, %180
  br i1 %cmp284, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %land.lhs.true.281
  store i32 1, i32* %__r275, align 4
  br label %if.end.288

if.else.286:                                      ; preds = %land.lhs.true.281, %if.else.278
  %181 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst270, align 8
  %182 = load i64, i64* %__t272, align 8
  %call287 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %181, i64 %182) #9
  store i32 %call287, i32* %__r275, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.else.286, %if.then.285
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.then.277
  %183 = load i32, i32* %__r275, align 4
  store i32 %183, i32* %tmp290
  %184 = load i32, i32* %tmp290
  %tobool291 = icmp ne i32 %184, 0
  br i1 %tobool291, label %land.lhs.true.292, label %if.end.299

land.lhs.true.292:                                ; preds = %if.end.289
  %185 = load i32, i32* %cut_image.addr, align 4
  %tobool293 = icmp ne i32 %185, 0
  br i1 %tobool293, label %if.then.294, label %if.end.299

if.then.294:                                      ; preds = %land.lhs.true.292
  %186 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %187 = bitcast %struct._GimpPickable* %186 to %struct._GTypeInstance*
  %call295 = call i64 @gimp_drawable_get_type() #8
  %call296 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call295)
  %188 = bitcast %struct._GTypeInstance* %call296 to %struct._GimpDrawable*
  %189 = load i32, i32* %x1, align 4
  %190 = load i32, i32* %y1, align 4
  %191 = load i32, i32* %x2, align 4
  %192 = load i32, i32* %x1, align 4
  %sub297 = sub nsw i32 %191, %192
  %193 = load i32, i32* %y2, align 4
  %194 = load i32, i32* %y1, align 4
  %sub298 = sub nsw i32 %193, %194
  call void @gimp_drawable_update(%struct._GimpDrawable* %188, i32 %189, i32 %190, i32 %sub297, i32 %sub298)
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.294, %land.lhs.true.292, %if.end.289
  br label %if.end.424

if.else.300:                                      ; preds = %if.end.250
  %195 = load i32, i32* %base_type, align 4
  %cmp301 = icmp eq i32 %195, 2
  br i1 %cmp301, label %land.lhs.true.302, label %if.else.306

land.lhs.true.302:                                ; preds = %if.else.300
  %196 = load i32, i32* %keep_indexed.addr, align 4
  %tobool303 = icmp ne i32 %196, 0
  br i1 %tobool303, label %if.else.306, label %if.then.304

if.then.304:                                      ; preds = %land.lhs.true.302
  %197 = load i8*, i8** %colormap, align 8
  %arraydecay305 = getelementptr inbounds [4 x i8], [4 x i8]* %bg_color, i32 0, i32 0
  %198 = load i32, i32* %base_type, align 4
  call void @extract_from_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, %struct._PixelRegion* null, i8* %197, i8* %arraydecay305, i32 %198, i32 0)
  br label %if.end.312

if.else.306:                                      ; preds = %land.lhs.true.302, %if.else.300
  %199 = load i32, i32* %bytes, align 4
  %bytes307 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %200 = load i32, i32* %bytes307, align 4
  %cmp308 = icmp sgt i32 %199, %200
  br i1 %cmp308, label %if.then.309, label %if.else.310

if.then.309:                                      ; preds = %if.else.306
  call void @add_alpha_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.311

if.else.310:                                      ; preds = %if.else.306
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  br label %if.end.311

if.end.311:                                       ; preds = %if.else.310, %if.then.309
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %if.then.304
  %201 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %202 = bitcast %struct._GimpPickable* %201 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %202, %struct._GTypeInstance** %__inst314, align 8
  %call317 = call i64 @gimp_drawable_get_type() #8
  store i64 %call317, i64* %__t316, align 8
  %203 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst314, align 8
  %tobool320 = icmp ne %struct._GTypeInstance* %203, null
  br i1 %tobool320, label %if.else.322, label %if.then.321

if.then.321:                                      ; preds = %if.end.312
  store i32 0, i32* %__r319, align 4
  br label %if.end.333

if.else.322:                                      ; preds = %if.end.312
  %204 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst314, align 8
  %g_class323 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %204, i32 0, i32 0
  %205 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class323, align 8
  %tobool324 = icmp ne %struct._GTypeClass* %205, null
  br i1 %tobool324, label %land.lhs.true.325, label %if.else.330

land.lhs.true.325:                                ; preds = %if.else.322
  %206 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst314, align 8
  %g_class326 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %206, i32 0, i32 0
  %207 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class326, align 8
  %g_type327 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %207, i32 0, i32 0
  %208 = load i64, i64* %g_type327, align 8
  %209 = load i64, i64* %__t316, align 8
  %cmp328 = icmp eq i64 %208, %209
  br i1 %cmp328, label %if.then.329, label %if.else.330

if.then.329:                                      ; preds = %land.lhs.true.325
  store i32 1, i32* %__r319, align 4
  br label %if.end.332

if.else.330:                                      ; preds = %land.lhs.true.325, %if.else.322
  %210 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst314, align 8
  %211 = load i64, i64* %__t316, align 8
  %call331 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %210, i64 %211) #9
  store i32 %call331, i32* %__r319, align 4
  br label %if.end.332

if.end.332:                                       ; preds = %if.else.330, %if.then.329
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.then.321
  %212 = load i32, i32* %__r319, align 4
  store i32 %212, i32* %tmp334
  %213 = load i32, i32* %tmp334
  %tobool335 = icmp ne i32 %213, 0
  br i1 %tobool335, label %land.lhs.true.336, label %if.end.423

land.lhs.true.336:                                ; preds = %if.end.333
  %214 = load i32, i32* %cut_image.addr, align 4
  %tobool337 = icmp ne i32 %214, 0
  br i1 %tobool337, label %if.then.338, label %if.end.423

if.then.338:                                      ; preds = %land.lhs.true.336
  %215 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %216 = bitcast %struct._GimpPickable* %215 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %216, %struct._GTypeInstance** %__inst340, align 8
  %call343 = call i64 @gimp_layer_get_type() #8
  store i64 %call343, i64* %__t342, align 8
  %217 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst340, align 8
  %tobool346 = icmp ne %struct._GTypeInstance* %217, null
  br i1 %tobool346, label %if.else.348, label %if.then.347

if.then.347:                                      ; preds = %if.then.338
  store i32 0, i32* %__r345, align 4
  br label %if.end.359

if.else.348:                                      ; preds = %if.then.338
  %218 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst340, align 8
  %g_class349 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %218, i32 0, i32 0
  %219 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class349, align 8
  %tobool350 = icmp ne %struct._GTypeClass* %219, null
  br i1 %tobool350, label %land.lhs.true.351, label %if.else.356

land.lhs.true.351:                                ; preds = %if.else.348
  %220 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst340, align 8
  %g_class352 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %220, i32 0, i32 0
  %221 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class352, align 8
  %g_type353 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %221, i32 0, i32 0
  %222 = load i64, i64* %g_type353, align 8
  %223 = load i64, i64* %__t342, align 8
  %cmp354 = icmp eq i64 %222, %223
  br i1 %cmp354, label %if.then.355, label %if.else.356

if.then.355:                                      ; preds = %land.lhs.true.351
  store i32 1, i32* %__r345, align 4
  br label %if.end.358

if.else.356:                                      ; preds = %land.lhs.true.351, %if.else.348
  %224 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst340, align 8
  %225 = load i64, i64* %__t342, align 8
  %call357 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %224, i64 %225) #9
  store i32 %call357, i32* %__r345, align 4
  br label %if.end.358

if.end.358:                                       ; preds = %if.else.356, %if.then.355
  br label %if.end.359

if.end.359:                                       ; preds = %if.end.358, %if.then.347
  %226 = load i32, i32* %__r345, align 4
  store i32 %226, i32* %tmp360
  %227 = load i32, i32* %tmp360
  %tobool361 = icmp ne i32 %227, 0
  br i1 %tobool361, label %if.then.362, label %if.else.365

if.then.362:                                      ; preds = %if.end.359
  %228 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %229 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %230 = bitcast %struct._GimpPickable* %229 to %struct._GTypeInstance*
  %call363 = call i64 @gimp_layer_get_type() #8
  %call364 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %230, i64 %call363)
  %231 = bitcast %struct._GTypeInstance* %call364 to %struct._GimpLayer*
  call void @gimp_image_remove_layer(%struct._GimpImage* %228, %struct._GimpLayer* %231, i32 1, %struct._GimpLayer* null)
  br label %if.end.422

if.else.365:                                      ; preds = %if.end.359
  %232 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %233 = bitcast %struct._GimpPickable* %232 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %233, %struct._GTypeInstance** %__inst367, align 8
  %call370 = call i64 @gimp_layer_mask_get_type() #8
  store i64 %call370, i64* %__t369, align 8
  %234 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst367, align 8
  %tobool373 = icmp ne %struct._GTypeInstance* %234, null
  br i1 %tobool373, label %if.else.375, label %if.then.374

if.then.374:                                      ; preds = %if.else.365
  store i32 0, i32* %__r372, align 4
  br label %if.end.386

if.else.375:                                      ; preds = %if.else.365
  %235 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst367, align 8
  %g_class376 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %235, i32 0, i32 0
  %236 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class376, align 8
  %tobool377 = icmp ne %struct._GTypeClass* %236, null
  br i1 %tobool377, label %land.lhs.true.378, label %if.else.383

land.lhs.true.378:                                ; preds = %if.else.375
  %237 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst367, align 8
  %g_class379 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %237, i32 0, i32 0
  %238 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class379, align 8
  %g_type380 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %238, i32 0, i32 0
  %239 = load i64, i64* %g_type380, align 8
  %240 = load i64, i64* %__t369, align 8
  %cmp381 = icmp eq i64 %239, %240
  br i1 %cmp381, label %if.then.382, label %if.else.383

if.then.382:                                      ; preds = %land.lhs.true.378
  store i32 1, i32* %__r372, align 4
  br label %if.end.385

if.else.383:                                      ; preds = %land.lhs.true.378, %if.else.375
  %241 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst367, align 8
  %242 = load i64, i64* %__t369, align 8
  %call384 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %241, i64 %242) #9
  store i32 %call384, i32* %__r372, align 4
  br label %if.end.385

if.end.385:                                       ; preds = %if.else.383, %if.then.382
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.then.374
  %243 = load i32, i32* %__r372, align 4
  store i32 %243, i32* %tmp387
  %244 = load i32, i32* %tmp387
  %tobool388 = icmp ne i32 %244, 0
  br i1 %tobool388, label %if.then.389, label %if.else.393

if.then.389:                                      ; preds = %if.end.386
  %245 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %246 = bitcast %struct._GimpPickable* %245 to %struct._GTypeInstance*
  %call390 = call i64 @gimp_layer_mask_get_type() #8
  %call391 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %246, i64 %call390)
  %247 = bitcast %struct._GTypeInstance* %call391 to %struct._GimpLayerMask*
  %call392 = call %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask* %247)
  call void @gimp_layer_apply_mask(%struct._GimpLayer* %call392, i32 1, i32 1)
  br label %if.end.421

if.else.393:                                      ; preds = %if.end.386
  %248 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %249 = bitcast %struct._GimpPickable* %248 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %249, %struct._GTypeInstance** %__inst395, align 8
  %call398 = call i64 @gimp_channel_get_type() #8
  store i64 %call398, i64* %__t397, align 8
  %250 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst395, align 8
  %tobool401 = icmp ne %struct._GTypeInstance* %250, null
  br i1 %tobool401, label %if.else.403, label %if.then.402

if.then.402:                                      ; preds = %if.else.393
  store i32 0, i32* %__r400, align 4
  br label %if.end.414

if.else.403:                                      ; preds = %if.else.393
  %251 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst395, align 8
  %g_class404 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %251, i32 0, i32 0
  %252 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class404, align 8
  %tobool405 = icmp ne %struct._GTypeClass* %252, null
  br i1 %tobool405, label %land.lhs.true.406, label %if.else.411

land.lhs.true.406:                                ; preds = %if.else.403
  %253 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst395, align 8
  %g_class407 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %253, i32 0, i32 0
  %254 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class407, align 8
  %g_type408 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %254, i32 0, i32 0
  %255 = load i64, i64* %g_type408, align 8
  %256 = load i64, i64* %__t397, align 8
  %cmp409 = icmp eq i64 %255, %256
  br i1 %cmp409, label %if.then.410, label %if.else.411

if.then.410:                                      ; preds = %land.lhs.true.406
  store i32 1, i32* %__r400, align 4
  br label %if.end.413

if.else.411:                                      ; preds = %land.lhs.true.406, %if.else.403
  %257 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst395, align 8
  %258 = load i64, i64* %__t397, align 8
  %call412 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %257, i64 %258) #9
  store i32 %call412, i32* %__r400, align 4
  br label %if.end.413

if.end.413:                                       ; preds = %if.else.411, %if.then.410
  br label %if.end.414

if.end.414:                                       ; preds = %if.end.413, %if.then.402
  %259 = load i32, i32* %__r400, align 4
  store i32 %259, i32* %tmp415
  %260 = load i32, i32* %tmp415
  %tobool416 = icmp ne i32 %260, 0
  br i1 %tobool416, label %if.then.417, label %if.end.420

if.then.417:                                      ; preds = %if.end.414
  %261 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %262 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %263 = bitcast %struct._GimpPickable* %262 to %struct._GTypeInstance*
  %call418 = call i64 @gimp_channel_get_type() #8
  %call419 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %263, i64 %call418)
  %264 = bitcast %struct._GTypeInstance* %call419 to %struct._GimpChannel*
  call void @gimp_image_remove_channel(%struct._GimpImage* %261, %struct._GimpChannel* %264, i32 1, %struct._GimpChannel* null)
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.417, %if.end.414
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %if.then.389
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %if.then.362
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.422, %land.lhs.true.336, %if.end.333
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.end.299
  %265 = load i32, i32* %x1, align 4
  %266 = load i32, i32* %off_x, align 4
  %add425 = add nsw i32 %265, %266
  %267 = load i32*, i32** %offset_x.addr, align 8
  store i32 %add425, i32* %267, align 4
  %268 = load i32, i32* %y1, align 4
  %269 = load i32, i32* %off_y, align 4
  %add426 = add nsw i32 %268, %269
  %270 = load i32*, i32** %offset_y.addr, align 8
  store i32 %add426, i32* %270, align 4
  %271 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  store %struct._TileManager* %271, %struct._TileManager** %retval
  br label %return

return:                                           ; preds = %if.end.424, %if.then.146, %if.else.105, %if.else.98, %if.else.69, %if.else.36, %if.else.9
  %272 = load %struct._TileManager*, %struct._TileManager** %retval
  ret %struct._TileManager* %272
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable*) #1

declare i32 @gimp_item_mask_bounds(%struct._GimpItem*, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #1

declare i32 @gimp_pickable_get_bytes(%struct._GimpPickable*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

declare void @gimp_image_get_background(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #1

declare void @gimp_drawable_push_undo(%struct._GimpDrawable*, i8*, i32, i32, i32, i32, %struct._TileManager*, i32) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare i8* @gimp_drawable_get_colormap(%struct._GimpDrawable*) #1

declare void @gimp_pickable_flush(%struct._GimpPickable*) #1

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #1

declare void @extract_from_region(%struct._PixelRegion*, %struct._PixelRegion*, %struct._PixelRegion*, i8*, i8*, i32, i32) #1

declare void @add_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #2

declare void @gimp_layer_apply_mask(%struct._GimpLayer*, i32, i32) #1

declare %struct._GimpLayer* @gimp_layer_mask_get_layer(%struct._GimpLayerMask*) #1

declare void @gimp_image_remove_channel(%struct._GimpImage*, %struct._GimpChannel*, i32, %struct._GimpChannel*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpLayer* @gimp_selection_float(%struct._GimpSelection* %selection, %struct._GimpDrawable* %drawable, %struct._GimpContext* %context, i32 %cut_image, i32 %off_x, i32 %off_y, %struct._GError** %error) #3 {
entry:
  %retval = alloca %struct._GimpLayer*, align 8
  %selection.addr = alloca %struct._GimpSelection*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %cut_image.addr = alloca i32, align 4
  %off_x.addr = alloca i32, align 4
  %off_y.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
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
  store %struct._GimpSelection* %selection, %struct._GimpSelection** %selection.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %cut_image, i32* %cut_image.addr, align 4
  store i32 %off_x, i32* %off_x.addr, align 4
  store i32 %off_y, i32* %off_y.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %1 = bitcast %struct._GimpSelection* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_selection_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_selection_float, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = bitcast %struct._GimpDrawable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_drawable_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_selection_float, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_selection_float, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0))
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
  %call53 = call i64 @gimp_context_get_type() #8
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
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_selection_float, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_selection_float, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0))
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.81:                                        ; preds = %if.then.79
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %45 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %46 = bitcast %struct._GimpSelection* %45 to %struct._GTypeInstance*
  %call83 = call i64 @gimp_item_get_type() #8
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call83)
  %47 = bitcast %struct._GTypeInstance* %call84 to %struct._GimpItem*
  %call85 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %47)
  store %struct._GimpImage* %call85, %struct._GimpImage** %image, align 8
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %49 = bitcast %struct._GimpDrawable* %48 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_item_get_type() #8
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call86)
  %50 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpItem*
  %call88 = call i32 @gimp_item_mask_bounds(%struct._GimpItem* %50, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %lor.lhs.false.90, label %if.then.94

lor.lhs.false.90:                                 ; preds = %do.end.82
  %51 = load i32, i32* %x1, align 4
  %52 = load i32, i32* %x2, align 4
  %cmp91 = icmp eq i32 %51, %52
  br i1 %cmp91, label %if.then.94, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false.90
  %53 = load i32, i32* %y1, align 4
  %54 = load i32, i32* %y2, align 4
  %cmp93 = icmp eq i32 %53, %54
  br i1 %cmp93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %lor.lhs.false.92, %lor.lhs.false.90, %do.end.82
  %55 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call95 = call i32 @gimp_error_quark() #8
  %call96 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0)) #4
  call void @g_set_error_literal(%struct._GError** %55, i32 %call95, i32 0, i8* %call96)
  store %struct._GimpLayer* null, %struct._GimpLayer** %retval
  br label %return

if.end.97:                                        ; preds = %lor.lhs.false.92
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call98 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i64 10)
  %call99 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %56, i32 27, i8* %call98)
  %57 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %59 = bitcast %struct._GimpDrawable* %58 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_pickable_interface_get_type() #8
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call100)
  %60 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpPickable*
  %61 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %62 = load i32, i32* %cut_image.addr, align 4
  %call102 = call %struct._TileManager* @gimp_selection_extract(%struct._GimpSelection* %57, %struct._GimpPickable* %60, %struct._GimpContext* %61, i32 %62, i32 0, i32 1, i32* %x1, i32* %y1, %struct._GError** null)
  store %struct._TileManager* %call102, %struct._TileManager** %tiles, align 8
  %63 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %64 = bitcast %struct._GimpSelection* %63 to %struct._GTypeInstance*
  %call103 = call i64 @gimp_channel_get_type() #8
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call103)
  %65 = bitcast %struct._GTypeInstance* %call104 to %struct._GimpChannel*
  call void @gimp_channel_clear(%struct._GimpChannel* %65, i8* null, i32 1)
  %66 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %68 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call105 = call i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable* %68)
  %call106 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0)) #4
  %call107 = call %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager* %66, %struct._GimpImage* %67, i32 %call105, i8* %call106, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call107, %struct._GimpLayer** %layer, align 8
  %69 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %70 = bitcast %struct._GimpLayer* %69 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_item_get_type() #8
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call108)
  %71 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpItem*
  %72 = load i32, i32* %x1, align 4
  %73 = load i32, i32* %off_x.addr, align 4
  %add = add nsw i32 %72, %73
  %74 = load i32, i32* %y1, align 4
  %75 = load i32, i32* %off_y.addr, align 4
  %add110 = add nsw i32 %74, %75
  call void @gimp_item_set_offset(%struct._GimpItem* %71, i32 %add, i32 %add110)
  %76 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  call void @tile_manager_unref(%struct._TileManager* %76)
  %77 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @floating_sel_attach(%struct._GimpLayer* %77, %struct._GimpDrawable* %78)
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call111 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %79)
  %80 = load %struct._GimpSelection*, %struct._GimpSelection** %selection.addr, align 8
  %81 = bitcast %struct._GimpSelection* %80 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_channel_get_type() #8
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call112)
  %82 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpChannel*
  %boundary_known = getelementptr inbounds %struct._GimpChannel, %struct._GimpChannel* %82, i32 0, i32 6
  store i32 0, i32* %boundary_known, align 4
  %83 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  store %struct._GimpLayer* %83, %struct._GimpLayer** %retval
  br label %return

return:                                           ; preds = %if.end.97, %if.then.94, %if.else.80, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %84 = load %struct._GimpLayer*, %struct._GimpLayer** %retval
  ret %struct._GimpLayer* %84
}

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare void @gimp_channel_clear(%struct._GimpChannel*, i8*, i32) #1

declare %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager*, %struct._GimpImage*, i32, i8*, double, i32) #1

declare i32 @gimp_drawable_type_with_alpha(%struct._GimpDrawable*) #1

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #1

declare void @tile_manager_unref(%struct._TileManager*) #1

declare void @floating_sel_attach(%struct._GimpLayer*, %struct._GimpDrawable*) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_class_init(%struct._GimpSelectionClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSelectionClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %item_class = alloca %struct._GimpItemClass*, align 8
  %drawable_class = alloca %struct._GimpDrawableClass*, align 8
  %channel_class = alloca %struct._GimpChannelClass*, align 8
  store %struct._GimpSelectionClass* %klass, %struct._GimpSelectionClass** %klass.addr, align 8
  %0 = load %struct._GimpSelectionClass*, %struct._GimpSelectionClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSelectionClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_viewable_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %2, %struct._GimpViewableClass** %viewable_class, align 8
  %3 = load %struct._GimpSelectionClass*, %struct._GimpSelectionClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSelectionClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_item_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpItemClass*
  store %struct._GimpItemClass* %5, %struct._GimpItemClass** %item_class, align 8
  %6 = load %struct._GimpSelectionClass*, %struct._GimpSelectionClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpSelectionClass* %6 to %struct._GTypeClass*
  %call4 = call i64 @gimp_drawable_get_type() #8
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call4)
  %8 = bitcast %struct._GTypeClass* %call5 to %struct._GimpDrawableClass*
  store %struct._GimpDrawableClass* %8, %struct._GimpDrawableClass** %drawable_class, align 8
  %9 = load %struct._GimpSelectionClass*, %struct._GimpSelectionClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpSelectionClass* %9 to %struct._GTypeClass*
  %call6 = call i64 @gimp_channel_get_type() #8
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call6)
  %11 = bitcast %struct._GTypeClass* %call7 to %struct._GimpChannelClass*
  store %struct._GimpChannelClass* %11, %struct._GimpChannelClass** %channel_class, align 8
  %12 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8** %default_stock_id, align 8
  %13 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %is_attached = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %13, i32 0, i32 6
  store i32 (%struct._GimpItem*)* @gimp_selection_is_attached, i32 (%struct._GimpItem*)** %is_attached, align 8
  %14 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %get_tree = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %14, i32 0, i32 8
  store %struct._GimpItemTree* (%struct._GimpItem*)* @gimp_selection_get_tree, %struct._GimpItemTree* (%struct._GimpItem*)** %get_tree, align 8
  %15 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %15, i32 0, i32 12
  store void (%struct._GimpItem*, i32, i32, i32)* @gimp_selection_translate, void (%struct._GimpItem*, i32, i32, i32)** %translate, align 8
  %16 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %16, i32 0, i32 13
  store void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)* @gimp_selection_scale, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %17 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %resize = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %17, i32 0, i32 14
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)* @gimp_selection_resize, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)** %resize, align 8
  %18 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %18, i32 0, i32 15
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)* @gimp_selection_flip, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %19 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %19, i32 0, i32 16
  store void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)* @gimp_selection_rotate, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %20 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %stroke = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %20, i32 0, i32 18
  store i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)* @gimp_selection_stroke, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)** %stroke, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)) #4
  %21 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %default_name = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %21, i32 0, i32 21
  store i8* %call8, i8** %default_name, align 8
  %call9 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), i64 10)
  %22 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %translate_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %22, i32 0, i32 23
  store i8* %call9, i8** %translate_desc, align 8
  %call10 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i64 10)
  %23 = load %struct._GimpItemClass*, %struct._GimpItemClass** %item_class, align 8
  %stroke_desc = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %23, i32 0, i32 30
  store i8* %call10, i8** %stroke_desc, align 8
  %24 = load %struct._GimpDrawableClass*, %struct._GimpDrawableClass** %drawable_class, align 8
  %invalidate_boundary = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %24, i32 0, i32 4
  store void (%struct._GimpDrawable*)* @gimp_selection_invalidate_boundary, void (%struct._GimpDrawable*)** %invalidate_boundary, align 8
  %25 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %boundary = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %25, i32 0, i32 2
  store i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)* @gimp_selection_boundary, i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)** %boundary, align 8
  %26 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %bounds = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %26, i32 0, i32 3
  store i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)* @gimp_selection_bounds, i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)** %bounds, align 8
  %27 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %is_empty = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %27, i32 0, i32 4
  store i32 (%struct._GimpChannel*)* @gimp_selection_is_empty, i32 (%struct._GimpChannel*)** %is_empty, align 8
  %28 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %feather = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %28, i32 0, i32 5
  store void (%struct._GimpChannel*, double, double, i32)* @gimp_selection_feather, void (%struct._GimpChannel*, double, double, i32)** %feather, align 8
  %29 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %sharpen = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %29, i32 0, i32 6
  store void (%struct._GimpChannel*, i32)* @gimp_selection_sharpen, void (%struct._GimpChannel*, i32)** %sharpen, align 8
  %30 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %clear = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %30, i32 0, i32 7
  store void (%struct._GimpChannel*, i8*, i32)* @gimp_selection_clear, void (%struct._GimpChannel*, i8*, i32)** %clear, align 8
  %31 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %all = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %31, i32 0, i32 8
  store void (%struct._GimpChannel*, i32)* @gimp_selection_all, void (%struct._GimpChannel*, i32)** %all, align 8
  %32 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %invert = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %32, i32 0, i32 9
  store void (%struct._GimpChannel*, i32)* @gimp_selection_invert, void (%struct._GimpChannel*, i32)** %invert, align 8
  %33 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %border = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %33, i32 0, i32 10
  store void (%struct._GimpChannel*, i32, i32, i32, i32, i32)* @gimp_selection_border, void (%struct._GimpChannel*, i32, i32, i32, i32, i32)** %border, align 8
  %34 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %grow = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %34, i32 0, i32 11
  store void (%struct._GimpChannel*, i32, i32, i32)* @gimp_selection_grow, void (%struct._GimpChannel*, i32, i32, i32)** %grow, align 8
  %35 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %shrink = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %35, i32 0, i32 12
  store void (%struct._GimpChannel*, i32, i32, i32, i32)* @gimp_selection_shrink, void (%struct._GimpChannel*, i32, i32, i32, i32)** %shrink, align 8
  %call11 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i64 10)
  %36 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %feather_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %36, i32 0, i32 13
  store i8* %call11, i8** %feather_desc, align 8
  %call12 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0), i64 10)
  %37 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %sharpen_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %37, i32 0, i32 14
  store i8* %call12, i8** %sharpen_desc, align 8
  %call13 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), i64 10)
  %38 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %clear_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %38, i32 0, i32 15
  store i8* %call13, i8** %clear_desc, align 8
  %call14 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i64 10)
  %39 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %all_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %39, i32 0, i32 16
  store i8* %call14, i8** %all_desc, align 8
  %call15 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i64 10)
  %40 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %invert_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %40, i32 0, i32 17
  store i8* %call15, i8** %invert_desc, align 8
  %call16 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0), i64 10)
  %41 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %border_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %41, i32 0, i32 18
  store i8* %call16, i8** %border_desc, align 8
  %call17 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i64 10)
  %42 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %grow_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %42, i32 0, i32 19
  store i8* %call17, i8** %grow_desc, align 8
  %call18 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), i64 10)
  %43 = load %struct._GimpChannelClass*, %struct._GimpChannelClass** %channel_class, align 8
  %shrink_desc = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %43, i32 0, i32 20
  store i8* %call18, i8** %shrink_desc, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_selection_is_attached(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %0)
  %1 = bitcast %struct._GimpImage* %call to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_image_get_type() #8
  store i64 %call1, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
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
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.7
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call9 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %13)
  %call10 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %call9)
  %14 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %15 = bitcast %struct._GimpItem* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_channel_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpChannel*
  %cmp13 = icmp eq %struct._GimpChannel* %call10, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.7
  %17 = phi i1 [ false, %if.end.7 ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpItemTree* @gimp_selection_get_tree(%struct._GimpItem* %item) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  ret %struct._GimpItemTree* null
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_translate(%struct._GimpItem* %item, i32 %offset_x, i32 %offset_y, i32 %push_undo) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpItemClass*
  %translate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %2, i32 0, i32 12
  %3 = load void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32)** %translate, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %5 = load i32, i32* %offset_x.addr, align 4
  %6 = load i32, i32* %offset_y.addr, align 4
  %7 = load i32, i32* %push_undo.addr, align 4
  call void %3(%struct._GimpItem* %4, i32 %5, i32 %6, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_scale(%struct._GimpItem* %item, i32 %new_width, i32 %new_height, i32 %new_offset_x, i32 %new_offset_y, i32 %interp_type, %struct._GimpProgress* %progress) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %new_offset_x.addr = alloca i32, align 4
  %new_offset_y.addr = alloca i32, align 4
  %interp_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %new_offset_x, i32* %new_offset_x.addr, align 4
  store i32 %new_offset_y, i32* %new_offset_y.addr, align 4
  store i32 %interp_type, i32* %interp_type.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpItemClass*
  %scale = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %2, i32 0, i32 13
  %3 = load void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)** %scale, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %5 = load i32, i32* %new_width.addr, align 4
  %6 = load i32, i32* %new_height.addr, align 4
  %7 = load i32, i32* %new_offset_x.addr, align 4
  %8 = load i32, i32* %new_offset_y.addr, align 4
  %9 = load i32, i32* %interp_type.addr, align 4
  %10 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void %3(%struct._GimpItem* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct._GimpProgress* %10)
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  call void @gimp_item_set_offset(%struct._GimpItem* %11, i32 0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_resize(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y) #3 {
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
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_item_get_type() #8
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
  call void @gimp_item_set_offset(%struct._GimpItem* %10, i32 0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_flip(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %flip_type, double %axis, i32 %clip_result) #3 {
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
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpItemClass*
  %flip = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %2, i32 0, i32 15
  %3 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)** %flip, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i32, i32* %flip_type.addr, align 4
  %7 = load double, double* %axis.addr, align 8
  call void %3(%struct._GimpItem* %4, %struct._GimpContext* %5, i32 %6, double %7, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_rotate(%struct._GimpItem* %item, %struct._GimpContext* %context, i32 %rotation_type, double %center_x, double %center_y, i32 %clip_result) #3 {
entry:
  %item.addr = alloca %struct._GimpItem*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %rotation_type.addr = alloca i32, align 4
  %center_x.addr = alloca double, align 8
  %center_y.addr = alloca double, align 8
  %clip_result.addr = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %rotation_type, i32* %rotation_type.addr, align 4
  store double %center_x, double* %center_x.addr, align 8
  store double %center_y, double* %center_y.addr, align 8
  store i32 %clip_result, i32* %clip_result.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpItemClass*
  %rotate = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %2, i32 0, i32 16
  %3 = load void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)** %rotate, align 8
  %4 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load i32, i32* %rotation_type.addr, align 4
  %7 = load double, double* %center_x.addr, align 8
  %8 = load double, double* %center_y.addr, align 8
  %9 = load i32, i32* %clip_result.addr, align 4
  call void %3(%struct._GimpItem* %4, %struct._GimpContext* %5, i32 %6, double %7, double %8, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_selection_stroke(%struct._GimpItem* %item, %struct._GimpDrawable* %drawable, %struct._GimpStrokeOptions* %stroke_options, i32 %push_undo, %struct._GimpProgress* %progress, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %item.addr = alloca %struct._GimpItem*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %stroke_options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %push_undo.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %selection = alloca %struct._GimpSelection*, align 8
  %dummy_in = alloca %struct._BoundSeg*, align 8
  %dummy_out = alloca %struct._BoundSeg*, align 8
  %num_dummy_in = alloca i32, align 4
  %num_dummy_out = alloca i32, align 4
  %retval2 = alloca i32, align 4
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpStrokeOptions* %stroke_options, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %1 = bitcast %struct._GimpItem* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_selection_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSelection*
  store %struct._GimpSelection* %2, %struct._GimpSelection** %selection, align 8
  %3 = load %struct._GimpSelection*, %struct._GimpSelection** %selection, align 8
  %4 = bitcast %struct._GimpSelection* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_channel_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpChannel*
  %call5 = call i32 @gimp_channel_boundary(%struct._GimpChannel* %5, %struct._BoundSeg** %dummy_in, %struct._BoundSeg** %dummy_out, i32* %num_dummy_in, i32* %num_dummy_out, i32 0, i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_error_quark() #8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i32 0, i32 0)) #4
  call void @g_set_error_literal(%struct._GError** %6, i32 %call6, i32 0, i8* %call7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._GimpSelection*, %struct._GimpSelection** %selection, align 8
  %call8 = call i32 @gimp_selection_push_stroking(%struct._GimpSelection* %7)
  %8 = load i8*, i8** @gimp_selection_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call9 = call i64 @gimp_item_get_type() #8
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 %call9)
  %10 = bitcast %struct._GTypeClass* %call10 to %struct._GimpItemClass*
  %stroke = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %10, i32 0, i32 18
  %11 = load i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)** %stroke, align 8
  %12 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %stroke_options.addr, align 8
  %15 = load i32, i32* %push_undo.addr, align 4
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 %11(%struct._GimpItem* %12, %struct._GimpDrawable* %13, %struct._GimpStrokeOptions* %14, i32 %15, %struct._GimpProgress* %16, %struct._GError** %17)
  store i32 %call11, i32* %retval2, align 4
  %18 = load %struct._GimpSelection*, %struct._GimpSelection** %selection, align 8
  %call12 = call i32 @gimp_selection_pop_stroking(%struct._GimpSelection* %18)
  %19 = load i32, i32* %retval2, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_invalidate_boundary(%struct._GimpDrawable* %drawable) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %2)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_selection_invalidate(%struct._GimpImage* %3)
  %4 = load i8*, i8** @gimp_selection_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call3 = call i64 @gimp_drawable_get_type() #8
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call3)
  %6 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawableClass*
  %invalidate_boundary = getelementptr inbounds %struct._GimpDrawableClass, %struct._GimpDrawableClass* %6, i32 0, i32 4
  %7 = load void (%struct._GimpDrawable*)*, void (%struct._GimpDrawable*)** %invalidate_boundary, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void %7(%struct._GimpDrawable* %8)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %9)
  store %struct._GimpLayer* %call5, %struct._GimpLayer** %layer, align 8
  %10 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call6 = call i32 @gimp_layer_is_floating_sel(%struct._GimpLayer* %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %13 = bitcast %struct._GimpLayer* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_drawable_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDrawable*
  %15 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %16 = bitcast %struct._GimpLayer* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %17)
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %20)
  call void @gimp_drawable_update(%struct._GimpDrawable* %14, i32 0, i32 0, i32 %call12, i32 %call15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %private = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %21, i32 0, i32 1
  %22 = load %struct._GimpDrawablePrivate*, %struct._GimpDrawablePrivate** %private, align 8
  %preview_valid = getelementptr inbounds %struct._GimpDrawablePrivate, %struct._GimpDrawablePrivate* %22, i32 0, i32 12
  store i32 0, i32* %preview_valid, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_selection_boundary(%struct._GimpChannel* %channel, %struct._BoundSeg** %segs_in, %struct._BoundSeg** %segs_out, i32* %num_segs_in, i32* %num_segs_out, i32 %unused1, i32 %unused2, i32 %unused3, i32 %unused4) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %segs_in.addr = alloca %struct._BoundSeg**, align 8
  %segs_out.addr = alloca %struct._BoundSeg**, align 8
  %num_segs_in.addr = alloca i32*, align 8
  %num_segs_out.addr = alloca i32*, align 8
  %unused1.addr = alloca i32, align 4
  %unused2.addr = alloca i32, align 4
  %unused3.addr = alloca i32, align 4
  %unused4.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store %struct._BoundSeg** %segs_in, %struct._BoundSeg*** %segs_in.addr, align 8
  store %struct._BoundSeg** %segs_out, %struct._BoundSeg*** %segs_out.addr, align 8
  store i32* %num_segs_in, i32** %num_segs_in.addr, align 8
  store i32* %num_segs_out, i32** %num_segs_out.addr, align 8
  store i32 %unused1, i32* %unused1.addr, align 4
  store i32 %unused2, i32* %unused2.addr, align 4
  store i32 %unused3, i32* %unused3.addr, align 4
  store i32 %unused4, i32* %unused4.addr, align 4
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %2)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %3)
  store %struct._GimpLayer* %call3, %struct._GimpLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpLayer* %call3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_selection_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call4 = call i64 @gimp_channel_get_type() #8
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 %call4)
  %6 = bitcast %struct._GTypeClass* %call5 to %struct._GimpChannelClass*
  %boundary = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %6, i32 0, i32 2
  %7 = load i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)*, i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)** %boundary, align 8
  %8 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %9 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_in.addr, align 8
  %10 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_out.addr, align 8
  %11 = load i32*, i32** %num_segs_in.addr, align 8
  %12 = load i32*, i32** %num_segs_out.addr, align 8
  %call6 = call i32 %7(%struct._GimpChannel* %8, %struct._BoundSeg** %9, %struct._BoundSeg** %10, i32* %11, i32* %12, i32 0, i32 0, i32 0, i32 0)
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %14 = load i32*, i32** %num_segs_in.addr, align 8
  %call7 = call %struct._BoundSeg* @floating_sel_boundary(%struct._GimpLayer* %13, i32* %14)
  %15 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_in.addr, align 8
  store %struct._BoundSeg* %call7, %struct._BoundSeg** %15, align 8
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call8 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %16)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** %drawable, align 8
  %tobool9 = icmp ne %struct._GimpDrawable* %call8, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst, align 8
  %call10 = call i64 @gimp_channel_get_type() #8
  store i64 %call10, i64* %__t, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool11 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool11, label %if.else.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.20

if.else.13:                                       ; preds = %land.lhs.true
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool14 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.else.18

land.lhs.true.15:                                 ; preds = %if.else.13
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %25 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %24, %25
  br i1 %cmp, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true.15
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.18:                                       ; preds = %land.lhs.true.15, %if.else.13
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %27 = load i64, i64* %__t, align 8
  %call19 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #9
  store i32 %call19, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.12
  %28 = load i32, i32* %__r, align 4
  store i32 %28, i32* %tmp
  %29 = load i32, i32* %tmp
  %tobool21 = icmp ne i32 %29, 0
  br i1 %tobool21, label %if.then.22, label %if.else.29

if.then.22:                                       ; preds = %if.end.20
  %30 = load i8*, i8** @gimp_selection_parent_class, align 8
  %31 = bitcast i8* %30 to %struct._GTypeClass*
  %call23 = call i64 @gimp_channel_get_type() #8
  %call24 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %31, i64 %call23)
  %32 = bitcast %struct._GTypeClass* %call24 to %struct._GimpChannelClass*
  %boundary25 = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %32, i32 0, i32 2
  %33 = load i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)*, i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)** %boundary25, align 8
  %34 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %35 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_in.addr, align 8
  %36 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_out.addr, align 8
  %37 = load i32*, i32** %num_segs_in.addr, align 8
  %38 = load i32*, i32** %num_segs_out.addr, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call26 = call i32 @gimp_image_get_width(%struct._GimpImage* %39)
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call27 = call i32 @gimp_image_get_height(%struct._GimpImage* %40)
  %call28 = call i32 %33(%struct._GimpChannel* %34, %struct._BoundSeg** %35, %struct._BoundSeg** %36, i32* %37, i32* %38, i32 0, i32 0, i32 %call26, i32 %call27)
  store i32 %call28, i32* %retval
  br label %return

if.else.29:                                       ; preds = %if.end.20, %if.else
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %41)
  store %struct._GimpLayer* %call30, %struct._GimpLayer** %layer, align 8
  %tobool31 = icmp ne %struct._GimpLayer* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end.112

if.then.32:                                       ; preds = %if.else.29
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %43 = bitcast %struct._GimpLayer* %42 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_item_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call39)
  %44 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %44, i32* %offset_x, i32* %offset_y)
  %45 = load i32, i32* %offset_x, align 4
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call41 = call i32 @gimp_image_get_width(%struct._GimpImage* %46)
  %cmp42 = icmp sgt i32 %45, %call41
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.32
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call43 = call i32 @gimp_image_get_width(%struct._GimpImage* %47)
  br label %cond.end.47

cond.false:                                       ; preds = %if.then.32
  %48 = load i32, i32* %offset_x, align 4
  %cmp44 = icmp slt i32 %48, 0
  br i1 %cmp44, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.false
  br label %cond.end

cond.false.46:                                    ; preds = %cond.false
  %49 = load i32, i32* %offset_x, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.46, %cond.true.45
  %cond = phi i32 [ 0, %cond.true.45 ], [ %49, %cond.false.46 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end, %cond.true
  %cond48 = phi i32 [ %call43, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond48, i32* %x1, align 4
  %50 = load i32, i32* %offset_y, align 4
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call49 = call i32 @gimp_image_get_height(%struct._GimpImage* %51)
  %cmp50 = icmp sgt i32 %50, %call49
  br i1 %cmp50, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %cond.end.47
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call52 = call i32 @gimp_image_get_height(%struct._GimpImage* %52)
  br label %cond.end.59

cond.false.53:                                    ; preds = %cond.end.47
  %53 = load i32, i32* %offset_y, align 4
  %cmp54 = icmp slt i32 %53, 0
  br i1 %cmp54, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.false.53
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.false.53
  %54 = load i32, i32* %offset_y, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi i32 [ 0, %cond.true.55 ], [ %54, %cond.false.56 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end.57, %cond.true.51
  %cond60 = phi i32 [ %call52, %cond.true.51 ], [ %cond58, %cond.end.57 ]
  store i32 %cond60, i32* %y1, align 4
  %55 = load i32, i32* %offset_x, align 4
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %57 = bitcast %struct._GimpLayer* %56 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_item_get_type() #8
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call61)
  %58 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpItem*
  %call63 = call i32 @gimp_item_get_width(%struct._GimpItem* %58)
  %add = add nsw i32 %55, %call63
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call64 = call i32 @gimp_image_get_width(%struct._GimpImage* %59)
  %cmp65 = icmp sgt i32 %add, %call64
  br i1 %cmp65, label %cond.true.66, label %cond.false.68

cond.true.66:                                     ; preds = %cond.end.59
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call67 = call i32 @gimp_image_get_width(%struct._GimpImage* %60)
  br label %cond.end.82

cond.false.68:                                    ; preds = %cond.end.59
  %61 = load i32, i32* %offset_x, align 4
  %62 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %63 = bitcast %struct._GimpLayer* %62 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_item_get_type() #8
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call69)
  %64 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpItem*
  %call71 = call i32 @gimp_item_get_width(%struct._GimpItem* %64)
  %add72 = add nsw i32 %61, %call71
  %cmp73 = icmp slt i32 %add72, 0
  br i1 %cmp73, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.false.68
  br label %cond.end.80

cond.false.75:                                    ; preds = %cond.false.68
  %65 = load i32, i32* %offset_x, align 4
  %66 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %67 = bitcast %struct._GimpLayer* %66 to %struct._GTypeInstance*
  %call76 = call i64 @gimp_item_get_type() #8
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call76)
  %68 = bitcast %struct._GTypeInstance* %call77 to %struct._GimpItem*
  %call78 = call i32 @gimp_item_get_width(%struct._GimpItem* %68)
  %add79 = add nsw i32 %65, %call78
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.75, %cond.true.74
  %cond81 = phi i32 [ 0, %cond.true.74 ], [ %add79, %cond.false.75 ]
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.end.80, %cond.true.66
  %cond83 = phi i32 [ %call67, %cond.true.66 ], [ %cond81, %cond.end.80 ]
  store i32 %cond83, i32* %x2, align 4
  %69 = load i32, i32* %offset_y, align 4
  %70 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %71 = bitcast %struct._GimpLayer* %70 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_item_get_type() #8
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call84)
  %72 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpItem*
  %call86 = call i32 @gimp_item_get_height(%struct._GimpItem* %72)
  %add87 = add nsw i32 %69, %call86
  %73 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call88 = call i32 @gimp_image_get_height(%struct._GimpImage* %73)
  %cmp89 = icmp sgt i32 %add87, %call88
  br i1 %cmp89, label %cond.true.90, label %cond.false.92

cond.true.90:                                     ; preds = %cond.end.82
  %74 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call91 = call i32 @gimp_image_get_height(%struct._GimpImage* %74)
  br label %cond.end.106

cond.false.92:                                    ; preds = %cond.end.82
  %75 = load i32, i32* %offset_y, align 4
  %76 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %77 = bitcast %struct._GimpLayer* %76 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_item_get_type() #8
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call93)
  %78 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpItem*
  %call95 = call i32 @gimp_item_get_height(%struct._GimpItem* %78)
  %add96 = add nsw i32 %75, %call95
  %cmp97 = icmp slt i32 %add96, 0
  br i1 %cmp97, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.false.92
  br label %cond.end.104

cond.false.99:                                    ; preds = %cond.false.92
  %79 = load i32, i32* %offset_y, align 4
  %80 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %81 = bitcast %struct._GimpLayer* %80 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_item_get_type() #8
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call100)
  %82 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpItem*
  %call102 = call i32 @gimp_item_get_height(%struct._GimpItem* %82)
  %add103 = add nsw i32 %79, %call102
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.99, %cond.true.98
  %cond105 = phi i32 [ 0, %cond.true.98 ], [ %add103, %cond.false.99 ]
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.end.104, %cond.true.90
  %cond107 = phi i32 [ %call91, %cond.true.90 ], [ %cond105, %cond.end.104 ]
  store i32 %cond107, i32* %y2, align 4
  %83 = load i8*, i8** @gimp_selection_parent_class, align 8
  %84 = bitcast i8* %83 to %struct._GTypeClass*
  %call108 = call i64 @gimp_channel_get_type() #8
  %call109 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %84, i64 %call108)
  %85 = bitcast %struct._GTypeClass* %call109 to %struct._GimpChannelClass*
  %boundary110 = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %85, i32 0, i32 2
  %86 = load i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)*, i32 (%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32)** %boundary110, align 8
  %87 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %88 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_in.addr, align 8
  %89 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_out.addr, align 8
  %90 = load i32*, i32** %num_segs_in.addr, align 8
  %91 = load i32*, i32** %num_segs_out.addr, align 8
  %92 = load i32, i32* %x1, align 4
  %93 = load i32, i32* %y1, align 4
  %94 = load i32, i32* %x2, align 4
  %95 = load i32, i32* %y2, align 4
  %call111 = call i32 %86(%struct._GimpChannel* %87, %struct._BoundSeg** %88, %struct._BoundSeg** %89, i32* %90, i32* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %call111, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.else.29
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113
  %96 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_in.addr, align 8
  store %struct._BoundSeg* null, %struct._BoundSeg** %96, align 8
  %97 = load %struct._BoundSeg**, %struct._BoundSeg*** %segs_out.addr, align 8
  store %struct._BoundSeg* null, %struct._BoundSeg** %97, align 8
  %98 = load i32*, i32** %num_segs_in.addr, align 8
  store i32 0, i32* %98, align 4
  %99 = load i32*, i32** %num_segs_out.addr, align 8
  store i32 0, i32* %99, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.114, %cond.end.106, %if.then.22, %if.then
  %100 = load i32, i32* %retval
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_selection_bounds(%struct._GimpChannel* %channel, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_channel_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpChannelClass*
  %bounds = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %2, i32 0, i32 3
  %3 = load i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)*, i32 (%struct._GimpChannel*, i32*, i32*, i32*, i32*)** %bounds, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i32*, i32** %x1.addr, align 8
  %6 = load i32*, i32** %y1.addr, align 8
  %7 = load i32*, i32** %x2.addr, align 8
  %8 = load i32*, i32** %y2.addr, align 8
  %call2 = call i32 %3(%struct._GimpChannel* %4, i32* %5, i32* %6, i32* %7, i32* %8)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_selection_is_empty(%struct._GimpChannel* %channel) #3 {
entry:
  %retval = alloca i32, align 4
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %selection = alloca %struct._GimpSelection*, align 8
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  %0 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %1 = bitcast %struct._GimpChannel* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_selection_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSelection*
  store %struct._GimpSelection* %2, %struct._GimpSelection** %selection, align 8
  %3 = load %struct._GimpSelection*, %struct._GimpSelection** %selection, align 8
  %stroking_count = getelementptr inbounds %struct._GimpSelection, %struct._GimpSelection* %3, i32 0, i32 1
  %4 = load i32, i32* %stroking_count, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** @gimp_selection_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call2 = call i64 @gimp_channel_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call2)
  %7 = bitcast %struct._GTypeClass* %call3 to %struct._GimpChannelClass*
  %is_empty = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %7, i32 0, i32 4
  %8 = load i32 (%struct._GimpChannel*)*, i32 (%struct._GimpChannel*)** %is_empty, align 8
  %9 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %call4 = call i32 %8(%struct._GimpChannel* %9)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_feather(%struct._GimpChannel* %channel, double %radius_x, double %radius_y, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca double, align 8
  %radius_y.addr = alloca double, align 8
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store double %radius_x, double* %radius_x.addr, align 8
  store double %radius_y, double* %radius_y.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_channel_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpChannelClass*
  %feather = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %2, i32 0, i32 5
  %3 = load void (%struct._GimpChannel*, double, double, i32)*, void (%struct._GimpChannel*, double, double, i32)** %feather, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load double, double* %radius_x.addr, align 8
  %6 = load double, double* %radius_y.addr, align 8
  %7 = load i32, i32* %push_undo.addr, align 4
  call void %3(%struct._GimpChannel* %4, double %5, double %6, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_sharpen(%struct._GimpChannel* %channel, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_channel_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpChannelClass*
  %sharpen = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %2, i32 0, i32 6
  %3 = load void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32)** %sharpen, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i32, i32* %push_undo.addr, align 4
  call void %3(%struct._GimpChannel* %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_clear(%struct._GimpChannel* %channel, i8* %undo_desc, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %undo_desc.addr = alloca i8*, align 8
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_channel_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpChannelClass*
  %clear = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %2, i32 0, i32 7
  %3 = load void (%struct._GimpChannel*, i8*, i32)*, void (%struct._GimpChannel*, i8*, i32)** %clear, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i8*, i8** %undo_desc.addr, align 8
  %6 = load i32, i32* %push_undo.addr, align 4
  call void %3(%struct._GimpChannel* %4, i8* %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_all(%struct._GimpChannel* %channel, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_channel_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpChannelClass*
  %all = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %2, i32 0, i32 8
  %3 = load void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32)** %all, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i32, i32* %push_undo.addr, align 4
  call void %3(%struct._GimpChannel* %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_invert(%struct._GimpChannel* %channel, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_channel_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpChannelClass*
  %invert = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %2, i32 0, i32 9
  %3 = load void (%struct._GimpChannel*, i32)*, void (%struct._GimpChannel*, i32)** %invert, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i32, i32* %push_undo.addr, align 4
  call void %3(%struct._GimpChannel* %4, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_border(%struct._GimpChannel* %channel, i32 %radius_x, i32 %radius_y, i32 %feather, i32 %edge_lock, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %feather.addr = alloca i32, align 4
  %edge_lock.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store i32 %feather, i32* %feather.addr, align 4
  store i32 %edge_lock, i32* %edge_lock.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_channel_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpChannelClass*
  %border = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %2, i32 0, i32 10
  %3 = load void (%struct._GimpChannel*, i32, i32, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32, i32, i32)** %border, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i32, i32* %radius_x.addr, align 4
  %6 = load i32, i32* %radius_y.addr, align 4
  %7 = load i32, i32* %feather.addr, align 4
  %8 = load i32, i32* %edge_lock.addr, align 4
  %9 = load i32, i32* %push_undo.addr, align 4
  call void %3(%struct._GimpChannel* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_grow(%struct._GimpChannel* %channel, i32 %radius_x, i32 %radius_y, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_channel_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpChannelClass*
  %grow = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %2, i32 0, i32 11
  %3 = load void (%struct._GimpChannel*, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32)** %grow, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i32, i32* %radius_x.addr, align 4
  %6 = load i32, i32* %radius_y.addr, align 4
  %7 = load i32, i32* %push_undo.addr, align 4
  call void %3(%struct._GimpChannel* %4, i32 %5, i32 %6, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_selection_shrink(%struct._GimpChannel* %channel, i32 %radius_x, i32 %radius_y, i32 %edge_lock, i32 %push_undo) #3 {
entry:
  %channel.addr = alloca %struct._GimpChannel*, align 8
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %edge_lock.addr = alloca i32, align 4
  %push_undo.addr = alloca i32, align 4
  store %struct._GimpChannel* %channel, %struct._GimpChannel** %channel.addr, align 8
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store i32 %edge_lock, i32* %edge_lock.addr, align 4
  store i32 %push_undo, i32* %push_undo.addr, align 4
  %0 = load i8*, i8** @gimp_selection_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_channel_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpChannelClass*
  %shrink = getelementptr inbounds %struct._GimpChannelClass, %struct._GimpChannelClass* %2, i32 0, i32 12
  %3 = load void (%struct._GimpChannel*, i32, i32, i32, i32)*, void (%struct._GimpChannel*, i32, i32, i32, i32)** %shrink, align 8
  %4 = load %struct._GimpChannel*, %struct._GimpChannel** %channel.addr, align 8
  %5 = load i32, i32* %radius_x.addr, align 4
  %6 = load i32, i32* %radius_y.addr, align 4
  %7 = load i32, i32* %edge_lock.addr, align 4
  %8 = load i32, i32* %push_undo.addr, align 4
  call void %3(%struct._GimpChannel* %4, i32 %5, i32 %6, i32 %7, i32 %8)
  ret void
}

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i32 @gimp_channel_boundary(%struct._GimpChannel*, %struct._BoundSeg**, %struct._BoundSeg**, i32*, i32*, i32, i32, i32, i32) #1

declare void @gimp_image_selection_invalidate(%struct._GimpImage*) #1

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare i32 @gimp_layer_is_floating_sel(%struct._GimpLayer*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare %struct._BoundSeg* @floating_sel_boundary(%struct._GimpLayer*, i32*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
