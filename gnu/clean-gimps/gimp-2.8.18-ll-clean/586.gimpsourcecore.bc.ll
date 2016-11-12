; ModuleID = './app/paint/gimpsourcecore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSourceCoreClass = type { %struct._GimpBrushCoreClass, i32 (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpPickable*, i32, i32, %struct._TempBuf*, i32*, i32*, i32*, i32*, %struct._PixelRegion*)*, void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)* }
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
%struct._GimpDynamics = type { %struct._GimpData }
%struct._GimpData = type { %struct._GimpViewable }
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
%struct._GimpSourceCore = type { %struct._GimpBrushCore, i32, %struct._GimpDrawable*, double, double, double, double, double, double, i32 }
%struct._GimpPickable = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque
%struct._GimpSourceOptions = type { %struct._GimpPaintOptions, i32, i32, i32 }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }
%struct._GimpProjection = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_source_core_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpSourceCore\00", align 1
@gimp_source_core_parent_class = internal global i8* null, align 8
@GimpSourceCore_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"src-drawable\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"src-x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"src-y\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gimpsourcecore.c\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Set a source image first.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_source_core_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_source_core_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_source_core_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_brush_core_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 264, void (i8*, i8*)* bitcast (void (i8*)* @gimp_source_core_class_intern_init to void (i8*, i8*)*), i32 6552, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSourceCore*)* @gimp_source_core_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_source_core_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_source_core_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_source_core_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_source_core_parent_class, align 8
  %1 = load i32, i32* @GimpSourceCore_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSourceCore_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSourceCoreClass*
  call void @gimp_source_core_class_init(%struct._GimpSourceCoreClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_core_init(%struct._GimpSourceCore* %source_core) #3 {
entry:
  %source_core.addr = alloca %struct._GimpSourceCore*, align 8
  store %struct._GimpSourceCore* %source_core, %struct._GimpSourceCore** %source_core.addr, align 8
  %0 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %set_source = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %0, i32 0, i32 1
  store i32 0, i32* %set_source, align 4
  %1 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %1, i32 0, i32 2
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %src_drawable, align 8
  %2 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %2, i32 0, i32 3
  store double 0.000000e+00, double* %src_x, align 8
  %3 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %3, i32 0, i32 4
  store double 0.000000e+00, double* %src_y, align 8
  %4 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %orig_src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %4, i32 0, i32 5
  store double 0.000000e+00, double* %orig_src_x, align 8
  %5 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %orig_src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %5, i32 0, i32 6
  store double 0.000000e+00, double* %orig_src_y, align 8
  %6 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %6, i32 0, i32 7
  store double 0.000000e+00, double* %offset_x, align 8
  %7 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %7, i32 0, i32 8
  store double 0.000000e+00, double* %offset_y, align 8
  %8 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %first_stroke = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %8, i32 0, i32 9
  store i32 1, i32* %first_stroke, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_source_core_motion(%struct._GimpSourceCore* %source_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %source_core.addr = alloca %struct._GimpSourceCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %paint_core = alloca %struct._GimpPaintCore*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %opacity_output = alloca %struct._GimpDynamicsOutput*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %src_pickable = alloca %struct._GimpPickable*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %src_offset_x = alloca i32, align 4
  %src_offset_y = alloca i32, align 4
  %paint_area = alloca %struct._TempBuf*, align 8
  %paint_area_offset_x = alloca i32, align 4
  %paint_area_offset_y = alloca i32, align 4
  %paint_area_width = alloca i32, align 4
  %paint_area_height = alloca i32, align 4
  %fade_point = alloca double, align 8
  %opacity = alloca double, align 8
  %src_image = alloca %struct._GimpImage*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpSourceCore* %source_core, %struct._GimpSourceCore** %source_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %1 = bitcast %struct._GimpSourceCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_core_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintCore*
  store %struct._GimpPaintCore* %2, %struct._GimpPaintCore** %paint_core, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_source_options_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %5, %struct._GimpSourceOptions** %options, align 8
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %7 = bitcast %struct._GimpPaintCore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_core_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushCore*
  %dynamics6 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %8, i32 0, i32 3
  %9 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics6, align 8
  store %struct._GimpDynamics* %9, %struct._GimpDynamics** %dynamics, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %12)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  store %struct._GimpPickable* null, %struct._GimpPickable** %src_pickable, align 8
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call10 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %13, i32 0)
  store %struct._GimpDynamicsOutput* %call10, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %14 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %16, i32 0, i32 8
  %17 = load double, double* %pixel_dist, align 8
  %call11 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %14, %struct._GimpImage* %15, double %17)
  store double %call11, double* %fade_point, align 8
  %18 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %21 = load double, double* %fade_point, align 8
  %call12 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %18, %struct._GimpCoords* %19, %struct._GimpPaintOptions* %20, double %21)
  store double %call12, double* %opacity, align 8
  %22 = load double, double* %opacity, align 8
  %cmp = fcmp oeq double %22, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %23 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %offset_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %23, i32 0, i32 7
  %24 = load double, double* %offset_x, align 8
  %conv = fptosi double %24 to i32
  store i32 %conv, i32* %src_offset_x, align 4
  %25 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %offset_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %25, i32 0, i32 8
  %26 = load double, double* %offset_y, align 8
  %conv13 = fptosi double %26 to i32
  store i32 %conv13, i32* %src_offset_y, align 4
  %27 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %use_source = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %27, i32 0, i32 3
  %28 = load i32, i32* %use_source, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %if.end
  %29 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %29, i32 0, i32 2
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_pickable_interface_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call15)
  %32 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpPickable*
  store %struct._GimpPickable* %32, %struct._GimpPickable** %src_pickable, align 8
  %33 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %33, i32 0, i32 2
  %34 = load i32, i32* %sample_merged, align 4
  %tobool17 = icmp ne i32 %34, 0
  br i1 %tobool17, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %if.then.14
  %35 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable, align 8
  %call19 = call %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %35)
  store %struct._GimpImage* %call19, %struct._GimpImage** %src_image, align 8
  %36 = load %struct._GimpImage*, %struct._GimpImage** %src_image, align 8
  %call20 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %36)
  %37 = bitcast %struct._GimpProjection* %call20 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_pickable_interface_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call21)
  %38 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpPickable*
  store %struct._GimpPickable* %38, %struct._GimpPickable** %src_pickable, align 8
  %39 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable23 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %39, i32 0, i32 2
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable23, align 8
  %41 = bitcast %struct._GimpDrawable* %40 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call24)
  %42 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %42, i32* %off_x, i32* %off_y)
  %43 = load i32, i32* %off_x, align 4
  %44 = load i32, i32* %src_offset_x, align 4
  %add = add nsw i32 %44, %43
  store i32 %add, i32* %src_offset_x, align 4
  %45 = load i32, i32* %off_y, align 4
  %46 = load i32, i32* %src_offset_y, align 4
  %add26 = add nsw i32 %46, %45
  store i32 %add26, i32* %src_offset_y, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.18, %if.then.14
  %47 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable, align 8
  call void @gimp_pickable_flush(%struct._GimpPickable* %47)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %48 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core, align 8
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %50 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %51 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call29 = call %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore* %48, %struct._GimpDrawable* %49, %struct._GimpPaintOptions* %50, %struct._GimpCoords* %51)
  store %struct._TempBuf* %call29, %struct._TempBuf** %paint_area, align 8
  %52 = load %struct._TempBuf*, %struct._TempBuf** %paint_area, align 8
  %tobool30 = icmp ne %struct._TempBuf* %52, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  br label %return

