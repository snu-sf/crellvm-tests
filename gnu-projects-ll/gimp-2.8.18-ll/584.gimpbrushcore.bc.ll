; ModuleID = './app/paint/gimpbrushcore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrushCoreClass = type { %struct._GimpPaintCoreClass, i32, i32, i32, void (%struct._GimpBrushCore*, %struct._GimpBrush*)*, void (%struct._GimpBrushCore*, %struct._GimpDynamics*)* }
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
%struct._Gimp = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type { %struct._GimpData }
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
%struct._GimpUndo = type opaque
%struct._GimpBrushCore = type { %struct._GimpPaintCore, %struct._GimpBrush*, %struct._GimpBrush*, %struct._GimpDynamics*, double, double, double, double, double, %struct._TempBuf*, [2 x [2 x %struct._TempBuf*]], %struct._TempBuf*, i32, %struct._TempBuf*, %struct._TempBuf*, [5 x [5 x %struct._TempBuf*]], %struct._TempBuf*, i32, double, [360 x double], [360 x double], %struct._GRand* }
%struct._GRand = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpDynamicsOutput = type { %struct._GimpObject }
%struct._PixelRegionIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_brush_core_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpBrushCore\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@__func__.gimp_brush_core_set_brush = private unnamed_addr constant [26 x i8] c"gimp_brush_core_set_brush\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_BRUSH_CORE (core)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"brush == NULL || GIMP_IS_BRUSH (brush)\00", align 1
@core_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_brush_core_set_dynamics = private unnamed_addr constant [29 x i8] c"gimp_brush_core_set_dynamics\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"dynamics == NULL || GIMP_IS_DYNAMICS (dynamics)\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gimpbrushcore.c\00", align 1
@__func__.gimp_brush_core_get_brush_mask = private unnamed_addr constant [31 x i8] c"gimp_brush_core_get_brush_mask\00", align 1
@__func__.gimp_brush_core_color_area_with_pixmap = private unnamed_addr constant [39 x i8] c"gimp_brush_core_color_area_with_pixmap\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"GIMP_IS_BRUSH (core->brush)\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"core->brush->pixmap != NULL\00", align 1
@gimp_brush_core_parent_class = internal global i8* null, align 8
@GimpBrushCore_private_offset = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"set-brush\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"set-dynamics\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"No brushes available for use with this tool.\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"No paint dynamics available for use with this tool.\00", align 1
@__func__.gimp_brush_core_interpolate = private unnamed_addr constant [28 x i8] c"gimp_brush_core_interpolate\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"invalidate-preview\00", align 1
@subsample = internal constant [5 x [5 x [9 x i32]]] [[5 x [9 x i32]] [[9 x i32] [i32 64, i32 64, i32 0, i32 64, i32 64, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 25, i32 103, i32 0, i32 25, i32 103, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 128, i32 0, i32 0, i32 128, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 103, i32 25, i32 0, i32 103, i32 25, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 64, i32 64, i32 0, i32 64, i32 64, i32 0, i32 0, i32 0]], [5 x [9 x i32]] [[9 x i32] [i32 25, i32 25, i32 0, i32 103, i32 103, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 6, i32 44, i32 0, i32 44, i32 162, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 50, i32 0, i32 0, i32 206, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 44, i32 6, i32 0, i32 162, i32 44, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 25, i32 25, i32 0, i32 103, i32 103, i32 0, i32 0, i32 0]], [5 x [9 x i32]] [[9 x i32] [i32 0, i32 0, i32 0, i32 128, i32 128, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 50, i32 206, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 206, i32 50, i32 0, i32 0, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 128, i32 128, i32 0, i32 0, i32 0]], [5 x [9 x i32]] [[9 x i32] [i32 0, i32 0, i32 0, i32 103, i32 103, i32 0, i32 25, i32 25, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 44, i32 162, i32 0, i32 6, i32 44, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 206, i32 0, i32 0, i32 50, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 162, i32 44, i32 0, i32 44, i32 6], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 103, i32 103, i32 0, i32 25, i32 25]], [5 x [9 x i32]] [[9 x i32] [i32 0, i32 0, i32 0, i32 64, i32 64, i32 0, i32 64, i32 64, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 25, i32 103, i32 0, i32 25, i32 103, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 128, i32 0, i32 0, i32 128, i32 0], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 103, i32 25, i32 0, i32 103, i32 25], [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 64, i32 64, i32 0, i32 64, i32 64]]], align 16
@gimp_brush_core_pressurize_mask.mapi = internal global [256 x i8] zeroinitializer, align 16

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_core_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_core_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_core_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_paint_core_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_core_class_intern_init to void (i8*, i8*)*), i32 6480, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrushCore*)* @gimp_brush_core_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_core_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_brush_core_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_core_parent_class, align 8
  %1 = load i32, i32* @GimpBrushCore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrushCore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushCoreClass*
  call void @gimp_brush_core_class_init(%struct._GimpBrushCoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_init(%struct._GimpBrushCore* %core) #3 {
entry:
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %0, i32 0, i32 1
  store %struct._GimpBrush* null, %struct._GimpBrush** %main_brush, align 8
  %1 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %1, i32 0, i32 2
  store %struct._GimpBrush* null, %struct._GimpBrush** %brush, align 8
  %2 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %2, i32 0, i32 3
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %dynamics, align 8
  %3 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %spacing = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %3, i32 0, i32 4
  store double 1.000000e+00, double* %spacing, align 8
  %4 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %scale = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %4, i32 0, i32 5
  store double 1.000000e+00, double* %scale, align 8
  %5 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %angle = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %5, i32 0, i32 6
  store double 1.000000e+00, double* %angle, align 8
  %6 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %6, i32 0, i32 7
  store double 1.000000e+00, double* %hardness, align 8
  %7 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %7, i32 0, i32 8
  store double 0.000000e+00, double* %aspect_ratio, align 8
  %8 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %pressure_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %8, i32 0, i32 9
  store %struct._TempBuf* null, %struct._TempBuf** %pressure_brush, align 8
  %9 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %last_solid_brush_mask = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %9, i32 0, i32 11
  store %struct._TempBuf* null, %struct._TempBuf** %last_solid_brush_mask, align 8
  %10 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_cache_invalid = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %10, i32 0, i32 12
  store i32 0, i32* %solid_cache_invalid, align 4
  %11 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %transform_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %11, i32 0, i32 13
  store %struct._TempBuf* null, %struct._TempBuf** %transform_brush, align 8
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %transform_pixmap = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %12, i32 0, i32 14
  store %struct._TempBuf* null, %struct._TempBuf** %transform_pixmap, align 8
  %13 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %last_subsample_brush_mask = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %13, i32 0, i32 16
  store %struct._TempBuf* null, %struct._TempBuf** %last_subsample_brush_mask, align 8
  %14 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_cache_invalid = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %14, i32 0, i32 17
  store i32 0, i32* %subsample_cache_invalid, align 4
  %call = call %struct._GRand* @g_rand_new()
  %15 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %rand = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %15, i32 0, i32 21
  store %struct._GRand* %call, %struct._GRand** %rand, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %16 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %16, 2
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %17, 2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %18 = load i32, i32* %j, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %19 to i64
  %20 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_brushes = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %20, i32 0, i32 10
  %arrayidx = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx, i32 0, i64 %idxprom
  store %struct._TempBuf* null, %struct._TempBuf** %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %22, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.25, %for.end.8
  %23 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %23, 359
  br i1 %cmp10, label %for.body.11, label %for.end.27

for.body.11:                                      ; preds = %for.cond.9
  %24 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %24, 360
  %div = sdiv i32 %mul, 360
  %conv = sitofp i32 %div to double
  %mul12 = fmul double %conv, 0x401921FB54442D18
  %div13 = fdiv double %mul12, 3.600000e+02
  %call14 = call double @cos(double %div13) #6
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %jitter_lut_y = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %26, i32 0, i32 20
  %arrayidx16 = getelementptr inbounds [360 x double], [360 x double]* %jitter_lut_y, i32 0, i64 %idxprom15
  store double %call14, double* %arrayidx16, align 8
  %27 = load i32, i32* %i, align 4
  %mul17 = mul nsw i32 %27, 360
  %div18 = sdiv i32 %mul17, 360
  %conv19 = sitofp i32 %div18 to double
  %mul20 = fmul double %conv19, 0x401921FB54442D18
  %div21 = fdiv double %mul20, 3.600000e+02
  %call22 = call double @sin(double %div21) #6
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %jitter_lut_x = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %29, i32 0, i32 19
  %arrayidx24 = getelementptr inbounds [360 x double], [360 x double]* %jitter_lut_x, i32 0, i64 %idxprom23
  store double %call22, double* %arrayidx24, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.11
  %30 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %30, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.9

for.end.27:                                       ; preds = %for.cond.9
  br label %do.body

do.body:                                          ; preds = %for.end.27
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.43, %do.end
  %31 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %31, 5
  br i1 %cmp29, label %for.body.31, label %for.end.45

for.body.31:                                      ; preds = %for.cond.28
  store i32 0, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.40, %for.body.31
  %32 = load i32, i32* %j, align 4
  %cmp33 = icmp slt i32 %32, 5
  br i1 %cmp33, label %for.body.35, label %for.end.42

for.body.35:                                      ; preds = %for.cond.32
  %33 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %34 to i64
  %35 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_brushes = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %35, i32 0, i32 15
  %arrayidx38 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx38, i32 0, i64 %idxprom36
  store %struct._TempBuf* null, %struct._TempBuf** %arrayidx39, align 8
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.35
  %36 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %36, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond.32

for.end.42:                                       ; preds = %for.cond.32
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.42
  %37 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %37, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.28

for.end.45:                                       ; preds = %for.cond.28
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_brush_core_set_brush(%struct._GimpBrushCore* %core, %struct._GimpBrush* %brush) #3 {
entry:
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %1 = bitcast %struct._GimpBrushCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_core_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_core_set_brush, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.42

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %cmp12 = icmp eq %struct._GimpBrush* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %15 = bitcast %struct._GimpBrush* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_brush_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_brush_core_set_brush, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.42

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %28 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %28, i32 0, i32 1
  %29 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  %cmp40 = icmp ne %struct._GimpBrush* %27, %29
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.39
  %30 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %31 = bitcast %struct._GimpBrushCore* %30 to i8*
  %32 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @core_signals, i32 0, i64 0), align 4
  %33 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %31, i32 %32, i32 0, %struct._GimpBrush* %33)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.9, %if.else.37, %if.then.41, %do.end.39
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_brush_core_set_dynamics(%struct._GimpBrushCore* %core, %struct._GimpDynamics* %dynamics) #3 {
entry:
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %1 = bitcast %struct._GimpBrushCore* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_core_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_brush_core_set_dynamics, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.43

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %cmp12 = icmp eq %struct._GimpDynamics* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %15 = bitcast %struct._GimpDynamics* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_dynamics_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_brush_core_set_dynamics, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.43

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %28 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics40 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %28, i32 0, i32 3
  %29 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics40, align 8
  %cmp41 = icmp ne %struct._GimpDynamics* %27, %29
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end.39
  %30 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %31 = bitcast %struct._GimpBrushCore* %30 to i8*
  %32 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @core_signals, i32 0, i64 1), align 4
  %33 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %31, i32 %32, i32 0, %struct._GimpDynamics* %33)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.9, %if.else.37, %if.then.42, %do.end.39
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_brush_core_paste_canvas(%struct._GimpBrushCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpCoords* %coords, double %brush_opacity, double %image_opacity, i32 %paint_mode, i32 %brush_hardness, double %dynamic_force, i32 %mode) #3 {
entry:
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %brush_opacity.addr = alloca double, align 8
  %image_opacity.addr = alloca double, align 8
  %paint_mode.addr = alloca i32, align 4
  %brush_hardness.addr = alloca i32, align 4
  %dynamic_force.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %brush_mask = alloca %struct._TempBuf*, align 8
  %paint_core = alloca %struct._GimpPaintCore*, align 8
  %brush_maskPR = alloca %struct._PixelRegion, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store double %brush_opacity, double* %brush_opacity.addr, align 8
  store double %image_opacity, double* %image_opacity.addr, align 8
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 %brush_hardness, i32* %brush_hardness.addr, align 4
  store double %dynamic_force, double* %dynamic_force.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %2 = load i32, i32* %brush_hardness.addr, align 4
  %3 = load double, double* %dynamic_force.addr, align 8
  %call = call %struct._TempBuf* @gimp_brush_core_get_brush_mask(%struct._GimpBrushCore* %0, %struct._GimpCoords* %1, i32 %2, double %3)
  store %struct._TempBuf* %call, %struct._TempBuf** %brush_mask, align 8
  %4 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %6 = bitcast %struct._GimpBrushCore* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_paint_core_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %7, %struct._GimpPaintCore** %paint_core, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 0
  %9 = load double, double* %x3, align 8
  %call4 = call double @floor(double %9) #8
  %conv = fptosi double %call4 to i32
  %10 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 1
  %11 = load i32, i32* %width, align 4
  %shr = ashr i32 %11, 1
  %sub = sub nsw i32 %conv, %shr
  store i32 %sub, i32* %x, align 4
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 1
  %13 = load double, double* %y5, align 8
  %call6 = call double @floor(double %13) #8
  %conv7 = fptosi double %call6 to i32
  %14 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 2
  %15 = load i32, i32* %height, align 4
  %shr8 = ashr i32 %15, 1
  %sub9 = sub nsw i32 %conv7, %shr8
  store i32 %sub9, i32* %y, align 4
  %16 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %17 = load i32, i32* %x, align 4
  %sub11 = sub nsw i32 0, %17
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub11, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %off_x, align 4
  %18 = load i32, i32* %y, align 4
  %cmp12 = icmp slt i32 %18, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.end
  %19 = load i32, i32* %y, align 4
  %sub15 = sub nsw i32 0, %19
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.end
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.14
  %cond18 = phi i32 [ %sub15, %cond.true.14 ], [ 0, %cond.false.16 ]
  store i32 %cond18, i32* %off_y, align 4
  %20 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask, align 8
  %21 = load i32, i32* %off_x, align 4
  %22 = load i32, i32* %off_y, align 4
  %23 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %23, i32 0, i32 19
  %24 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %width19 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %24, i32 0, i32 1
  %25 = load i32, i32* %width19, align 4
  %26 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %canvas_buf20 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %26, i32 0, i32 19
  %27 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf20, align 8
  %height21 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %27, i32 0, i32 2
  %28 = load i32, i32* %height21, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %brush_maskPR, %struct._TempBuf* %20, i32 %21, i32 %22, i32 %25, i32 %28)
  %29 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = load double, double* %brush_opacity.addr, align 8
  %32 = load double, double* %image_opacity.addr, align 8
  %33 = load i32, i32* %paint_mode.addr, align 4
  %34 = load i32, i32* %mode.addr, align 4
  call void @gimp_paint_core_paste(%struct._GimpPaintCore* %29, %struct._PixelRegion* %brush_maskPR, %struct._GimpDrawable* %30, double %31, double %32, i32 %33, i32 %34)
  br label %if.end

if.end:                                           ; preds = %cond.end.17, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_brush_core_get_brush_mask(%struct._GimpBrushCore* %core, %struct._GimpCoords* %coords, i32 %brush_hardness, double %dynamic_force) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %brush_hardness.addr = alloca i32, align 4
  %dynamic_force.addr = alloca double, align 8
  %mask = alloca %struct._TempBuf*, align 8
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %brush_hardness, i32* %brush_hardness.addr, align 4
  store double %dynamic_force, double* %dynamic_force.addr, align 8
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %1 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %1, i32 0, i32 2
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %call = call %struct._TempBuf* @gimp_brush_core_transform_mask(%struct._GimpBrushCore* %0, %struct._GimpBrush* %2)
  store %struct._TempBuf* %call, %struct._TempBuf** %mask, align 8
  %3 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %tobool = icmp ne %struct._TempBuf* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %do.end

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %brush_hardness.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.2
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %6 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i32 0, i32 0
  %8 = load double, double* %x, align 8
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %call1 = call %struct._TempBuf* @gimp_brush_core_subsample_mask(%struct._GimpBrushCore* %5, %struct._TempBuf* %6, double %8, double %10)
  store %struct._TempBuf* %call1, %struct._TempBuf** %retval
  br label %do.end

sw.bb.2:                                          ; preds = %if.end
  %11 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %12 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %13, i32 0, i32 0
  %14 = load double, double* %x3, align 8
  %15 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %15, i32 0, i32 1
  %16 = load double, double* %y4, align 8
  %call5 = call %struct._TempBuf* @gimp_brush_core_solidify_mask(%struct._GimpBrushCore* %11, %struct._TempBuf* %12, double %14, double %16)
  store %struct._TempBuf* %call5, %struct._TempBuf** %retval
  br label %do.end

sw.bb.6:                                          ; preds = %if.end
  %17 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %18 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %19, i32 0, i32 0
  %20 = load double, double* %x7, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 1
  %22 = load double, double* %y8, align 8
  %23 = load double, double* %dynamic_force.addr, align 8
  %call9 = call %struct._TempBuf* @gimp_brush_core_pressurize_mask(%struct._GimpBrushCore* %17, %struct._TempBuf* %18, double %20, double %22, double %23)
  store %struct._TempBuf* %call9, %struct._TempBuf** %retval
  br label %do.end

sw.epilog:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 1441, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_brush_core_get_brush_mask, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.bb, %sw.bb.2, %sw.bb.6, %do.body
  %24 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %24
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare void @gimp_paint_core_paste(%struct._GimpPaintCore*, %struct._PixelRegion*, %struct._GimpDrawable*, double, double, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_brush_core_replace_canvas(%struct._GimpBrushCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpCoords* %coords, double %brush_opacity, double %image_opacity, i32 %brush_hardness, double %dynamic_force, i32 %mode) #3 {
entry:
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %brush_opacity.addr = alloca double, align 8
  %image_opacity.addr = alloca double, align 8
  %brush_hardness.addr = alloca i32, align 4
  %dynamic_force.addr = alloca double, align 8
  %mode.addr = alloca i32, align 4
  %brush_mask = alloca %struct._TempBuf*, align 8
  %paint_core = alloca %struct._GimpPaintCore*, align 8
  %brush_maskPR = alloca %struct._PixelRegion, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store double %brush_opacity, double* %brush_opacity.addr, align 8
  store double %image_opacity, double* %image_opacity.addr, align 8
  store i32 %brush_hardness, i32* %brush_hardness.addr, align 4
  store double %dynamic_force, double* %dynamic_force.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %2 = load i32, i32* %brush_hardness.addr, align 4
  %3 = load double, double* %dynamic_force.addr, align 8
  %call = call %struct._TempBuf* @gimp_brush_core_get_brush_mask(%struct._GimpBrushCore* %0, %struct._GimpCoords* %1, i32 %2, double %3)
  store %struct._TempBuf* %call, %struct._TempBuf** %brush_mask, align 8
  %4 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %6 = bitcast %struct._GimpBrushCore* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_paint_core_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %7, %struct._GimpPaintCore** %paint_core, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 0
  %9 = load double, double* %x3, align 8
  %call4 = call double @floor(double %9) #8
  %conv = fptosi double %call4 to i32
  %10 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 1
  %11 = load i32, i32* %width, align 4
  %shr = ashr i32 %11, 1
  %sub = sub nsw i32 %conv, %shr
  store i32 %sub, i32* %x, align 4
  %12 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i32 0, i32 1
  %13 = load double, double* %y5, align 8
  %call6 = call double @floor(double %13) #8
  %conv7 = fptosi double %call6 to i32
  %14 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 2
  %15 = load i32, i32* %height, align 4
  %shr8 = ashr i32 %15, 1
  %sub9 = sub nsw i32 %conv7, %shr8
  store i32 %sub9, i32* %y, align 4
  %16 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %17 = load i32, i32* %x, align 4
  %sub11 = sub nsw i32 0, %17
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub11, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %off_x, align 4
  %18 = load i32, i32* %y, align 4
  %cmp12 = icmp slt i32 %18, 0
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %cond.end
  %19 = load i32, i32* %y, align 4
  %sub15 = sub nsw i32 0, %19
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.end
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.14
  %cond18 = phi i32 [ %sub15, %cond.true.14 ], [ 0, %cond.false.16 ]
  store i32 %cond18, i32* %off_y, align 4
  %20 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask, align 8
  %21 = load i32, i32* %off_x, align 4
  %22 = load i32, i32* %off_y, align 4
  %23 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %23, i32 0, i32 19
  %24 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %width19 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %24, i32 0, i32 1
  %25 = load i32, i32* %width19, align 4
  %26 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %canvas_buf20 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %26, i32 0, i32 19
  %27 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf20, align 8
  %height21 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %27, i32 0, i32 2
  %28 = load i32, i32* %height21, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %brush_maskPR, %struct._TempBuf* %20, i32 %21, i32 %22, i32 %25, i32 %28)
  %29 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %31 = load double, double* %brush_opacity.addr, align 8
  %32 = load double, double* %image_opacity.addr, align 8
  %33 = load i32, i32* %mode.addr, align 4
  call void @gimp_paint_core_replace(%struct._GimpPaintCore* %29, %struct._PixelRegion* %brush_maskPR, %struct._GimpDrawable* %30, double %31, double %32, i32 %33)
  br label %if.end

