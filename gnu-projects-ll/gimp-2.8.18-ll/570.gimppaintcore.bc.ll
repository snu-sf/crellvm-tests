; ModuleID = './app/paint/gimppaintcore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPaintCoreClass = type { %struct._GimpObjectClass, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)*, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32)*, %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)*, %struct._GimpUndo* (%struct._GimpPaintCore*, %struct._GimpImage*, i8*)* }
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
%struct._GimpPaintCore = type { %struct._GimpObject, i32, i8*, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpCoords, %struct._GimpVector2, double, double, i32, i32, i32, i32, i32, %struct._TileManager*, %struct._TileManager*, %struct._TileManager*, %struct._TempBuf*, %struct._TempBuf*, %struct._TempBuf*, %struct._GArray* }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpVector2 = type { double, double }
%struct._TileManager = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GArray = type { i8*, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
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
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GError = type { i32, i32, i8* }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._GimpPickable = type opaque
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglNode = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }
%struct._Tile = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }

@gimp_paint_core_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpPaintCore\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@__func__.gimp_paint_core_paint = private unnamed_addr constant [22 x i8] c"gimp_paint_core_paint\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PAINT_CORE (core)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"GIMP_IS_PAINT_OPTIONS (paint_options)\00", align 1
@__func__.gimp_paint_core_start = private unnamed_addr constant [22 x i8] c"gimp_paint_core_start\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"coords != NULL\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_paint_core_finish = private unnamed_addr constant [23 x i8] c"gimp_paint_core_finish\00", align 1
@__func__.gimp_paint_core_cancel = private unnamed_addr constant [23 x i8] c"gimp_paint_core_cancel\00", align 1
@__func__.gimp_paint_core_cleanup = private unnamed_addr constant [24 x i8] c"gimp_paint_core_cleanup\00", align 1
@__func__.gimp_paint_core_interpolate = private unnamed_addr constant [28 x i8] c"gimp_paint_core_interpolate\00", align 1
@__func__.gimp_paint_core_set_current_coords = private unnamed_addr constant [35 x i8] c"gimp_paint_core_set_current_coords\00", align 1
@__func__.gimp_paint_core_get_current_coords = private unnamed_addr constant [35 x i8] c"gimp_paint_core_get_current_coords\00", align 1
@__func__.gimp_paint_core_set_last_coords = private unnamed_addr constant [32 x i8] c"gimp_paint_core_set_last_coords\00", align 1
@__func__.gimp_paint_core_get_last_coords = private unnamed_addr constant [32 x i8] c"gimp_paint_core_get_last_coords\00", align 1
@__func__.gimp_paint_core_round_line = private unnamed_addr constant [27 x i8] c"gimp_paint_core_round_line\00", align 1
@__func__.gimp_paint_core_get_paint_area = private unnamed_addr constant [31 x i8] c"gimp_paint_core_get_paint_area\00", align 1
@__func__.gimp_paint_core_get_orig_image = private unnamed_addr constant [31 x i8] c"gimp_paint_core_get_orig_image\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"core->undo_tiles != NULL\00", align 1
@__func__.gimp_paint_core_get_orig_proj = private unnamed_addr constant [30 x i8] c"gimp_paint_core_get_orig_proj\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PICKABLE (pickable)\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"core->saved_proj_tiles != NULL\00", align 1
@__func__.gimp_paint_core_validate_undo_tiles = private unnamed_addr constant [36 x i8] c"gimp_paint_core_validate_undo_tiles\00", align 1
@__func__.gimp_paint_core_validate_saved_proj_tiles = private unnamed_addr constant [42 x i8] c"gimp_paint_core_validate_saved_proj_tiles\00", align 1
@__func__.gimp_paint_core_validate_canvas_tiles = private unnamed_addr constant [38 x i8] c"gimp_paint_core_validate_canvas_tiles\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"core->canvas_tiles != NULL\00", align 1
@gimp_paint_core_parent_class = internal global i8* null, align 8
@GimpPaintCore_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"undo-desc\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Paint\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"gimppaintcore.c\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"paint-core\00", align 1
@global_core_ID = internal global i32 1, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_paint_core_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_paint_core_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_paint_core_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 216, void (i8*, i8*)* bitcast (void (i8*)* @gimp_paint_core_class_intern_init to void (i8*, i8*)*), i32 352, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPaintCore*)* @gimp_paint_core_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_paint_core_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_paint_core_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_paint_core_parent_class, align 8
  %1 = load i32, i32* @GimpPaintCore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPaintCore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaintCoreClass*
  call void @gimp_paint_core_class_init(%struct._GimpPaintCoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_init(%struct._GimpPaintCore* %core) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  %0 = load i32, i32* @global_core_ID, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @global_core_ID, align 4
  %1 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %ID = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %1, i32 0, i32 1
  store i32 %0, i32* %ID, align 4
  %2 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_desc = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %2, i32 0, i32 2
  store i8* null, i8** %undo_desc, align 8
  %3 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %distance = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %3, i32 0, i32 7
  store double 0.000000e+00, double* %distance, align 8
  %4 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %4, i32 0, i32 8
  store double 0.000000e+00, double* %pixel_dist, align 8
  %5 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %5, i32 0, i32 9
  store i32 0, i32* %x1, align 4
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %6, i32 0, i32 10
  store i32 0, i32* %y1, align 4
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %7, i32 0, i32 11
  store i32 0, i32* %x2, align 4
  %8 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %8, i32 0, i32 12
  store i32 0, i32* %y2, align 4
  %9 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %use_saved_proj = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %9, i32 0, i32 13
  store i32 0, i32* %use_saved_proj, align 4
  %10 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %10, i32 0, i32 14
  store %struct._TileManager* null, %struct._TileManager** %undo_tiles, align 8
  %11 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %11, i32 0, i32 15
  store %struct._TileManager* null, %struct._TileManager** %saved_proj_tiles, align 8
  %12 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %12, i32 0, i32 16
  store %struct._TileManager* null, %struct._TileManager** %canvas_tiles, align 8
  %13 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %13, i32 0, i32 17
  store %struct._TempBuf* null, %struct._TempBuf** %orig_buf, align 8
  %14 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %14, i32 0, i32 18
  store %struct._TempBuf* null, %struct._TempBuf** %orig_proj_buf, align 8
  %15 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %15, i32 0, i32 19
  store %struct._TempBuf* null, %struct._TempBuf** %canvas_buf, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_paint(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, i32 %paint_state, i32 %time) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %core_class = alloca %struct._GimpPaintCoreClass*, align 8
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
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_paint, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.88

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_paint, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.88

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_paint, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.88

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_paint_options_get_type() #7
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
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_paint, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.88

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %42 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %43 = bitcast %struct._GimpPaintCore* %42 to %struct._GTypeInstance*
  %g_class76 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class76, align 8
  %45 = bitcast %struct._GTypeClass* %44 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %45, %struct._GimpPaintCoreClass** %core_class, align 8
  %46 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %core_class, align 8
  %pre_paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %46, i32 0, i32 2
  %47 = load i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)*, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)** %pre_paint, align 8
  %48 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %50 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %51 = load i32, i32* %paint_state.addr, align 4
  %52 = load i32, i32* %time.addr, align 4
  %call77 = call i32 %47(%struct._GimpPaintCore* %48, %struct._GimpDrawable* %49, %struct._GimpPaintOptions* %50, i32 %51, i32 %52)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %do.end.75
  %53 = load i32, i32* %paint_state.addr, align 4
  %cmp80 = icmp eq i32 %53, 1
  br i1 %cmp80, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %if.then.79
  %54 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %54, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords, i32 0, i32 0
  %55 = load double, double* %x, align 8
  %56 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_paint = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %56, i32 0, i32 6
  %x82 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_paint, i32 0, i32 0
  store double %55, double* %x82, align 8
  %57 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords83 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %57, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords83, i32 0, i32 1
  %58 = load double, double* %y, align 8
  %59 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_paint84 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %59, i32 0, i32 6
  %y85 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_paint84, i32 0, i32 1
  store double %58, double* %y85, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %if.then.79
  %60 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %60, i32 0, i32 3
  %61 = load void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %62 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %64 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %65 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords87 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %65, i32 0, i32 4
  %66 = load i32, i32* %paint_state.addr, align 4
  %67 = load i32, i32* %time.addr, align 4
  call void %61(%struct._GimpPaintCore* %62, %struct._GimpDrawable* %63, %struct._GimpPaintOptions* %64, %struct._GimpCoords* %cur_coords87, i32 %66, i32 %67)
  %68 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %core_class, align 8
  %post_paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %68, i32 0, i32 4
  %69 = load void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)** %post_paint, align 8
  %70 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %71 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %72 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %73 = load i32, i32* %paint_state.addr, align 4
  %74 = load i32, i32* %time.addr, align 4
  call void %69(%struct._GimpPaintCore* %70, %struct._GimpDrawable* %71, %struct._GimpPaintOptions* %72, i32 %73, i32 %74)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.9, %if.else.36, %if.else.45, %if.else.73, %if.end.86, %do.end.75
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_paint_core_start(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %item = alloca %struct._GimpItem*, align 8
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
  %image = alloca %struct._GimpImage*, align 8
  %pickable = alloca %struct._GimpPickable*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_start, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_start, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_start, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_paint_options_get_type() #7
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
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_start, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp77 = icmp ne %struct._GimpCoords* %42, null
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.76
  br label %if.end.80

if.else.79:                                       ; preds = %do.body.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_start, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_paint_core_start, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.85
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = bitcast %struct._GimpDrawable* %46 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_item_get_type() #7
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call89)
  %48 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpItem*
  store %struct._GimpItem* %48, %struct._GimpItem** %item, align 8
  %49 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %stroke_buffer = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %49, i32 0, i32 20
  %50 = load %struct._GArray*, %struct._GArray** %stroke_buffer, align 8
  %tobool91 = icmp ne %struct._GArray* %50, null
  br i1 %tobool91, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %do.end.88
  %51 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %stroke_buffer93 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %51, i32 0, i32 20
  %52 = load %struct._GArray*, %struct._GArray** %stroke_buffer93, align 8
  %call94 = call i8* @g_array_free(%struct._GArray* %52, i32 1)
  %53 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %stroke_buffer95 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %53, i32 0, i32 20
  store %struct._GArray* null, %struct._GArray** %stroke_buffer95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %do.end.88
  %call97 = call %struct._GArray* @g_array_sized_new(i32 1, i32 1, i32 64, i32 2000)
  %54 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %stroke_buffer98 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %54, i32 0, i32 20
  store %struct._GArray* %call97, %struct._GArray** %stroke_buffer98, align 8
  %55 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %start_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %55, i32 0, i32 3
  %56 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %56, i32 0, i32 5
  %57 = bitcast %struct._GimpCoords* %start_coords to i8*
  %58 = bitcast %struct._GimpCoords* %last_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 64, i32 8, i1 false)
  %59 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %59, i32 0, i32 4
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %61 = bitcast %struct._GimpCoords* %cur_coords to i8*
  %62 = bitcast %struct._GimpCoords* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 64, i32 8, i1 false)
  %63 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %64 = bitcast %struct._GimpPaintCore* %63 to %struct._GTypeInstance*
  %g_class99 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %64, i32 0, i32 0
  %65 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class99, align 8
  %66 = bitcast %struct._GTypeClass* %65 to %struct._GimpPaintCoreClass*
  %start = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %66, i32 0, i32 1
  %67 = load i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)*, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)** %start, align 8
  %68 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %70 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %71 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %72 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call100 = call i32 %67(%struct._GimpPaintCore* %68, %struct._GimpDrawable* %69, %struct._GimpPaintOptions* %70, %struct._GimpCoords* %71, %struct._GError** %72)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.end.96
  store i32 0, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.end.96
  %73 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %73, i32 0, i32 14
  %74 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %tobool104 = icmp ne %struct._TileManager* %74, null
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.103
  %75 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles106 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %75, i32 0, i32 14
  %76 = load %struct._TileManager*, %struct._TileManager** %undo_tiles106, align 8
  call void @tile_manager_unref(%struct._TileManager* %76)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.103
  %77 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call108 = call i32 @gimp_item_get_width(%struct._GimpItem* %77)
  %78 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call109 = call i32 @gimp_item_get_height(%struct._GimpItem* %78)
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call110 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %79)
  %call111 = call %struct._TileManager* @tile_manager_new(i32 %call108, i32 %call109, i32 %call110)
  %80 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles112 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %80, i32 0, i32 14
  store %struct._TileManager* %call111, %struct._TileManager** %undo_tiles112, align 8
  %81 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %81, i32 0, i32 15
  %82 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles, align 8
  %tobool113 = icmp ne %struct._TileManager* %82, null
  br i1 %tobool113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.107
  %83 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles115 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %83, i32 0, i32 15
  %84 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles115, align 8
  call void @tile_manager_unref(%struct._TileManager* %84)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.end.107
  %85 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles117 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %85, i32 0, i32 15
  store %struct._TileManager* null, %struct._TileManager** %saved_proj_tiles117, align 8
  %86 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %use_saved_proj = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %86, i32 0, i32 13
  %87 = load i32, i32* %use_saved_proj, align 4
  %tobool118 = icmp ne i32 %87, 0
  br i1 %tobool118, label %if.then.119, label %if.end.133