if.end.32:                                        ; preds = %if.end.28
  store i32 0, i32* %paint_area_offset_x, align 4
  store i32 0, i32* %paint_area_offset_y, align 4
  %53 = load %struct._TempBuf*, %struct._TempBuf** %paint_area, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %53, i32 0, i32 1
  %54 = load i32, i32* %width, align 4
  store i32 %54, i32* %paint_area_width, align 4
  %55 = load %struct._TempBuf*, %struct._TempBuf** %paint_area, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %55, i32 0, i32 2
  %56 = load i32, i32* %height, align 4
  store i32 %56, i32* %paint_area_height, align 4
  %57 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %use_source33 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %57, i32 0, i32 3
  %58 = load i32, i32* %use_source33, align 4
  %tobool34 = icmp ne i32 %58, 0
  br i1 %tobool34, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.end.32
  %59 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %60 = bitcast %struct._GimpSourceCore* %59 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %60, i32 0, i32 0
  %61 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %62 = bitcast %struct._GTypeClass* %61 to %struct._GimpSourceCoreClass*
  %get_source = getelementptr inbounds %struct._GimpSourceCoreClass, %struct._GimpSourceCoreClass* %62, i32 0, i32 1
  %63 = load i32 (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpPickable*, i32, i32, %struct._TempBuf*, i32*, i32*, i32*, i32*, %struct._PixelRegion*)*, i32 (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpPickable*, i32, i32, %struct._TempBuf*, i32*, i32*, i32*, i32*, %struct._PixelRegion*)** %get_source, align 8
  %64 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %65 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %66 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %67 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable, align 8
  %68 = load i32, i32* %src_offset_x, align 4
  %69 = load i32, i32* %src_offset_y, align 4
  %70 = load %struct._TempBuf*, %struct._TempBuf** %paint_area, align 8
  %call35 = call i32 %63(%struct._GimpSourceCore* %64, %struct._GimpDrawable* %65, %struct._GimpPaintOptions* %66, %struct._GimpPickable* %67, i32 %68, i32 %69, %struct._TempBuf* %70, i32* %paint_area_offset_x, i32* %paint_area_offset_y, i32* %paint_area_width, i32* %paint_area_height, %struct._PixelRegion* %srcPR)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true
  br label %return