if.end:                                           ; preds = %cond.end.17, %entry
  ret void
}

declare void @gimp_paint_core_replace(%struct._GimpPaintCore*, %struct._PixelRegion*, %struct._GimpDrawable*, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_brush_core_transform_mask(%struct._GimpBrushCore* %core, %struct._GimpBrush* %brush) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %mask = alloca %struct._TempBuf*, align 8
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %scale = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %0, i32 0, i32 5
  %1 = load double, double* %scale, align 8
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %3 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %scale1 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %3, i32 0, i32 5
  %4 = load double, double* %scale1, align 8
  %5 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %5, i32 0, i32 8
  %6 = load double, double* %aspect_ratio, align 8
  %7 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %angle = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %7, i32 0, i32 6
  %8 = load double, double* %angle, align 8
  %9 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %9, i32 0, i32 7
  %10 = load double, double* %hardness, align 8
  %call = call %struct._TempBuf* @gimp_brush_transform_mask(%struct._GimpBrush* %2, double %4, double %6, double %8, double %10)
  store %struct._TempBuf* %call, %struct._TempBuf** %mask, align 8
  %11 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %transform_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %12, i32 0, i32 13
  %13 = load %struct._TempBuf*, %struct._TempBuf** %transform_brush, align 8
  %cmp2 = icmp eq %struct._TempBuf* %11, %13
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  store %struct._TempBuf* %14, %struct._TempBuf** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %15 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %16 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %transform_brush5 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %16, i32 0, i32 13
  store %struct._TempBuf* %15, %struct._TempBuf** %transform_brush5, align 8
  %17 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_cache_invalid = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %17, i32 0, i32 17
  store i32 1, i32* %subsample_cache_invalid, align 4
  %18 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_cache_invalid = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %18, i32 0, i32 12
  store i32 1, i32* %solid_cache_invalid, align 4
  %19 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %transform_brush6 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %19, i32 0, i32 13
  %20 = load %struct._TempBuf*, %struct._TempBuf** %transform_brush6, align 8
  store %struct._TempBuf* %20, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %21 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_brush_core_subsample_mask(%struct._GimpBrushCore* %core, %struct._TempBuf* %mask, double %x, double %y) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %mask.addr = alloca %struct._TempBuf*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %dest = alloca %struct._TempBuf*, align 8
  %left = alloca double, align 8
  %m = alloca i8*, align 8
  %d = alloca i8*, align 8
  %k = alloca i32*, align 8
  %index1 = alloca i32, align 4
  %index2 = alloca i32, align 4
  %dest_offset_x = alloca i32, align 4
  %dest_offset_y = alloca i32, align 4
  %kernel = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %accum = alloca [3 x i64*], align 16
  %empty = alloca i8, align 1
  %offs = alloca i32, align 4
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._TempBuf* %mask, %struct._TempBuf** %mask.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 0, i32* %dest_offset_x, align 4
  store i32 0, i32* %dest_offset_y, align 4
  store i8 0, i8* %empty, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %1, i32 0, i32 1
  %2 = load i32, i32* %width, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, double* %x.addr, align 8
  %add = fadd double %3, %conv
  store double %add, double* %x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load double, double* %x.addr, align 8
  %5 = load double, double* %x.addr, align 8
  %call = call double @floor(double %5) #8
  %sub = fsub double %4, %call
  store double %sub, double* %left, align 8
  %6 = load double, double* %left, align 8
  %mul = fmul double %6, 5.000000e+00
  %conv1 = fptosi double %mul to i32
  store i32 %conv1, i32* %index1, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.5, %while.end
  %7 = load double, double* %y.addr, align 8
  %cmp3 = fcmp olt double %7, 0.000000e+00
  br i1 %cmp3, label %while.body.5, label %while.end.8

while.body.5:                                     ; preds = %while.cond.2
  %8 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 2
  %9 = load i32, i32* %height, align 4
  %conv6 = sitofp i32 %9 to double
  %10 = load double, double* %y.addr, align 8
  %add7 = fadd double %10, %conv6
  store double %add7, double* %y.addr, align 8
  br label %while.cond.2

while.end.8:                                      ; preds = %while.cond.2
  %11 = load double, double* %y.addr, align 8
  %12 = load double, double* %y.addr, align 8
  %call9 = call double @floor(double %12) #8
  %sub10 = fsub double %11, %call9
  store double %sub10, double* %left, align 8
  %13 = load double, double* %left, align 8
  %mul11 = fmul double %13, 5.000000e+00
  %conv12 = fptosi double %mul11 to i32
  store i32 %conv12, i32* %index2, align 4
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %width13 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 1
  %15 = load i32, i32* %width13, align 4
  %rem = srem i32 %15, 2
  %cmp14 = icmp eq i32 %rem, 0
  br i1 %cmp14, label %if.then, label %if.end.21

if.then:                                          ; preds = %while.end.8
  %16 = load i32, i32* %index1, align 4
  %add16 = add nsw i32 %16, 2
  store i32 %add16, i32* %index1, align 4
  %17 = load i32, i32* %index1, align 4
  %cmp17 = icmp sgt i32 %17, 4
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  %18 = load i32, i32* %index1, align 4
  %sub20 = sub nsw i32 %18, 5
  store i32 %sub20, i32* %index1, align 4
  store i32 1, i32* %dest_offset_x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %while.end.8
  %19 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %height22 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %19, i32 0, i32 2
  %20 = load i32, i32* %height22, align 4
  %rem23 = srem i32 %20, 2
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %if.end.21
  %21 = load i32, i32* %index2, align 4
  %add27 = add nsw i32 %21, 2
  store i32 %add27, i32* %index2, align 4
  %22 = load i32, i32* %index2, align 4
  %cmp28 = icmp sgt i32 %22, 4
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.26
  %23 = load i32, i32* %index2, align 4
  %sub31 = sub nsw i32 %23, 5
  store i32 %sub31, i32* %index2, align 4
  store i32 1, i32* %dest_offset_y, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.21
  %24 = load i32, i32* %index1, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i32, i32* %index2, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x [9 x i32]]], [5 x [5 x [9 x i32]]]* @subsample, i32 0, i64 %idxprom34
  %arrayidx35 = getelementptr inbounds [5 x [9 x i32]], [5 x [9 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [9 x i32], [9 x i32]* %arrayidx35, i32 0, i32 0
  store i32* %arraydecay, i32** %kernel, align 8
  %26 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %27 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %last_subsample_brush_mask = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %27, i32 0, i32 16
  %28 = load %struct._TempBuf*, %struct._TempBuf** %last_subsample_brush_mask, align 8
  %cmp36 = icmp eq %struct._TempBuf* %26, %28
  br i1 %cmp36, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.33
  %29 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_cache_invalid = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %29, i32 0, i32 17
  %30 = load i32, i32* %subsample_cache_invalid, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.else, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true
  %31 = load i32, i32* %index1, align 4
  %idxprom39 = sext i32 %31 to i64
  %32 = load i32, i32* %index2, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_brushes = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %33, i32 0, i32 15
  %arrayidx41 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes, i32 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx41, i32 0, i64 %idxprom39
  %34 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx42, align 8
  %tobool43 = icmp ne %struct._TempBuf* %34, null
  br i1 %tobool43, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %if.then.38
  %35 = load i32, i32* %index1, align 4
  %idxprom45 = sext i32 %35 to i64
  %36 = load i32, i32* %index2, align 4
  %idxprom46 = sext i32 %36 to i64
  %37 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_brushes47 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %37, i32 0, i32 15
  %arrayidx48 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes47, i32 0, i64 %idxprom46
  %arrayidx49 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx48, i32 0, i64 %idxprom45
  %38 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx49, align 8
  store %struct._TempBuf* %38, %struct._TempBuf** %retval
  br label %return

if.end.50:                                        ; preds = %if.then.38
  br label %if.end.80

if.else:                                          ; preds = %land.lhs.true, %if.end.33
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %if.else
  %39 = load i32, i32* %i, align 4
  %cmp51 = icmp slt i32 %39, 5
  br i1 %cmp51, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %for.body
  %40 = load i32, i32* %j, align 4
  %cmp54 = icmp slt i32 %40, 5
  br i1 %cmp54, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.53
  %41 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %41 to i64
  %42 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %42 to i64
  %43 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_brushes59 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %43, i32 0, i32 15
  %arrayidx60 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes59, i32 0, i64 %idxprom58
  %arrayidx61 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx60, i32 0, i64 %idxprom57
  %44 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx61, align 8
  %tobool62 = icmp ne %struct._TempBuf* %44, null
  br i1 %tobool62, label %if.then.63, label %if.end.74

if.then.63:                                       ; preds = %for.body.56
  %45 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %45 to i64
  %46 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %46 to i64
  %47 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_brushes66 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %47, i32 0, i32 15
  %arrayidx67 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes66, i32 0, i64 %idxprom65
  %arrayidx68 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx67, i32 0, i64 %idxprom64
  %48 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx68, align 8
  call void @temp_buf_free(%struct._TempBuf* %48)
  %49 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %49 to i64
  %50 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %50 to i64
  %51 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_brushes71 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %51, i32 0, i32 15
  %arrayidx72 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes71, i32 0, i64 %idxprom70
  %arrayidx73 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx72, i32 0, i64 %idxprom69
  store %struct._TempBuf* null, %struct._TempBuf** %arrayidx73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.63, %for.body.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %52 = load i32, i32* %j, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end
  %53 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %53, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  %54 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %55 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %last_subsample_brush_mask78 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %55, i32 0, i32 16
  store %struct._TempBuf* %54, %struct._TempBuf** %last_subsample_brush_mask78, align 8
  %56 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_cache_invalid79 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %56, i32 0, i32 17
  store i32 0, i32* %subsample_cache_invalid79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.77, %if.end.50
  %57 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %width81 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %57, i32 0, i32 1
  %58 = load i32, i32* %width81, align 4
  %add82 = add nsw i32 %58, 2
  %59 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %height83 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %59, i32 0, i32 2
  %60 = load i32, i32* %height83, align 4
  %add84 = add nsw i32 %60, 2
  %call85 = call %struct._TempBuf* @temp_buf_new(i32 %add82, i32 %add84, i32 1, i32 0, i32 0, i8* %empty)
  store %struct._TempBuf* %call85, %struct._TempBuf** %dest, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.96, %if.end.80
  %61 = load i32, i32* %i, align 4
  %cmp87 = icmp slt i32 %61, 3
  br i1 %cmp87, label %for.body.89, label %for.end.98

for.body.89:                                      ; preds = %for.cond.86
  %62 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %width90 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %62, i32 0, i32 1
  %63 = load i32, i32* %width90, align 4
  %add91 = add nsw i32 %63, 1
  %conv92 = sext i32 %add91 to i64
  %call93 = call noalias i8* @g_malloc0_n(i64 %conv92, i64 8)
  %64 = bitcast i8* %call93 to i64*
  %65 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %65 to i64
  %arrayidx95 = getelementptr inbounds [3 x i64*], [3 x i64*]* %accum, i32 0, i64 %idxprom94
  store i64* %64, i64** %arrayidx95, align 8
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.89
  %66 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %66, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.86

for.end.98:                                       ; preds = %for.cond.86
  %67 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %68 = load i32, i32* %index1, align 4
  %idxprom99 = sext i32 %68 to i64
  %69 = load i32, i32* %index2, align 4
  %idxprom100 = sext i32 %69 to i64
  %70 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_brushes101 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %70, i32 0, i32 15
  %arrayidx102 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes101, i32 0, i64 %idxprom100
  %arrayidx103 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx102, i32 0, i64 %idxprom99
  store %struct._TempBuf* %67, %struct._TempBuf** %arrayidx103, align 8
  %71 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %call104 = call i8* @temp_buf_get_data(%struct._TempBuf* %71)
  store i8* %call104, i8** %m, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.163, %for.end.98
  %72 = load i32, i32* %i, align 4
  %73 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %height106 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %73, i32 0, i32 2
  %74 = load i32, i32* %height106, align 4
  %cmp107 = icmp slt i32 %72, %74
  br i1 %cmp107, label %for.body.109, label %for.end.165

for.body.109:                                     ; preds = %for.cond.105
  store i32 0, i32* %j, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.137, %for.body.109
  %75 = load i32, i32* %j, align 4
  %76 = load %struct._TempBuf*, %struct._TempBuf** %mask.addr, align 8
  %width111 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %76, i32 0, i32 1
  %77 = load i32, i32* %width111, align 4
  %cmp112 = icmp slt i32 %75, %77
  br i1 %cmp112, label %for.body.114, label %for.end.139

for.body.114:                                     ; preds = %for.cond.110
  %78 = load i32*, i32** %kernel, align 8
  store i32* %78, i32** %k, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.133, %for.body.114
  %79 = load i32, i32* %r, align 4
  %cmp116 = icmp slt i32 %79, 3
  br i1 %cmp116, label %for.body.118, label %for.end.135

for.body.118:                                     ; preds = %for.cond.115
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %dest_offset_x, align 4
  %add119 = add nsw i32 %80, %81
  store i32 %add119, i32* %offs, align 4
  store i32 3, i32* %s, align 4
  br label %while.cond.120

while.cond.120:                                   ; preds = %while.body.122, %for.body.118
  %82 = load i32, i32* %s, align 4
  %dec = add nsw i32 %82, -1
  store i32 %dec, i32* %s, align 4
  %tobool121 = icmp ne i32 %82, 0
  br i1 %tobool121, label %while.body.122, label %while.end.132

while.body.122:                                   ; preds = %while.cond.120
  %83 = load i8*, i8** %m, align 8
  %84 = load i8, i8* %83, align 1
  %conv123 = zext i8 %84 to i32
  %85 = load i32*, i32** %k, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %incdec.ptr, i32** %k, align 8
  %86 = load i32, i32* %85, align 4
  %mul124 = mul nsw i32 %conv123, %86
  %conv125 = sext i32 %mul124 to i64
  %87 = load i32, i32* %offs, align 4
  %inc126 = add nsw i32 %87, 1
  store i32 %inc126, i32* %offs, align 4
  %idxprom127 = sext i32 %87 to i64
  %88 = load i32, i32* %r, align 4
  %idxprom128 = sext i32 %88 to i64
  %arrayidx129 = getelementptr inbounds [3 x i64*], [3 x i64*]* %accum, i32 0, i64 %idxprom128
  %89 = load i64*, i64** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i64, i64* %89, i64 %idxprom127
  %90 = load i64, i64* %arrayidx130, align 8
  %add131 = add i64 %90, %conv125
  store i64 %add131, i64* %arrayidx130, align 8
  br label %while.cond.120

while.end.132:                                    ; preds = %while.cond.120
  br label %for.inc.133

for.inc.133:                                      ; preds = %while.end.132
  %91 = load i32, i32* %r, align 4
  %inc134 = add nsw i32 %91, 1
  store i32 %inc134, i32* %r, align 4
  br label %for.cond.115

for.end.135:                                      ; preds = %for.cond.115
  %92 = load i8*, i8** %m, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr136, i8** %m, align 8
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.end.135
  %93 = load i32, i32* %j, align 4
  %inc138 = add nsw i32 %93, 1
  store i32 %inc138, i32* %j, align 4
  br label %for.cond.110

for.end.139:                                      ; preds = %for.cond.110
  %94 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %call140 = call i8* @temp_buf_get_data(%struct._TempBuf* %94)
  %95 = load i32, i32* %i, align 4
  %96 = load i32, i32* %dest_offset_y, align 4
  %add141 = add nsw i32 %95, %96
  %97 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %width142 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %97, i32 0, i32 1
  %98 = load i32, i32* %width142, align 4
  %mul143 = mul nsw i32 %add141, %98
  %idx.ext = sext i32 %mul143 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call140, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.155, %for.end.139
  %99 = load i32, i32* %j, align 4
  %100 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %width145 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %100, i32 0, i32 1
  %101 = load i32, i32* %width145, align 4
  %cmp146 = icmp slt i32 %99, %101
  br i1 %cmp146, label %for.body.148, label %for.end.157

for.body.148:                                     ; preds = %for.cond.144
  %102 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %102 to i64
  %arrayidx150 = getelementptr inbounds [3 x i64*], [3 x i64*]* %accum, i32 0, i64 0
  %103 = load i64*, i64** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i64, i64* %103, i64 %idxprom149
  %104 = load i64, i64* %arrayidx151, align 8
  %add152 = add i64 %104, 127
  %div = udiv i64 %add152, 256
  %conv153 = trunc i64 %div to i8
  %105 = load i8*, i8** %d, align 8
  %incdec.ptr154 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr154, i8** %d, align 8
  store i8 %conv153, i8* %105, align 1
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.body.148
  %106 = load i32, i32* %j, align 4
  %inc156 = add nsw i32 %106, 1
  store i32 %inc156, i32* %j, align 4
  br label %for.cond.144

for.end.157:                                      ; preds = %for.cond.144
  %arraydecay158 = getelementptr inbounds [3 x i64*], [3 x i64*]* %accum, i32 0, i32 0
  call void @rotate_pointers(i64** %arraydecay158, i32 3)
  %arrayidx159 = getelementptr inbounds [3 x i64*], [3 x i64*]* %accum, i32 0, i64 2
  %107 = load i64*, i64** %arrayidx159, align 8
  %108 = bitcast i64* %107 to i8*
  %109 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %width160 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %109, i32 0, i32 1
  %110 = load i32, i32* %width160, align 4
  %conv161 = sext i32 %110 to i64
  %mul162 = mul i64 8, %conv161
  call void @llvm.memset.p0i8.i64(i8* %108, i8 0, i64 %mul162, i32 8, i1 false)
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.end.157
  %111 = load i32, i32* %i, align 4
  %inc164 = add nsw i32 %111, 1
  store i32 %inc164, i32* %i, align 4
  br label %for.cond.105

for.end.165:                                      ; preds = %for.cond.105
  br label %while.cond.166

while.cond.166:                                   ; preds = %for.end.192, %for.end.165
  %112 = load i32, i32* %i, align 4
  %113 = load i32, i32* %dest_offset_y, align 4
  %add167 = add nsw i32 %112, %113
  %114 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %height168 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %114, i32 0, i32 2
  %115 = load i32, i32* %height168, align 4
  %cmp169 = icmp slt i32 %add167, %115
  br i1 %cmp169, label %while.body.171, label %while.end.195

while.body.171:                                   ; preds = %while.cond.166
  %116 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %call172 = call i8* @temp_buf_get_data(%struct._TempBuf* %116)
  %117 = load i32, i32* %i, align 4
  %118 = load i32, i32* %dest_offset_y, align 4
  %add173 = add nsw i32 %117, %118
  %119 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %width174 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %119, i32 0, i32 1
  %120 = load i32, i32* %width174, align 4
  %mul175 = mul nsw i32 %add173, %120
  %idx.ext176 = sext i32 %mul175 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %call172, i64 %idx.ext176
  store i8* %add.ptr177, i8** %d, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.190, %while.body.171
  %121 = load i32, i32* %j, align 4
  %122 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %width179 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %122, i32 0, i32 1
  %123 = load i32, i32* %width179, align 4
  %cmp180 = icmp slt i32 %121, %123
  br i1 %cmp180, label %for.body.182, label %for.end.192

for.body.182:                                     ; preds = %for.cond.178
  %124 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %124 to i64
  %arrayidx184 = getelementptr inbounds [3 x i64*], [3 x i64*]* %accum, i32 0, i64 0
  %125 = load i64*, i64** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i64, i64* %125, i64 %idxprom183
  %126 = load i64, i64* %arrayidx185, align 8
  %add186 = add i64 %126, 128
  %div187 = udiv i64 %add186, 256
  %conv188 = trunc i64 %div187 to i8
  %127 = load i8*, i8** %d, align 8
  %incdec.ptr189 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr189, i8** %d, align 8
  store i8 %conv188, i8* %127, align 1
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.182
  %128 = load i32, i32* %j, align 4
  %inc191 = add nsw i32 %128, 1
  store i32 %inc191, i32* %j, align 4
  br label %for.cond.178

for.end.192:                                      ; preds = %for.cond.178
  %arraydecay193 = getelementptr inbounds [3 x i64*], [3 x i64*]* %accum, i32 0, i32 0
  call void @rotate_pointers(i64** %arraydecay193, i32 3)
  %129 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %129, 1
  store i32 %inc194, i32* %i, align 4
  br label %while.cond.166

while.end.195:                                    ; preds = %while.cond.166
  store i32 0, i32* %i, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.202, %while.end.195
  %130 = load i32, i32* %i, align 4
  %cmp197 = icmp slt i32 %130, 3
  br i1 %cmp197, label %for.body.199, label %for.end.204

for.body.199:                                     ; preds = %for.cond.196
  %131 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %131 to i64
  %arrayidx201 = getelementptr inbounds [3 x i64*], [3 x i64*]* %accum, i32 0, i64 %idxprom200
  %132 = load i64*, i64** %arrayidx201, align 8
  %133 = bitcast i64* %132 to i8*
  call void @g_free(i8* %133)
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.body.199
  %134 = load i32, i32* %i, align 4
  %inc203 = add nsw i32 %134, 1
  store i32 %inc203, i32* %i, align 4
  br label %for.cond.196

for.end.204:                                      ; preds = %for.cond.196
  %135 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  store %struct._TempBuf* %135, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %for.end.204, %if.then.44
  %136 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %136
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_brush_core_solidify_mask(%struct._GimpBrushCore* %core, %struct._TempBuf* %brush_mask, double %x, double %y) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %brush_mask.addr = alloca %struct._TempBuf*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %dest = alloca %struct._TempBuf*, align 8
  %m = alloca i8*, align 8
  %d = alloca i8*, align 8
  %dest_offset_x = alloca i32, align 4
  %dest_offset_y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %empty = alloca i8, align 1
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._TempBuf* %brush_mask, %struct._TempBuf** %brush_mask.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 0, i32* %dest_offset_x, align 4
  store i32 0, i32* %dest_offset_y, align 4
  store i8 0, i8* %empty, align 1
  %0 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %0, i32 0, i32 1
  %1 = load i32, i32* %width, align 4
  %rem = srem i32 %1, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load double, double* %x.addr, align 8
  %cmp1 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %width2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %3, i32 0, i32 1
  %4 = load i32, i32* %width2, align 4
  %conv = sitofp i32 %4 to double
  %5 = load double, double* %x.addr, align 8
  %add = fadd double %5, %conv
  store double %add, double* %x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load double, double* %x.addr, align 8
  %7 = load double, double* %x.addr, align 8
  %call = call double @floor(double %7) #8
  %sub = fsub double %6, %call
  %cmp3 = fcmp oge double %sub, 5.000000e-01
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %while.end
  %8 = load i32, i32* %dest_offset_x, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %dest_offset_x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %while.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %9 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 2
  %10 = load i32, i32* %height, align 4
  %rem7 = srem i32 %10, 2
  %cmp8 = icmp eq i32 %rem7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.26

if.then.10:                                       ; preds = %if.end.6
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.14, %if.then.10
  %11 = load double, double* %y.addr, align 8
  %cmp12 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp12, label %while.body.14, label %while.end.18

while.body.14:                                    ; preds = %while.cond.11
  %12 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %height15 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 2
  %13 = load i32, i32* %height15, align 4
  %conv16 = sitofp i32 %13 to double
  %14 = load double, double* %y.addr, align 8
  %add17 = fadd double %14, %conv16
  store double %add17, double* %y.addr, align 8
  br label %while.cond.11

while.end.18:                                     ; preds = %while.cond.11
  %15 = load double, double* %y.addr, align 8
  %16 = load double, double* %y.addr, align 8
  %call19 = call double @floor(double %16) #8
  %sub20 = fsub double %15, %call19
  %cmp21 = fcmp oge double %sub20, 5.000000e-01
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %while.end.18
  %17 = load i32, i32* %dest_offset_y, align 4
  %inc24 = add nsw i32 %17, 1
  store i32 %inc24, i32* %dest_offset_y, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %while.end.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.6
  %18 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_cache_invalid = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %18, i32 0, i32 12
  %19 = load i32, i32* %solid_cache_invalid, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.26
  %20 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %21 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %last_solid_brush_mask = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %21, i32 0, i32 11
  %22 = load %struct._TempBuf*, %struct._TempBuf** %last_solid_brush_mask, align 8
  %cmp27 = icmp eq %struct._TempBuf* %20, %22
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %dest_offset_x, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32, i32* %dest_offset_y, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_brushes = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %25, i32 0, i32 10
  %arrayidx = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes, i32 0, i64 %idxprom30
  %arrayidx31 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx, i32 0, i64 %idxprom
  %26 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx31, align 8
  %tobool32 = icmp ne %struct._TempBuf* %26, null
  br i1 %tobool32, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.then.29
  %27 = load i32, i32* %dest_offset_x, align 4
  %idxprom34 = sext i32 %27 to i64
  %28 = load i32, i32* %dest_offset_y, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_brushes36 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %29, i32 0, i32 10
  %arrayidx37 = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes36, i32 0, i64 %idxprom35
  %arrayidx38 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx37, i32 0, i64 %idxprom34
  %30 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx38, align 8
  store %struct._TempBuf* %30, %struct._TempBuf** %retval
  br label %return

if.end.39:                                        ; preds = %if.then.29
  br label %if.end.70

if.else:                                          ; preds = %land.lhs.true, %if.end.26
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %if.else
  %31 = load i32, i32* %i, align 4
  %cmp40 = icmp slt i32 %31, 2
  br i1 %cmp40, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %for.body
  %32 = load i32, i32* %j, align 4
  %cmp43 = icmp slt i32 %32, 2
  br i1 %cmp43, label %for.body.45, label %for.end

for.body.45:                                      ; preds = %for.cond.42
  %33 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %34 to i64
  %35 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_brushes48 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %35, i32 0, i32 10
  %arrayidx49 = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes48, i32 0, i64 %idxprom47
  %arrayidx50 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx49, i32 0, i64 %idxprom46
  %36 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx50, align 8
  %tobool51 = icmp ne %struct._TempBuf* %36, null
  br i1 %tobool51, label %if.then.52, label %if.end.63

if.then.52:                                       ; preds = %for.body.45
  %37 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %38 to i64
  %39 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_brushes55 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %39, i32 0, i32 10
  %arrayidx56 = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes55, i32 0, i64 %idxprom54
  %arrayidx57 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx56, i32 0, i64 %idxprom53
  %40 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx57, align 8
  call void @temp_buf_free(%struct._TempBuf* %40)
  %41 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %41 to i64
  %42 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %42 to i64
  %43 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_brushes60 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %43, i32 0, i32 10
  %arrayidx61 = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes60, i32 0, i64 %idxprom59
  %arrayidx62 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx61, i32 0, i64 %idxprom58
  store %struct._TempBuf* null, %struct._TempBuf** %arrayidx62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.52, %for.body.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %44 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %44, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end
  %45 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %45, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond

for.end.67:                                       ; preds = %for.cond
  %46 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %47 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %last_solid_brush_mask68 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %47, i32 0, i32 11
  store %struct._TempBuf* %46, %struct._TempBuf** %last_solid_brush_mask68, align 8
  %48 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_cache_invalid69 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %48, i32 0, i32 12
  store i32 0, i32* %solid_cache_invalid69, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.67, %if.end.39
  %49 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %width71 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %49, i32 0, i32 1
  %50 = load i32, i32* %width71, align 4
  %add72 = add nsw i32 %50, 2
  %51 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %height73 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %51, i32 0, i32 2
  %52 = load i32, i32* %height73, align 4
  %add74 = add nsw i32 %52, 2
  %call75 = call %struct._TempBuf* @temp_buf_new(i32 %add72, i32 %add74, i32 1, i32 0, i32 0, i8* %empty)
  store %struct._TempBuf* %call75, %struct._TempBuf** %dest, align 8
  %53 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %54 = load i32, i32* %dest_offset_x, align 4
  %idxprom76 = sext i32 %54 to i64
  %55 = load i32, i32* %dest_offset_y, align 4
  %idxprom77 = sext i32 %55 to i64
  %56 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_brushes78 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %56, i32 0, i32 10
  %arrayidx79 = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes78, i32 0, i64 %idxprom77
  %arrayidx80 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx79, i32 0, i64 %idxprom76
  store %struct._TempBuf* %53, %struct._TempBuf** %arrayidx80, align 8
  %57 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %call81 = call i8* @temp_buf_get_data(%struct._TempBuf* %57)
  store i8* %call81, i8** %m, align 8
  %58 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %call82 = call i8* @temp_buf_get_data(%struct._TempBuf* %58)
  %59 = load i32, i32* %dest_offset_y, align 4
  %add83 = add nsw i32 %59, 1
  %60 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  %width84 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %60, i32 0, i32 1
  %61 = load i32, i32* %width84, align 4
  %mul = mul nsw i32 %add83, %61
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %call82, i64 %idx.ext
  %62 = load i32, i32* %dest_offset_x, align 4
  %add85 = add nsw i32 %62, 1
  %idx.ext86 = sext i32 %add85 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext86
  store i8* %add.ptr87, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.106, %if.end.70
  %63 = load i32, i32* %i, align 4
  %64 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %height89 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %64, i32 0, i32 2
  %65 = load i32, i32* %height89, align 4
  %cmp90 = icmp slt i32 %63, %65
  br i1 %cmp90, label %for.body.92, label %for.end.108

for.body.92:                                      ; preds = %for.cond.88
  store i32 0, i32* %j, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.102, %for.body.92
  %66 = load i32, i32* %j, align 4
  %67 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %width94 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %67, i32 0, i32 1
  %68 = load i32, i32* %width94, align 4
  %cmp95 = icmp slt i32 %66, %68
  br i1 %cmp95, label %for.body.97, label %for.end.104

for.body.97:                                      ; preds = %for.cond.93
  %69 = load i8*, i8** %m, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr, i8** %m, align 8
  %70 = load i8, i8* %69, align 1
  %conv98 = zext i8 %70 to i32
  %tobool99 = icmp ne i32 %conv98, 0
  %cond = select i1 %tobool99, i32 255, i32 0
  %conv100 = trunc i32 %cond to i8
  %71 = load i8*, i8** %d, align 8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr101, i8** %d, align 8
  store i8 %conv100, i8* %71, align 1
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.97
  %72 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %72, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond.93

for.end.104:                                      ; preds = %for.cond.93
  %73 = load i8*, i8** %d, align 8
  %add.ptr105 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %add.ptr105, i8** %d, align 8
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.104
  %74 = load i32, i32* %i, align 4
  %inc107 = add nsw i32 %74, 1
  store i32 %inc107, i32* %i, align 4
  br label %for.cond.88

for.end.108:                                      ; preds = %for.cond.88
  %75 = load %struct._TempBuf*, %struct._TempBuf** %dest, align 8
  store %struct._TempBuf* %75, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %for.end.108, %if.then.33
  %76 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %76
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_brush_core_pressurize_mask(%struct._GimpBrushCore* %core, %struct._TempBuf* %brush_mask, double %x, double %y, double %pressure) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %brush_mask.addr = alloca %struct._TempBuf*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %pressure.addr = alloca double, align 8
  %source = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %subsample_mask = alloca %struct._TempBuf*, align 8
  %empty = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca double, align 8
  %k = alloca double, align 8
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._TempBuf* %brush_mask, %struct._TempBuf** %brush_mask.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %pressure, double* %pressure.addr, align 8
  store i8 0, i8* %empty, align 1
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %1 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %2 = load double, double* %x.addr, align 8
  %3 = load double, double* %y.addr, align 8
  %call = call %struct._TempBuf* @gimp_brush_core_subsample_mask(%struct._GimpBrushCore* %0, %struct._TempBuf* %1, double %2, double %3)
  store %struct._TempBuf* %call, %struct._TempBuf** %subsample_mask, align 8
  %4 = load double, double* %pressure.addr, align 8
  %mul = fmul double %4, 1.000000e+02
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %cmp = icmp eq i32 %conv, 50
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._TempBuf*, %struct._TempBuf** %subsample_mask, align 8
  store %struct._TempBuf* %5, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %pressure_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %6, i32 0, i32 9
  %7 = load %struct._TempBuf*, %struct._TempBuf** %pressure_brush, align 8
  %tobool = icmp ne %struct._TempBuf* %7, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %pressure_brush3 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %8, i32 0, i32 9
  %9 = load %struct._TempBuf*, %struct._TempBuf** %pressure_brush3, align 8
  call void @temp_buf_free(%struct._TempBuf* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %10 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 1
  %11 = load i32, i32* %width, align 4
  %add5 = add nsw i32 %11, 2
  %12 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 2
  %13 = load i32, i32* %height, align 4
  %add6 = add nsw i32 %13, 2
  %call7 = call %struct._TempBuf* @temp_buf_new(i32 %add5, i32 %add6, i32 1, i32 0, i32 0, i8* %empty)
  %14 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %pressure_brush8 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %14, i32 0, i32 9
  store %struct._TempBuf* %call7, %struct._TempBuf** %pressure_brush8, align 8
  %15 = load double, double* %pressure.addr, align 8
  %16 = load double, double* %pressure.addr, align 8
  %add9 = fadd double %15, %16
  store double %add9, double* %j, align 8
  store double 0.000000e+00, double* %k, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %17 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %17, 256
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load double, double* %k, align 8
  %cmp12 = fcmp ogt double %18, 2.550000e+02
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @gimp_brush_core_pressurize_mask.mapi, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  br label %if.end.18

if.else:                                          ; preds = %for.body
  %20 = load double, double* %k, align 8
  %conv15 = fptoui double %20 to i8
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* @gimp_brush_core_pressurize_mask.mapi, i32 0, i64 %idxprom16
  store i8 %conv15, i8* %arrayidx17, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.14
  %22 = load double, double* %j, align 8
  %23 = load double, double* %k, align 8
  %add19 = fadd double %23, %22
  store double %add19, double* %k, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._TempBuf*, %struct._TempBuf** %subsample_mask, align 8
  %call20 = call i8* @temp_buf_get_data(%struct._TempBuf* %25)
  store i8* %call20, i8** %source, align 8
  %26 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %pressure_brush21 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %26, i32 0, i32 9
  %27 = load %struct._TempBuf*, %struct._TempBuf** %pressure_brush21, align 8
  %call22 = call i8* @temp_buf_get_data(%struct._TempBuf* %27)
  store i8* %call22, i8** %dest, align 8
  %28 = load %struct._TempBuf*, %struct._TempBuf** %subsample_mask, align 8
  %width23 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %28, i32 0, i32 1
  %29 = load i32, i32* %width23, align 4
  %30 = load %struct._TempBuf*, %struct._TempBuf** %subsample_mask, align 8
  %height24 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %30, i32 0, i32 2
  %31 = load i32, i32* %height24, align 4
  %mul25 = mul nsw i32 %29, %31
  store i32 %mul25, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %32 = load i32, i32* %i, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %i, align 4
  %tobool26 = icmp ne i32 %32, 0
  br i1 %tobool26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i8*, i8** %source, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %source, align 8
  %34 = load i8, i8* %33, align 1
  %idxprom27 = zext i8 %34 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* @gimp_brush_core_pressurize_mask.mapi, i32 0, i64 %idxprom27
  %35 = load i8, i8* %arrayidx28, align 1
  %36 = load i8*, i8** %dest, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr29, i8** %dest, align 8
  store i8 %35, i8* %36, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %pressure_brush30 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %37, i32 0, i32 9
  %38 = load %struct._TempBuf*, %struct._TempBuf** %pressure_brush30, align 8
  store %struct._TempBuf* %38, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %39 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %39
}

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_brush_core_eval_transform_dynamics(%struct._GimpBrushCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %output = alloca %struct._GimpDynamicsOutput*, align 8
  %dyn_aspect_ratio = alloca double, align 8
  %fade_point = alloca double, align 8
  %image = alloca %struct._GimpImage*, align 8
  %paint_core = alloca %struct._GimpPaintCore*, align 8
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %0, i32 0, i32 1
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  %tobool = icmp ne %struct._GimpBrush* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %brush_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %2, i32 0, i32 2
  %3 = load double, double* %brush_size, align 8
  %4 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush1 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %4, i32 0, i32 1
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush1, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %5, i32 0, i32 1
  %6 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 1
  %7 = load i32, i32* %width, align 4
  %8 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush2 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %8, i32 0, i32 1
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush2, align 8
  %mask3 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %9, i32 0, i32 1
  %10 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height, align 4
  %cmp = icmp sgt i32 %7, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush4 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %12, i32 0, i32 1
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush4, align 8
  %mask5 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %13, i32 0, i32 1
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask5, align 8
  %width6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 1
  %15 = load i32, i32* %width6, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %16 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush7 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %16, i32 0, i32 1
  %17 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush7, align 8
  %mask8 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %17, i32 0, i32 1
  %18 = load %struct._TempBuf*, %struct._TempBuf** %mask8, align 8
  %height9 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %18, i32 0, i32 2
  %19 = load i32, i32* %height9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %19, %cond.false ]
  %conv = sitofp i32 %cond to double
  %div = fdiv double %3, %conv
  %20 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %scale = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %20, i32 0, i32 5
  store double %div, double* %scale, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %21 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %scale10 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %21, i32 0, i32 5
  store double -1.000000e+00, double* %scale10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %brush_angle = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %22, i32 0, i32 3
  %23 = load double, double* %brush_angle, align 8
  %24 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %angle = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %24, i32 0, i32 6
  store double %23, double* %angle, align 8
  %25 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %brush_aspect_ratio = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %25, i32 0, i32 4
  %26 = load double, double* %brush_aspect_ratio, align 8
  %27 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %27, i32 0, i32 8
  store double %26, double* %aspect_ratio, align 8
  %28 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %28, i32 0, i32 3
  %29 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %30 = bitcast %struct._GimpDynamics* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dynamics_get_type() #8
  store i64 %call, i64* %__t, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool11 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool11, label %if.else.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  store i32 0, i32* %__r, align 4
  br label %if.end.22

if.else.13:                                       ; preds = %if.end
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool14 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool14, label %land.lhs.true, label %if.else.19

land.lhs.true:                                    ; preds = %if.else.13
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class15 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class15, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type, align 8
  %37 = load i64, i64* %__t, align 8
  %cmp16 = icmp eq i64 %36, %37
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.21

if.else.19:                                       ; preds = %land.lhs.true, %if.else.13
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %39 = load i64, i64* %__t, align 8
  %call20 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #9
  store i32 %call20, i32* %__r, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.12
  %40 = load i32, i32* %__r, align 4
  store i32 %40, i32* %tmp
  %41 = load i32, i32* %tmp
  %tobool23 = icmp ne i32 %41, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.22
  br label %if.end.71

if.end.25:                                        ; preds = %if.end.22
  %42 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %43 = bitcast %struct._GimpBrushCore* %42 to %struct._GTypeInstance*
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %45 = bitcast %struct._GTypeClass* %44 to %struct._GimpBrushCoreClass*
  %handles_dynamic_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %45, i32 0, i32 3
  %46 = load i32, i32* %handles_dynamic_transforming_brush, align 4
  %tobool27 = icmp ne i32 %46, 0
  br i1 %tobool27, label %if.then.28, label %if.end.71

if.then.28:                                       ; preds = %if.end.25
  store double 0.000000e+00, double* %dyn_aspect_ratio, align 8
  store double 1.000000e+00, double* %fade_point, align 8
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tobool32 = icmp ne %struct._GimpDrawable* %47, null
  br i1 %tobool32, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %if.then.28
  %48 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %49 = bitcast %struct._GimpDrawable* %48 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call35)
  %50 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %call37 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %50)
  store %struct._GimpImage* %call37, %struct._GimpImage** %image, align 8
  %51 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %52 = bitcast %struct._GimpBrushCore* %51 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_paint_core_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call39)
  %53 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %53, %struct._GimpPaintCore** %paint_core, align 8
  %54 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %56 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %56, i32 0, i32 8
  %57 = load double, double* %pixel_dist, align 8
  %call41 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %54, %struct._GimpImage* %55, double %57)
  store double %call41, double* %fade_point, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.33, %if.then.28
  %58 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics43 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %58, i32 0, i32 3
  %59 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics43, align 8
  %call44 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %59, i32 1)
  store %struct._GimpDynamicsOutput* %call44, %struct._GimpDynamicsOutput** %output, align 8
  %60 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %61 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %62 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %63 = load double, double* %fade_point, align 8
  %call45 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %60, %struct._GimpCoords* %61, %struct._GimpPaintOptions* %62, double %63)
  %64 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %scale46 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %64, i32 0, i32 5
  %65 = load double, double* %scale46, align 8
  %mul = fmul double %65, %call45
  store double %mul, double* %scale46, align 8
  %66 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics47 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %66, i32 0, i32 3
  %67 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics47, align 8
  %call48 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %67, i32 2)
  store %struct._GimpDynamicsOutput* %call48, %struct._GimpDynamicsOutput** %output, align 8
  %68 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %69 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %70 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %71 = load double, double* %fade_point, align 8
  %call49 = call double @gimp_dynamics_output_get_angular_value(%struct._GimpDynamicsOutput* %68, %struct._GimpCoords* %69, %struct._GimpPaintOptions* %70, double %71)
  %72 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %angle50 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %72, i32 0, i32 6
  %73 = load double, double* %angle50, align 8
  %add = fadd double %73, %call49
  store double %add, double* %angle50, align 8
  %74 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics51 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %74, i32 0, i32 3
  %75 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics51, align 8
  %call52 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %75, i32 4)
  store %struct._GimpDynamicsOutput* %call52, %struct._GimpDynamicsOutput** %output, align 8
  %76 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %77 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %78 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %79 = load double, double* %fade_point, align 8
  %call53 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %76, %struct._GimpCoords* %77, %struct._GimpPaintOptions* %78, double %79)
  %80 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %80, i32 0, i32 7
  store double %call53, double* %hardness, align 8
  %81 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics54 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %81, i32 0, i32 3
  %82 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics54, align 8
  %call55 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %82, i32 6)
  store %struct._GimpDynamicsOutput* %call55, %struct._GimpDynamicsOutput** %output, align 8
  %83 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %84 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %85 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %86 = load double, double* %fade_point, align 8
  %call56 = call double @gimp_dynamics_output_get_aspect_value(%struct._GimpDynamicsOutput* %83, %struct._GimpCoords* %84, %struct._GimpPaintOptions* %85, double %86)
  store double %call56, double* %dyn_aspect_ratio, align 8
  %87 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %output, align 8
  %call57 = call i32 @gimp_dynamics_output_is_enabled(%struct._GimpDynamicsOutput* %87)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %if.end.42
  %88 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %aspect_ratio60 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %88, i32 0, i32 8
  %89 = load double, double* %aspect_ratio60, align 8
  %cmp61 = fcmp oeq double %89, 0.000000e+00
  br i1 %cmp61, label %if.then.63, label %if.else.66