if.then.119:                                      ; preds = %if.end.116
  %88 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call121 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %88)
  store %struct._GimpImage* %call121, %struct._GimpImage** %image, align 8
  %89 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call123 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %89)
  %90 = bitcast %struct._GimpProjection* %call123 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_pickable_interface_get_type() #7
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call124)
  %91 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpPickable*
  store %struct._GimpPickable* %91, %struct._GimpPickable** %pickable, align 8
  %92 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call127 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %92)
  store %struct._TileManager* %call127, %struct._TileManager** %tiles, align 8
  %93 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call128 = call i32 @tile_manager_width(%struct._TileManager* %93)
  %94 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call129 = call i32 @tile_manager_height(%struct._TileManager* %94)
  %95 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %call130 = call i32 @tile_manager_bpp(%struct._TileManager* %95)
  %call131 = call %struct._TileManager* @tile_manager_new(i32 %call128, i32 %call129, i32 %call130)
  %96 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles132 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %96, i32 0, i32 15
  store %struct._TileManager* %call131, %struct._TileManager** %saved_proj_tiles132, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.119, %if.end.116
  %97 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %97, i32 0, i32 16
  %98 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles, align 8
  %tobool134 = icmp ne %struct._TileManager* %98, null
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.end.133
  %99 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles136 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %99, i32 0, i32 16
  %100 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles136, align 8
  call void @tile_manager_unref(%struct._TileManager* %100)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.end.133
  %101 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call138 = call i32 @gimp_item_get_width(%struct._GimpItem* %101)
  %102 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call139 = call i32 @gimp_item_get_height(%struct._GimpItem* %102)
  %call140 = call %struct._TileManager* @tile_manager_new(i32 %call138, i32 %call139, i32 1)
  %103 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles141 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %103, i32 0, i32 16
  store %struct._TileManager* %call140, %struct._TileManager** %canvas_tiles141, align 8
  %104 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords142 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %104, i32 0, i32 4
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords142, i32 0, i32 0
  %105 = load double, double* %x, align 8
  %conv = fptosi double %105 to i32
  %106 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %106, i32 0, i32 11
  store i32 %conv, i32* %x2, align 4
  %107 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %107, i32 0, i32 9
  store i32 %conv, i32* %x1, align 4
  %108 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords143 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %108, i32 0, i32 4
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords143, i32 0, i32 1
  %109 = load double, double* %y, align 8
  %conv144 = fptosi double %109 to i32
  %110 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %110, i32 0, i32 12
  store i32 %conv144, i32* %y2, align 4
  %111 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %111, i32 0, i32 10
  store i32 %conv144, i32* %y1, align 4
  %112 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_paint = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %112, i32 0, i32 6
  %x145 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_paint, i32 0, i32 0
  store double -1.000000e+06, double* %x145, align 8
  %113 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_paint146 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %113, i32 0, i32 6
  %y147 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_paint146, i32 0, i32 1
  store double -1.000000e+06, double* %y147, align 8
  %114 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %115 = bitcast %struct._GimpDrawable* %114 to %struct._GTypeInstance*
  %call148 = call i64 @gimp_viewable_get_type() #7
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call148)
  %116 = bitcast %struct._GTypeInstance* %call149 to %struct._GimpViewable*
  call void @gimp_viewable_preview_freeze(%struct._GimpViewable* %116)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.137, %if.then.102, %if.else.86, %if.else.79, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %117 = load i32, i32* %retval
  ret i32 %117
}

declare i8* @g_array_free(%struct._GArray*, i32) #1

declare %struct._GArray* @g_array_sized_new(i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @tile_manager_unref(%struct._TileManager*) #1

declare %struct._TileManager* @tile_manager_new(i32, i32, i32) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare i32 @tile_manager_bpp(%struct._TileManager*) #1

declare void @gimp_viewable_preview_freeze(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_finish(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, i32 %push_undo) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %push_undo.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_finish, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_finish, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_finish, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %stroke_buffer = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %29, i32 0, i32 20
  %30 = load %struct._GArray*, %struct._GArray** %stroke_buffer, align 8
  %tobool48 = icmp ne %struct._GArray* %30, null
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %do.end.47
  %31 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %stroke_buffer50 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %31, i32 0, i32 20
  %32 = load %struct._GArray*, %struct._GArray** %stroke_buffer50, align 8
  %call51 = call i8* @g_array_free(%struct._GArray* %32, i32 1)
  %33 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %stroke_buffer52 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %33, i32 0, i32 20
  store %struct._GArray* null, %struct._GArray** %stroke_buffer52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %do.end.47
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_item_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call54)
  %36 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpItem*
  %call56 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %36)
  store %struct._GimpImage* %call56, %struct._GimpImage** %image, align 8
  %37 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %37, i32 0, i32 11
  %38 = load i32, i32* %x2, align 4
  %39 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %39, i32 0, i32 9
  %40 = load i32, i32* %x1, align 4
  %cmp57 = icmp eq i32 %38, %40
  br i1 %cmp57, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.53
  %41 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %41, i32 0, i32 12
  %42 = load i32, i32* %y2, align 4
  %43 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %43, i32 0, i32 10
  %44 = load i32, i32* %y1, align 4
  %cmp58 = icmp eq i32 %42, %44
  br i1 %cmp58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %lor.lhs.false, %if.end.53
  %45 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %46 = bitcast %struct._GimpDrawable* %45 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_viewable_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call60)
  %47 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpViewable*
  call void @gimp_viewable_preview_thaw(%struct._GimpViewable* %47)
  br label %return

if.end.62:                                        ; preds = %lor.lhs.false
  %48 = load i32, i32* %push_undo.addr, align 4
  %tobool63 = icmp ne i32 %48, 0
  br i1 %tobool63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %if.end.62
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %50 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_desc = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %50, i32 0, i32 2
  %51 = load i8*, i8** %undo_desc, align 8
  %call65 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %49, i32 33, i8* %51)
  %52 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %53 = bitcast %struct._GimpPaintCore* %52 to %struct._GTypeInstance*
  %g_class66 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class66, align 8
  %55 = bitcast %struct._GTypeClass* %54 to %struct._GimpPaintCoreClass*
  %push_undo67 = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %55, i32 0, i32 7
  %56 = load %struct._GimpUndo* (%struct._GimpPaintCore*, %struct._GimpImage*, i8*)*, %struct._GimpUndo* (%struct._GimpPaintCore*, %struct._GimpImage*, i8*)** %push_undo67, align 8
  %57 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call68 = call %struct._GimpUndo* %56(%struct._GimpPaintCore* %57, %struct._GimpImage* %58, i8* null)
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %60 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x169 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %60, i32 0, i32 9
  %61 = load i32, i32* %x169, align 4
  %62 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y170 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %62, i32 0, i32 10
  %63 = load i32, i32* %y170, align 4
  %64 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x271 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %64, i32 0, i32 11
  %65 = load i32, i32* %x271, align 4
  %66 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x172 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %66, i32 0, i32 9
  %67 = load i32, i32* %x172, align 4
  %sub = sub nsw i32 %65, %67
  %68 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y273 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %68, i32 0, i32 12
  %69 = load i32, i32* %y273, align 4
  %70 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y174 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %70, i32 0, i32 10
  %71 = load i32, i32* %y174, align 4
  %sub75 = sub nsw i32 %69, %71
  %72 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %72, i32 0, i32 14
  %73 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  call void @gimp_drawable_push_undo(%struct._GimpDrawable* %59, i8* null, i32 %61, i32 %63, i32 %sub, i32 %sub75, %struct._TileManager* %73, i32 1)
  %74 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call76 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %74)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.64, %if.end.62
  %75 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles78 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %75, i32 0, i32 14
  %76 = load %struct._TileManager*, %struct._TileManager** %undo_tiles78, align 8
  call void @tile_manager_unref(%struct._TileManager* %76)
  %77 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles79 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %77, i32 0, i32 14
  store %struct._TileManager* null, %struct._TileManager** %undo_tiles79, align 8
  %78 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %78, i32 0, i32 15
  %79 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles, align 8
  %tobool80 = icmp ne %struct._TileManager* %79, null
  br i1 %tobool80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.77
  %80 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles82 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %80, i32 0, i32 15
  %81 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles82, align 8
  call void @tile_manager_unref(%struct._TileManager* %81)
  %82 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles83 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %82, i32 0, i32 15
  store %struct._TileManager* null, %struct._TileManager** %saved_proj_tiles83, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.77
  %83 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %84 = bitcast %struct._GimpDrawable* %83 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_viewable_get_type() #7
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call85)
  %85 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpViewable*
  call void @gimp_viewable_preview_thaw(%struct._GimpViewable* %85)
  br label %return

return:                                           ; preds = %if.end.84, %if.then.59, %if.else.45, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_viewable_preview_thaw(%struct._GimpViewable*) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare void @gimp_drawable_push_undo(%struct._GimpDrawable*, i8*, i32, i32, i32, i32, %struct._TileManager*, i32) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_cancel(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
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
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_cancel, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_cancel, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_core_cancel, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %29, i32 0, i32 11
  %30 = load i32, i32* %x2, align 4
  %31 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %31, i32 0, i32 9
  %32 = load i32, i32* %x1, align 4
  %cmp48 = icmp eq i32 %30, %32
  br i1 %cmp48, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.47
  %33 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %33, i32 0, i32 12
  %34 = load i32, i32* %y2, align 4
  %35 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %35, i32 0, i32 10
  %36 = load i32, i32* %y1, align 4
  %cmp49 = icmp eq i32 %34, %36
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false, %do.end.47
  br label %return

if.end.51:                                        ; preds = %lor.lhs.false
  %37 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x152 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %37, i32 0, i32 9
  %38 = load i32, i32* %x152, align 4
  %39 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y153 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %39, i32 0, i32 10
  %40 = load i32, i32* %y153, align 4
  %41 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x254 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %41, i32 0, i32 11
  %42 = load i32, i32* %x254, align 4
  %43 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x155 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %43, i32 0, i32 9
  %44 = load i32, i32* %x155, align 4
  %sub = sub nsw i32 %42, %44
  %45 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y256 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %45, i32 0, i32 12
  %46 = load i32, i32* %y256, align 4
  %47 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y157 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %47, i32 0, i32 10
  %48 = load i32, i32* %y157, align 4
  %sub58 = sub nsw i32 %46, %48
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %50 = bitcast %struct._GimpDrawable* %49 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_item_get_type() #7
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call59)
  %51 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpItem*
  %call61 = call i32 @gimp_item_get_width(%struct._GimpItem* %51)
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %53 = bitcast %struct._GimpDrawable* %52 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_item_get_type() #7
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call62)
  %54 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpItem*
  %call64 = call i32 @gimp_item_get_height(%struct._GimpItem* %54)
  %call65 = call i32 @gimp_rectangle_intersect(i32 %38, i32 %40, i32 %sub, i32 %sub58, i32 0, i32 0, i32 %call61, i32 %call64, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.51
  %55 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %55, i32 0, i32 14
  %56 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call68 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %57)
  %58 = load i32, i32* %x, align 4
  %59 = load i32, i32* %y, align 4
  %60 = load i32, i32* %width, align 4
  %61 = load i32, i32* %height, align 4
  call void @gimp_paint_core_copy_valid_tiles(%struct._TileManager* %56, %struct._TileManager* %call68, i32 %58, i32 %59, i32 %60, i32 %61)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.51
  %62 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles70 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %62, i32 0, i32 14
  %63 = load %struct._TileManager*, %struct._TileManager** %undo_tiles70, align 8
  call void @tile_manager_unref(%struct._TileManager* %63)
  %64 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles71 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %64, i32 0, i32 14
  store %struct._TileManager* null, %struct._TileManager** %undo_tiles71, align 8
  %65 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %65, i32 0, i32 15
  %66 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles, align 8
  %tobool72 = icmp ne %struct._TileManager* %66, null
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.69
  %67 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles74 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %67, i32 0, i32 15
  %68 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles74, align 8
  call void @tile_manager_unref(%struct._TileManager* %68)
  %69 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles75 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %69, i32 0, i32 15
  store %struct._TileManager* null, %struct._TileManager** %saved_proj_tiles75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.end.69
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %71 = load i32, i32* %x, align 4
  %72 = load i32, i32* %y, align 4
  %73 = load i32, i32* %width, align 4
  %74 = load i32, i32* %height, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %75 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %76 = bitcast %struct._GimpDrawable* %75 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_viewable_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call77)
  %77 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpViewable*
  call void @gimp_viewable_preview_thaw(%struct._GimpViewable* %77)
  br label %return