if.end.38:                                        ; preds = %land.lhs.true, %if.end.32
  %71 = load %struct._TempBuf*, %struct._TempBuf** %paint_area, align 8
  %call39 = call i8* @temp_buf_data_clear(%struct._TempBuf* %71)
  %72 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %73 = bitcast %struct._GimpSourceCore* %72 to %struct._GTypeInstance*
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %73, i32 0, i32 0
  %74 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %75 = bitcast %struct._GTypeClass* %74 to %struct._GimpSourceCoreClass*
  %motion = getelementptr inbounds %struct._GimpSourceCoreClass, %struct._GimpSourceCoreClass* %75, i32 0, i32 2
  %76 = load void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)*, void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)** %motion, align 8
  %77 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %78 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %79 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %80 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %81 = load double, double* %opacity, align 8
  %82 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable, align 8
  %83 = load i32, i32* %src_offset_x, align 4
  %84 = load i32, i32* %src_offset_y, align 4
  %85 = load %struct._TempBuf*, %struct._TempBuf** %paint_area, align 8
  %86 = load i32, i32* %paint_area_offset_x, align 4
  %87 = load i32, i32* %paint_area_offset_y, align 4
  %88 = load i32, i32* %paint_area_width, align 4
  %89 = load i32, i32* %paint_area_height, align 4
  call void %76(%struct._GimpSourceCore* %77, %struct._GimpDrawable* %78, %struct._GimpPaintOptions* %79, %struct._GimpCoords* %80, double %81, %struct._GimpPickable* %82, %struct._PixelRegion* %srcPR, i32 %83, i32 %84, %struct._TempBuf* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  br label %return

return:                                           ; preds = %if.end.38, %if.then.37, %if.then.31, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_source_options_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare double @gimp_paint_options_get_fade(%struct._GimpPaintOptions*, %struct._GimpImage*, double) #1

declare double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #2

declare %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable*) #1

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_pickable_flush(%struct._GimpPickable*) #1

declare %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*) #1