if.then.63:                                       ; preds = %if.then.59
  %90 = load double, double* %dyn_aspect_ratio, align 8
  %mul64 = fmul double 1.000000e+01, %90
  %91 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %aspect_ratio65 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %91, i32 0, i32 8
  store double %mul64, double* %aspect_ratio65, align 8
  br label %if.end.69

if.else.66:                                       ; preds = %if.then.59
  %92 = load double, double* %dyn_aspect_ratio, align 8
  %93 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %aspect_ratio67 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %93, i32 0, i32 8
  %94 = load double, double* %aspect_ratio67, align 8
  %mul68 = fmul double %94, %92
  store double %mul68, double* %aspect_ratio67, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.63
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.42
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.24, %if.end.70, %if.end.25
  ret void
}

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare double @gimp_paint_options_get_fade(%struct._GimpPaintOptions*, %struct._GimpImage*, double) #1

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

declare double @gimp_dynamics_output_get_angular_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

declare double @gimp_dynamics_output_get_aspect_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

declare i32 @gimp_dynamics_output_is_enabled(%struct._GimpDynamicsOutput*) #1

; Function Attrs: nounwind uwtable
define void @gimp_brush_core_color_area_with_pixmap(%struct._GimpBrushCore* %core, %struct._GimpDrawable* %drawable, %struct._GimpCoords* %coords, %struct._TempBuf* %area, i32 %mode) #3 {
entry:
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %area.addr = alloca %struct._TempBuf*, align 8
  %mode.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %pr = alloca i8*, align 8
  %d = alloca i8*, align 8
  %ulx = alloca i32, align 4
  %uly = alloca i32, align 4
  %offsetx = alloca i32, align 4
  %offsety = alloca i32, align 4
  %y = alloca i32, align 4
  %pixmap_mask = alloca %struct._TempBuf*, align 8
  %brush_mask = alloca %struct._TempBuf*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._TempBuf* %area, %struct._TempBuf** %area.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %0, i32 0, i32 2
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %2 = bitcast %struct._GimpBrush* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_brush_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_brush_core_color_area_with_pixmap, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %for.end.84

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %brush12 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %14, i32 0, i32 2
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush12, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %15, i32 0, i32 2
  %16 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %cmp13 = icmp ne %struct._TempBuf* %16, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_brush_core_color_area_with_pixmap, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %for.end.84

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %19)
  store %struct._GimpImage* %call20, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %21 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %brush21 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %21, i32 0, i32 2
  %22 = load %struct._GimpBrush*, %struct._GimpBrush** %brush21, align 8
  %call22 = call %struct._TempBuf* @gimp_brush_core_transform_pixmap(%struct._GimpBrushCore* %20, %struct._GimpBrush* %22)
  store %struct._TempBuf* %call22, %struct._TempBuf** %pixmap_mask, align 8
  %23 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask, align 8
  %tobool23 = icmp ne %struct._TempBuf* %23, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %do.end.17
  br label %for.end.84