return:                                           ; preds = %if.end.76, %if.then.50, %if.else.45, %if.else.36, %if.else.9
  ret void
}

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_copy_valid_tiles(%struct._TileManager* %src_tiles, %struct._TileManager* %dest_tiles, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %src_tiles.addr = alloca %struct._TileManager*, align 8
  %dest_tiles.addr = alloca %struct._TileManager*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %src_tile = alloca %struct._Tile*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._TileManager* %src_tiles, %struct._TileManager** %src_tiles.addr, align 8
  store %struct._TileManager* %dest_tiles, %struct._TileManager** %dest_tiles.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %2, %3
  %cmp = icmp slt i32 %1, %add
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %x.addr, align 4
  store i32 %4, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %w.addr, align 4
  %add2 = add nsw i32 %6, %7
  %cmp3 = icmp slt i32 %5, %add2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %8 = load %struct._TileManager*, %struct._TileManager** %src_tiles.addr, align 8
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %i, align 4
  %call = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %8, i32 %9, i32 %10, i32 0, i32 0)
  store %struct._Tile* %call, %struct._Tile** %src_tile, align 8
  %11 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  %call5 = call i32 @tile_is_valid(%struct._Tile* %11)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %12 = load %struct._TileManager*, %struct._TileManager** %src_tiles.addr, align 8
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %call6 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %12, i32 %13, i32 %14, i32 1, i32 0)
  store %struct._Tile* %call6, %struct._Tile** %src_tile, align 8
  %15 = load %struct._TileManager*, %struct._TileManager** %dest_tiles.addr, align 8
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %i, align 4
  %18 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  call void @tile_manager_map_tile(%struct._TileManager* %15, i32 %16, i32 %17, %struct._Tile* %18)
  %19 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  call void @tile_release(%struct._Tile* %19, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %j, align 4
  %rem = srem i32 %20, 64
  %sub = sub nsw i32 64, %rem
  %21 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %21, %sub
  store i32 %add7, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %rem9 = srem i32 %22, 64
  %sub10 = sub nsw i32 64, %rem9
  %23 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %23, %sub10
  store i32 %add11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare void @gimp_drawable_update(%struct._GimpDrawable*, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_cleanup(%struct._GimpPaintCore* %core) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_paint_core_cleanup, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.40

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %13, i32 0, i32 14
  %14 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %tobool11 = icmp ne %struct._TileManager* %14, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles13 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %15, i32 0, i32 14
  %16 = load %struct._TileManager*, %struct._TileManager** %undo_tiles13, align 8
  call void @tile_manager_unref(%struct._TileManager* %16)
  %17 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles14 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %17, i32 0, i32 14
  store %struct._TileManager* null, %struct._TileManager** %undo_tiles14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %18, i32 0, i32 15
  %19 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles, align 8
  %tobool16 = icmp ne %struct._TileManager* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %20 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles18 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %20, i32 0, i32 15
  %21 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles18, align 8
  call void @tile_manager_unref(%struct._TileManager* %21)
  %22 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles19 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %22, i32 0, i32 15
  store %struct._TileManager* null, %struct._TileManager** %saved_proj_tiles19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.15
  %23 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %23, i32 0, i32 16
  %24 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles, align 8
  %tobool21 = icmp ne %struct._TileManager* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.20
  %25 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles23 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %25, i32 0, i32 16
  %26 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles23, align 8
  call void @tile_manager_unref(%struct._TileManager* %26)
  %27 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles24 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %27, i32 0, i32 16
  store %struct._TileManager* null, %struct._TileManager** %canvas_tiles24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.20
  %28 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %28, i32 0, i32 17
  %29 = load %struct._TempBuf*, %struct._TempBuf** %orig_buf, align 8
  %tobool26 = icmp ne %struct._TempBuf* %29, null
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.25
  %30 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf28 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %30, i32 0, i32 17
  %31 = load %struct._TempBuf*, %struct._TempBuf** %orig_buf28, align 8
  call void @temp_buf_free(%struct._TempBuf* %31)
  %32 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf29 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %32, i32 0, i32 17
  store %struct._TempBuf* null, %struct._TempBuf** %orig_buf29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.25
  %33 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %33, i32 0, i32 18
  %34 = load %struct._TempBuf*, %struct._TempBuf** %orig_proj_buf, align 8
  %tobool31 = icmp ne %struct._TempBuf* %34, null
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.30
  %35 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf33 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %35, i32 0, i32 18
  %36 = load %struct._TempBuf*, %struct._TempBuf** %orig_proj_buf33, align 8
  call void @temp_buf_free(%struct._TempBuf* %36)
  %37 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf34 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %37, i32 0, i32 18
  store %struct._TempBuf* null, %struct._TempBuf** %orig_proj_buf34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.30
  %38 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %38, i32 0, i32 19
  %39 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %tobool36 = icmp ne %struct._TempBuf* %39, null
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.35
  %40 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf38 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %40, i32 0, i32 19
  %41 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf38, align 8
  call void @temp_buf_free(%struct._TempBuf* %41)
  %42 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf39 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %42, i32 0, i32 19
  store %struct._TempBuf* null, %struct._TempBuf** %canvas_buf39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.9, %if.then.37, %if.end.35
  ret void
}

declare void @temp_buf_free(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_interpolate(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %time) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
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
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_core_interpolate, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_core_interpolate, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_core_interpolate, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_paint_options_get_type() #7
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
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_core_interpolate, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp77 = icmp ne %struct._GimpCoords* %42, null
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.76
  br label %if.end.80

if.else.79:                                       ; preds = %do.body.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_core_interpolate, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %43 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %43, i32 0, i32 4
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %45 = bitcast %struct._GimpCoords* %cur_coords to i8*
  %46 = bitcast %struct._GimpCoords* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 64, i32 8, i1 false)
  %47 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %48 = bitcast %struct._GimpPaintCore* %47 to %struct._GTypeInstance*
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %50 = bitcast %struct._GTypeClass* %49 to %struct._GimpPaintCoreClass*
  %interpolate = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %50, i32 0, i32 5
  %51 = load void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32)** %interpolate, align 8
  %52 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %54 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %55 = load i32, i32* %time.addr, align 4
  call void %51(%struct._GimpPaintCore* %52, %struct._GimpDrawable* %53, %struct._GimpPaintOptions* %54, i32 %55)
  br label %return

return:                                           ; preds = %do.end.81, %if.else.79, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_set_current_coords(%struct._GimpPaintCore* %core, %struct._GimpCoords* %coords) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_paint_core_set_current_coords, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_paint_core_set_current_coords, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %14, i32 0, i32 4
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %16 = bitcast %struct._GimpCoords* %cur_coords to i8*
  %17 = bitcast %struct._GimpCoords* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 64, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_get_current_coords(%struct._GimpPaintCore* %core, %struct._GimpCoords* %coords) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_paint_core_get_current_coords, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_paint_core_get_current_coords, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %15 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %15, i32 0, i32 4
  %16 = bitcast %struct._GimpCoords* %14 to i8*
  %17 = bitcast %struct._GimpCoords* %cur_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 64, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_set_last_coords(%struct._GimpPaintCore* %core, %struct._GimpCoords* %coords) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_set_last_coords, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_set_last_coords, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %14, i32 0, i32 5
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %16 = bitcast %struct._GimpCoords* %last_coords to i8*
  %17 = bitcast %struct._GimpCoords* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 64, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_get_last_coords(%struct._GimpPaintCore* %core, %struct._GimpCoords* %coords) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_get_last_coords, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_paint_core_get_last_coords, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %15 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %15, i32 0, i32 5
  %16 = bitcast %struct._GimpCoords* %14 to i8*
  %17 = bitcast %struct._GimpCoords* %last_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 64, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_round_line(%struct._GimpPaintCore* %core, %struct._GimpPaintOptions* %paint_options, i32 %constrain_15_degrees) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %constrain_15_degrees.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %constrain_15_degrees, i32* %constrain_15_degrees.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_paint_core_round_line, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.72

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %14 = bitcast %struct._GimpPaintOptions* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_paint_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_paint_core_round_line, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.72

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %call39 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %26)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.61

if.then.41:                                       ; preds = %do.end.38
  %27 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %27, i32 0, i32 5
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %28 = load double, double* %x, align 8
  %call42 = call double @floor(double %28) #7
  %add = fadd double %call42, 5.000000e-01
  %29 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords43 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %29, i32 0, i32 5
  %x44 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords43, i32 0, i32 0
  store double %add, double* %x44, align 8
  %30 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords45 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %30, i32 0, i32 5
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords45, i32 0, i32 1
  %31 = load double, double* %y, align 8
  %call46 = call double @floor(double %31) #7
  %add47 = fadd double %call46, 5.000000e-01
  %32 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords48 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %32, i32 0, i32 5
  %y49 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords48, i32 0, i32 1
  store double %add47, double* %y49, align 8
  %33 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %33, i32 0, i32 4
  %x50 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords, i32 0, i32 0
  %34 = load double, double* %x50, align 8
  %call51 = call double @floor(double %34) #7
  %add52 = fadd double %call51, 5.000000e-01
  %35 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords53 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %35, i32 0, i32 4
  %x54 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords53, i32 0, i32 0
  store double %add52, double* %x54, align 8
  %36 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords55 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %36, i32 0, i32 4
  %y56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords55, i32 0, i32 1
  %37 = load double, double* %y56, align 8
  %call57 = call double @floor(double %37) #7
  %add58 = fadd double %call57, 5.000000e-01
  %38 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords59 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %38, i32 0, i32 4
  %y60 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords59, i32 0, i32 1
  store double %add58, double* %y60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.41, %do.end.38
  %39 = load i32, i32* %constrain_15_degrees.addr, align 4
  %tobool62 = icmp ne i32 %39, 0
  br i1 %tobool62, label %if.then.63, label %if.end.72

if.then.63:                                       ; preds = %if.end.61
  %40 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords64 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %40, i32 0, i32 5
  %x65 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords64, i32 0, i32 0
  %41 = load double, double* %x65, align 8
  %42 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords66 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %42, i32 0, i32 5
  %y67 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords66, i32 0, i32 1
  %43 = load double, double* %y67, align 8
  %44 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords68 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %44, i32 0, i32 4
  %x69 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords68, i32 0, i32 0
  %45 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords70 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %45, i32 0, i32 4
  %y71 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %cur_coords70, i32 0, i32 1
  call void @gimp_constrain_line(double %41, double %43, double* %x69, double* %y71, i32 12)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.9, %if.else.36, %if.then.63, %if.end.61
  ret void
}