declare i8* @temp_buf_data_clear(%struct._TempBuf*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_source_core_class_init(%struct._GimpSourceCoreClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpSourceCoreClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  %brush_core_class = alloca %struct._GimpBrushCoreClass*, align 8
  store %struct._GimpSourceCoreClass* %klass, %struct._GimpSourceCoreClass** %klass.addr, align 8
  %0 = load %struct._GimpSourceCoreClass*, %struct._GimpSourceCoreClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSourceCoreClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpSourceCoreClass*, %struct._GimpSourceCoreClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpSourceCoreClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_paint_core_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %5, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %6 = load %struct._GimpSourceCoreClass*, %struct._GimpSourceCoreClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpSourceCoreClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_brush_core_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpBrushCoreClass*
  store %struct._GimpBrushCoreClass* %8, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_source_core_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_source_core_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %start = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %11, i32 0, i32 1
  store i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)* @gimp_source_core_start, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)** %start, align 8
  %12 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %12, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_source_core_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %13 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %handles_changing_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %13, i32 0, i32 1
  store i32 1, i32* %handles_changing_brush, align 4
  %14 = load %struct._GimpSourceCoreClass*, %struct._GimpSourceCoreClass** %klass.addr, align 8
  %get_source = getelementptr inbounds %struct._GimpSourceCoreClass, %struct._GimpSourceCoreClass* %14, i32 0, i32 1
  store i32 (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpPickable*, i32, i32, %struct._TempBuf*, i32*, i32*, i32*, i32*, %struct._PixelRegion*)* @gimp_source_core_real_get_source, i32 (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpPickable*, i32, i32, %struct._TempBuf*, i32*, i32*, i32*, i32*, %struct._PixelRegion*)** %get_source, align 8
  %15 = load %struct._GimpSourceCoreClass*, %struct._GimpSourceCoreClass** %klass.addr, align 8
  %motion = getelementptr inbounds %struct._GimpSourceCoreClass, %struct._GimpSourceCoreClass* %15, i32 0, i32 2
  store void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)* null, void (%struct._GimpSourceCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double, %struct._GimpPickable*, %struct._PixelRegion*, i32, i32, %struct._TempBuf*, i32, i32, i32, i32)** %motion, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_drawable_get_type() #6
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 1, %struct._GParamSpec* %call6)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 2, %struct._GParamSpec* %call7)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.621440e+05, double 0.000000e+00, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 3, %struct._GParamSpec* %call8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_source_core_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %source_core = alloca %struct._GimpSourceCore*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_core_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %2, %struct._GimpSourceCore** %source_core, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %5)
  %6 = bitcast i8* %call2 to %struct._GimpDrawable*
  call void @gimp_source_core_set_src_drawable(%struct._GimpSourceCore* %4, %struct._GimpDrawable* %6)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %7)
  %8 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %8, i32 0, i32 3
  store double %call4, double* %src_x, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %9)
  %10 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %10, i32 0, i32 4
  store double %call6, double* %src_y, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %11, %struct._GObject** %_glib__object, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = load i32, i32* %property_id.addr, align 4
  store i32 %13, i32* %_glib__property_id, align 4
  %14 = load i32, i32* %_glib__property_id, align 4
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = bitcast %struct._GParamSpec* %17 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %20)
  %21 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %24)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %14, i8* %16, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_core_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %source_core = alloca %struct._GimpSourceCore*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_core_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %2, %struct._GimpSourceCore** %source_core, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %5, i32 0, i32 2
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %9, i32 0, i32 3
  %10 = load double, double* %src_x, align 8
  %conv = fptosi double %10 to i32
  call void @g_value_set_int(%struct._GValue* %8, i32 %conv)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %12, i32 0, i32 4
  %13 = load double, double* %src_y, align 8
  %conv4 = fptosi double %13 to i32
  call void @g_value_set_int(%struct._GValue* %11, i32 %conv4)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %14, %struct._GObject** %_glib__object, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %15, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = load i32, i32* %property_id.addr, align 4
  store i32 %16, i32* %_glib__property_id, align 4
  %17 = load i32, i32* %_glib__property_id, align 4
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = bitcast %struct._GParamSpec* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %23)
  %24 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %27)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %17, i8* %19, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_source_core_start(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %source_core = alloca %struct._GimpSourceCore*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_core_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %2, %struct._GimpSourceCore** %source_core, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_source_options_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %5, %struct._GimpSourceOptions** %options, align 8
  %6 = load i8*, i8** @gimp_source_core_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call i64 @gimp_paint_core_get_type() #6
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call4)
  %8 = bitcast %struct._GTypeClass* %call5 to %struct._GimpPaintCoreClass*
  %start = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %8, i32 0, i32 1
  %9 = load i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)*, i32 (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, %struct._GError**)** %start, align 8
  %10 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call6 = call i32 %9(%struct._GimpPaintCore* %10, %struct._GimpDrawable* %11, %struct._GimpPaintOptions* %12, %struct._GimpCoords* %13, %struct._GError** %14)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %use_saved_proj = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %15, i32 0, i32 13
  store i32 0, i32* %use_saved_proj, align 4
  %16 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %set_source = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %16, i32 0, i32 1
  %17 = load i32, i32* %set_source, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.end.27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %use_source = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %18, i32 0, i32 3
  %19 = load i32, i32* %use_source, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.then.9, label %if.end.27

if.then.9:                                        ; preds = %land.lhs.true
  %20 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %20, i32 0, i32 2
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %tobool10 = icmp ne %struct._GimpDrawable* %21, null
  br i1 %tobool10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_error_quark() #6
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0)) #4
  call void @g_set_error_literal(%struct._GError** %22, i32 %call12, i32 0, i8* %call13)
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  %23 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %23, i32 0, i32 2
  %24 = load i32, i32* %sample_merged, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.26