if.end.25:                                        ; preds = %do.end.17
  %24 = load i32, i32* %mode.addr, align 4
  %cmp26 = icmp ne i32 %24, 0
  br i1 %cmp26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.end.25
  %25 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %26 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %brush28 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %26, i32 0, i32 2
  %27 = load %struct._GimpBrush*, %struct._GimpBrush** %brush28, align 8
  %call29 = call %struct._TempBuf* @gimp_brush_core_transform_mask(%struct._GimpBrushCore* %25, %struct._GimpBrush* %27)
  store %struct._TempBuf* %call29, %struct._TempBuf** %brush_mask, align 8
  br label %if.end.31

if.else.30:                                       ; preds = %if.end.25
  store %struct._TempBuf* null, %struct._TempBuf** %brush_mask, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.27
  %28 = load %struct._TempBuf*, %struct._TempBuf** %area.addr, align 8
  %29 = load %struct._TempBuf*, %struct._TempBuf** %area.addr, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %29, i32 0, i32 1
  %30 = load i32, i32* %width, align 4
  %31 = load %struct._TempBuf*, %struct._TempBuf** %area.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %31, i32 0, i32 2
  %32 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %28, i32 0, i32 0, i32 %30, i32 %32)
  %call32 = call %struct._PixelRegionIterator* (i32, ...) @pixel_regions_register(i32 1, %struct._PixelRegion* %destPR)
  %33 = bitcast %struct._PixelRegionIterator* %call32 to i8*
  store i8* %33, i8** %pr, align 8
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i32 0, i32 0
  %35 = load double, double* %x, align 8
  %call33 = call double @floor(double %35) #8
  %conv = fptosi double %call33 to i32
  %36 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask, align 8
  %width34 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %36, i32 0, i32 1
  %37 = load i32, i32* %width34, align 4
  %shr = ashr i32 %37, 1
  %sub = sub nsw i32 %conv, %shr
  store i32 %sub, i32* %ulx, align 4
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y35 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %38, i32 0, i32 1
  %39 = load double, double* %y35, align 8
  %call36 = call double @floor(double %39) #8
  %conv37 = fptosi double %call36 to i32
  %40 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask, align 8
  %height38 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %40, i32 0, i32 2
  %41 = load i32, i32* %height38, align 4
  %shr39 = ashr i32 %41, 1
  %sub40 = sub nsw i32 %conv37, %shr39
  store i32 %sub40, i32* %uly, align 4
  %42 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask, align 8
  %width41 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %42, i32 0, i32 1
  %43 = load i32, i32* %width41, align 4
  %rem = srem i32 %43, 2
  %cmp42 = icmp eq i32 %rem, 0
  br i1 %cmp42, label %if.then.44, label %if.end.54

if.then.44:                                       ; preds = %if.end.31
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x45 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %44, i32 0, i32 0
  %45 = load double, double* %x45, align 8
  %add = fadd double %45, 5.000000e-01
  %conv46 = fptosi double %add to i32
  %conv47 = sitofp i32 %conv46 to double
  %46 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x48 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %46, i32 0, i32 0
  %47 = load double, double* %x48, align 8
  %call49 = call double @floor(double %47) #8
  %sub50 = fsub double %conv47, %call49
  %48 = load i32, i32* %ulx, align 4
  %conv51 = sitofp i32 %48 to double
  %add52 = fadd double %conv51, %sub50
  %conv53 = fptosi double %add52 to i32
  store i32 %conv53, i32* %ulx, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.44, %if.end.31
  %49 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask, align 8
  %height55 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %49, i32 0, i32 2
  %50 = load i32, i32* %height55, align 4
  %rem56 = srem i32 %50, 2
  %cmp57 = icmp eq i32 %rem56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %if.end.54
  %51 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y60 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %51, i32 0, i32 1
  %52 = load double, double* %y60, align 8
  %add61 = fadd double %52, 5.000000e-01
  %conv62 = fptosi double %add61 to i32
  %conv63 = sitofp i32 %conv62 to double
  %53 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y64 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %53, i32 0, i32 1
  %54 = load double, double* %y64, align 8
  %call65 = call double @floor(double %54) #8
  %sub66 = fsub double %conv63, %call65
  %55 = load i32, i32* %uly, align 4
  %conv67 = sitofp i32 %55 to double
  %add68 = fadd double %conv67, %sub66
  %conv69 = fptosi double %add68 to i32
  store i32 %conv69, i32* %uly, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.59, %if.end.54
  %56 = load %struct._TempBuf*, %struct._TempBuf** %area.addr, align 8
  %x71 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %56, i32 0, i32 3
  %57 = load i32, i32* %x71, align 4
  %58 = load i32, i32* %ulx, align 4
  %sub72 = sub nsw i32 %57, %58
  store i32 %sub72, i32* %offsetx, align 4
  %59 = load %struct._TempBuf*, %struct._TempBuf** %area.addr, align 8
  %y73 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %59, i32 0, i32 4
  %60 = load i32, i32* %y73, align 4
  %61 = load i32, i32* %uly, align 4
  %sub74 = sub nsw i32 %60, %61
  store i32 %sub74, i32* %offsety, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.82, %if.end.70
  %62 = load i8*, i8** %pr, align 8
  %cmp75 = icmp ne i8* %62, null
  br i1 %cmp75, label %for.body, label %for.end.84

for.body:                                         ; preds = %for.cond
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 0
  %63 = load i8*, i8** %data, align 8
  store i8* %63, i8** %d, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc, %for.body
  %64 = load i32, i32* %y, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 9
  %65 = load i32, i32* %h, align 4
  %cmp78 = icmp slt i32 %64, %65
  br i1 %cmp78, label %for.body.80, label %for.end

for.body.80:                                      ; preds = %for.cond.77
  %66 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %67 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %68 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask, align 8
  %69 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask, align 8
  %70 = load i8*, i8** %d, align 8
  %71 = load i32, i32* %offsetx, align 4
  %72 = load i32, i32* %y, align 4
  %73 = load i32, i32* %offsety, align 4
  %add81 = add nsw i32 %72, %73
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 10
  %74 = load i32, i32* %bytes, align 4
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 8
  %75 = load i32, i32* %w, align 4
  %76 = load i32, i32* %mode.addr, align 4
  call void @gimp_brush_core_paint_line_pixmap_mask(%struct._GimpImage* %66, %struct._GimpDrawable* %67, %struct._TempBuf* %68, %struct._TempBuf* %69, i8* %70, i32 %71, i32 %add81, i32 %74, i32 %75, i32 %76)
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %destPR, i32 0, i32 5
  %77 = load i32, i32* %rowstride, align 4
  %78 = load i8*, i8** %d, align 8
  %idx.ext = sext i32 %77 to i64
  %add.ptr = getelementptr inbounds i8, i8* %78, i64 %idx.ext
  store i8* %add.ptr, i8** %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.80
  %79 = load i32, i32* %y, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.77

for.end:                                          ; preds = %for.cond.77
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end
  %80 = load i8*, i8** %pr, align 8
  %81 = bitcast i8* %80 to %struct._PixelRegionIterator*
  %call83 = call %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator* %81)
  %82 = bitcast %struct._PixelRegionIterator* %call83 to i8*
  store i8* %82, i8** %pr, align 8
  br label %for.cond

for.end.84:                                       ; preds = %if.else.9, %if.else.15, %if.then.24, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_brush_core_transform_pixmap(%struct._GimpBrushCore* %core, %struct._GimpBrush* %brush) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %pixmap = alloca %struct._TempBuf*, align 8
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %scale = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %0, i32 0, i32 5
  %1 = load double, double* %scale, align 8
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %3 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %scale1 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %3, i32 0, i32 5
  %4 = load double, double* %scale1, align 8
  %5 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %5, i32 0, i32 8
  %6 = load double, double* %aspect_ratio, align 8
  %7 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %angle = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %7, i32 0, i32 6
  %8 = load double, double* %angle, align 8
  %9 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %hardness = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %9, i32 0, i32 7
  %10 = load double, double* %hardness, align 8
  %call = call %struct._TempBuf* @gimp_brush_transform_pixmap(%struct._GimpBrush* %2, double %4, double %6, double %8, double %10)
  store %struct._TempBuf* %call, %struct._TempBuf** %pixmap, align 8
  %11 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %transform_pixmap = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %12, i32 0, i32 14
  %13 = load %struct._TempBuf*, %struct._TempBuf** %transform_pixmap, align 8
  %cmp2 = icmp eq %struct._TempBuf* %11, %13
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  store %struct._TempBuf* %14, %struct._TempBuf** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %15 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %16 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %transform_pixmap5 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %16, i32 0, i32 14
  store %struct._TempBuf* %15, %struct._TempBuf** %transform_pixmap5, align 8
  %17 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_cache_invalid = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %17, i32 0, i32 17
  store i32 1, i32* %subsample_cache_invalid, align 4
  %18 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %transform_pixmap6 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %18, i32 0, i32 14
  %19 = load %struct._TempBuf*, %struct._TempBuf** %transform_pixmap6, align 8
  store %struct._TempBuf* %19, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %20 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %20
}

declare %struct._PixelRegionIterator* @pixel_regions_register(i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_paint_line_pixmap_mask(%struct._GimpImage* %dest, %struct._GimpDrawable* %drawable, %struct._TempBuf* %pixmap_mask, %struct._TempBuf* %brush_mask, i8* %d, i32 %x, i32 %y, i32 %bytes, i32 %width, i32 %mode) #3 {
entry:
  %dest.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %pixmap_mask.addr = alloca %struct._TempBuf*, align 8
  %brush_mask.addr = alloca %struct._TempBuf*, align 8
  %d.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %mask = alloca i8*, align 8
  %b = alloca i8*, align 8
  %p = alloca i8*, align 8
  %alpha = alloca double, align 8
  %factor = alloca double, align 8
  %x_index = alloca i32, align 4
  %i = alloca i32, align 4
  %byte_loop = alloca i32, align 4
  store %struct._GimpImage* %dest, %struct._GimpImage** %dest.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._TempBuf* %pixmap_mask, %struct._TempBuf** %pixmap_mask.addr, align 8
  store %struct._TempBuf* %brush_mask, %struct._TempBuf** %brush_mask.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store double 0x3F70101064C34B5E, double* %factor, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %width1 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %1, i32 0, i32 1
  %2 = load i32, i32* %width1, align 4
  %3 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %x.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.4, %while.end
  %4 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %while.body.4, label %while.end.6

while.body.4:                                     ; preds = %while.cond.2
  %5 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %5, i32 0, i32 2
  %6 = load i32, i32* %height, align 4
  %7 = load i32, i32* %y.addr, align 4
  %add5 = add nsw i32 %7, %6
  store i32 %add5, i32* %y.addr, align 4
  br label %while.cond.2

while.end.6:                                      ; preds = %while.cond.2
  %8 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %call = call i8* @temp_buf_get_data(%struct._TempBuf* %8)
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %height7 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height7, align 4
  %rem = srem i32 %9, %11
  %12 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %width8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 1
  %13 = load i32, i32* %width8, align 4
  %mul = mul nsw i32 %rem, %13
  %14 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %bytes9 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 0
  %15 = load i32, i32* %bytes9, align 4
  %mul10 = mul nsw i32 %mul, %15
  %idx.ext = sext i32 %mul10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext
  store i8* %add.ptr, i8** %b, align 8
  %16 = load i32, i32* %mode.addr, align 4
  %cmp11 = icmp eq i32 %16, 1
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end.6
  %17 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %tobool = icmp ne %struct._TempBuf* %17, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %call12 = call i8* @temp_buf_get_data(%struct._TempBuf* %18)
  %19 = load i32, i32* %y.addr, align 4
  %20 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %height13 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %20, i32 0, i32 2
  %21 = load i32, i32* %height13, align 4
  %rem14 = srem i32 %19, %21
  %22 = load %struct._TempBuf*, %struct._TempBuf** %brush_mask.addr, align 8
  %width15 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %22, i32 0, i32 1
  %23 = load i32, i32* %width15, align 4
  %mul16 = mul nsw i32 %rem14, %23
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %call12, i64 %idx.ext17
  store i8* %add.ptr18, i8** %mask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %if.then
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %width.addr, align 4
  %cmp19 = icmp slt i32 %24, %25
  br i1 %cmp19, label %for.body, label %for.end.51

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %x.addr, align 4
  %add20 = add nsw i32 %26, %27
  %28 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %width21 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %28, i32 0, i32 1
  %29 = load i32, i32* %width21, align 4
  %rem22 = srem i32 %add20, %29
  store i32 %rem22, i32* %x_index, align 4
  %30 = load i8*, i8** %b, align 8
  %31 = load i32, i32* %x_index, align 4
  %32 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %bytes23 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %32, i32 0, i32 0
  %33 = load i32, i32* %bytes23, align 4
  %mul24 = mul nsw i32 %31, %33
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %30, i64 %idx.ext25
  store i8* %add.ptr26, i8** %p, align 8
  %34 = load i32, i32* %x_index, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load i8*, i8** %mask, align 8
  %arrayidx = getelementptr inbounds i8, i8* %35, i64 %idxprom
  %36 = load i8, i8* %arrayidx, align 1
  %37 = load i32, i32* %bytes.addr, align 4
  %sub = sub nsw i32 %37, 1
  %idxprom27 = sext i32 %sub to i64
  %38 = load i8*, i8** %d.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %38, i64 %idxprom27
  store i8 %36, i8* %arrayidx28, align 1
  %39 = load i32, i32* %bytes.addr, align 4
  %sub29 = sub nsw i32 %39, 1
  %idxprom30 = sext i32 %sub29 to i64
  %40 = load i8*, i8** %d.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %40, i64 %idxprom30
  %41 = load i8, i8* %arrayidx31, align 1
  %conv = zext i8 %41 to i32
  %conv32 = sitofp i32 %conv to double
  %mul33 = fmul double %conv32, 0x3F70101064C34B5E
  store double %mul33, double* %alpha, align 8
  %42 = load double, double* %alpha, align 8
  %tobool34 = fcmp une double %42, 0.000000e+00
  br i1 %tobool34, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %for.body
  store i32 0, i32* %byte_loop, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %if.then.35
  %43 = load i32, i32* %byte_loop, align 4
  %44 = load i32, i32* %bytes.addr, align 4
  %sub37 = sub nsw i32 %44, 1
  %cmp38 = icmp slt i32 %43, %sub37
  br i1 %cmp38, label %for.body.40, label %for.end

for.body.40:                                      ; preds = %for.cond.36
  %45 = load double, double* %alpha, align 8
  %46 = load i32, i32* %byte_loop, align 4
  %idxprom41 = sext i32 %46 to i64
  %47 = load i8*, i8** %d.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %47, i64 %idxprom41
  %48 = load i8, i8* %arrayidx42, align 1
  %conv43 = uitofp i8 %48 to double
  %mul44 = fmul double %conv43, %45
  %conv45 = fptoui double %mul44 to i8
  store i8 %conv45, i8* %arrayidx42, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.40
  %49 = load i32, i32* %byte_loop, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %byte_loop, align 4
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  %50 = load %struct._GimpImage*, %struct._GimpImage** %dest.addr, align 8
  %51 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call46 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %51)
  %52 = load i8*, i8** %d.addr, align 8
  %53 = load i8*, i8** %p, align 8
  call void @gimp_image_transform_color(%struct._GimpImage* %50, i32 %call46, i8* %52, i32 0, i8* %53)
  %54 = load i32, i32* %bytes.addr, align 4
  %55 = load i8*, i8** %d.addr, align 8
  %idx.ext47 = sext i32 %54 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %55, i64 %idx.ext47
  store i8* %add.ptr48, i8** %d.addr, align 8
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end
  %56 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %56, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond

for.end.51:                                       ; preds = %for.cond
  br label %if.end.72

if.else:                                          ; preds = %land.lhs.true, %while.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.69, %if.else
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %width.addr, align 4
  %cmp53 = icmp slt i32 %57, %58
  br i1 %cmp53, label %for.body.55, label %for.end.71

for.body.55:                                      ; preds = %for.cond.52
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %x.addr, align 4
  %add56 = add nsw i32 %59, %60
  %61 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %width57 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %61, i32 0, i32 1
  %62 = load i32, i32* %width57, align 4
  %rem58 = srem i32 %add56, %62
  store i32 %rem58, i32* %x_index, align 4
  %63 = load i8*, i8** %b, align 8
  %64 = load i32, i32* %x_index, align 4
  %65 = load %struct._TempBuf*, %struct._TempBuf** %pixmap_mask.addr, align 8
  %bytes59 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %65, i32 0, i32 0
  %66 = load i32, i32* %bytes59, align 4
  %mul60 = mul nsw i32 %64, %66
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %63, i64 %idx.ext61
  store i8* %add.ptr62, i8** %p, align 8
  %67 = load i32, i32* %bytes.addr, align 4
  %sub63 = sub nsw i32 %67, 1
  %idxprom64 = sext i32 %sub63 to i64
  %68 = load i8*, i8** %d.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %68, i64 %idxprom64
  store i8 -1, i8* %arrayidx65, align 1
  %69 = load %struct._GimpImage*, %struct._GimpImage** %dest.addr, align 8
  %70 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call66 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %70)
  %71 = load i8*, i8** %d.addr, align 8
  %72 = load i8*, i8** %p, align 8
  call void @gimp_image_transform_color(%struct._GimpImage* %69, i32 %call66, i8* %71, i32 0, i8* %72)
  %73 = load i32, i32* %bytes.addr, align 4
  %74 = load i8*, i8** %d.addr, align 8
  %idx.ext67 = sext i32 %73 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %74, i64 %idx.ext67
  store i8* %add.ptr68, i8** %d.addr, align 8
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.55
  %75 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %75, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.52

for.end.71:                                       ; preds = %for.cond.52
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %for.end.51
  ret void
}

declare %struct._PixelRegionIterator* @pixel_regions_process(%struct._PixelRegionIterator*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_class_init(%struct._GimpBrushCoreClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushCoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  store %struct._GimpBrushCoreClass* %klass, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushCoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrushCoreClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_paint_core_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %5, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %6 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpBrushCoreClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gimp_brush_get_type() #8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i64 %8, i32 2, i32 232, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call3)
  store i32 %call4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @core_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpBrushCoreClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gimp_dynamics_get_type() #8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i64 %11, i32 2, i32 240, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @core_signals, i32 0, i64 1), align 4
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_brush_core_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %start = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %13, i32 0, i32 1
  store i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)* @gimp_brush_core_start, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)** %start, align 8
  %14 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %pre_paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %14, i32 0, i32 2
  store i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)* @gimp_brush_core_pre_paint, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)** %pre_paint, align 8
  %15 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %post_paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %15, i32 0, i32 4
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)* @gimp_brush_core_post_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32)** %post_paint, align 8
  %16 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %interpolate = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %16, i32 0, i32 5
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32)* @gimp_brush_core_interpolate, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32)** %interpolate, align 8
  %17 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %get_paint_area = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %17, i32 0, i32 6
  store %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)* @gimp_brush_core_get_paint_area, %struct._TempBuf* (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*)** %get_paint_area, align 8
  %18 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %handles_changing_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %18, i32 0, i32 1
  store i32 0, i32* %handles_changing_brush, align 4
  %19 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %handles_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %19, i32 0, i32 2
  store i32 1, i32* %handles_transforming_brush, align 4
  %20 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %handles_dynamic_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %20, i32 0, i32 3
  store i32 1, i32* %handles_dynamic_transforming_brush, align 4
  %21 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %set_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %21, i32 0, i32 4
  store void (%struct._GimpBrushCore*, %struct._GimpBrush*)* @gimp_brush_core_real_set_brush, void (%struct._GimpBrushCore*, %struct._GimpBrush*)** %set_brush, align 8
  %22 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %klass.addr, align 8
  %set_dynamics = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %22, i32 0, i32 5
  store void (%struct._GimpBrushCore*, %struct._GimpDynamics*)* @gimp_brush_core_real_set_dynamics, void (%struct._GimpBrushCore*, %struct._GimpDynamics*)** %set_dynamics, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %core = alloca %struct._GimpBrushCore*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_core_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %2, %struct._GimpBrushCore** %core, align 8
  %3 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %pressure_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %3, i32 0, i32 9
  %4 = load %struct._TempBuf*, %struct._TempBuf** %pressure_brush, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %pressure_brush2 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %5, i32 0, i32 9
  %6 = load %struct._TempBuf*, %struct._TempBuf** %pressure_brush2, align 8
  call void @temp_buf_free(%struct._TempBuf* %6)
  %7 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %pressure_brush3 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %7, i32 0, i32 9
  store %struct._TempBuf* null, %struct._TempBuf** %pressure_brush3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.end
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 2
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %9, 2
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %solid_brushes = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %12, i32 0, i32 10
  %arrayidx = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx, i32 0, i64 %idxprom
  %13 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx8, align 8
  %tobool9 = icmp ne %struct._TempBuf* %13, null
  br i1 %tobool9, label %if.then.10, label %if.end.21

if.then.10:                                       ; preds = %for.body.6
  %14 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %solid_brushes13 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %16, i32 0, i32 10
  %arrayidx14 = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes13, i32 0, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx14, i32 0, i64 %idxprom11
  %17 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx15, align 8
  call void @temp_buf_free(%struct._TempBuf* %17)
  %18 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %solid_brushes18 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %20, i32 0, i32 10
  %arrayidx19 = getelementptr inbounds [2 x [2 x %struct._TempBuf*]], [2 x [2 x %struct._TempBuf*]]* %solid_brushes18, i32 0, i64 %idxprom17
  %arrayidx20 = getelementptr inbounds [2 x %struct._TempBuf*], [2 x %struct._TempBuf*]* %arrayidx19, i32 0, i64 %idxprom16
  store %struct._TempBuf* null, %struct._TempBuf** %arrayidx20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.10, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %23 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %rand = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %23, i32 0, i32 21
  %24 = load %struct._GRand*, %struct._GRand** %rand, align 8
  %tobool25 = icmp ne %struct._GRand* %24, null
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %for.end.24
  %25 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %rand27 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %25, i32 0, i32 21
  %26 = load %struct._GRand*, %struct._GRand** %rand27, align 8
  call void @g_rand_free(%struct._GRand* %26)
  %27 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %rand28 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %27, i32 0, i32 21
  store %struct._GRand* null, %struct._GRand** %rand28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %for.end.24
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.56, %if.end.29
  %28 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %28, 5
  br i1 %cmp31, label %for.body.32, label %for.end.58

for.body.32:                                      ; preds = %for.cond.30
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.53, %for.body.32
  %29 = load i32, i32* %j, align 4
  %cmp34 = icmp slt i32 %29, 5
  br i1 %cmp34, label %for.body.35, label %for.end.55

for.body.35:                                      ; preds = %for.cond.33
  %30 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %subsample_brushes = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %32, i32 0, i32 15
  %arrayidx38 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx38, i32 0, i64 %idxprom36
  %33 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx39, align 8
  %tobool40 = icmp ne %struct._TempBuf* %33, null
  br i1 %tobool40, label %if.then.41, label %if.end.52

if.then.41:                                       ; preds = %for.body.35
  %34 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %subsample_brushes44 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %36, i32 0, i32 15
  %arrayidx45 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes44, i32 0, i64 %idxprom43
  %arrayidx46 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx45, i32 0, i64 %idxprom42
  %37 = load %struct._TempBuf*, %struct._TempBuf** %arrayidx46, align 8
  call void @temp_buf_free(%struct._TempBuf* %37)
  %38 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %38 to i64
  %39 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %subsample_brushes49 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %40, i32 0, i32 15
  %arrayidx50 = getelementptr inbounds [5 x [5 x %struct._TempBuf*]], [5 x [5 x %struct._TempBuf*]]* %subsample_brushes49, i32 0, i64 %idxprom48
  %arrayidx51 = getelementptr inbounds [5 x %struct._TempBuf*], [5 x %struct._TempBuf*]* %arrayidx50, i32 0, i64 %idxprom47
  store %struct._TempBuf* null, %struct._TempBuf** %arrayidx51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.41, %for.body.35
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %41 = load i32, i32* %j, align 4
  %inc54 = add nsw i32 %41, 1
  store i32 %inc54, i32* %j, align 4
  br label %for.cond.33

for.end.55:                                       ; preds = %for.cond.33
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %42 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %42, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond.30

for.end.58:                                       ; preds = %for.cond.30
  %43 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %43, i32 0, i32 1
  %44 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  %tobool59 = icmp ne %struct._GimpBrush* %44, null
  br i1 %tobool59, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %for.end.58
  %45 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush61 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %45, i32 0, i32 1
  %46 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush61, align 8
  %47 = bitcast %struct._GimpBrush* %46 to i8*
  %48 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %49 = bitcast %struct._GimpBrushCore* %48 to i8*
  %call62 = call i32 @g_signal_handlers_disconnect_matched(i8* %47, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpBrush*, %struct._GimpBrushCore*)* @gimp_brush_core_invalidate_cache to i8*), i8* %49)
  %50 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush63 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %50, i32 0, i32 1
  %51 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush63, align 8
  call void @gimp_brush_end_use(%struct._GimpBrush* %51)
  %52 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush64 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %52, i32 0, i32 1
  %53 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush64, align 8
  %54 = bitcast %struct._GimpBrush* %53 to i8*
  call void @g_object_unref(i8* %54)
  %55 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush65 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %55, i32 0, i32 1
  store %struct._GimpBrush* null, %struct._GimpBrush** %main_brush65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.60, %for.end.58
  %56 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %56, i32 0, i32 3
  %57 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %tobool67 = icmp ne %struct._GimpDynamics* %57, null
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.end.66
  %58 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %dynamics69 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %58, i32 0, i32 3
  %59 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics69, align 8
  %60 = bitcast %struct._GimpDynamics* %59 to i8*
  call void @g_object_unref(i8* %60)
  %61 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %dynamics70 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %61, i32 0, i32 3
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %dynamics70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.end.66
  %62 = load i8*, i8** @gimp_brush_core_parent_class, align 8
  %63 = bitcast i8* %62 to %struct._GTypeClass*
  %call72 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %63, i64 80)
  %64 = bitcast %struct._GTypeClass* %call72 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %64, i32 0, i32 6
  %65 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %66 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %65(%struct._GObject* %66)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_brush_core_start(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %core = alloca %struct._GimpBrushCore*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_core_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %2, %struct._GimpBrushCore** %core, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_context_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContext*
  store %struct._GimpContext* %5, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call4 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %7)
  call void @gimp_brush_core_set_brush(%struct._GimpBrushCore* %6, %struct._GimpBrush* %call4)
  %8 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext* %9)
  call void @gimp_brush_core_set_dynamics(%struct._GimpBrushCore* %8, %struct._GimpDynamics* %call5)
  %10 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %10, i32 0, i32 1
  %11 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  %tobool = icmp ne %struct._GimpBrush* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 @gimp_error_quark() #8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %12, i32 %call6, i32 0, i8* %call7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %13, i32 0, i32 3
  %14 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %tobool8 = icmp ne %struct._GimpDynamics* %14, null
  br i1 %tobool8, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call10 = call i32 @gimp_error_quark() #8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %15, i32 %call10, i32 0, i8* %call11)
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %16 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %17 = bitcast %struct._GimpBrushCore* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %19 = bitcast %struct._GTypeClass* %18 to %struct._GimpBrushCoreClass*
  %handles_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %19, i32 0, i32 2
  %20 = load i32, i32* %handles_transforming_brush, align 4
  %tobool13 = icmp ne i32 %20, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %21 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %22 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %23 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_brush_core_eval_transform_dynamics(%struct._GimpBrushCore* %21, %struct._GimpDrawable* %22, %struct._GimpPaintOptions* %23, %struct._GimpCoords* %24)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %25 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush16 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %25, i32 0, i32 1
  %26 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush16, align 8
  %call17 = call i32 @gimp_brush_get_spacing(%struct._GimpBrush* %26)
  %conv = sitofp i32 %call17 to double
  %div = fdiv double %conv, 1.000000e+02
  %27 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %27, i32 0, i32 4
  store double %div, double* %spacing, align 8
  %28 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush18 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %28, i32 0, i32 1
  %29 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush18, align 8
  %30 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %30, i32 0, i32 2
  store %struct._GimpBrush* %29, %struct._GimpBrush** %brush, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %33 = bitcast %struct._GimpDrawable* %32 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call19)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %34)
  %call22 = call double @gimp_paint_options_get_jitter(%struct._GimpPaintOptions* %31, %struct._GimpImage* %call21)
  %35 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %jitter = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %35, i32 0, i32 18
  store double %call22, double* %jitter, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.9, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_brush_core_pre_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, i32 %paint_state, i32 %time) #3 {
entry:
  %retval = alloca i32, align 4
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %core = alloca %struct._GimpBrushCore*, align 8
  %last_coords = alloca %struct._GimpCoords, align 8
  %current_coords = alloca %struct._GimpCoords, align 8
  %scale = alloca double, align 8
  %image = alloca %struct._GimpImage*, align 8
  %fade_point = alloca double, align 8
  %size_output = alloca %struct._GimpDynamicsOutput*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_core_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %2, %struct._GimpBrushCore** %core, align 8
  %3 = load i32, i32* %paint_state.addr, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end.42

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_get_last_coords(%struct._GimpPaintCore* %4, %struct._GimpCoords* %last_coords)
  %5 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_get_current_coords(%struct._GimpPaintCore* %5, %struct._GimpCoords* %current_coords)
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %6 = load double, double* %x, align 8
  %x2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 0
  %7 = load double, double* %x2, align 8
  %cmp3 = fcmp oeq double %6, %7
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %y4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 1
  %9 = load double, double* %y4, align 8
  %cmp5 = fcmp oeq double %8, %9
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %10 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %10, i32 0, i32 1
  %11 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  %call7 = call i32 @gimp_brush_want_null_motion(%struct._GimpBrush* %11, %struct._GimpCoords* %last_coords, %struct._GimpCoords* %current_coords)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %if.then
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %13 = bitcast %struct._GimpBrushCore* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %15 = bitcast %struct._GTypeClass* %14 to %struct._GimpBrushCoreClass*
  %handles_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %15, i32 0, i32 2
  %16 = load i32, i32* %handles_transforming_brush, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.end.35

if.then.10:                                       ; preds = %if.end
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %19)
  store %struct._GimpImage* %call13, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %21 = bitcast %struct._GimpBrushCore* %20 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %23 = bitcast %struct._GTypeClass* %22 to %struct._GimpBrushCoreClass*
  %handles_dynamic_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %23, i32 0, i32 3
  %24 = load i32, i32* %handles_dynamic_transforming_brush, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.end.34