declare i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare void @gimp_constrain_line(double, double, double*, double*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
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
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_get_paint_area, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_get_paint_area, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_item_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call40)
  %28 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpItem*
  %call42 = call i32 @gimp_item_is_attached(%struct._GimpItem* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_get_paint_area, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_paint_options_get_type() #7
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
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_get_paint_area, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %42 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp77 = icmp ne %struct._GimpCoords* %42, null
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.76
  br label %if.end.80

if.else.79:                                       ; preds = %do.body.76
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_get_paint_area, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.80:                                        ; preds = %if.then.78
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %43 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %44 = bitcast %struct._GimpPaintCore* %43 to %struct._GTypeInstance*
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %46 = bitcast %struct._GTypeClass* %45 to %struct._GimpPaintCoreClass*
  %get_paint_area = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %46, i32 0, i32 6
  %47 = load %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)*, %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)** %get_paint_area, align 8
  %48 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %50 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %51 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call83 = call %struct._TempBuf* %47(%struct._GimpPaintCore* %48, %struct._GimpDrawable* %49, %struct._GimpPaintOptions* %50, %struct._GimpCoords* %51)
  store %struct._TempBuf* %call83, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %do.end.81, %if.else.79, %if.else.73, %if.else.45, %if.else.36, %if.else.9
  %52 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %52
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_paint_core_get_orig_image(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %undo_tile = alloca %struct._Tile*, align 8
  %release_tile = alloca i32, align 4
  %h = alloca i32, align 4
  %pixelwidth = alloca i32, align 4
  %drawable_width = alloca i32, align 4
  %drawable_height = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_get_orig_image, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_get_orig_image, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %26, i32 0, i32 14
  %27 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %cmp40 = icmp ne %struct._TileManager* %27, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_paint_core_get_orig_image, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %28 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %28, i32 0, i32 17
  %29 = load %struct._TempBuf*, %struct._TempBuf** %orig_buf, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call45 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %30)
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* %y.addr, align 4
  %33 = load i32, i32* %width.addr, align 4
  %34 = load i32, i32* %height.addr, align 4
  %call46 = call %struct._TempBuf* @temp_buf_resize(%struct._TempBuf* %29, i32 %call45, i32 %31, i32 %32, i32 %33, i32 %34)
  %35 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf47 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %35, i32 0, i32 17
  store %struct._TempBuf* %call46, %struct._TempBuf** %orig_buf47, align 8
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call48)
  %38 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call i32 @gimp_item_get_width(%struct._GimpItem* %38)
  store i32 %call50, i32* %drawable_width, align 4
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = bitcast %struct._GimpDrawable* %39 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_item_get_type() #7
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call51)
  %41 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpItem*
  %call53 = call i32 @gimp_item_get_height(%struct._GimpItem* %41)
  store i32 %call53, i32* %drawable_height, align 4
  %42 = load i32, i32* %x.addr, align 4
  %43 = load i32, i32* %y.addr, align 4
  %44 = load i32, i32* %width.addr, align 4
  %45 = load i32, i32* %height.addr, align 4
  %46 = load i32, i32* %drawable_width, align 4
  %47 = load i32, i32* %drawable_height, align 4
  %call54 = call i32 @gimp_rectangle_intersect(i32 %42, i32 %43, i32 %44, i32 %45, i32 0, i32 0, i32 %46, i32 %47, i32* %x.addr, i32* %y.addr, i32* %width.addr, i32* %height.addr)
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call55 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %48)
  %49 = load i32, i32* %x.addr, align 4
  %50 = load i32, i32* %y.addr, align 4
  %51 = load i32, i32* %width.addr, align 4
  %52 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call55, i32 %49, i32 %50, i32 %51, i32 %52, i32 0)
  %53 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf56 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %53, i32 0, i32 17
  %54 = load %struct._TempBuf*, %struct._TempBuf** %orig_buf56, align 8
  %55 = load i32, i32* %x.addr, align 4
  %56 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf57 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %56, i32 0, i32 17
  %57 = load %struct._TempBuf*, %struct._TempBuf** %orig_buf57, align 8
  %x58 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %57, i32 0, i32 3
  %58 = load i32, i32* %x58, align 4
  %sub = sub nsw i32 %55, %58
  %59 = load i32, i32* %y.addr, align 4
  %60 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf59 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %60, i32 0, i32 17
  %61 = load %struct._TempBuf*, %struct._TempBuf** %orig_buf59, align 8
  %y60 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %61, i32 0, i32 4
  %62 = load i32, i32* %y60, align 4
  %sub61 = sub nsw i32 %59, %62
  %63 = load i32, i32* %width.addr, align 4
  %64 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %54, i32 %sub, i32 %sub61, i32 %63, i32 %64)
  %call62 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %65 = bitcast %struct._PixelRegionIterator* %call62 to i8*
  store i8* %65, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.44
  %66 = load i8*, i8** %pr, align 8
  %cmp63 = icmp ne i8* %66, null
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles64 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %67, i32 0, i32 14
  %68 = load %struct._TileManager*, %struct._TileManager** %undo_tiles64, align 8
  %x65 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %69 = load i32, i32* %x65, align 4
  %y66 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %70 = load i32, i32* %y66, align 4
  %call67 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %68, i32 %69, i32 %70, i32 0, i32 0)
  store %struct._Tile* %call67, %struct._Tile** %undo_tile, align 8
  %71 = load %struct._Tile*, %struct._Tile** %undo_tile, align 8
  %call68 = call i32 @tile_is_valid(%struct._Tile* %71)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.78

if.then.70:                                       ; preds = %for.body
  store i32 1, i32* %release_tile, align 4
  %72 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles71 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %72, i32 0, i32 14
  %73 = load %struct._TileManager*, %struct._TileManager** %undo_tiles71, align 8
  %x72 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %74 = load i32, i32* %x72, align 4
  %y73 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %75 = load i32, i32* %y73, align 4
  %call74 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %73, i32 %74, i32 %75, i32 1, i32 0)
  store %struct._Tile* %call74, %struct._Tile** %undo_tile, align 8
  %76 = load %struct._Tile*, %struct._Tile** %undo_tile, align 8
  %x75 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %77 = load i32, i32* %x75, align 4
  %y76 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %78 = load i32, i32* %y76, align 4
  %call77 = call i8* @tile_data_pointer(%struct._Tile* %76, i32 %77, i32 %78)
  store i8* %call77, i8** %s, align 8
  br label %if.end.79

if.else.78:                                       ; preds = %for.body
  store i32 0, i32* %release_tile, align 4
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %79 = load i8*, i8** %data, align 8
  store i8* %79, i8** %s, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.70
  %data80 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %80 = load i8*, i8** %data80, align 8
  store i8* %80, i8** %d, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %81 = load i32, i32* %w, align 4
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %82 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %81, %82
  store i32 %mul, i32* %pixelwidth, align 4
  %h81 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %83 = load i32, i32* %h81, align 4
  store i32 %83, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.79
  %84 = load i32, i32* %h, align 4
  %dec = add nsw i32 %84, -1
  store i32 %dec, i32* %h, align 4
  %tobool82 = icmp ne i32 %84, 0
  br i1 %tobool82, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %85 = load i8*, i8** %d, align 8
  %86 = load i8*, i8** %s, align 8
  %87 = load i32, i32* %pixelwidth, align 4
  %conv = sext i32 %87 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 %conv, i32 1, i1 false)
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %88 = load i32, i32* %rowstride, align 4
  %89 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %88 to i64
  %add.ptr = getelementptr inbounds i8, i8* %89, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %rowstride83 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 5
  %90 = load i32, i32* %rowstride83, align 4
  %91 = load i8*, i8** %d, align 8
  %idx.ext84 = sext i32 %90 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %91, i64 %idx.ext84
  store i8* %add.ptr85, i8** %d, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %92 = load i32, i32* %release_tile, align 4
  %tobool86 = icmp ne i32 %92, 0
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %while.end
  %93 = load %struct._Tile*, %struct._Tile** %undo_tile, align 8
  call void @tile_release(%struct._Tile* %93, i32 0)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %94 = load i8*, i8** %pr, align 8
  %95 = bitcast i8* %94 to %struct._PixelRegionIterator*
  %call89 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %95)
  %96 = bitcast %struct._PixelRegionIterator* %call89 to i8*
  store i8* %96, i8** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_buf90 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %97, i32 0, i32 17
  %98 = load %struct._TempBuf*, %struct._TempBuf** %orig_buf90, align 8
  store %struct._TempBuf* %98, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.42, %if.else.36, %if.else.9
  %99 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %99
}

declare %struct._TempBuf* @temp_buf_resize(%struct._TempBuf*, i32, i32, i32, i32, i32) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

declare %struct._Tile* @tile_manager_get_tile(%struct._TileManager*, i32, i32, i32, i32) #1

declare i32 @tile_is_valid(%struct._Tile*) #1

declare i8* @tile_data_pointer(%struct._Tile*, i32, i32) #1

declare void @tile_release(%struct._Tile*, i32) #1

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_paint_core_get_orig_proj(%struct._GimpPaintCore* %core, %struct._GimpPickable* %pickable, i32 %x, i32 %y, i32 %width, i32 %height) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %src_tiles = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %saved_tile = alloca %struct._Tile*, align 8
  %release_tile = alloca i32, align 4
  %h = alloca i32, align 4
  %pixelwidth = alloca i32, align 4
  %pickable_width = alloca i32, align 4
  %pickable_height = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  %pr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_paint_core_get_orig_proj, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = bitcast %struct._GimpPickable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_pickable_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_paint_core_get_orig_proj, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %26, i32 0, i32 15
  %27 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles, align 8
  %cmp40 = icmp ne %struct._TileManager* %27, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_paint_core_get_orig_proj, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %28 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %28, i32 0, i32 18
  %29 = load %struct._TempBuf*, %struct._TempBuf** %orig_proj_buf, align 8
  %30 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call45 = call i32 @gimp_pickable_get_bytes(%struct._GimpPickable* %30)
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* %y.addr, align 4
  %33 = load i32, i32* %width.addr, align 4
  %34 = load i32, i32* %height.addr, align 4
  %call46 = call %struct._TempBuf* @temp_buf_resize(%struct._TempBuf* %29, i32 %call45, i32 %31, i32 %32, i32 %33, i32 %34)
  %35 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf47 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %35, i32 0, i32 18
  store %struct._TempBuf* %call46, %struct._TempBuf** %orig_proj_buf47, align 8
  %36 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call48 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %36)
  store %struct._TileManager* %call48, %struct._TileManager** %src_tiles, align 8
  %37 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call49 = call i32 @tile_manager_width(%struct._TileManager* %37)
  store i32 %call49, i32* %pickable_width, align 4
  %38 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call50 = call i32 @tile_manager_height(%struct._TileManager* %38)
  store i32 %call50, i32* %pickable_height, align 4
  %39 = load i32, i32* %x.addr, align 4
  %40 = load i32, i32* %y.addr, align 4
  %41 = load i32, i32* %width.addr, align 4
  %42 = load i32, i32* %height.addr, align 4
  %43 = load i32, i32* %pickable_width, align 4
  %44 = load i32, i32* %pickable_height, align 4
  %call51 = call i32 @gimp_rectangle_intersect(i32 %39, i32 %40, i32 %41, i32 %42, i32 0, i32 0, i32 %43, i32 %44, i32* %x.addr, i32* %y.addr, i32* %width.addr, i32* %height.addr)
  %45 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %46 = load i32, i32* %x.addr, align 4
  %47 = load i32, i32* %y.addr, align 4
  %48 = load i32, i32* %width.addr, align 4
  %49 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 0)
  %50 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf52 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %50, i32 0, i32 18
  %51 = load %struct._TempBuf*, %struct._TempBuf** %orig_proj_buf52, align 8
  %52 = load i32, i32* %x.addr, align 4
  %53 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf53 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %53, i32 0, i32 18
  %54 = load %struct._TempBuf*, %struct._TempBuf** %orig_proj_buf53, align 8
  %x54 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %54, i32 0, i32 3
  %55 = load i32, i32* %x54, align 4
  %sub = sub nsw i32 %52, %55
  %56 = load i32, i32* %y.addr, align 4
  %57 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf55 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %57, i32 0, i32 18
  %58 = load %struct._TempBuf*, %struct._TempBuf** %orig_proj_buf55, align 8
  %y56 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %58, i32 0, i32 4
  %59 = load i32, i32* %y56, align 4
  %sub57 = sub nsw i32 %56, %59
  %60 = load i32, i32* %width.addr, align 4
  %61 = load i32, i32* %height.addr, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %51, i32 %sub, i32 %sub57, i32 %60, i32 %61)
  %call58 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 2, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR)
  %62 = bitcast %struct._PixelRegionIterator* %call58 to i8*
  store i8* %62, i8** %pr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.44
  %63 = load i8*, i8** %pr, align 8
  %cmp59 = icmp ne i8* %63, null
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles60 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %64, i32 0, i32 15
  %65 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles60, align 8
  %x61 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %66 = load i32, i32* %x61, align 4
  %y62 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %67 = load i32, i32* %y62, align 4
  %call63 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %65, i32 %66, i32 %67, i32 0, i32 0)
  store %struct._Tile* %call63, %struct._Tile** %saved_tile, align 8
  %68 = load %struct._Tile*, %struct._Tile** %saved_tile, align 8
  %call64 = call i32 @tile_is_valid(%struct._Tile* %68)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.else.74

if.then.66:                                       ; preds = %for.body
  store i32 1, i32* %release_tile, align 4
  %69 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles67 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %69, i32 0, i32 15
  %70 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles67, align 8
  %x68 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %71 = load i32, i32* %x68, align 4
  %y69 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %72 = load i32, i32* %y69, align 4
  %call70 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %70, i32 %71, i32 %72, i32 1, i32 0)
  store %struct._Tile* %call70, %struct._Tile** %saved_tile, align 8
  %73 = load %struct._Tile*, %struct._Tile** %saved_tile, align 8
  %x71 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %74 = load i32, i32* %x71, align 4
  %y72 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %75 = load i32, i32* %y72, align 4
  %call73 = call i8* @tile_data_pointer(%struct._Tile* %73, i32 %74, i32 %75)
  store i8* %call73, i8** %s, align 8
  br label %if.end.75