land.lhs.true.16:                                 ; preds = %if.end.14
  %25 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_drawable17 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %25, i32 0, i32 2
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable17, align 8
  %27 = bitcast %struct._GimpDrawable* %26 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call18)
  %28 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %28)
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_item_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpItem*
  %call23 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %31)
  %cmp = icmp eq %struct._GimpImage* %call20, %call23
  br i1 %cmp, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.lhs.true.16
  %32 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %use_saved_proj25 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %32, i32 0, i32 13
  store i32 1, i32* %use_saved_proj25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.lhs.true.16, %if.end.14
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.11, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal void @gimp_source_core_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %source_core = alloca %struct._GimpSourceCore*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  %dest_x = alloca i32, align 4
  %dest_y = alloca i32, align 4
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_core_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceCore*
  store %struct._GimpSourceCore* %2, %struct._GimpSourceCore** %source_core, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_source_options_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %5, %struct._GimpSourceOptions** %options, align 8
  %6 = load i32, i32* %paint_state.addr, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.62
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %set_source = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %7, i32 0, i32 1
  %8 = load i32, i32* %set_source, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %9 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_source_core_set_src_drawable(%struct._GimpSourceCore* %9, %struct._GimpDrawable* %10)
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i32 0, i32 0
  %12 = load double, double* %x, align 8
  %13 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %13, i32 0, i32 3
  store double %12, double* %src_x, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 1
  %15 = load double, double* %y, align 8
  %16 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %16, i32 0, i32 4
  store double %15, double* %src_y, align 8
  %17 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %17, i32 0, i32 9
  store i32 1, i32* %first_stroke, align 4
  br label %if.end.8

if.else:                                          ; preds = %sw.bb
  %18 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %align_mode = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %18, i32 0, i32 1
  %19 = load i32, i32* %align_mode, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %20 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x5 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %20, i32 0, i32 3
  %21 = load double, double* %src_x5, align 8
  %22 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %orig_src_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %22, i32 0, i32 5
  store double %21, double* %orig_src_x, align 8
  %23 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y6 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %23, i32 0, i32 4
  %24 = load double, double* %src_y6, align 8
  %25 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %orig_src_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %25, i32 0, i32 6
  store double %24, double* %orig_src_y, align 8
  %26 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke7 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %26, i32 0, i32 9
  store i32 1, i32* %first_stroke7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %27 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %set_source10 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %27, i32 0, i32 1
  %28 = load i32, i32* %set_source10, align 4
  %tobool11 = icmp ne i32 %28, 0
  br i1 %tobool11, label %if.then.12, label %if.else.18

if.then.12:                                       ; preds = %sw.bb.9
  %29 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x13 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i32 0, i32 0
  %30 = load double, double* %x13, align 8
  %31 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x14 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %31, i32 0, i32 3
  store double %30, double* %src_x14, align 8
  %32 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %32, i32 0, i32 1
  %33 = load double, double* %y15, align 8
  %34 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y16 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %34, i32 0, i32 4
  store double %33, double* %src_y16, align 8
  %35 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke17 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %35, i32 0, i32 9
  store i32 1, i32* %first_stroke17, align 4
  br label %if.end.61

if.else.18:                                       ; preds = %sw.bb.9
  %36 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %36, i32 0, i32 0
  %37 = load double, double* %x19, align 8
  %conv = fptosi double %37 to i32
  store i32 %conv, i32* %dest_x, align 4
  %38 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y20 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %38, i32 0, i32 1
  %39 = load double, double* %y20, align 8
  %conv21 = fptosi double %39 to i32
  store i32 %conv21, i32* %dest_y, align 4
  %40 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %align_mode22 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %40, i32 0, i32 1
  %41 = load i32, i32* %align_mode22, align 4
  %cmp23 = icmp eq i32 %41, 2
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.18
  %42 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_x = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %42, i32 0, i32 7
  store double 0.000000e+00, double* %offset_x, align 8
  %43 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_y = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %43, i32 0, i32 8
  store double 0.000000e+00, double* %offset_y, align 8
  br label %if.end.53

if.else.26:                                       ; preds = %if.else.18
  %44 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %align_mode27 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %44, i32 0, i32 1
  %45 = load i32, i32* %align_mode27, align 4
  %cmp28 = icmp eq i32 %45, 3
  br i1 %cmp28, label %if.then.30, label %if.else.38

if.then.30:                                       ; preds = %if.else.26
  %46 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x31 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %46, i32 0, i32 3
  %47 = load double, double* %src_x31, align 8
  %48 = load i32, i32* %dest_x, align 4
  %conv32 = sitofp i32 %48 to double
  %sub = fsub double %47, %conv32
  %49 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_x33 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %49, i32 0, i32 7
  store double %sub, double* %offset_x33, align 8
  %50 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y34 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %50, i32 0, i32 4
  %51 = load double, double* %src_y34, align 8
  %52 = load i32, i32* %dest_y, align 4
  %conv35 = sitofp i32 %52 to double
  %sub36 = fsub double %51, %conv35
  %53 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_y37 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %53, i32 0, i32 8
  store double %sub36, double* %offset_y37, align 8
  br label %if.end.52