if.then.16:                                       ; preds = %if.then.10
  %25 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %25, i32 0, i32 3
  %26 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call17 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %26, i32 1)
  store %struct._GimpDynamicsOutput* %call17, %struct._GimpDynamicsOutput** %size_output, align 8
  %27 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %29 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %29, i32 0, i32 8
  %30 = load double, double* %pixel_dist, align 8
  %call18 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %27, %struct._GimpImage* %28, double %30)
  store double %call18, double* %fade_point, align 8
  %31 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %brush_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %31, i32 0, i32 2
  %32 = load double, double* %brush_size, align 8
  %33 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush19 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %33, i32 0, i32 1
  %34 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush19, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %34, i32 0, i32 1
  %35 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %35, i32 0, i32 1
  %36 = load i32, i32* %width, align 4
  %37 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush20 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %37, i32 0, i32 1
  %38 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush20, align 8
  %mask21 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %38, i32 0, i32 1
  %39 = load %struct._TempBuf*, %struct._TempBuf** %mask21, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %39, i32 0, i32 2
  %40 = load i32, i32* %height, align 4
  %cmp22 = icmp sgt i32 %36, %40
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.16
  %41 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush23 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %41, i32 0, i32 1
  %42 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush23, align 8
  %mask24 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %42, i32 0, i32 1
  %43 = load %struct._TempBuf*, %struct._TempBuf** %mask24, align 8
  %width25 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %43, i32 0, i32 1
  %44 = load i32, i32* %width25, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %45 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush26 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %45, i32 0, i32 1
  %46 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush26, align 8
  %mask27 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %46, i32 0, i32 1
  %47 = load %struct._TempBuf*, %struct._TempBuf** %mask27, align 8
  %height28 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %47, i32 0, i32 2
  %48 = load i32, i32* %height28, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %44, %cond.true ], [ %48, %cond.false ]
  %conv = sitofp i32 %cond to double
  %div = fdiv double %32, %conv
  %49 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %size_output, align 8
  %50 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %51 = load double, double* %fade_point, align 8
  %call29 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %49, %struct._GimpCoords* %current_coords, %struct._GimpPaintOptions* %50, double %51)
  %mul = fmul double %div, %call29
  store double %mul, double* %scale, align 8
  %52 = load double, double* %scale, align 8
  %cmp30 = fcmp olt double %52, 1.000000e-07
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %cond.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.10
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  %53 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %54 = bitcast %struct._GimpPaintCore* %53 to %struct._GTypeInstance*
  %g_class36 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class36, align 8
  %56 = bitcast %struct._GTypeClass* %55 to %struct._GimpBrushCoreClass*
  %handles_changing_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %56, i32 0, i32 1
  %57 = load i32, i32* %handles_changing_brush, align 4
  %tobool37 = icmp ne i32 %57, 0
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.35
  %58 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush39 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %58, i32 0, i32 1
  %59 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush39, align 8
  %call40 = call %struct._GimpBrush* @gimp_brush_select_brush(%struct._GimpBrush* %59, %struct._GimpCoords* %last_coords, %struct._GimpCoords* %current_coords)
  %60 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %60, i32 0, i32 2
  store %struct._GimpBrush* %call40, %struct._GimpBrush** %brush, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.35
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.32, %if.then.8
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_post_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, i32 %paint_state, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %core = alloca %struct._GimpBrushCore*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_core_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %2, %struct._GimpBrushCore** %core, align 8
  %3 = load i32, i32* %paint_state.addr, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %4, i32 0, i32 1
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  %6 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %6, i32 0, i32 2
  store %struct._GimpBrush* %5, %struct._GimpBrush** %brush, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_interpolate(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %time.addr = alloca i32, align 4
  %core = alloca %struct._GimpBrushCore*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %spacing_output = alloca %struct._GimpDynamicsOutput*, align 8
  %last_coords = alloca %struct._GimpCoords, align 8
  %current_coords = alloca %struct._GimpCoords, align 8
  %delta_vec = alloca %struct._GimpVector2, align 8
  %delta_pressure = alloca double, align 8
  %delta_xtilt = alloca double, align 8
  %delta_ytilt = alloca double, align 8
  %delta_wheel = alloca double, align 8
  %delta_velocity = alloca double, align 8
  %temp_direction = alloca double, align 8
  %temp_vec = alloca %struct._GimpVector2, align 8
  %n = alloca i32, align 4
  %num_points = alloca i32, align 4
  %t0 = alloca double, align 8
  %dt = alloca double, align 8
  %tn = alloca double, align 8
  %st_factor = alloca double, align 8
  %st_offset = alloca double, align 8
  %initial = alloca double, align 8
  %dist = alloca double, align 8
  %total = alloca double, align 8
  %pixel_dist = alloca double, align 8
  %pixel_initial = alloca double, align 8
  %xd = alloca double, align 8
  %yd = alloca double, align 8
  %mag = alloca double, align 8
  %dyn_spacing = alloca double, align 8
  %fade_point = alloca double, align 8
  %use_dyn_spacing = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %s0 = alloca i32, align 4
  %direction174 = alloca i32, align 4
  %x179 = alloca i32, align 4
  %y181 = alloca i32, align 4
  %s0183 = alloca i32, align 4
  %sn = alloca i32, align 4
  %t = alloca double, align 8
  %p = alloca double, align 8
  %jitter_output = alloca %struct._GimpDynamicsOutput*, align 8
  %dyn_jitter = alloca double, align 8
  %jitter_dist = alloca double, align 8
  %jitter_angle = alloca i32, align 4
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_core_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %2, %struct._GimpBrushCore** %core, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %6, i32 0, i32 4
  %7 = load double, double* %spacing, align 8
  store double %7, double* %dyn_spacing, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %8, i32 0, i32 2
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %10 = bitcast %struct._GimpBrush* %9 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %10, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_brush_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %11, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool6 = icmp ne %struct._GTypeClass* %13, null
  br i1 %tobool6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %17 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %16, %17
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.9:                                        ; preds = %land.lhs.true, %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %19 = load i64, i64* %__t, align 8
  %call10 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %18, i64 %19) #9
  store i32 %call10, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %20 = load i32, i32* %__r, align 4
  store i32 %20, i32* %tmp
  %21 = load i32, i32* %tmp
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_brush_core_interpolate, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %22 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_get_last_coords(%struct._GimpPaintCore* %22, %struct._GimpCoords* %last_coords)
  %23 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_get_current_coords(%struct._GimpPaintCore* %23, %struct._GimpCoords* %current_coords)
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  call void @gimp_avoid_exact_integer(double* %x)
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  call void @gimp_avoid_exact_integer(double* %y)
  %x16 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 0
  call void @gimp_avoid_exact_integer(double* %x16)
  %y17 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 1
  call void @gimp_avoid_exact_integer(double* %y17)
  %x18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 0
  %24 = load double, double* %x18, align 8
  %x19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %25 = load double, double* %x19, align 8
  %sub = fsub double %24, %25
  %x20 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  store double %sub, double* %x20, align 8
  %y21 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 1
  %26 = load double, double* %y21, align 8
  %y22 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %27 = load double, double* %y22, align 8
  %sub23 = fsub double %26, %27
  %y24 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  store double %sub23, double* %y24, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 2
  %28 = load double, double* %pressure, align 8
  %pressure25 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 2
  %29 = load double, double* %pressure25, align 8
  %sub26 = fsub double %28, %29
  store double %sub26, double* %delta_pressure, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 3
  %30 = load double, double* %xtilt, align 8
  %xtilt27 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 3
  %31 = load double, double* %xtilt27, align 8
  %sub28 = fsub double %30, %31
  store double %sub28, double* %delta_xtilt, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 4
  %32 = load double, double* %ytilt, align 8
  %ytilt29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 4
  %33 = load double, double* %ytilt29, align 8
  %sub30 = fsub double %32, %33
  store double %sub30, double* %delta_ytilt, align 8
  %wheel = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 5
  %34 = load double, double* %wheel, align 8
  %wheel31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 5
  %35 = load double, double* %wheel31, align 8
  %sub32 = fsub double %34, %35
  store double %sub32, double* %delta_wheel, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 6
  %36 = load double, double* %velocity, align 8
  %velocity33 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 6
  %37 = load double, double* %velocity33, align 8
  %sub34 = fsub double %36, %37
  store double %sub34, double* %delta_velocity, align 8
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 7
  %38 = load double, double* %direction, align 8
  store double %38, double* %temp_direction, align 8
  %x35 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  %39 = load double, double* %x35, align 8
  %tobool36 = fcmp une double %39, 0.000000e+00
  br i1 %tobool36, label %if.end.51, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %do.end
  %y38 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  %40 = load double, double* %y38, align 8
  %tobool39 = fcmp une double %40, 0.000000e+00
  br i1 %tobool39, label %if.end.51, label %land.lhs.true.40

land.lhs.true.40:                                 ; preds = %land.lhs.true.37
  %41 = load double, double* %delta_pressure, align 8
  %tobool41 = fcmp une double %41, 0.000000e+00
  br i1 %tobool41, label %if.end.51, label %land.lhs.true.42

land.lhs.true.42:                                 ; preds = %land.lhs.true.40
  %42 = load double, double* %delta_xtilt, align 8
  %tobool43 = fcmp une double %42, 0.000000e+00
  br i1 %tobool43, label %if.end.51, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %land.lhs.true.42
  %43 = load double, double* %delta_ytilt, align 8
  %tobool45 = fcmp une double %43, 0.000000e+00
  br i1 %tobool45, label %if.end.51, label %land.lhs.true.46

land.lhs.true.46:                                 ; preds = %land.lhs.true.44
  %44 = load double, double* %delta_wheel, align 8
  %tobool47 = fcmp une double %44, 0.000000e+00
  br i1 %tobool47, label %if.end.51, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %land.lhs.true.46
  %45 = load double, double* %delta_velocity, align 8
  %tobool49 = fcmp une double %45, 0.000000e+00
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.48
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.48, %land.lhs.true.46, %land.lhs.true.44, %land.lhs.true.42, %land.lhs.true.40, %land.lhs.true.37, %do.end
  %call52 = call double @gimp_vector2_length(%struct._GimpVector2* %delta_vec)
  store double %call52, double* %pixel_dist, align 8
  %46 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist53 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %46, i32 0, i32 8
  %47 = load double, double* %pixel_dist53, align 8
  store double %47, double* %pixel_initial, align 8
  %48 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %scale = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %48, i32 0, i32 5
  %49 = load double, double* %scale, align 8
  %cmp54 = fcmp oeq double %49, 0.000000e+00
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.51
  %50 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_set_last_coords(%struct._GimpPaintCore* %50, %struct._GimpCoords* %current_coords)
  %51 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %53 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %54 = load i32, i32* %time.addr, align 4
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %51, %struct._GimpDrawable* %52, %struct._GimpPaintOptions* %53, i32 1, i32 %54)
  %55 = load double, double* %pixel_initial, align 8
  %56 = load double, double* %pixel_dist, align 8
  %add = fadd double %55, %56
  %57 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist56 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %57, i32 0, i32 8
  store double %add, double* %pixel_dist56, align 8
  br label %return

if.end.57:                                        ; preds = %if.end.51
  %58 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %58, i32 0, i32 3
  %59 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call58 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %59, i32 7)
  store %struct._GimpDynamicsOutput* %call58, %struct._GimpDynamicsOutput** %spacing_output, align 8
  %60 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %62 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist59 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %62, i32 0, i32 8
  %63 = load double, double* %pixel_dist59, align 8
  %call60 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %60, %struct._GimpImage* %61, double %63)
  store double %call60, double* %fade_point, align 8
  %64 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %spacing_output, align 8
  %call61 = call i32 @gimp_dynamics_output_is_enabled(%struct._GimpDynamicsOutput* %64)
  store i32 %call61, i32* %use_dyn_spacing, align 4
  %65 = load i32, i32* %use_dyn_spacing, align 4
  %tobool62 = icmp ne i32 %65, 0
  br i1 %tobool62, label %if.then.63, label %if.end.73

if.then.63:                                       ; preds = %if.end.57
  %66 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %spacing_output, align 8
  %67 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %68 = load double, double* %fade_point, align 8
  %call64 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %66, %struct._GimpCoords* %current_coords, %struct._GimpPaintOptions* %67, double %68)
  store double %call64, double* %dyn_spacing, align 8
  %69 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing65 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %69, i32 0, i32 4
  %70 = load double, double* %spacing65, align 8
  %71 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing66 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %71, i32 0, i32 4
  %72 = load double, double* %spacing66, align 8
  %sub67 = fsub double 2.000000e+00, %72
  %73 = load double, double* %dyn_spacing, align 8
  %sub68 = fsub double 1.000000e+00, %73
  %mul = fmul double %sub67, %sub68
  %add69 = fadd double %70, %mul
  store double %add69, double* %dyn_spacing, align 8
  %74 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing70 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %74, i32 0, i32 4
  %75 = load double, double* %spacing70, align 8
  %76 = load double, double* %dyn_spacing, align 8
  %cmp71 = fcmp ogt double %75, %76
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.63
  %77 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing72 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %77, i32 0, i32 4
  %78 = load double, double* %spacing72, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.63
  %79 = load double, double* %dyn_spacing, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %78, %cond.true ], [ %79, %cond.false ]
  store double %cond, double* %dyn_spacing, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %cond.end, %if.end.57
  %80 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush74 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %80, i32 0, i32 2
  %81 = load %struct._GimpBrush*, %struct._GimpBrush** %brush74, align 8
  %x_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %81, i32 0, i32 4
  %82 = bitcast %struct._GimpVector2* %temp_vec to i8*
  %83 = bitcast %struct._GimpVector2* %x_axis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 16, i32 8, i1 false)
  %84 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %scale75 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %84, i32 0, i32 5
  %85 = load double, double* %scale75, align 8
  call void @gimp_vector2_mul(%struct._GimpVector2* %temp_vec, double %85)
  %86 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %angle = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %86, i32 0, i32 6
  %87 = load double, double* %angle, align 8
  %mul76 = fmul double %87, 0x400921FB54442D18
  %mul77 = fmul double %mul76, 2.000000e+00
  call void @gimp_vector2_rotate(%struct._GimpVector2* %temp_vec, double %mul77)
  %call78 = call double @gimp_vector2_length(%struct._GimpVector2* %temp_vec)
  store double %call78, double* %mag, align 8
  %call79 = call double @gimp_vector2_inner_product(%struct._GimpVector2* %delta_vec, %struct._GimpVector2* %temp_vec)
  %88 = load double, double* %mag, align 8
  %89 = load double, double* %mag, align 8
  %mul80 = fmul double %88, %89
  %div = fdiv double %call79, %mul80
  store double %div, double* %xd, align 8
  %90 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush81 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %90, i32 0, i32 2
  %91 = load %struct._GimpBrush*, %struct._GimpBrush** %brush81, align 8
  %y_axis = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %91, i32 0, i32 5
  %92 = bitcast %struct._GimpVector2* %temp_vec to i8*
  %93 = bitcast %struct._GimpVector2* %y_axis to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 16, i32 8, i1 false)
  %94 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %scale82 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %94, i32 0, i32 5
  %95 = load double, double* %scale82, align 8
  call void @gimp_vector2_mul(%struct._GimpVector2* %temp_vec, double %95)
  %96 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %angle83 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %96, i32 0, i32 6
  %97 = load double, double* %angle83, align 8
  %mul84 = fmul double %97, 0x400921FB54442D18
  %mul85 = fmul double %mul84, 2.000000e+00
  call void @gimp_vector2_rotate(%struct._GimpVector2* %temp_vec, double %mul85)
  %call86 = call double @gimp_vector2_length(%struct._GimpVector2* %temp_vec)
  store double %call86, double* %mag, align 8
  %call87 = call double @gimp_vector2_inner_product(%struct._GimpVector2* %delta_vec, %struct._GimpVector2* %temp_vec)
  %98 = load double, double* %mag, align 8
  %99 = load double, double* %mag, align 8
  %mul88 = fmul double %98, %99
  %div89 = fdiv double %call87, %mul88
  store double %div89, double* %yd, align 8
  %100 = load double, double* %xd, align 8
  %101 = load double, double* %xd, align 8
  %mul90 = fmul double %100, %101
  %102 = load double, double* %yd, align 8
  %103 = load double, double* %yd, align 8
  %mul91 = fmul double %102, %103
  %add92 = fadd double %mul90, %mul91
  %call93 = call double @sqrt(double %add92) #6
  %mul94 = fmul double 5.000000e-01, %call93
  store double %mul94, double* %dist, align 8
  %104 = load double, double* %dist, align 8
  %105 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %distance = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %105, i32 0, i32 7
  %106 = load double, double* %distance, align 8
  %add95 = fadd double %104, %106
  store double %add95, double* %total, align 8
  %107 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %distance96 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %107, i32 0, i32 7
  %108 = load double, double* %distance96, align 8
  store double %108, double* %initial, align 8
  %x97 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  %109 = load double, double* %x97, align 8
  %x98 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  %110 = load double, double* %x98, align 8
  %mul99 = fmul double %109, %110
  %y100 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  %111 = load double, double* %y100, align 8
  %y101 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  %112 = load double, double* %y101, align 8
  %mul102 = fmul double %111, %112
  %cmp103 = fcmp ogt double %mul99, %mul102
  br i1 %cmp103, label %if.then.104, label %if.else.108

if.then.104:                                      ; preds = %if.end.73
  %x105 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  %113 = load double, double* %x105, align 8
  store double %113, double* %st_factor, align 8
  %x106 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %114 = load double, double* %x106, align 8
  %sub107 = fsub double %114, 5.000000e-01
  store double %sub107, double* %st_offset, align 8
  br label %if.end.112

if.else.108:                                      ; preds = %if.end.73
  %y109 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  %115 = load double, double* %y109, align 8
  store double %115, double* %st_factor, align 8
  %y110 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %116 = load double, double* %y110, align 8
  %sub111 = fsub double %116, 5.000000e-01
  store double %sub111, double* %st_offset, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.108, %if.then.104
  %117 = load i32, i32* %use_dyn_spacing, align 4
  %tobool113 = icmp ne i32 %117, 0
  br i1 %tobool113, label %if.then.114, label %if.else.128

if.then.114:                                      ; preds = %if.end.112
  %118 = load double, double* %dist, align 8
  %119 = load double, double* %dyn_spacing, align 8
  %div116 = fdiv double %118, %119
  %conv = fptosi double %div116 to i32
  store i32 %conv, i32* %num_points, align 4
  %120 = load double, double* %st_offset, align 8
  %add117 = fadd double %120, 5.000000e-01
  %call118 = call double @floor(double %add117) #8
  %conv119 = fptosi double %call118 to i32
  store i32 %conv119, i32* %s0, align 4
  %121 = load i32, i32* %s0, align 4
  %conv120 = sitofp i32 %121 to double
  %122 = load double, double* %st_offset, align 8
  %sub121 = fsub double %conv120, %122
  %123 = load double, double* %st_factor, align 8
  %div122 = fdiv double %sub121, %123
  store double %div122, double* %t0, align 8
  %124 = load double, double* %dyn_spacing, align 8
  %125 = load double, double* %dist, align 8
  %div123 = fdiv double %124, %125
  store double %div123, double* %dt, align 8
  %126 = load i32, i32* %num_points, align 4
  %cmp124 = icmp eq i32 %126, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.114
  br label %return

if.end.127:                                       ; preds = %if.then.114
  br label %if.end.306

if.else.128:                                      ; preds = %if.end.112
  %127 = load double, double* %st_factor, align 8
  %call129 = call double @fabs(double %127) #8
  %128 = load double, double* %dist, align 8
  %129 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing130 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %129, i32 0, i32 4
  %130 = load double, double* %spacing130, align 8
  %div131 = fdiv double %128, %130
  %cmp132 = fcmp ogt double %call129, %div131
  br i1 %cmp132, label %if.then.134, label %if.else.163

if.then.134:                                      ; preds = %if.else.128
  %131 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing135 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %131, i32 0, i32 4
  %132 = load double, double* %spacing135, align 8
  %133 = load double, double* %dist, align 8
  %div136 = fdiv double %132, %133
  store double %div136, double* %dt, align 8
  %134 = load double, double* %initial, align 8
  %135 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing137 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %135, i32 0, i32 4
  %136 = load double, double* %spacing137, align 8
  %div138 = fdiv double %134, %136
  %add139 = fadd double %div138, 1.000000e+00
  %add140 = fadd double %add139, 1.000000e-05
  %conv141 = fptosi double %add140 to i32
  store i32 %conv141, i32* %n, align 4
  %137 = load i32, i32* %n, align 4
  %conv142 = sitofp i32 %137 to double
  %138 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing143 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %138, i32 0, i32 4
  %139 = load double, double* %spacing143, align 8
  %mul144 = fmul double %conv142, %139
  %140 = load double, double* %initial, align 8
  %sub145 = fsub double %mul144, %140
  %141 = load double, double* %dist, align 8
  %div146 = fdiv double %sub145, %141
  store double %div146, double* %t0, align 8
  %142 = load double, double* %t0, align 8
  %sub147 = fsub double 1.000010e+00, %142
  %143 = load double, double* %dt, align 8
  %div148 = fdiv double %sub147, %143
  %call149 = call double @floor(double %div148) #8
  %conv150 = fptosi double %call149 to i32
  %add151 = add nsw i32 1, %conv150
  store i32 %add151, i32* %num_points, align 4
  %144 = load i32, i32* %num_points, align 4
  %cmp152 = icmp eq i32 %144, 0
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.162

land.lhs.true.154:                                ; preds = %if.then.134
  %x155 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  %145 = load double, double* %x155, align 8
  %cmp156 = fcmp oeq double %145, 0.000000e+00
  br i1 %cmp156, label %if.then.161, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.154
  %y158 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  %146 = load double, double* %y158, align 8
  %cmp159 = fcmp oeq double %146, 0.000000e+00
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %lor.lhs.false, %land.lhs.true.154
  br label %return