if.else.74:                                       ; preds = %for.body
  store i32 0, i32* %release_tile, align 4
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 0
  %76 = load i8*, i8** %data, align 8
  store i8* %76, i8** %s, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.74, %if.then.66
  %data76 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %77 = load i8*, i8** %data76, align 8
  store i8* %77, i8** %d, align 8
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %78 = load i32, i32* %w, align 4
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %79 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %78, %79
  store i32 %mul, i32* %pixelwidth, align 4
  %h77 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %80 = load i32, i32* %h77, align 4
  store i32 %80, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.75
  %81 = load i32, i32* %h, align 4
  %dec = add nsw i32 %81, -1
  store i32 %dec, i32* %h, align 4
  %tobool78 = icmp ne i32 %81, 0
  br i1 %tobool78, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %82 = load i8*, i8** %d, align 8
  %83 = load i8*, i8** %s, align 8
  %84 = load i32, i32* %pixelwidth, align 4
  %conv = sext i32 %84 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 %conv, i32 1, i1 false)
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 5
  %85 = load i32, i32* %rowstride, align 4
  %86 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %85 to i64
  %add.ptr = getelementptr inbounds i8, i8* %86, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %rowstride79 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 5
  %87 = load i32, i32* %rowstride79, align 4
  %88 = load i8*, i8** %d, align 8
  %idx.ext80 = sext i32 %87 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %88, i64 %idx.ext80
  store i8* %add.ptr81, i8** %d, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %89 = load i32, i32* %release_tile, align 4
  %tobool82 = icmp ne i32 %89, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %while.end
  %90 = load %struct._Tile*, %struct._Tile** %saved_tile, align 8
  call void @tile_release(%struct._Tile* %90, i32 0)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %91 = load i8*, i8** %pr, align 8
  %92 = bitcast i8* %91 to %struct._PixelRegionIterator*
  %call85 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %92)
  %93 = bitcast %struct._PixelRegionIterator* %call85 to i8*
  store i8* %93, i8** %pr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %94 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %orig_proj_buf86 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %94, i32 0, i32 18
  %95 = load %struct._TempBuf*, %struct._TempBuf** %orig_proj_buf86, align 8
  store %struct._TempBuf* %95, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.42, %if.else.36, %if.else.9
  %96 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %96
}

declare i32 @gimp_pickable_get_bytes(%struct._GimpPickable*) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_paste(%struct._GimpPaintCore* %core, %struct._PixelRegion* %paint_maskPR, %struct._GimpDrawable* %drawable, double %paint_opacity, double %image_opacity, i32 %paint_mode, i32 %mode) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %paint_maskPR.addr = alloca %struct._PixelRegion*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_opacity.addr = alloca double, align 8
  %image_opacity.addr = alloca double, align 8
  %paint_mode.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %alt = alloca %struct._TileManager*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %image = alloca %struct._GimpImage*, align 8
  %projection = alloca %struct._GimpProjection*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %x7 = alloca i32, align 4
  %y8 = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._PixelRegion* %paint_maskPR, %struct._PixelRegion** %paint_maskPR.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %paint_opacity, double* %paint_opacity.addr, align 8
  store double %image_opacity, double* %image_opacity.addr, align 8
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct._TileManager* null, %struct._TileManager** %alt, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %2, i32 0, i32 19
  %3 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %3, i32 0, i32 3
  %4 = load i32, i32* %x, align 4
  %5 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %5, i32 0, i32 19
  %6 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf1, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 4
  %7 = load i32, i32* %y, align 4
  %8 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %8, i32 0, i32 19
  %9 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf2, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 1
  %10 = load i32, i32* %width, align 4
  %11 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf3 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %11, i32 0, i32 19
  %12 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf3, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 2
  %13 = load i32, i32* %height, align 4
  call void @gimp_paint_core_validate_undo_tiles(%struct._GimpPaintCore* %0, %struct._GimpDrawable* %1, i32 %4, i32 %7, i32 %10, i32 %13)
  %14 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %use_saved_proj = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %14, i32 0, i32 13
  %15 = load i32, i32* %use_saved_proj, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %17 = bitcast %struct._GimpDrawable* %16 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call)
  %18 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %call5 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %18)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %19)
  store %struct._GimpProjection* %call6, %struct._GimpProjection** %projection, align 8
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call9)
  %22 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %22, i32* %off_x, i32* %off_y)
  %23 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf11 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %23, i32 0, i32 19
  %24 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf11, align 8
  %x12 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %24, i32 0, i32 3
  %25 = load i32, i32* %x12, align 4
  %26 = load i32, i32* %off_x, align 4
  %add = add nsw i32 %25, %26
  %27 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf13 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %27, i32 0, i32 19
  %28 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf13, align 8
  %y14 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %28, i32 0, i32 4
  %29 = load i32, i32* %y14, align 4
  %30 = load i32, i32* %off_y, align 4
  %add15 = add nsw i32 %29, %30
  %31 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf16 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %31, i32 0, i32 19
  %32 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf16, align 8
  %width17 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %32, i32 0, i32 1
  %33 = load i32, i32* %width17, align 4
  %34 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf18 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %34, i32 0, i32 19
  %35 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf18, align 8
  %height19 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %35, i32 0, i32 2
  %36 = load i32, i32* %height19, align 4
  %37 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %37, i32 0, i32 15
  %38 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles, align 8
  %call20 = call i32 @tile_manager_width(%struct._TileManager* %38)
  %39 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles21 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %39, i32 0, i32 15
  %40 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles21, align 8
  %call22 = call i32 @tile_manager_height(%struct._TileManager* %40)
  %call23 = call i32 @gimp_rectangle_intersect(i32 %add, i32 %add15, i32 %33, i32 %36, i32 0, i32 0, i32 %call20, i32 %call22, i32* %x7, i32* %y8, i32* %w, i32* %h)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then
  %41 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %42 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %43 = bitcast %struct._GimpProjection* %42 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_pickable_interface_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call26)
  %44 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpPickable*
  %45 = load i32, i32* %x7, align 4
  %46 = load i32, i32* %y8, align 4
  %47 = load i32, i32* %w, align 4
  %48 = load i32, i32* %h, align 4
  call void @gimp_paint_core_validate_saved_proj_tiles(%struct._GimpPaintCore* %41, %struct._GimpPickable* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %entry
  %49 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %49, 0
  br i1 %cmp, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.28
  %50 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %50, i32 0, i32 1
  %51 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %52 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %52, i32 0, i32 16
  %53 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles, align 8
  %cmp30 = icmp ne %struct._TileManager* %51, %53
  br i1 %cmp30, label %if.then.31, label %if.end.40

if.then.31:                                       ; preds = %if.then.29
  %54 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %55 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf32 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %55, i32 0, i32 19
  %56 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf32, align 8
  %x33 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %56, i32 0, i32 3
  %57 = load i32, i32* %x33, align 4
  %58 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf34 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %58, i32 0, i32 19
  %59 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf34, align 8
  %y35 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %59, i32 0, i32 4
  %60 = load i32, i32* %y35, align 4
  %61 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf36 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %61, i32 0, i32 19
  %62 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf36, align 8
  %width37 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %62, i32 0, i32 1
  %63 = load i32, i32* %width37, align 4
  %64 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf38 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %64, i32 0, i32 19
  %65 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf38, align 8
  %height39 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %65, i32 0, i32 2
  %66 = load i32, i32* %height39, align 4
  call void @gimp_paint_core_validate_canvas_tiles(%struct._GimpPaintCore* %54, i32 %57, i32 %60, i32 %63, i32 %66)
  %67 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %68 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %69 = load double, double* %paint_opacity.addr, align 8
  call void @paint_mask_to_canvas_tiles(%struct._GimpPaintCore* %67, %struct._PixelRegion* %68, double %69)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.31, %if.then.29
  %70 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  call void @canvas_tiles_to_canvas_buf(%struct._GimpPaintCore* %70)
  %71 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %71, i32 0, i32 14
  %72 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  store %struct._TileManager* %72, %struct._TileManager** %alt, align 8
  br label %if.end.41

if.else:                                          ; preds = %if.end.28
  %73 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %74 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %75 = load double, double* %paint_opacity.addr, align 8
  call void @paint_mask_to_canvas_buf(%struct._GimpPaintCore* %73, %struct._PixelRegion* %74, double %75)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.end.40
  %76 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf42 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %76, i32 0, i32 19
  %77 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf42, align 8
  %78 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf43 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %78, i32 0, i32 19
  %79 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf43, align 8
  %width44 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %79, i32 0, i32 1
  %80 = load i32, i32* %width44, align 4
  %81 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf45 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %81, i32 0, i32 19
  %82 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf45, align 8
  %height46 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %82, i32 0, i32 2
  %83 = load i32, i32* %height46, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %srcPR, %struct._TempBuf* %77, i32 0, i32 0, i32 %80, i32 %83)
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %85 = load double, double* %image_opacity.addr, align 8
  %86 = load i32, i32* %paint_mode.addr, align 4
  %87 = load %struct._TileManager*, %struct._TileManager** %alt, align 8
  %88 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf47 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %88, i32 0, i32 19
  %89 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf47, align 8
  %x48 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %89, i32 0, i32 3
  %90 = load i32, i32* %x48, align 4
  %91 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf49 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %91, i32 0, i32 19
  %92 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf49, align 8
  %y50 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %92, i32 0, i32 4
  %93 = load i32, i32* %y50, align 4
  call void @gimp_drawable_apply_region(%struct._GimpDrawable* %84, %struct._PixelRegion* %srcPR, i32 0, i8* null, double %85, i32 %86, %struct._TileManager* %87, %struct._PixelRegion* null, i32 %90, i32 %93)
  %94 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %94, i32 0, i32 9
  %95 = load i32, i32* %x1, align 4
  %96 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf51 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %96, i32 0, i32 19
  %97 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf51, align 8
  %x52 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %97, i32 0, i32 3
  %98 = load i32, i32* %x52, align 4
  %cmp53 = icmp slt i32 %95, %98
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  %99 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x154 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %99, i32 0, i32 9
  %100 = load i32, i32* %x154, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  %101 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf55 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %101, i32 0, i32 19
  %102 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf55, align 8
  %x56 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %102, i32 0, i32 3
  %103 = load i32, i32* %x56, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %100, %cond.true ], [ %103, %cond.false ]
  %104 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x157 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %104, i32 0, i32 9
  store i32 %cond, i32* %x157, align 4
  %105 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %105, i32 0, i32 10
  %106 = load i32, i32* %y1, align 4
  %107 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf58 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %107, i32 0, i32 19
  %108 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf58, align 8
  %y59 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %108, i32 0, i32 4
  %109 = load i32, i32* %y59, align 4
  %cmp60 = icmp slt i32 %106, %109
  br i1 %cmp60, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.end
  %110 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y162 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %110, i32 0, i32 10
  %111 = load i32, i32* %y162, align 4
  br label %cond.end.66

cond.false.63:                                    ; preds = %cond.end
  %112 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf64 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %112, i32 0, i32 19
  %113 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf64, align 8
  %y65 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %113, i32 0, i32 4
  %114 = load i32, i32* %y65, align 4
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.63, %cond.true.61
  %cond67 = phi i32 [ %111, %cond.true.61 ], [ %114, %cond.false.63 ]
  %115 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y168 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %115, i32 0, i32 10
  store i32 %cond67, i32* %y168, align 4
  %116 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %116, i32 0, i32 11
  %117 = load i32, i32* %x2, align 4
  %118 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf69 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %118, i32 0, i32 19
  %119 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf69, align 8
  %x70 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %119, i32 0, i32 3
  %120 = load i32, i32* %x70, align 4
  %121 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf71 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %121, i32 0, i32 19
  %122 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf71, align 8
  %width72 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %122, i32 0, i32 1
  %123 = load i32, i32* %width72, align 4
  %add73 = add nsw i32 %120, %123
  %cmp74 = icmp sgt i32 %117, %add73
  br i1 %cmp74, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %cond.end.66
  %124 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x276 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %124, i32 0, i32 11
  %125 = load i32, i32* %x276, align 4
  br label %cond.end.83

cond.false.77:                                    ; preds = %cond.end.66
  %126 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf78 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %126, i32 0, i32 19
  %127 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf78, align 8
  %x79 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %127, i32 0, i32 3
  %128 = load i32, i32* %x79, align 4
  %129 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf80 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %129, i32 0, i32 19
  %130 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf80, align 8
  %width81 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %130, i32 0, i32 1
  %131 = load i32, i32* %width81, align 4
  %add82 = add nsw i32 %128, %131
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.77, %cond.true.75
  %cond84 = phi i32 [ %125, %cond.true.75 ], [ %add82, %cond.false.77 ]
  %132 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x285 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %132, i32 0, i32 11
  store i32 %cond84, i32* %x285, align 4
  %133 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %133, i32 0, i32 12
  %134 = load i32, i32* %y2, align 4
  %135 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf86 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %135, i32 0, i32 19
  %136 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf86, align 8
  %y87 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %136, i32 0, i32 4
  %137 = load i32, i32* %y87, align 4
  %138 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf88 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %138, i32 0, i32 19
  %139 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf88, align 8
  %height89 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %139, i32 0, i32 2
  %140 = load i32, i32* %height89, align 4
  %add90 = add nsw i32 %137, %140
  %cmp91 = icmp sgt i32 %134, %add90
  br i1 %cmp91, label %cond.true.92, label %cond.false.94

cond.true.92:                                     ; preds = %cond.end.83
  %141 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y293 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %141, i32 0, i32 12
  %142 = load i32, i32* %y293, align 4
  br label %cond.end.100