if.else.38:                                       ; preds = %if.else.26
  %54 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke39 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %54, i32 0, i32 9
  %55 = load i32, i32* %first_stroke39, align 4
  %tobool40 = icmp ne i32 %55, 0
  br i1 %tobool40, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %if.else.38
  %56 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x42 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %56, i32 0, i32 3
  %57 = load double, double* %src_x42, align 8
  %58 = load i32, i32* %dest_x, align 4
  %conv43 = sitofp i32 %58 to double
  %sub44 = fsub double %57, %conv43
  %59 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_x45 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %59, i32 0, i32 7
  store double %sub44, double* %offset_x45, align 8
  %60 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y46 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %60, i32 0, i32 4
  %61 = load double, double* %src_y46, align 8
  %62 = load i32, i32* %dest_y, align 4
  %conv47 = sitofp i32 %62 to double
  %sub48 = fsub double %61, %conv47
  %63 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_y49 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %63, i32 0, i32 8
  store double %sub48, double* %offset_y49, align 8
  %64 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke50 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %64, i32 0, i32 9
  store i32 0, i32* %first_stroke50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.41, %if.else.38
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.30
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.25
  %65 = load i32, i32* %dest_x, align 4
  %conv54 = sitofp i32 %65 to double
  %66 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_x55 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %66, i32 0, i32 7
  %67 = load double, double* %offset_x55, align 8
  %add = fadd double %conv54, %67
  %68 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x56 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %68, i32 0, i32 3
  store double %add, double* %src_x56, align 8
  %69 = load i32, i32* %dest_y, align 4
  %conv57 = sitofp i32 %69 to double
  %70 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %offset_y58 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %70, i32 0, i32 8
  %71 = load double, double* %offset_y58, align 8
  %add59 = fadd double %conv57, %71
  %72 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y60 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %72, i32 0, i32 4
  store double %add59, double* %src_y60, align 8
  %73 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %74 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %75 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %76 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_source_core_motion(%struct._GimpSourceCore* %73, %struct._GimpDrawable* %74, %struct._GimpPaintOptions* %75, %struct._GimpCoords* %76)
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.53, %if.then.12
  br label %sw.epilog

sw.bb.62:                                         ; preds = %entry
  %77 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %align_mode63 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %77, i32 0, i32 1
  %78 = load i32, i32* %align_mode63, align 4
  %cmp64 = icmp eq i32 %78, 0
  br i1 %cmp64, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %sw.bb.62
  %79 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %first_stroke66 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %79, i32 0, i32 9
  %80 = load i32, i32* %first_stroke66, align 4
  %tobool67 = icmp ne i32 %80, 0
  br i1 %tobool67, label %if.end.73, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true
  %81 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %orig_src_x69 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %81, i32 0, i32 5
  %82 = load double, double* %orig_src_x69, align 8
  %83 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_x70 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %83, i32 0, i32 3
  store double %82, double* %src_x70, align 8
  %84 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %orig_src_y71 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %84, i32 0, i32 6
  %85 = load double, double* %orig_src_y71, align 8
  %86 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %src_y72 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %86, i32 0, i32 4
  store double %85, double* %src_y72, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %land.lhs.true, %sw.bb.62
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.73, %if.end.61, %if.end.8
  %87 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %88 = bitcast %struct._GimpSourceCore* %87 to %struct._GTypeInstance*
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 80)
  %89 = bitcast %struct._GTypeInstance* %call74 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %90 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core, align 8
  %91 = bitcast %struct._GimpSourceCore* %90 to %struct._GTypeInstance*
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 80)
  %92 = bitcast %struct._GTypeInstance* %call75 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_source_core_real_get_source(%struct._GimpSourceCore* %source_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpPickable* %src_pickable, i32 %src_offset_x, i32 %src_offset_y, %struct._TempBuf* %paint_area, i32* %paint_area_offset_x, i32* %paint_area_offset_y, i32* %paint_area_width, i32* %paint_area_height, %struct._PixelRegion* %srcPR) #3 {