if.end.162:                                       ; preds = %lor.lhs.false, %if.then.134
  br label %if.end.305

if.else.163:                                      ; preds = %if.else.128
  %147 = load double, double* %st_factor, align 8
  %call164 = call double @fabs(double %147) #8
  %cmp165 = fcmp olt double %call164, 1.000000e-05
  br i1 %cmp165, label %if.then.167, label %if.else.172

if.then.167:                                      ; preds = %if.else.163
  %x168 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %148 = load double, double* %x168, align 8
  %x169 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 0
  store double %148, double* %x169, align 8
  %y170 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %149 = load double, double* %y170, align 8
  %y171 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 1
  store double %149, double* %y171, align 8
  %150 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_set_current_coords(%struct._GimpPaintCore* %150, %struct._GimpCoords* %current_coords)
  br label %return

if.else.172:                                      ; preds = %if.else.163
  %151 = load double, double* %st_factor, align 8
  %cmp175 = fcmp ogt double %151, 0.000000e+00
  %cond177 = select i1 %cmp175, i32 1, i32 -1
  store i32 %cond177, i32* %direction174, align 4
  %152 = load double, double* %st_offset, align 8
  %add185 = fadd double %152, 5.000000e-01
  %call186 = call double @floor(double %add185) #8
  %conv187 = fptosi double %call186 to i32
  store i32 %conv187, i32* %s0183, align 4
  %153 = load double, double* %st_offset, align 8
  %154 = load double, double* %st_factor, align 8
  %add188 = fadd double %153, %154
  %add189 = fadd double %add188, 5.000000e-01
  %call190 = call double @floor(double %add189) #8
  %conv191 = fptosi double %call190 to i32
  store i32 %conv191, i32* %sn, align 4
  %155 = load i32, i32* %s0183, align 4
  %conv192 = sitofp i32 %155 to double
  %156 = load double, double* %st_offset, align 8
  %sub193 = fsub double %conv192, %156
  %157 = load double, double* %st_factor, align 8
  %div194 = fdiv double %sub193, %157
  store double %div194, double* %t0, align 8
  %158 = load i32, i32* %sn, align 4
  %conv195 = sitofp i32 %158 to double
  %159 = load double, double* %st_offset, align 8
  %sub196 = fsub double %conv195, %159
  %160 = load double, double* %st_factor, align 8
  %div197 = fdiv double %sub196, %160
  store double %div197, double* %tn, align 8
  %x198 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %161 = load double, double* %x198, align 8
  %162 = load double, double* %t0, align 8
  %x199 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  %163 = load double, double* %x199, align 8
  %mul200 = fmul double %162, %163
  %add201 = fadd double %161, %mul200
  %call202 = call double @floor(double %add201) #8
  %conv203 = fptosi double %call202 to i32
  store i32 %conv203, i32* %x179, align 4
  %y204 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %164 = load double, double* %y204, align 8
  %165 = load double, double* %t0, align 8
  %y205 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  %166 = load double, double* %y205, align 8
  %mul206 = fmul double %165, %166
  %add207 = fadd double %164, %mul206
  %call208 = call double @floor(double %add207) #8
  %conv209 = fptosi double %call208 to i32
  store i32 %conv209, i32* %y181, align 4
  %167 = load double, double* %t0, align 8
  %cmp210 = fcmp olt double %167, 0.000000e+00
  br i1 %cmp210, label %land.lhs.true.212, label %if.else.226

land.lhs.true.212:                                ; preds = %if.else.172
  %168 = load i32, i32* %x179, align 4
  %x213 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %169 = load double, double* %x213, align 8
  %call214 = call double @floor(double %169) #8
  %conv215 = fptosi double %call214 to i32
  %cmp216 = icmp eq i32 %168, %conv215
  br i1 %cmp216, label %land.lhs.true.218, label %if.then.224

land.lhs.true.218:                                ; preds = %land.lhs.true.212
  %170 = load i32, i32* %y181, align 4
  %y219 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %171 = load double, double* %y219, align 8
  %call220 = call double @floor(double %171) #8
  %conv221 = fptosi double %call220 to i32
  %cmp222 = icmp eq i32 %170, %conv221
  br i1 %cmp222, label %if.else.226, label %if.then.224

if.then.224:                                      ; preds = %land.lhs.true.218, %land.lhs.true.212
  %172 = load i32, i32* %direction174, align 4
  %173 = load i32, i32* %s0183, align 4
  %add225 = add nsw i32 %173, %172
  store i32 %add225, i32* %s0183, align 4
  br label %if.end.242

if.else.226:                                      ; preds = %land.lhs.true.218, %if.else.172
  %174 = load i32, i32* %x179, align 4
  %175 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %last_paint = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %175, i32 0, i32 6
  %x227 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_paint, i32 0, i32 0
  %176 = load double, double* %x227, align 8
  %call228 = call double @floor(double %176) #8
  %conv229 = fptosi double %call228 to i32
  %cmp230 = icmp eq i32 %174, %conv229
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.241

land.lhs.true.232:                                ; preds = %if.else.226
  %177 = load i32, i32* %y181, align 4
  %178 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %last_paint233 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %178, i32 0, i32 6
  %y234 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %last_paint233, i32 0, i32 1
  %179 = load double, double* %y234, align 8
  %call235 = call double @floor(double %179) #8
  %conv236 = fptosi double %call235 to i32
  %cmp237 = icmp eq i32 %177, %conv236
  br i1 %cmp237, label %if.then.239, label %if.end.241

if.then.239:                                      ; preds = %land.lhs.true.232
  %180 = load i32, i32* %direction174, align 4
  %181 = load i32, i32* %s0183, align 4
  %add240 = add nsw i32 %181, %180
  store i32 %add240, i32* %s0183, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %land.lhs.true.232, %if.else.226
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.224
  %x243 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %182 = load double, double* %x243, align 8
  %183 = load double, double* %tn, align 8
  %x244 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  %184 = load double, double* %x244, align 8
  %mul245 = fmul double %183, %184
  %add246 = fadd double %182, %mul245
  %call247 = call double @floor(double %add246) #8
  %conv248 = fptosi double %call247 to i32
  store i32 %conv248, i32* %x179, align 4
  %y249 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %185 = load double, double* %y249, align 8
  %186 = load double, double* %tn, align 8
  %y250 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  %187 = load double, double* %y250, align 8
  %mul251 = fmul double %186, %187
  %add252 = fadd double %185, %mul251
  %call253 = call double @floor(double %add252) #8
  %conv254 = fptosi double %call253 to i32
  store i32 %conv254, i32* %y181, align 4
  %188 = load double, double* %tn, align 8
  %cmp255 = fcmp ogt double %188, 1.000000e+00
  br i1 %cmp255, label %land.lhs.true.257, label %if.end.271

land.lhs.true.257:                                ; preds = %if.end.242
  %189 = load i32, i32* %x179, align 4
  %x258 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 0
  %190 = load double, double* %x258, align 8
  %call259 = call double @floor(double %190) #8
  %conv260 = fptosi double %call259 to i32
  %cmp261 = icmp eq i32 %189, %conv260
  br i1 %cmp261, label %land.lhs.true.263, label %if.then.269

land.lhs.true.263:                                ; preds = %land.lhs.true.257
  %191 = load i32, i32* %y181, align 4
  %y264 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 1
  %192 = load double, double* %y264, align 8
  %call265 = call double @floor(double %192) #8
  %conv266 = fptosi double %call265 to i32
  %cmp267 = icmp eq i32 %191, %conv266
  br i1 %cmp267, label %if.end.271, label %if.then.269

if.then.269:                                      ; preds = %land.lhs.true.263, %land.lhs.true.257
  %193 = load i32, i32* %direction174, align 4
  %194 = load i32, i32* %sn, align 4
  %sub270 = sub nsw i32 %194, %193
  store i32 %sub270, i32* %sn, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.269, %land.lhs.true.263, %if.end.242
  %195 = load i32, i32* %s0183, align 4
  %conv272 = sitofp i32 %195 to double
  %196 = load double, double* %st_offset, align 8
  %sub273 = fsub double %conv272, %196
  %197 = load double, double* %st_factor, align 8
  %div274 = fdiv double %sub273, %197
  store double %div274, double* %t0, align 8
  %198 = load i32, i32* %sn, align 4
  %conv275 = sitofp i32 %198 to double
  %199 = load double, double* %st_offset, align 8
  %sub276 = fsub double %conv275, %199
  %200 = load double, double* %st_factor, align 8
  %div277 = fdiv double %sub276, %200
  store double %div277, double* %tn, align 8
  %201 = load i32, i32* %direction174, align 4
  %conv278 = sitofp i32 %201 to double
  %mul279 = fmul double %conv278, 1.000000e+00
  %202 = load double, double* %st_factor, align 8
  %div280 = fdiv double %mul279, %202
  store double %div280, double* %dt, align 8
  %203 = load i32, i32* %direction174, align 4
  %204 = load i32, i32* %sn, align 4
  %205 = load i32, i32* %s0183, align 4
  %sub281 = sub nsw i32 %204, %205
  %mul282 = mul nsw i32 %203, %sub281
  %add283 = add nsw i32 1, %mul282
  store i32 %add283, i32* %num_points, align 4
  %206 = load i32, i32* %num_points, align 4
  %cmp284 = icmp sge i32 %206, 1
  br i1 %cmp284, label %if.then.286, label %if.end.303

if.then.286:                                      ; preds = %if.end.271
  %207 = load double, double* %tn, align 8
  %cmp287 = fcmp olt double %207, 1.000000e+00
  br i1 %cmp287, label %if.then.289, label %if.end.292

if.then.289:                                      ; preds = %if.then.286
  %208 = load double, double* %initial, align 8
  %209 = load double, double* %tn, align 8
  %210 = load double, double* %dist, align 8
  %mul290 = fmul double %209, %210
  %add291 = fadd double %208, %mul290
  store double %add291, double* %total, align 8
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.289, %if.then.286
  %211 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing293 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %211, i32 0, i32 4
  %212 = load double, double* %spacing293, align 8
  %213 = load double, double* %total, align 8
  %214 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %spacing294 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %214, i32 0, i32 4
  %215 = load double, double* %spacing294, align 8
  %div295 = fdiv double %213, %215
  %add296 = fadd double %div295, 5.000000e-01
  %conv297 = fptosi double %add296 to i32
  %conv298 = sitofp i32 %conv297 to double
  %mul299 = fmul double %212, %conv298
  store double %mul299, double* %total, align 8
  %216 = load double, double* %tn, align 8
  %sub300 = fsub double 1.000000e+00, %216
  %217 = load double, double* %dist, align 8
  %mul301 = fmul double %sub300, %217
  %218 = load double, double* %total, align 8
  %add302 = fadd double %218, %mul301
  store double %add302, double* %total, align 8
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.292, %if.end.271
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %if.end.162
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.end.127
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.306
  %219 = load i32, i32* %n, align 4
  %220 = load i32, i32* %num_points, align 4
  %cmp307 = icmp slt i32 %219, %220
  br i1 %cmp307, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %221 = load double, double* %t0, align 8
  %222 = load i32, i32* %n, align 4
  %conv310 = sitofp i32 %222 to double
  %223 = load double, double* %dt, align 8
  %mul311 = fmul double %conv310, %223
  %add312 = fadd double %221, %mul311
  store double %add312, double* %t, align 8
  %224 = load i32, i32* %n, align 4
  %conv314 = sitofp i32 %224 to double
  %225 = load i32, i32* %num_points, align 4
  %conv315 = sitofp i32 %225 to double
  %div316 = fdiv double %conv314, %conv315
  store double %div316, double* %p, align 8
  %x317 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %226 = load double, double* %x317, align 8
  %227 = load double, double* %t, align 8
  %x318 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  %228 = load double, double* %x318, align 8
  %mul319 = fmul double %227, %228
  %add320 = fadd double %226, %mul319
  %x321 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 0
  store double %add320, double* %x321, align 8
  %y322 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %229 = load double, double* %y322, align 8
  %230 = load double, double* %t, align 8
  %y323 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  %231 = load double, double* %y323, align 8
  %mul324 = fmul double %230, %231
  %add325 = fadd double %229, %mul324
  %y326 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 1
  store double %add325, double* %y326, align 8
  %pressure327 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 2
  %232 = load double, double* %pressure327, align 8
  %233 = load double, double* %p, align 8
  %234 = load double, double* %delta_pressure, align 8
  %mul328 = fmul double %233, %234
  %add329 = fadd double %232, %mul328
  %pressure330 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 2
  store double %add329, double* %pressure330, align 8
  %xtilt331 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 3
  %235 = load double, double* %xtilt331, align 8
  %236 = load double, double* %p, align 8
  %237 = load double, double* %delta_xtilt, align 8
  %mul332 = fmul double %236, %237
  %add333 = fadd double %235, %mul332
  %xtilt334 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 3
  store double %add333, double* %xtilt334, align 8
  %ytilt335 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 4
  %238 = load double, double* %ytilt335, align 8
  %239 = load double, double* %p, align 8
  %240 = load double, double* %delta_ytilt, align 8
  %mul336 = fmul double %239, %240
  %add337 = fadd double %238, %mul336
  %ytilt338 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 4
  store double %add337, double* %ytilt338, align 8
  %wheel339 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 5
  %241 = load double, double* %wheel339, align 8
  %242 = load double, double* %p, align 8
  %243 = load double, double* %delta_wheel, align 8
  %mul340 = fmul double %242, %243
  %add341 = fadd double %241, %mul340
  %wheel342 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 5
  store double %add341, double* %wheel342, align 8
  %velocity343 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 6
  %244 = load double, double* %velocity343, align 8
  %245 = load double, double* %p, align 8
  %246 = load double, double* %delta_velocity, align 8
  %mul344 = fmul double %245, %246
  %add345 = fadd double %244, %mul344
  %velocity346 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 6
  store double %add345, double* %velocity346, align 8
  %247 = load double, double* %temp_direction, align 8
  %direction347 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 7
  store double %247, double* %direction347, align 8
  %248 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %jitter = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %248, i32 0, i32 18
  %249 = load double, double* %jitter, align 8
  %cmp348 = fcmp ogt double %249, 0.000000e+00
  br i1 %cmp348, label %if.then.350, label %if.end.391

if.then.350:                                      ; preds = %for.body
  %250 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %dynamics355 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %250, i32 0, i32 3
  %251 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics355, align 8
  %call356 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %251, i32 10)
  store %struct._GimpDynamicsOutput* %call356, %struct._GimpDynamicsOutput** %jitter_output, align 8
  %252 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %jitter357 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %252, i32 0, i32 18
  %253 = load double, double* %jitter357, align 8
  %254 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %jitter_output, align 8
  %255 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %256 = load double, double* %fade_point, align 8
  %call358 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %254, %struct._GimpCoords* %current_coords, %struct._GimpPaintOptions* %255, double %256)
  %mul359 = fmul double %253, %call358
  store double %mul359, double* %dyn_jitter, align 8
  %257 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %rand = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %257, i32 0, i32 21
  %258 = load %struct._GRand*, %struct._GRand** %rand, align 8
  %259 = load double, double* %dyn_jitter, align 8
  %call360 = call double @g_rand_double_range(%struct._GRand* %258, double 0.000000e+00, double %259)
  store double %call360, double* %jitter_dist, align 8
  %260 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %rand361 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %260, i32 0, i32 21
  %261 = load %struct._GRand*, %struct._GRand** %rand361, align 8
  %call362 = call i32 @g_rand_int_range(%struct._GRand* %261, i32 0, i32 360)
  store i32 %call362, i32* %jitter_angle, align 4
  %262 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush363 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %262, i32 0, i32 2
  %263 = load %struct._GimpBrush*, %struct._GimpBrush** %brush363, align 8
  %x_axis364 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %263, i32 0, i32 4
  %x365 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis364, i32 0, i32 0
  %264 = load double, double* %x365, align 8
  %265 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush366 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %265, i32 0, i32 2
  %266 = load %struct._GimpBrush*, %struct._GimpBrush** %brush366, align 8
  %y_axis367 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %266, i32 0, i32 5
  %x368 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis367, i32 0, i32 0
  %267 = load double, double* %x368, align 8
  %add369 = fadd double %264, %267
  %268 = load double, double* %jitter_dist, align 8
  %mul370 = fmul double %add369, %268
  %269 = load i32, i32* %jitter_angle, align 4
  %idxprom = sext i32 %269 to i64
  %270 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %jitter_lut_x = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %270, i32 0, i32 19
  %arrayidx = getelementptr inbounds [360 x double], [360 x double]* %jitter_lut_x, i32 0, i64 %idxprom
  %271 = load double, double* %arrayidx, align 8
  %mul371 = fmul double %mul370, %271
  %272 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %scale372 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %272, i32 0, i32 5
  %273 = load double, double* %scale372, align 8
  %mul373 = fmul double %mul371, %273
  %x374 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 0
  %274 = load double, double* %x374, align 8
  %add375 = fadd double %274, %mul373
  store double %add375, double* %x374, align 8
  %275 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush376 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %275, i32 0, i32 2
  %276 = load %struct._GimpBrush*, %struct._GimpBrush** %brush376, align 8
  %y_axis377 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %276, i32 0, i32 5
  %y378 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %y_axis377, i32 0, i32 1
  %277 = load double, double* %y378, align 8
  %278 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush379 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %278, i32 0, i32 2
  %279 = load %struct._GimpBrush*, %struct._GimpBrush** %brush379, align 8
  %x_axis380 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %279, i32 0, i32 4
  %y381 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %x_axis380, i32 0, i32 1
  %280 = load double, double* %y381, align 8
  %add382 = fadd double %277, %280
  %281 = load double, double* %jitter_dist, align 8
  %mul383 = fmul double %add382, %281
  %282 = load i32, i32* %jitter_angle, align 4
  %idxprom384 = sext i32 %282 to i64
  %283 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %jitter_lut_y = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %283, i32 0, i32 20
  %arrayidx385 = getelementptr inbounds [360 x double], [360 x double]* %jitter_lut_y, i32 0, i64 %idxprom384
  %284 = load double, double* %arrayidx385, align 8
  %mul386 = fmul double %mul383, %284
  %285 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %scale387 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %285, i32 0, i32 5
  %286 = load double, double* %scale387, align 8
  %mul388 = fmul double %mul386, %286
  %y389 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 1
  %287 = load double, double* %y389, align 8
  %add390 = fadd double %287, %mul388
  store double %add390, double* %y389, align 8
  br label %if.end.391

if.end.391:                                       ; preds = %if.then.350, %for.body
  %288 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_set_current_coords(%struct._GimpPaintCore* %288, %struct._GimpCoords* %current_coords)
  %289 = load double, double* %initial, align 8
  %290 = load double, double* %t, align 8
  %291 = load double, double* %dist, align 8
  %mul392 = fmul double %290, %291
  %add393 = fadd double %289, %mul392
  %292 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %distance394 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %292, i32 0, i32 7
  store double %add393, double* %distance394, align 8
  %293 = load double, double* %pixel_initial, align 8
  %294 = load double, double* %t, align 8
  %295 = load double, double* %pixel_dist, align 8
  %mul395 = fmul double %294, %295
  %add396 = fadd double %293, %mul395
  %296 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist397 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %296, i32 0, i32 8
  store double %add396, double* %pixel_dist397, align 8
  %297 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %298 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %299 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %300 = load i32, i32* %time.addr, align 4
  call void @gimp_paint_core_paint(%struct._GimpPaintCore* %297, %struct._GimpDrawable* %298, %struct._GimpPaintOptions* %299, i32 1, i32 %300)
  br label %for.inc