cond.false.94:                                    ; preds = %cond.end.83
  %143 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf95 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %143, i32 0, i32 19
  %144 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf95, align 8
  %y96 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %144, i32 0, i32 4
  %145 = load i32, i32* %y96, align 4
  %146 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf97 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %146, i32 0, i32 19
  %147 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf97, align 8
  %height98 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %147, i32 0, i32 2
  %148 = load i32, i32* %height98, align 4
  %add99 = add nsw i32 %145, %148
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.94, %cond.true.92
  %cond101 = phi i32 [ %142, %cond.true.92 ], [ %add99, %cond.false.94 ]
  %149 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y2102 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %149, i32 0, i32 12
  store i32 %cond101, i32* %y2102, align 4
  %150 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %151 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf103 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %151, i32 0, i32 19
  %152 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf103, align 8
  %x104 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %152, i32 0, i32 3
  %153 = load i32, i32* %x104, align 4
  %154 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf105 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %154, i32 0, i32 19
  %155 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf105, align 8
  %y106 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %155, i32 0, i32 4
  %156 = load i32, i32* %y106, align 4
  %157 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf107 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %157, i32 0, i32 19
  %158 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf107, align 8
  %width108 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %158, i32 0, i32 1
  %159 = load i32, i32* %width108, align 4
  %160 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf109 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %160, i32 0, i32 19
  %161 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf109, align 8
  %height110 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %161, i32 0, i32 2
  %162 = load i32, i32* %height110, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %150, i32 %153, i32 %156, i32 %159, i32 %162)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_validate_undo_tiles(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %dest_tile = alloca %struct._Tile*, align 8
  %src_tile = alloca %struct._Tile*, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_paint_core_validate_undo_tiles, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end.66

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_paint_core_validate_undo_tiles, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %for.end.66

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %26, i32 0, i32 14
  %27 = load %struct._TileManager*, %struct._TileManager** %undo_tiles, align 8
  %cmp40 = icmp ne %struct._TileManager* %27, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_paint_core_validate_undo_tiles, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  br label %for.end.66

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %28 = load i32, i32* %y.addr, align 4
  store i32 %28, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %do.end.44
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %30, %31
  %cmp45 = icmp slt i32 %29, %add
  br i1 %cmp45, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %x.addr, align 4
  store i32 %32, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %x.addr, align 4
  %35 = load i32, i32* %w.addr, align 4
  %add47 = add nsw i32 %34, %35
  %cmp48 = icmp slt i32 %33, %add47
  br i1 %cmp48, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %36 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles51 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %36, i32 0, i32 14
  %37 = load %struct._TileManager*, %struct._TileManager** %undo_tiles51, align 8
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %i, align 4
  %call52 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %37, i32 %38, i32 %39, i32 0, i32 0)
  store %struct._Tile* %call52, %struct._Tile** %dest_tile, align 8
  %40 = load %struct._Tile*, %struct._Tile** %dest_tile, align 8
  %call53 = call i32 @tile_is_valid(%struct._Tile* %40)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.60, label %if.then.55

if.then.55:                                       ; preds = %for.body.49
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call57 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %41)
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %i, align 4
  %call58 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %call57, i32 %42, i32 %43, i32 1, i32 0)
  store %struct._Tile* %call58, %struct._Tile** %src_tile, align 8
  %44 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %undo_tiles59 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %44, i32 0, i32 14
  %45 = load %struct._TileManager*, %struct._TileManager** %undo_tiles59, align 8
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %i, align 4
  %48 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  call void @tile_manager_map_tile(%struct._TileManager* %45, i32 %46, i32 %47, %struct._Tile* %48)
  %49 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  call void @tile_release(%struct._Tile* %49, i32 0)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %for.body.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %50 = load i32, i32* %j, align 4
  %rem = srem i32 %50, 64
  %sub = sub nsw i32 64, %rem
  %51 = load i32, i32* %j, align 4
  %add61 = add nsw i32 %51, %sub
  store i32 %add61, i32* %j, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end
  %52 = load i32, i32* %i, align 4
  %rem63 = srem i32 %52, 64
  %sub64 = sub nsw i32 64, %rem63
  %53 = load i32, i32* %i, align 4
  %add65 = add nsw i32 %53, %sub64
  store i32 %add65, i32* %i, align 4
  br label %for.cond

for.end.66:                                       ; preds = %if.else.9, %if.else.36, %if.else.42, %for.cond
  ret void
}

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_validate_saved_proj_tiles(%struct._GimpPaintCore* %core, %struct._GimpPickable* %pickable, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %pickable.addr = alloca %struct._GimpPickable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %dest_tile = alloca %struct._Tile*, align 8
  %src_tile = alloca %struct._Tile*, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpPickable* %pickable, %struct._GimpPickable** %pickable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_paint_core_validate_saved_proj_tiles, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end.66

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %14 = bitcast %struct._GimpPickable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_pickable_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_paint_core_validate_saved_proj_tiles, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0))
  br label %for.end.66

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %26, i32 0, i32 15
  %27 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles, align 8
  %cmp40 = icmp ne %struct._TileManager* %27, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_paint_core_validate_saved_proj_tiles, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0))
  br label %for.end.66

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %28 = load i32, i32* %y.addr, align 4
  store i32 %28, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.62, %do.end.44
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %30, %31
  %cmp45 = icmp slt i32 %29, %add
  br i1 %cmp45, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %x.addr, align 4
  store i32 %32, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %for.body
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %x.addr, align 4
  %35 = load i32, i32* %w.addr, align 4
  %add47 = add nsw i32 %34, %35
  %cmp48 = icmp slt i32 %33, %add47
  br i1 %cmp48, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %36 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles51 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %36, i32 0, i32 15
  %37 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles51, align 8
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %i, align 4
  %call52 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %37, i32 %38, i32 %39, i32 0, i32 0)
  store %struct._Tile* %call52, %struct._Tile** %dest_tile, align 8
  %40 = load %struct._Tile*, %struct._Tile** %dest_tile, align 8
  %call53 = call i32 @tile_is_valid(%struct._Tile* %40)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.60, label %if.then.55

if.then.55:                                       ; preds = %for.body.49
  %41 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable.addr, align 8
  %call57 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %41)
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %i, align 4
  %call58 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %call57, i32 %42, i32 %43, i32 1, i32 0)
  store %struct._Tile* %call58, %struct._Tile** %src_tile, align 8
  %44 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %saved_proj_tiles59 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %44, i32 0, i32 15
  %45 = load %struct._TileManager*, %struct._TileManager** %saved_proj_tiles59, align 8
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %i, align 4
  %48 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  call void @tile_manager_map_tile(%struct._TileManager* %45, i32 %46, i32 %47, %struct._Tile* %48)
  %49 = load %struct._Tile*, %struct._Tile** %src_tile, align 8
  call void @tile_release(%struct._Tile* %49, i32 0)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %for.body.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %50 = load i32, i32* %j, align 4
  %rem = srem i32 %50, 64
  %sub = sub nsw i32 64, %rem
  %51 = load i32, i32* %j, align 4
  %add61 = add nsw i32 %51, %sub
  store i32 %add61, i32* %j, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end
  %52 = load i32, i32* %i, align 4
  %rem63 = srem i32 %52, 64
  %sub64 = sub nsw i32 64, %rem63
  %53 = load i32, i32* %i, align 4
  %add65 = add nsw i32 %53, %sub64
  store i32 %add65, i32* %i, align 4
  br label %for.cond

for.end.66:                                       ; preds = %if.else.9, %if.else.36, %if.else.42, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_validate_canvas_tiles(%struct._GimpPaintCore* %core, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tile = alloca %struct._Tile*, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_core_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_paint_core_validate_canvas_tiles, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %for.end.38

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %13, i32 0, i32 16
  %14 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles, align 8
  %cmp12 = icmp ne %struct._TileManager* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_paint_core_validate_canvas_tiles, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0))
  br label %for.end.38

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load i32, i32* %y.addr, align 4
  store i32 %15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %do.end.16
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load i32, i32* %h.addr, align 4
  %add = add nsw i32 %17, %18
  %cmp17 = icmp slt i32 %16, %add
  br i1 %cmp17, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %x.addr, align 4
  store i32 %19, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %x.addr, align 4
  %22 = load i32, i32* %w.addr, align 4
  %add19 = add nsw i32 %21, %22
  %cmp20 = icmp slt i32 %20, %add19
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %23 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles23 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %23, i32 0, i32 16
  %24 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles23, align 8
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %i, align 4
  %call24 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %24, i32 %25, i32 %26, i32 0, i32 0)
  store %struct._Tile* %call24, %struct._Tile** %tile, align 8
  %27 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call25 = call i32 @tile_is_valid(%struct._Tile* %27)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.32, label %if.then.27

if.then.27:                                       ; preds = %for.body.21
  %28 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles28 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %28, i32 0, i32 16
  %29 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles28, align 8
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %i, align 4
  %call29 = call %struct._Tile* @tile_manager_get_tile(%struct._TileManager* %29, i32 %30, i32 %31, i32 1, i32 1)
  store %struct._Tile* %call29, %struct._Tile** %tile, align 8
  %32 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call30 = call i8* @tile_data_pointer(%struct._Tile* %32, i32 0, i32 0)
  %33 = load %struct._Tile*, %struct._Tile** %tile, align 8
  %call31 = call i32 @tile_size(%struct._Tile* %33)
  %conv = sext i32 %call31 to i64
  call void @llvm.memset.p0i8.i64(i8* %call30, i8 0, i64 %conv, i32 1, i1 false)
  %34 = load %struct._Tile*, %struct._Tile** %tile, align 8
  call void @tile_release(%struct._Tile* %34, i32 1)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %for.body.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %35 = load i32, i32* %j, align 4
  %rem = srem i32 %35, 64
  %sub = sub nsw i32 64, %rem
  %36 = load i32, i32* %j, align 4
  %add33 = add nsw i32 %36, %sub
  store i32 %add33, i32* %j, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %37 = load i32, i32* %i, align 4
  %rem35 = srem i32 %37, 64
  %sub36 = sub nsw i32 64, %rem35
  %38 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %38, %sub36
  store i32 %add37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %if.else.9, %if.else.14, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @paint_mask_to_canvas_tiles(%struct._GimpPaintCore* %core, %struct._PixelRegion* %paint_maskPR, double %paint_opacity) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %paint_maskPR.addr = alloca %struct._PixelRegion*, align 8
  %paint_opacity.addr = alloca double, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._PixelRegion* %paint_maskPR, %struct._PixelRegion** %paint_maskPR.addr, align 8
  store double %paint_opacity, double* %paint_opacity.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %0, i32 0, i32 16
  %1 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles, align 8
  %2 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %2, i32 0, i32 19
  %3 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %3, i32 0, i32 3
  %4 = load i32, i32* %x, align 4
  %5 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %5, i32 0, i32 19
  %6 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf1, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 4
  %7 = load i32, i32* %y, align 4
  %8 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %8, i32 0, i32 19
  %9 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf2, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 1
  %10 = load i32, i32* %width, align 4
  %11 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf3 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %11, i32 0, i32 19
  %12 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf3, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 2
  %13 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %1, i32 %4, i32 %7, i32 %10, i32 %13, i32 1)
  %14 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %15 = load double, double* %paint_opacity.addr, align 8
  %mul = fmul double %15, 2.559990e+02
  %conv = fptoui double %mul to i32
  %16 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %17 = bitcast %struct._GimpPaintCore* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_airbrush_get_type() #7
  store i64 %call, i64* %__t, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %24 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %23, %24
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %26 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %27 = load i32, i32* %__r, align 4
  store i32 %27, i32* %tmp
  %28 = load i32, i32* %tmp
  call void @combine_mask_and_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %14, i32 %conv, i32 %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @canvas_tiles_to_canvas_buf(%struct._GimpPaintCore* %core) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %0, i32 0, i32 19
  %1 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %2 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %2, i32 0, i32 19
  %3 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf1, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %5 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %5, i32 0, i32 19
  %6 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf2, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %srcPR, %struct._TempBuf* %1, i32 0, i32 0, i32 %4, i32 %7)
  %8 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %8, i32 0, i32 16
  %9 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles, align 8
  %10 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf3 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %10, i32 0, i32 19
  %11 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf3, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 3
  %12 = load i32, i32* %x, align 4
  %13 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf4 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %13, i32 0, i32 19
  %14 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf4, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 4
  %15 = load i32, i32* %y, align 4
  %16 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf5 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %16, i32 0, i32 19
  %17 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf5, align 8
  %width6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 1
  %18 = load i32, i32* %width6, align 4
  %19 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf7 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %19, i32 0, i32 19
  %20 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf7, align 8
  %height8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 2
  %21 = load i32, i32* %height8, align 4
  call void @pixel_region_init(%struct._PixelRegion* %maskPR, %struct._TileManager* %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 0)
  call void @apply_mask_to_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %maskPR, i32 255)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @paint_mask_to_canvas_buf(%struct._GimpPaintCore* %core, %struct._PixelRegion* %paint_maskPR, double %paint_opacity) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %paint_maskPR.addr = alloca %struct._PixelRegion*, align 8
  %paint_opacity.addr = alloca double, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._PixelRegion* %paint_maskPR, %struct._PixelRegion** %paint_maskPR.addr, align 8
  store double %paint_opacity, double* %paint_opacity.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %0, i32 0, i32 19
  %1 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %2 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %2, i32 0, i32 19
  %3 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf1, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %5 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %5, i32 0, i32 19
  %6 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf2, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %srcPR, %struct._TempBuf* %1, i32 0, i32 0, i32 %4, i32 %7)
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %9 = load double, double* %paint_opacity.addr, align 8
  %mul = fmul double %9, 2.559990e+02
  %conv = fptoui double %mul to i32
  call void @apply_mask_to_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %8, i32 %conv)
  ret void
}