entry:
  %retval = alloca i32, align 4
  %source_core.addr = alloca %struct._GimpSourceCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %src_pickable.addr = alloca %struct._GimpPickable*, align 8
  %src_offset_x.addr = alloca i32, align 4
  %src_offset_y.addr = alloca i32, align 4
  %paint_area.addr = alloca %struct._TempBuf*, align 8
  %paint_area_offset_x.addr = alloca i32*, align 8
  %paint_area_offset_y.addr = alloca i32*, align 8
  %paint_area_width.addr = alloca i32*, align 8
  %paint_area_height.addr = alloca i32*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %options = alloca %struct._GimpSourceOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %src_image = alloca %struct._GimpImage*, align 8
  %src_tiles = alloca %struct._TileManager*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %orig = alloca %struct._TempBuf*, align 8
  store %struct._GimpSourceCore* %source_core, %struct._GimpSourceCore** %source_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpPickable* %src_pickable, %struct._GimpPickable** %src_pickable.addr, align 8
  store i32 %src_offset_x, i32* %src_offset_x.addr, align 4
  store i32 %src_offset_y, i32* %src_offset_y.addr, align 4
  store %struct._TempBuf* %paint_area, %struct._TempBuf** %paint_area.addr, align 8
  store i32* %paint_area_offset_x, i32** %paint_area_offset_x.addr, align 8
  store i32* %paint_area_offset_y, i32** %paint_area_offset_y.addr, align 8
  store i32* %paint_area_width, i32** %paint_area_width.addr, align 8
  store i32* %paint_area_height, i32** %paint_area_height.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_source_options_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSourceOptions*
  store %struct._GimpSourceOptions* %2, %struct._GimpSourceOptions** %options, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_pickable_get_image(%struct._GimpPickable* %6)
  store %struct._GimpImage* %call5, %struct._GimpImage** %src_image, align 8
  %7 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %call6 = call %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable* %7)
  store %struct._TileManager* %call6, %struct._TileManager** %src_tiles, align 8
  %8 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %x7 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 3
  %9 = load i32, i32* %x7, align 4
  %10 = load i32, i32* %src_offset_x.addr, align 4
  %add = add nsw i32 %9, %10
  %11 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %y8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %11, i32 0, i32 4
  %12 = load i32, i32* %y8, align 4
  %13 = load i32, i32* %src_offset_y.addr, align 4
  %add9 = add nsw i32 %12, %13
  %14 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %width10 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 1
  %15 = load i32, i32* %width10, align 4
  %16 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %height11 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %16, i32 0, i32 2
  %17 = load i32, i32* %height11, align 4
  %18 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call12 = call i32 @tile_manager_width(%struct._TileManager* %18)
  %19 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %call13 = call i32 @tile_manager_height(%struct._TileManager* %19)
  %call14 = call i32 @gimp_rectangle_intersect(i32 %add, i32 %add9, i32 %15, i32 %17, i32 0, i32 0, i32 %call12, i32 %call13, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %20 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %sample_merged = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %20, i32 0, i32 2
  %21 = load i32, i32* %sample_merged, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %22 = load %struct._GimpImage*, %struct._GimpImage** %src_image, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %22, %23
  br i1 %cmp, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %24 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %sample_merged16 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %24, i32 0, i32 2
  %25 = load i32, i32* %sample_merged16, align 4
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %if.else, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %lor.lhs.false
  %26 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %26, i32 0, i32 2
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp19 = icmp ne %struct._GimpDrawable* %27, %28
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true.18, %land.lhs.true
  %29 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %30 = load %struct._TileManager*, %struct._TileManager** %src_tiles, align 8
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* %y, align 4
  %33 = load i32, i32* %width, align 4
  %34 = load i32, i32* %height, align 4
  call void @pixel_region_init(%struct._PixelRegion* %29, %struct._TileManager* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 0)
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true.18, %lor.lhs.false
  %35 = load %struct._GimpSourceOptions*, %struct._GimpSourceOptions** %options, align 8
  %sample_merged21 = getelementptr inbounds %struct._GimpSourceOptions, %struct._GimpSourceOptions* %35, i32 0, i32 2
  %36 = load i32, i32* %sample_merged21, align 4
  %tobool22 = icmp ne i32 %36, 0
  br i1 %tobool22, label %if.then.23, label %if.else.27

if.then.23:                                       ; preds = %if.else
  %37 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %38 = bitcast %struct._GimpSourceCore* %37 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_paint_core_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call24)
  %39 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpPaintCore*
  %40 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* %y, align 4
  %43 = load i32, i32* %width, align 4
  %44 = load i32, i32* %height, align 4
  %call26 = call %struct._TempBuf* @gimp_paint_core_get_orig_proj(%struct._GimpPaintCore* %39, %struct._GimpPickable* %40, i32 %41, i32 %42, i32 %43, i32 %44)
  store %struct._TempBuf* %call26, %struct._TempBuf** %orig, align 8
  br label %if.end.33