for.inc:                                          ; preds = %if.end.391
  %301 = load i32, i32* %n, align 4
  %inc = add nsw i32 %301, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %x398 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 0
  %302 = load double, double* %x398, align 8
  %x399 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 0
  %303 = load double, double* %x399, align 8
  %add400 = fadd double %302, %303
  %x401 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 0
  store double %add400, double* %x401, align 8
  %y402 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 1
  %304 = load double, double* %y402, align 8
  %y403 = getelementptr inbounds %struct._GimpVector2, %struct._GimpVector2* %delta_vec, i32 0, i32 1
  %305 = load double, double* %y403, align 8
  %add404 = fadd double %304, %305
  %y405 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 1
  store double %add404, double* %y405, align 8
  %pressure406 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 2
  %306 = load double, double* %pressure406, align 8
  %307 = load double, double* %delta_pressure, align 8
  %add407 = fadd double %306, %307
  %pressure408 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 2
  store double %add407, double* %pressure408, align 8
  %xtilt409 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 3
  %308 = load double, double* %xtilt409, align 8
  %309 = load double, double* %delta_xtilt, align 8
  %add410 = fadd double %308, %309
  %xtilt411 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 3
  store double %add410, double* %xtilt411, align 8
  %ytilt412 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 4
  %310 = load double, double* %ytilt412, align 8
  %311 = load double, double* %delta_ytilt, align 8
  %add413 = fadd double %310, %311
  %ytilt414 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 4
  store double %add413, double* %ytilt414, align 8
  %wheel415 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 5
  %312 = load double, double* %wheel415, align 8
  %313 = load double, double* %delta_wheel, align 8
  %add416 = fadd double %312, %313
  %wheel417 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 5
  store double %add416, double* %wheel417, align 8
  %velocity418 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords, i32 0, i32 6
  %314 = load double, double* %velocity418, align 8
  %315 = load double, double* %delta_velocity, align 8
  %add419 = fadd double %314, %315
  %velocity420 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %current_coords, i32 0, i32 6
  store double %add419, double* %velocity420, align 8
  %316 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_set_current_coords(%struct._GimpPaintCore* %316, %struct._GimpCoords* %current_coords)
  %317 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  call void @gimp_paint_core_set_last_coords(%struct._GimpPaintCore* %317, %struct._GimpCoords* %current_coords)
  %318 = load double, double* %total, align 8
  %319 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %distance421 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %319, i32 0, i32 7
  store double %318, double* %distance421, align 8
  %320 = load double, double* %pixel_initial, align 8
  %321 = load double, double* %pixel_dist, align 8
  %add422 = fadd double %320, %321
  %322 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist423 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %322, i32 0, i32 8
  store double %add422, double* %pixel_dist423, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then.167, %if.then.161, %if.then.126, %if.then.55, %if.then.50, %if.else.14
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_brush_core_get_paint_area(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %core = alloca %struct._GimpBrushCore*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %drawable_width = alloca i32, align 4
  %drawable_height = alloca i32, align 4
  %brush_width = alloca i32, align 4
  %brush_height = alloca i32, align 4
  %bytes = alloca i32, align 4
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_core_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %2, %struct._GimpBrushCore** %core, align 8
  %3 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %4 = bitcast %struct._GimpBrushCore* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GimpBrushCoreClass*
  %handles_transforming_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %6, i32 0, i32 2
  %7 = load i32, i32* %handles_transforming_brush, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %10 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_brush_core_eval_transform_dynamics(%struct._GimpBrushCore* %8, %struct._GimpDrawable* %9, %struct._GimpPaintOptions* %10, %struct._GimpCoords* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %12, i32 0, i32 2
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %14 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %scale = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %14, i32 0, i32 5
  %15 = load double, double* %scale, align 8
  %16 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %aspect_ratio = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %16, i32 0, i32 8
  %17 = load double, double* %aspect_ratio, align 8
  %18 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core, align 8
  %angle = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %18, i32 0, i32 6
  %19 = load double, double* %angle, align 8
  call void @gimp_brush_transform_size(%struct._GimpBrush* %13, double %15, double %17, double %19, i32* %brush_width, i32* %brush_height)
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %20, i32 0, i32 0
  %21 = load double, double* %x3, align 8
  %call4 = call double @floor(double %21) #8
  %conv = fptosi double %call4 to i32
  %22 = load i32, i32* %brush_width, align 4
  %div = sdiv i32 %22, 2
  %sub = sub nsw i32 %conv, %div
  store i32 %sub, i32* %x, align 4
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 1
  %24 = load double, double* %y5, align 8
  %call6 = call double @floor(double %24) #8
  %conv7 = fptosi double %call6 to i32
  %25 = load i32, i32* %brush_height, align 4
  %div8 = sdiv i32 %25, 2
  %sub9 = sub nsw i32 %conv7, %div8
  store i32 %sub9, i32* %y, align 4
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #8
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call10)
  %28 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %28)
  store i32 %call12, i32* %drawable_width, align 4
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call13)
  %31 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call i32 @gimp_item_get_height(%struct._GimpItem* %31)
  store i32 %call15, i32* %drawable_height, align 4
  %32 = load i32, i32* %x, align 4
  %sub16 = sub nsw i32 %32, 1
  %33 = load i32, i32* %drawable_width, align 4
  %cmp = icmp sgt i32 %sub16, %33
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %34 = load i32, i32* %drawable_width, align 4
  br label %cond.end.24

cond.false:                                       ; preds = %if.end
  %35 = load i32, i32* %x, align 4
  %sub18 = sub nsw i32 %35, 1
  %cmp19 = icmp slt i32 %sub18, 0
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false
  br label %cond.end

cond.false.22:                                    ; preds = %cond.false
  %36 = load i32, i32* %x, align 4
  %sub23 = sub nsw i32 %36, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.22, %cond.true.21
  %cond = phi i32 [ 0, %cond.true.21 ], [ %sub23, %cond.false.22 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end, %cond.true
  %cond25 = phi i32 [ %34, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond25, i32* %x1, align 4
  %37 = load i32, i32* %y, align 4
  %sub26 = sub nsw i32 %37, 1
  %38 = load i32, i32* %drawable_height, align 4
  %cmp27 = icmp sgt i32 %sub26, %38
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end.24
  %39 = load i32, i32* %drawable_height, align 4
  br label %cond.end.39

cond.false.30:                                    ; preds = %cond.end.24
  %40 = load i32, i32* %y, align 4
  %sub31 = sub nsw i32 %40, 1
  %cmp32 = icmp slt i32 %sub31, 0
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %cond.false.30
  br label %cond.end.37

cond.false.35:                                    ; preds = %cond.false.30
  %41 = load i32, i32* %y, align 4
  %sub36 = sub nsw i32 %41, 1
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.34
  %cond38 = phi i32 [ 0, %cond.true.34 ], [ %sub36, %cond.false.35 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end.37, %cond.true.29
  %cond40 = phi i32 [ %39, %cond.true.29 ], [ %cond38, %cond.end.37 ]
  store i32 %cond40, i32* %y1, align 4
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %brush_width, align 4
  %add = add nsw i32 %42, %43
  %add41 = add nsw i32 %add, 1
  %44 = load i32, i32* %drawable_width, align 4
  %cmp42 = icmp sgt i32 %add41, %44
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %cond.end.39
  %45 = load i32, i32* %drawable_width, align 4
  br label %cond.end.56

cond.false.45:                                    ; preds = %cond.end.39
  %46 = load i32, i32* %x, align 4
  %47 = load i32, i32* %brush_width, align 4
  %add46 = add nsw i32 %46, %47
  %add47 = add nsw i32 %add46, 1
  %cmp48 = icmp slt i32 %add47, 0
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.false.45
  br label %cond.end.54

cond.false.51:                                    ; preds = %cond.false.45
  %48 = load i32, i32* %x, align 4
  %49 = load i32, i32* %brush_width, align 4
  %add52 = add nsw i32 %48, %49
  %add53 = add nsw i32 %add52, 1
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.51, %cond.true.50
  %cond55 = phi i32 [ 0, %cond.true.50 ], [ %add53, %cond.false.51 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.54, %cond.true.44
  %cond57 = phi i32 [ %45, %cond.true.44 ], [ %cond55, %cond.end.54 ]
  store i32 %cond57, i32* %x2, align 4
  %50 = load i32, i32* %y, align 4
  %51 = load i32, i32* %brush_height, align 4
  %add58 = add nsw i32 %50, %51
  %add59 = add nsw i32 %add58, 1
  %52 = load i32, i32* %drawable_height, align 4
  %cmp60 = icmp sgt i32 %add59, %52
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.end.56
  %53 = load i32, i32* %drawable_height, align 4
  br label %cond.end.74

cond.false.63:                                    ; preds = %cond.end.56
  %54 = load i32, i32* %y, align 4
  %55 = load i32, i32* %brush_height, align 4
  %add64 = add nsw i32 %54, %55
  %add65 = add nsw i32 %add64, 1
  %cmp66 = icmp slt i32 %add65, 0
  br i1 %cmp66, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %cond.false.63
  br label %cond.end.72

cond.false.69:                                    ; preds = %cond.false.63
  %56 = load i32, i32* %y, align 4
  %57 = load i32, i32* %brush_height, align 4
  %add70 = add nsw i32 %56, %57
  %add71 = add nsw i32 %add70, 1
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.69, %cond.true.68
  %cond73 = phi i32 [ 0, %cond.true.68 ], [ %add71, %cond.false.69 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end.72, %cond.true.62
  %cond75 = phi i32 [ %53, %cond.true.62 ], [ %cond73, %cond.end.72 ]
  store i32 %cond75, i32* %y2, align 4
  %58 = load i32, i32* %x2, align 4
  %59 = load i32, i32* %x1, align 4
  %sub76 = sub nsw i32 %58, %59
  %tobool77 = icmp ne i32 %sub76, 0
  br i1 %tobool77, label %land.lhs.true, label %if.end.87

land.lhs.true:                                    ; preds = %cond.end.74
  %60 = load i32, i32* %y2, align 4
  %61 = load i32, i32* %y1, align 4
  %sub78 = sub nsw i32 %60, %61
  %tobool79 = icmp ne i32 %sub78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.87

if.then.80:                                       ; preds = %land.lhs.true
  %62 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call81 = call i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable* %62)
  store i32 %call81, i32* %bytes, align 4
  %63 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %63, i32 0, i32 19
  %64 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf, align 8
  %65 = load i32, i32* %bytes, align 4
  %66 = load i32, i32* %x1, align 4
  %67 = load i32, i32* %y1, align 4
  %68 = load i32, i32* %x2, align 4
  %69 = load i32, i32* %x1, align 4
  %sub82 = sub nsw i32 %68, %69
  %70 = load i32, i32* %y2, align 4
  %71 = load i32, i32* %y1, align 4
  %sub83 = sub nsw i32 %70, %71
  %call84 = call %struct._TempBuf* @temp_buf_resize(%struct._TempBuf* %64, i32 %65, i32 %66, i32 %67, i32 %sub82, i32 %sub83)
  %72 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf85 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %72, i32 0, i32 19
  store %struct._TempBuf* %call84, %struct._TempBuf** %canvas_buf85, align 8
  %73 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %canvas_buf86 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %73, i32 0, i32 19
  %74 = load %struct._TempBuf*, %struct._TempBuf** %canvas_buf86, align 8
  store %struct._TempBuf* %74, %struct._TempBuf** %retval
  br label %return

if.end.87:                                        ; preds = %land.lhs.true, %cond.end.74
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.87, %if.then.80
  %75 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %75
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_real_set_brush(%struct._GimpBrushCore* %core, %struct._GimpBrush* %brush) #3 {
entry:
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %1, i32 0, i32 1
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush, align 8
  %cmp = icmp eq %struct._GimpBrush* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.17

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush1 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %3, i32 0, i32 1
  %4 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush1, align 8
  %tobool = icmp ne %struct._GimpBrush* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush3 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %5, i32 0, i32 1
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush3, align 8
  %7 = bitcast %struct._GimpBrush* %6 to i8*
  %8 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %9 = bitcast %struct._GimpBrushCore* %8 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpBrush*, %struct._GimpBrushCore*)* @gimp_brush_core_invalidate_cache to i8*), i8* %9)
  %10 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush4 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %10, i32 0, i32 1
  %11 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush4, align 8
  call void @gimp_brush_end_use(%struct._GimpBrush* %11)
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush5 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %12, i32 0, i32 1
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush5, align 8
  %14 = bitcast %struct._GimpBrush* %13 to i8*
  call void @g_object_unref(i8* %14)
  %15 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush6 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %15, i32 0, i32 1
  store %struct._GimpBrush* null, %struct._GimpBrush** %main_brush6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.2, %if.end
  %16 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %17 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush8 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %17, i32 0, i32 1
  store %struct._GimpBrush* %16, %struct._GimpBrush** %main_brush8, align 8
  %18 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush9 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %18, i32 0, i32 1
  %19 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush9, align 8
  %tobool10 = icmp ne %struct._GimpBrush* %19, null
  br i1 %tobool10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end.7
  %20 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush12 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %20, i32 0, i32 1
  %21 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush12, align 8
  %22 = bitcast %struct._GimpBrush* %21 to i8*
  %call13 = call i8* @g_object_ref(i8* %22)
  %23 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush14 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %23, i32 0, i32 1
  %24 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush14, align 8
  call void @gimp_brush_begin_use(%struct._GimpBrush* %24)
  %25 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %main_brush15 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %25, i32 0, i32 1
  %26 = load %struct._GimpBrush*, %struct._GimpBrush** %main_brush15, align 8
  %27 = bitcast %struct._GimpBrush* %26 to i8*
  %28 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %29 = bitcast %struct._GimpBrushCore* %28 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrush*, %struct._GimpBrushCore*)* @gimp_brush_core_invalidate_cache to void ()*), i8* %29, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then, %if.then.11, %if.end.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_real_set_dynamics(%struct._GimpBrushCore* %core, %struct._GimpDynamics* %dynamics) #3 {
entry:
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  %0 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %1 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics1 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %1, i32 0, i32 3
  %2 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics1, align 8
  %cmp = icmp eq %struct._GimpDynamics* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.11

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics2 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %3, i32 0, i32 3
  %4 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics2, align 8
  %tobool = icmp ne %struct._GimpDynamics* %4, null
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics4 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %5, i32 0, i32 3
  %6 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics4, align 8
  %7 = bitcast %struct._GimpDynamics* %6 to i8*
  call void @g_object_unref(i8* %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %9 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics6 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %9, i32 0, i32 3
  store %struct._GimpDynamics* %8, %struct._GimpDynamics** %dynamics6, align 8
  %10 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics7 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %10, i32 0, i32 3
  %11 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics7, align 8
  %tobool8 = icmp ne %struct._GimpDynamics* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.5
  %12 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %dynamics10 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %12, i32 0, i32 3
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics10, align 8
  %14 = bitcast %struct._GimpDynamics* %13 to i8*
  %call = call i8* @g_object_ref(i8* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.then.9, %if.end.5
  ret void
}

declare void @temp_buf_free(%struct._TempBuf*) #1

declare void @g_rand_free(%struct._GRand*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_core_invalidate_cache(%struct._GimpBrush* %brush, %struct._GimpBrushCore* %core) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %core.addr = alloca %struct._GimpBrushCore*, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpBrushCore* %core, %struct._GimpBrushCore** %core.addr, align 8
  %0 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %subsample_cache_invalid = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %0, i32 0, i32 17
  store i32 1, i32* %subsample_cache_invalid, align 4
  %1 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %solid_cache_invalid = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %1, i32 0, i32 12
  store i32 1, i32* %solid_cache_invalid, align 4
  %2 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %core.addr, align 8
  %3 = bitcast %struct._GimpBrushCore* %2 to i8*
  %4 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @core_signals, i32 0, i64 0), align 4
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %3, i32 %4, i32 0, %struct._GimpBrush* %5)
  ret void
}

declare void @gimp_brush_end_use(%struct._GimpBrush*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #1

declare %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i32 @gimp_brush_get_spacing(%struct._GimpBrush*) #1

declare double @gimp_paint_options_get_jitter(%struct._GimpPaintOptions*, %struct._GimpImage*) #1

declare void @gimp_paint_core_get_last_coords(%struct._GimpPaintCore*, %struct._GimpCoords*) #1

declare void @gimp_paint_core_get_current_coords(%struct._GimpPaintCore*, %struct._GimpCoords*) #1

declare i32 @gimp_brush_want_null_motion(%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*) #1

declare %struct._GimpBrush* @gimp_brush_select_brush(%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_avoid_exact_integer(double* %x) #3 {
entry:
  %x.addr = alloca double*, align 8
  %integral = alloca double, align 8
  %fractional = alloca double, align 8
  store double* %x, double** %x.addr, align 8
  %0 = load double*, double** %x.addr, align 8
  %1 = load double, double* %0, align 8
  %call = call double @floor(double %1) #8
  store double %call, double* %integral, align 8
  %2 = load double*, double** %x.addr, align 8
  %3 = load double, double* %2, align 8
  %4 = load double, double* %integral, align 8
  %sub = fsub double %3, %4
  store double %sub, double* %fractional, align 8
  %5 = load double, double* %fractional, align 8
  %cmp = fcmp olt double %5, 1.000000e-05
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, double* %integral, align 8
  %add = fadd double %6, 1.000000e-05
  %7 = load double*, double** %x.addr, align 8
  store double %add, double* %7, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %8 = load double, double* %fractional, align 8
  %cmp1 = fcmp ogt double %8, 9.999900e-01
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %9 = load double, double* %integral, align 8
  %add3 = fadd double %9, 9.999900e-01
  %10 = load double*, double** %x.addr, align 8
  store double %add3, double* %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

declare double @gimp_vector2_length(%struct._GimpVector2*) #1

declare void @gimp_paint_core_set_last_coords(%struct._GimpPaintCore*, %struct._GimpCoords*) #1

declare void @gimp_paint_core_paint(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

declare void @gimp_vector2_mul(%struct._GimpVector2*, double) #1

declare void @gimp_vector2_rotate(%struct._GimpVector2*, double) #1

declare double @gimp_vector2_inner_product(%struct._GimpVector2*, %struct._GimpVector2*) #1

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gimp_paint_core_set_current_coords(%struct._GimpPaintCore*, %struct._GimpCoords*) #1

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare void @gimp_brush_transform_size(%struct._GimpBrush*, double, double, double, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare i32 @gimp_drawable_bytes_with_alpha(%struct._GimpDrawable*) #1

declare %struct._TempBuf* @temp_buf_resize(%struct._TempBuf*, i32, i32, i32, i32, i32) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_brush_begin_use(%struct._GimpBrush*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GRand* @g_rand_new() #1

; Function Attrs: nounwind
declare double @cos(double) #5

; Function Attrs: nounwind
declare double @sin(double) #5

declare %struct._TempBuf* @gimp_brush_transform_mask(%struct._GimpBrush*, double, double, double, double) #1

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @rotate_pointers(i64** %p, i32 %n) #7 {
entry:
  %p.addr = alloca i64**, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i64*, align 8
  store i64** %p, i64*** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i64**, i64*** %p.addr, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %0, i64 0
  %1 = load i64*, i64** %arrayidx, align 8
  store i64* %1, i64** %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub i32 %3, 1
  %cmp = icmp ult i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add i32 %4, 1
  %idxprom = zext i32 %add to i64
  %5 = load i64**, i64*** %p.addr, align 8
  %arrayidx1 = getelementptr inbounds i64*, i64** %5, i64 %idxprom
  %6 = load i64*, i64** %arrayidx1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %7 to i64
  %8 = load i64**, i64*** %p.addr, align 8
  %arrayidx3 = getelementptr inbounds i64*, i64** %8, i64 %idxprom2
  store i64* %6, i64** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i64*, i64** %tmp, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %11 to i64
  %12 = load i64**, i64*** %p.addr, align 8
  %arrayidx5 = getelementptr inbounds i64*, i64** %12, i64 %idxprom4
  store i64* %10, i64** %arrayidx5, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare void @g_free(i8*) #1

declare %struct._TempBuf* @gimp_brush_transform_pixmap(%struct._GimpBrush*, double, double, double, double) #1

declare void @gimp_image_transform_color(%struct._GimpImage*, i32, i8*, i32, i8*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