declare void @gimp_drawable_apply_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, i32, %struct._TileManager*, %struct._PixelRegion*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_replace(%struct._GimpPaintCore* %core, %struct._PixelRegion* %paint_maskPR, %struct._GimpDrawable* %drawable, double %paint_opacity, double %image_opacity, i32 %mode) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %paint_maskPR.addr = alloca %struct._PixelRegion*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_opacity.addr = alloca double, align 8
  %image_opacity.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %srcPR = alloca %struct._PixelRegion, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._PixelRegion* %paint_maskPR, %struct._PixelRegion** %paint_maskPR.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store double %paint_opacity, double* %paint_opacity.addr, align 8
  store double %image_opacity, double* %image_opacity.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = load double, double* %paint_opacity.addr, align 8
  %5 = load double, double* %image_opacity.addr, align 8
  %6 = load i32, i32* %mode.addr, align 4
  call void @gimp_paint_core_paste(%struct._GimpPaintCore* %1, %struct._PixelRegion* %2, %struct._GimpDrawable* %3, double %4, double %5, i32 0, i32 %6)
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %9 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %9, i32 0, i32 19
  %10 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 3
  %11 = load i32, i32* %x, align 4
  %12 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %12, i32 0, i32 19
  %13 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf1, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %13, i32 0, i32 4
  %14 = load i32, i32* %y, align 4
  %15 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %15, i32 0, i32 19
  %16 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf2, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %16, i32 0, i32 1
  %17 = load i32, i32* %width, align 4
  %18 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf3 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %18, i32 0, i32 19
  %19 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf3, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %19, i32 0, i32 2
  %20 = load i32, i32* %height, align 4
  call void @gimp_paint_core_validate_undo_tiles(%struct._GimpPaintCore* %7, %struct._GimpDrawable* %8, i32 %11, i32 %14, i32 %17, i32 %20)
  %21 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %22 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %tiles = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %22, i32 0, i32 1
  %23 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %24 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %24, i32 0, i32 16
  %25 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles, align 8
  %cmp5 = icmp ne %struct._TileManager* %23, %25
  br i1 %cmp5, label %if.then.6, label %if.end.24

if.then.6:                                        ; preds = %if.then.4
  %26 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %27 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf7 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %27, i32 0, i32 19
  %28 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf7, align 8
  %x8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %28, i32 0, i32 3
  %29 = load i32, i32* %x8, align 4
  %30 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf9 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %30, i32 0, i32 19
  %31 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf9, align 8
  %y10 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %31, i32 0, i32 4
  %32 = load i32, i32* %y10, align 4
  %33 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf11 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %33, i32 0, i32 19
  %34 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf11, align 8
  %width12 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %34, i32 0, i32 1
  %35 = load i32, i32* %width12, align 4
  %36 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf13 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %36, i32 0, i32 19
  %37 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf13, align 8
  %height14 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %37, i32 0, i32 2
  %38 = load i32, i32* %height14, align 4
  call void @gimp_paint_core_validate_canvas_tiles(%struct._GimpPaintCore* %26, i32 %29, i32 %32, i32 %35, i32 %38)
  %39 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %40 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %41 = load double, double* %paint_opacity.addr, align 8
  call void @paint_mask_to_canvas_tiles(%struct._GimpPaintCore* %39, %struct._PixelRegion* %40, double %41)
  %42 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %43 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_tiles15 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %43, i32 0, i32 16
  %44 = load %struct._TileManager*, %struct._TileManager** %canvas_tiles15, align 8
  %45 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf16 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %45, i32 0, i32 19
  %46 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf16, align 8
  %x17 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %46, i32 0, i32 3
  %47 = load i32, i32* %x17, align 4
  %48 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf18 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %48, i32 0, i32 19
  %49 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf18, align 8
  %y19 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %49, i32 0, i32 4
  %50 = load i32, i32* %y19, align 4
  %51 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf20 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %51, i32 0, i32 19
  %52 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf20, align 8
  %width21 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %52, i32 0, i32 1
  %53 = load i32, i32* %width21, align 4
  %54 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf22 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %54, i32 0, i32 19
  %55 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf22, align 8
  %height23 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %55, i32 0, i32 2
  %56 = load i32, i32* %height23, align 4
  call void @pixel_region_init(%struct._PixelRegion* %42, %struct._TileManager* %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.6, %if.then.4
  br label %if.end.25

if.else:                                          ; preds = %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.end.24
  %57 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf26 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %57, i32 0, i32 19
  %58 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf26, align 8
  %59 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf27 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %59, i32 0, i32 19
  %60 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf27, align 8
  %width28 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %60, i32 0, i32 1
  %61 = load i32, i32* %width28, align 4
  %62 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf29 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %62, i32 0, i32 19
  %63 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf29, align 8
  %height30 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %63, i32 0, i32 2
  %64 = load i32, i32* %height30, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %srcPR, %struct._TempBuf* %58, i32 0, i32 0, i32 %61, i32 %64)
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %66 = load double, double* %image_opacity.addr, align 8
  %67 = load %struct._PixelRegion*, %struct._PixelRegion** %paint_maskPR.addr, align 8
  %68 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf31 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %68, i32 0, i32 19
  %69 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf31, align 8
  %x32 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %69, i32 0, i32 3
  %70 = load i32, i32* %x32, align 4
  %71 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf33 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %71, i32 0, i32 19
  %72 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf33, align 8
  %y34 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %72, i32 0, i32 4
  %73 = load i32, i32* %y34, align 4
  call void @gimp_drawable_replace_region(%struct._GimpDrawable* %65, %struct._PixelRegion* %srcPR, i32 0, i8* null, double %66, %struct._PixelRegion* %67, i32 %70, i32 %73)
  %74 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %74, i32 0, i32 9
  %75 = load i32, i32* %x1, align 4
  %76 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf35 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %76, i32 0, i32 19
  %77 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf35, align 8
  %x36 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %77, i32 0, i32 3
  %78 = load i32, i32* %x36, align 4
  %cmp37 = icmp slt i32 %75, %78
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.25
  %79 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x138 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %79, i32 0, i32 9
  %80 = load i32, i32* %x138, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.25
  %81 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf39 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %81, i32 0, i32 19
  %82 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf39, align 8
  %x40 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %82, i32 0, i32 3
  %83 = load i32, i32* %x40, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %80, %cond.true ], [ %83, %cond.false ]
  %84 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x141 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %84, i32 0, i32 9
  store i32 %cond, i32* %x141, align 4
  %85 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %85, i32 0, i32 10
  %86 = load i32, i32* %y1, align 4
  %87 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf42 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %87, i32 0, i32 19
  %88 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf42, align 8
  %y43 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %88, i32 0, i32 4
  %89 = load i32, i32* %y43, align 4
  %cmp44 = icmp slt i32 %86, %89
  br i1 %cmp44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %cond.end
  %90 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y146 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %90, i32 0, i32 10
  %91 = load i32, i32* %y146, align 4
  br label %cond.end.50

cond.false.47:                                    ; preds = %cond.end
  %92 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf48 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %92, i32 0, i32 19
  %93 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf48, align 8
  %y49 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %93, i32 0, i32 4
  %94 = load i32, i32* %y49, align 4
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.47, %cond.true.45
  %cond51 = phi i32 [ %91, %cond.true.45 ], [ %94, %cond.false.47 ]
  %95 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y152 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %95, i32 0, i32 10
  store i32 %cond51, i32* %y152, align 4
  %96 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %96, i32 0, i32 11
  %97 = load i32, i32* %x2, align 4
  %98 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf53 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %98, i32 0, i32 19
  %99 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf53, align 8
  %x54 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %99, i32 0, i32 3
  %100 = load i32, i32* %x54, align 4
  %101 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf55 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %101, i32 0, i32 19
  %102 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf55, align 8
  %width56 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %102, i32 0, i32 1
  %103 = load i32, i32* %width56, align 4
  %add = add nsw i32 %100, %103
  %cmp57 = icmp sgt i32 %97, %add
  br i1 %cmp57, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %cond.end.50
  %104 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x259 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %104, i32 0, i32 11
  %105 = load i32, i32* %x259, align 4
  br label %cond.end.66

cond.false.60:                                    ; preds = %cond.end.50
  %106 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf61 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %106, i32 0, i32 19
  %107 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf61, align 8
  %x62 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %107, i32 0, i32 3
  %108 = load i32, i32* %x62, align 4
  %109 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf63 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %109, i32 0, i32 19
  %110 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf63, align 8
  %width64 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %110, i32 0, i32 1
  %111 = load i32, i32* %width64, align 4
  %add65 = add nsw i32 %108, %111
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.60, %cond.true.58
  %cond67 = phi i32 [ %105, %cond.true.58 ], [ %add65, %cond.false.60 ]
  %112 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %x268 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %112, i32 0, i32 11
  store i32 %cond67, i32* %x268, align 4
  %113 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %113, i32 0, i32 12
  %114 = load i32, i32* %y2, align 4
  %115 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf69 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %115, i32 0, i32 19
  %116 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf69, align 8
  %y70 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %116, i32 0, i32 4
  %117 = load i32, i32* %y70, align 4
  %118 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf71 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %118, i32 0, i32 19
  %119 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf71, align 8
  %height72 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %119, i32 0, i32 2
  %120 = load i32, i32* %height72, align 4
  %add73 = add nsw i32 %117, %120
  %cmp74 = icmp sgt i32 %114, %add73
  br i1 %cmp74, label %cond.true.75, label %cond.false.77

cond.true.75:                                     ; preds = %cond.end.66
  %121 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y276 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %121, i32 0, i32 12
  %122 = load i32, i32* %y276, align 4
  br label %cond.end.83

cond.false.77:                                    ; preds = %cond.end.66
  %123 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf78 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %123, i32 0, i32 19
  %124 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf78, align 8
  %y79 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %124, i32 0, i32 4
  %125 = load i32, i32* %y79, align 4
  %126 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf80 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %126, i32 0, i32 19
  %127 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf80, align 8
  %height81 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %127, i32 0, i32 2
  %128 = load i32, i32* %height81, align 4
  %add82 = add nsw i32 %125, %128
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.77, %cond.true.75
  %cond84 = phi i32 [ %122, %cond.true.75 ], [ %add82, %cond.false.77 ]
  %129 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %y285 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %129, i32 0, i32 12
  store i32 %cond84, i32* %y285, align 4
  %130 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %131 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf86 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %131, i32 0, i32 19
  %132 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf86, align 8
  %x87 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %132, i32 0, i32 3
  %133 = load i32, i32* %x87, align 4
  %134 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf88 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %134, i32 0, i32 19
  %135 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf88, align 8
  %y89 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %135, i32 0, i32 4
  %136 = load i32, i32* %y89, align 4
  %137 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf90 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %137, i32 0, i32 19
  %138 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf90, align 8
  %width91 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %138, i32 0, i32 1
  %139 = load i32, i32* %width91, align 4
  %140 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %canvas_buf92 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %140, i32 0, i32 19
  %141 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf92, align 8
  %height93 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %141, i32 0, i32 2
  %142 = load i32, i32* %height93, align 4
  call void @gimp_drawable_update(%struct._GimpDrawable* %130, i32 %133, i32 %136, i32 %139, i32 %142)
  br label %return