if.else.27:                                       ; preds = %if.else
  %45 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %46 = bitcast %struct._GimpSourceCore* %45 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_paint_core_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call28)
  %47 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpPaintCore*
  %48 = load %struct._GimpPickable*, %struct._GimpPickable** %src_pickable.addr, align 8
  %49 = bitcast %struct._GimpPickable* %48 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_drawable_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call30)
  %50 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpDrawable*
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %height, align 4
  %call32 = call %struct._TempBuf* @gimp_paint_core_get_orig_image(%struct._GimpPaintCore* %47, %struct._GimpDrawable* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store %struct._TempBuf* %call32, %struct._TempBuf** %orig, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.27, %if.then.23
  %55 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %56 = load %struct._TempBuf*, %struct._TempBuf** %orig, align 8
  %57 = load i32, i32* %width, align 4
  %58 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %55, %struct._TempBuf* %56, i32 0, i32 0, i32 %57, i32 %58)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.20
  %59 = load i32, i32* %x, align 4
  %60 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %x35 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %60, i32 0, i32 3
  %61 = load i32, i32* %x35, align 4
  %62 = load i32, i32* %src_offset_x.addr, align 4
  %add36 = add nsw i32 %61, %62
  %sub = sub nsw i32 %59, %add36
  %63 = load i32*, i32** %paint_area_offset_x.addr, align 8
  store i32 %sub, i32* %63, align 4
  %64 = load i32, i32* %y, align 4
  %65 = load %struct._TempBuf*, %struct._TempBuf** %paint_area.addr, align 8
  %y37 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %65, i32 0, i32 4
  %66 = load i32, i32* %y37, align 4
  %67 = load i32, i32* %src_offset_y.addr, align 4
  %add38 = add nsw i32 %66, %67
  %sub39 = sub nsw i32 %64, %add38
  %68 = load i32*, i32** %paint_area_offset_y.addr, align 8
  store i32 %sub39, i32* %68, align 4
  %69 = load i32, i32* %width, align 4
  %70 = load i32*, i32** %paint_area_width.addr, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %height, align 4
  %72 = load i32*, i32** %paint_area_height.addr, align 8
  store i32 %71, i32* %72, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then
  %73 = load i32, i32* %retval
  ret i32 %73
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_source_core_set_src_drawable(%struct._GimpSourceCore* %source_core, %struct._GimpDrawable* %drawable) #3 {
entry:
  %source_core.addr = alloca %struct._GimpSourceCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpSourceCore* %source_core, %struct._GimpSourceCore** %source_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %0, i32 0, i32 2
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp = icmp eq %struct._GimpDrawable* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable1 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %3, i32 0, i32 2
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable1, align 8
  %tobool = icmp ne %struct._GimpDrawable* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable3 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %5, i32 0, i32 2
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable3, align 8
  %7 = bitcast %struct._GimpDrawable* %6 to i8*
  %8 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %9 = bitcast %struct._GimpSourceCore* %8 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDrawable*, %struct._GimpSourceCore*)* @gimp_source_core_src_drawable_removed to i8*), i8* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable5 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %11, i32 0, i32 2
  store %struct._GimpDrawable* %10, %struct._GimpDrawable** %src_drawable5, align 8
  %12 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable6 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %12, i32 0, i32 2
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable6, align 8
  %tobool7 = icmp ne %struct._GimpDrawable* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.4
  %14 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable9 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %14, i32 0, i32 2
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable9, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to i8*
  %17 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %18 = bitcast %struct._GimpSourceCore* %17 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDrawable*, %struct._GimpSourceCore*)* @gimp_source_core_src_drawable_removed to void ()*), i8* %18, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.4
  %19 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %20 = bitcast %struct._GimpSourceCore* %19 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

declare i8* @g_value_get_object(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_source_core_src_drawable_removed(%struct._GimpDrawable* %drawable, %struct._GimpSourceCore* %source_core) #3 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %source_core.addr = alloca %struct._GimpSourceCore*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpSourceCore* %source_core, %struct._GimpSourceCore** %source_core.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %1, i32 0, i32 2
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %src_drawable, align 8
  %cmp = icmp eq %struct._GimpDrawable* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %src_drawable1 = getelementptr inbounds %struct._GimpSourceCore, %struct._GimpSourceCore* %3, i32 0, i32 2
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %src_drawable1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to i8*
  %6 = load %struct._GimpSourceCore*, %struct._GimpSourceCore** %source_core.addr, align 8
  %7 = bitcast %struct._GimpSourceCore* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDrawable*, %struct._GimpSourceCore*)* @gimp_source_core_src_drawable_removed to i8*), i8* %7)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._TileManager* @gimp_pickable_get_tiles(%struct._GimpPickable*) #1

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare i32 @tile_manager_width(%struct._TileManager*) #1

declare i32 @tile_manager_height(%struct._TileManager*) #1

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TempBuf* @gimp_paint_core_get_orig_proj(%struct._GimpPaintCore*, %struct._GimpPickable*, i32, i32, i32, i32) #1

declare %struct._TempBuf* @gimp_paint_core_get_orig_image(%struct._GimpPaintCore*, %struct._GimpDrawable*, i32, i32, i32, i32) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