return:                                           ; preds = %cond.end.83, %if.then
  ret void
}

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare void @gimp_drawable_replace_region(%struct._GimpDrawable*, %struct._PixelRegion*, i32, i8*, double, %struct._PixelRegion*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_core_smooth_coords(%struct._GimpPaintCore* %core, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %smoothing_options = alloca %struct._GimpSmoothingOptions*, align 8
  %history = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %min_index = alloca i32, align 4
  %gaussian_weight = alloca double, align 8
  %gaussian_weight2 = alloca double, align 8
  %velocity_sum = alloca double, align 8
  %scale_sum = alloca double, align 8
  %rate = alloca double, align 8
  %next_coords = alloca %struct._GimpCoords*, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %smoothing_options1 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %0, i32 0, i32 12
  %1 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options1, align 8
  store %struct._GimpSmoothingOptions* %1, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %2 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %stroke_buffer = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %2, i32 0, i32 20
  %3 = load %struct._GArray*, %struct._GArray** %stroke_buffer, align 8
  store %struct._GArray* %3, %struct._GArray** %history, align 8
  %4 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %stroke_buffer2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %4, i32 0, i32 20
  %5 = load %struct._GArray*, %struct._GArray** %stroke_buffer2, align 8
  %cmp = icmp eq %struct._GArray* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.50

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %use_smoothing = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %6, i32 0, i32 0
  %7 = load i32, i32* %use_smoothing, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_quality = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %8, i32 0, i32 1
  %9 = load i32, i32* %smoothing_quality, align 4
  %cmp3 = icmp sgt i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.50

if.then.4:                                        ; preds = %land.lhs.true
  store double 0.000000e+00, double* %gaussian_weight, align 8
  %10 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_factor = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %10, i32 0, i32 2
  %11 = load double, double* %smoothing_factor, align 8
  %12 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_factor5 = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %12, i32 0, i32 2
  %13 = load double, double* %smoothing_factor5, align 8
  %mul = fmul double %11, %13
  store double %mul, double* %gaussian_weight2, align 8
  store double 0.000000e+00, double* %velocity_sum, align 8
  store double 0.000000e+00, double* %scale_sum, align 8
  %14 = load %struct._GArray*, %struct._GArray** %history, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %16 = bitcast %struct._GimpCoords* %15 to i8*
  %call = call %struct._GArray* @g_array_append_vals(%struct._GArray* %14, i8* %16, i32 1)
  %17 = load %struct._GArray*, %struct._GArray** %history, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %17, i32 0, i32 1
  %18 = load i32, i32* %len, align 4
  %cmp6 = icmp ult i32 %18, 2
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  br label %if.end.50

if.end.8:                                         ; preds = %if.then.4
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %20, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8
  %21 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_quality9 = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %21, i32 0, i32 1
  %22 = load i32, i32* %smoothing_quality9, align 4
  %23 = load %struct._GArray*, %struct._GArray** %history, align 8
  %len10 = getelementptr inbounds %struct._GArray, %struct._GArray* %23, i32 0, i32 1
  %24 = load i32, i32* %len10, align 4
  %cmp11 = icmp ult i32 %22, %24
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %25 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_quality12 = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %25, i32 0, i32 1
  %26 = load i32, i32* %smoothing_quality12, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  %27 = load %struct._GArray*, %struct._GArray** %history, align 8
  %len13 = getelementptr inbounds %struct._GArray, %struct._GArray* %27, i32 0, i32 1
  %28 = load i32, i32* %len13, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %28, %cond.false ]
  store i32 %cond, i32* %length, align 4
  %29 = load %struct._GArray*, %struct._GArray** %history, align 8
  %len14 = getelementptr inbounds %struct._GArray, %struct._GArray* %29, i32 0, i32 1
  %30 = load i32, i32* %len14, align 4
  %31 = load i32, i32* %length, align 4
  %sub = sub i32 %30, %31
  store i32 %sub, i32* %min_index, align 4
  %32 = load double, double* %gaussian_weight2, align 8
  %cmp15 = fcmp une double %32, 0.000000e+00
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %cond.end
  %call17 = call double @sqrt(double 0x401921FB54442D18) #5
  %33 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_factor18 = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %33, i32 0, i32 2
  %34 = load double, double* %smoothing_factor18, align 8
  %mul19 = fmul double %call17, %34
  %div = fdiv double 1.000000e+00, %mul19
  store double %div, double* %gaussian_weight, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %cond.end
  %35 = load %struct._GArray*, %struct._GArray** %history, align 8
  %len21 = getelementptr inbounds %struct._GArray, %struct._GArray* %35, i32 0, i32 1
  %36 = load i32, i32* %len21, align 4
  %sub22 = sub i32 %36, 1
  store i32 %sub22, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %min_index, align 4
  %cmp23 = icmp sge i32 %37, %38
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %rate, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct._GArray*, %struct._GArray** %history, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %40, i32 0, i32 0
  %41 = load i8*, i8** %data, align 8
  %42 = bitcast i8* %41 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %42, i64 %idxprom
  store %struct._GimpCoords* %arrayidx, %struct._GimpCoords** %next_coords, align 8
  %43 = load double, double* %gaussian_weight2, align 8
  %cmp24 = fcmp une double %43, 0.000000e+00
  br i1 %cmp24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %for.body
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %next_coords, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %44, i32 0, i32 6
  %45 = load double, double* %velocity, align 8
  %mul26 = fmul double %45, 1.000000e+02
  %46 = load double, double* %velocity_sum, align 8
  %add = fadd double %46, %mul26
  store double %add, double* %velocity_sum, align 8
  %47 = load double, double* %gaussian_weight, align 8
  %48 = load double, double* %velocity_sum, align 8
  %sub27 = fsub double -0.000000e+00, %48
  %49 = load double, double* %velocity_sum, align 8
  %mul28 = fmul double %sub27, %49
  %50 = load double, double* %gaussian_weight2, align 8
  %mul29 = fmul double 2.000000e+00, %50
  %div30 = fdiv double %mul28, %mul29
  %call31 = call double @exp(double %div30) #5
  %mul32 = fmul double %47, %call31
  store double %mul32, double* %rate, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.25, %for.body
  %51 = load double, double* %rate, align 8
  %52 = load double, double* %scale_sum, align 8
  %add34 = fadd double %52, %51
  store double %add34, double* %scale_sum, align 8
  %53 = load double, double* %rate, align 8
  %54 = load %struct._GimpCoords*, %struct._GimpCoords** %next_coords, align 8
  %x35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %54, i32 0, i32 0
  %55 = load double, double* %x35, align 8
  %mul36 = fmul double %53, %55
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x37 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 0
  %57 = load double, double* %x37, align 8
  %add38 = fadd double %57, %mul36
  store double %add38, double* %x37, align 8
  %58 = load double, double* %rate, align 8
  %59 = load %struct._GimpCoords*, %struct._GimpCoords** %next_coords, align 8
  %y39 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %59, i32 0, i32 1
  %60 = load double, double* %y39, align 8
  %mul40 = fmul double %58, %60
  %61 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y41 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %61, i32 0, i32 1
  %62 = load double, double* %y41, align 8
  %add42 = fadd double %62, %mul40
  store double %add42, double* %y41, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %63 = load i32, i32* %i, align 4
  %dec = add nsw i32 %63, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load double, double* %scale_sum, align 8
  %cmp43 = fcmp une double %64, 0.000000e+00
  br i1 %cmp43, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %for.end
  %65 = load double, double* %scale_sum, align 8
  %66 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x45 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %66, i32 0, i32 0
  %67 = load double, double* %x45, align 8
  %div46 = fdiv double %67, %65
  store double %div46, double* %x45, align 8
  %68 = load double, double* %scale_sum, align 8
  %69 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y47 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %69, i32 0, i32 1
  %70 = load double, double* %y47, align 8
  %div48 = fdiv double %70, %68
  store double %div48, double* %y47, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %for.end
  br label %if.end.50

if.end.50:                                        ; preds = %if.then, %if.then.7, %if.end.49, %land.lhs.true, %if.end
  ret void
}

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #6

; Function Attrs: nounwind
declare double @exp(double) #6

declare void @tile_manager_map_tile(%struct._TileManager*, i32, i32, %struct._Tile*) #1

declare i32 @tile_size(%struct._Tile*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_class_init(%struct._GimpPaintCoreClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPaintCoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpPaintCoreClass* %klass, %struct._GimpPaintCoreClass** %klass.addr, align 8
  %0 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPaintCoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_paint_core_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_paint_core_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_paint_core_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %klass.addr, align 8
  %start = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %6, i32 0, i32 1
  store i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)* @gimp_paint_core_real_start, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)** %start, align 8
  %7 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %klass.addr, align 8
  %pre_paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %7, i32 0, i32 2
  store i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)* @gimp_paint_core_real_pre_paint, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)** %pre_paint, align 8
  %8 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %klass.addr, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %8, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_paint_core_real_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %9 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %klass.addr, align 8
  %post_paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %9, i32 0, i32 4
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)* @gimp_paint_core_real_post_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)** %post_paint, align 8
  %10 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %klass.addr, align 8
  %interpolate = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %10, i32 0, i32 5
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32)* @gimp_paint_core_real_interpolate, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32)** %interpolate, align 8
  %11 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %klass.addr, align 8
  %get_paint_area = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %11, i32 0, i32 6
  store %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)* @gimp_paint_core_real_get_paint_area, %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)** %get_paint_area, align 8
  %12 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %klass.addr, align 8
  %push_undo = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %12, i32 0, i32 7
  store %struct._GimpUndo* (%struct._GimpPaintCore*, %struct._GimpImage*, i8*)* @gimp_paint_core_real_push_undo, %struct._GimpUndo* (%struct._GimpPaintCore*, %struct._GimpImage*, i8*)** %push_undo, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #5
  %call2 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i8* %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 1, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_core_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %2, %struct._GimpPaintCore** %core, align 8
  %3 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  call void @gimp_paint_core_cleanup(%struct._GimpPaintCore* %3)
  %4 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %undo_desc = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %4, i32 0, i32 2
  %5 = load i8*, i8** %undo_desc, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %undo_desc2 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %6, i32 0, i32 2
  store i8* null, i8** %undo_desc2, align 8
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %stroke_buffer = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %7, i32 0, i32 20
  %8 = load %struct._GArray*, %struct._GArray** %stroke_buffer, align 8
  %tobool = icmp ne %struct._GArray* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %stroke_buffer3 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %9, i32 0, i32 20
  %10 = load %struct._GArray*, %struct._GArray** %stroke_buffer3, align 8
  %call4 = call i8* @g_array_free(%struct._GArray* %10, i32 1)
  %11 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %stroke_buffer5 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %11, i32 0, i32 20
  store %struct._GArray* null, %struct._GArray** %stroke_buffer5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** @gimp_paint_core_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 6
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_core_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %2, %struct._GimpPaintCore** %core, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %undo_desc = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %4, i32 0, i32 2
  %5 = load i8*, i8** %undo_desc, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %6)
  %7 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %undo_desc3 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %7, i32 0, i32 2
  store i8* %call2, i8** %undo_desc3, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %11, i8* %13, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %core = alloca %struct._GimpPaintCore*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_core_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %2, %struct._GimpPaintCore** %core, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core, align 8
  %undo_desc = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %5, i32 0, i32 2
  %6 = load i8*, i8** %undo_desc, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
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
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_paint_core_real_start(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, %struct._GError** %error) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_paint_core_real_pre_paint(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, i32 %paint_state, i32 %time) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_real_paint(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_real_post_paint(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, i32 %paint_state, i32 %time) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_core_real_interpolate(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, i32 %time) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %time.addr = alloca i32, align 4
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %2 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %3 = load i32, i32* %time.addr, align 4
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %0, %struct._GimpDrawable* %1, %struct._GimpPaintOptions* %2, i32 1, i32 %3)
  %4 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %4, i32 0, i32 5
  %5 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %cur_coords = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %5, i32 0, i32 4
  %6 = bitcast %struct._GimpCoords* %last_coords to i8*
  %7 = bitcast %struct._GimpCoords* %cur_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 64, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_paint_core_real_get_paint_area(%struct._GimpPaintCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  ret %struct._TempBuf* null
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpUndo* @gimp_paint_core_real_push_undo(%struct._GimpPaintCore* %core, %struct._GimpImage* %image, i8* %undo_desc) #3 {
entry:
  %core.addr = alloca %struct._GimpPaintCore*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %undo_desc.addr = alloca i8*, align 8
  store %struct._GimpPaintCore* %core, %struct._GimpPaintCore** %core.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %undo_desc, i8** %undo_desc.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i64 @gimp_paint_core_undo_get_type() #7
  %1 = load i8*, i8** %undo_desc.addr, align 8
  %2 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %core.addr, align 8
  %call1 = call %struct._GimpUndo* (%struct._GimpImage*, i64, i32, i8*, i32, ...) @gimp_image_undo_push(%struct._GimpImage* %0, i64 %call, i32 75, i8* %1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), %struct._GimpPaintCore* %2, i8* null)
  ret %struct._GimpUndo* %call1
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare void @g_free(i8*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare %struct._GimpUndo* @gimp_image_undo_push(%struct._GimpImage*, i64, i32, i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_undo_get_type() #2

declare void @apply_mask_to_region(%struct._PixelRegion*, %struct._PixelRegion*, i32) #1

declare void @combine_mask_and_region(%struct._PixelRegion*, %struct._PixelRegion*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_airbrush_get_type() #2

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
