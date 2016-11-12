; ModuleID = './app/paint/gimpconvolve.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpConvolveClass = type { %struct._GimpBrushCoreClass }
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
%struct._GimpConvolve = type { %struct._GimpBrushCore, [9 x float], float }
%struct._GimpConvolveOptions = type { %struct._GimpPaintOptions, i32, double }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque

@gimp_convolve_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpConvolve\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gimp-convolve\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Convolve\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gimp-tool-blur\00", align 1
@gimp_convolve_parent_class = internal global i8* null, align 8
@GimpConvolve_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_convolve_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_convolve_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_convolve_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_brush_core_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_convolve_class_intern_init to void (i8*, i8*)*), i32 6520, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpConvolve*)* @gimp_convolve_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_convolve_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_convolve_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_convolve_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_convolve_parent_class, align 8
  %1 = load i32, i32* @GimpConvolve_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpConvolve_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpConvolveClass*
  call void @gimp_convolve_class_init(%struct._GimpConvolveClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_convolve_init(%struct._GimpConvolve* %convolve) #3 {
entry:
  %convolve.addr = alloca %struct._GimpConvolve*, align 8
  %i = alloca i32, align 4
  store %struct._GimpConvolve* %convolve, %struct._GimpConvolve** %convolve.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [9 x float], [9 x float]* %matrix, i32 0, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix_divisor = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %4, i32 0, i32 2
  store float 9.000000e+00, float* %matrix_divisor, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_convolve_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_convolve_get_type() #5
  %call1 = call i64 @gimp_convolve_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #6
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_convolve_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_convolve_class_init(%struct._GimpConvolveClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpConvolveClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  store %struct._GimpConvolveClass* %klass, %struct._GimpConvolveClass** %klass.addr, align 8
  %0 = load %struct._GimpConvolveClass*, %struct._GimpConvolveClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpConvolveClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_paint_core_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %2, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %3 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %3, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_convolve_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_convolve_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load i32, i32* %paint_state.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_convolve_motion(%struct._GimpPaintCore* %1, %struct._GimpDrawable* %2, %struct._GimpPaintOptions* %3, %struct._GimpCoords* %4)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_convolve_motion(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %convolve = alloca %struct._GimpConvolve*, align 8
  %brush_core = alloca %struct._GimpBrushCore*, align 8
  %options = alloca %struct._GimpConvolveOptions*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %opacity_output = alloca %struct._GimpDynamicsOutput*, align 8
  %rate_output = alloca %struct._GimpDynamicsOutput*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %area = alloca %struct._TempBuf*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %tempPR = alloca %struct._PixelRegion, align 8
  %buffer = alloca i8*, align 8
  %fade_point = alloca double, align 8
  %opacity = alloca double, align 8
  %rate = alloca double, align 8
  %bytes = alloca i32, align 4
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_convolve_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpConvolve*
  store %struct._GimpConvolve* %2, %struct._GimpConvolve** %convolve, align 8
  %3 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %4 = bitcast %struct._GimpPaintCore* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_core_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %5, %struct._GimpBrushCore** %brush_core, align 8
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %7 = bitcast %struct._GimpPaintOptions* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_convolve_options_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpConvolveOptions*
  store %struct._GimpConvolveOptions* %8, %struct._GimpConvolveOptions** %options, align 8
  %9 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %10 = bitcast %struct._GimpPaintOptions* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_context_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpContext*
  store %struct._GimpContext* %11, %struct._GimpContext** %context, align 8
  %12 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %13 = bitcast %struct._GimpPaintCore* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_brush_core_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpBrushCore*
  %dynamics10 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %14, i32 0, i32 3
  %15 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics10, align 8
  store %struct._GimpDynamics* %15, %struct._GimpDynamics** %dynamics, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call11 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %16)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = bitcast %struct._GimpDrawable* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_item_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpItem*
  %call14 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %19)
  store %struct._GimpImage* %call14, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call15 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %20, i32 0)
  store %struct._GimpDynamicsOutput* %call15, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %21 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %23 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %23, i32 0, i32 8
  %24 = load double, double* %pixel_dist, align 8
  %call16 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %21, %struct._GimpImage* %22, double %24)
  store double %call16, double* %fade_point, align 8
  %25 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %26 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %27 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %28 = load double, double* %fade_point, align 8
  %call17 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %25, %struct._GimpCoords* %26, %struct._GimpPaintOptions* %27, double %28)
  store double %call17, double* %opacity, align 8
  %29 = load double, double* %opacity, align 8
  %cmp = fcmp oeq double %29, 0.000000e+00
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  br label %return

if.end.19:                                        ; preds = %if.end
  %30 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %32 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call20 = call %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore* %30, %struct._GimpDrawable* %31, %struct._GimpPaintOptions* %32, %struct._GimpCoords* %33)
  store %struct._TempBuf* %call20, %struct._TempBuf** %area, align 8
  %34 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %tobool21 = icmp ne %struct._TempBuf* %34, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %35 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call24 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %35, i32 8)
  store %struct._GimpDynamicsOutput* %call24, %struct._GimpDynamicsOutput** %rate_output, align 8
  %36 = load %struct._GimpConvolveOptions*, %struct._GimpConvolveOptions** %options, align 8
  %rate25 = getelementptr inbounds %struct._GimpConvolveOptions, %struct._GimpConvolveOptions* %36, i32 0, i32 2
  %37 = load double, double* %rate25, align 8
  %38 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %rate_output, align 8
  %39 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %40 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %41 = load double, double* %fade_point, align 8
  %call26 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %38, %struct._GimpCoords* %39, %struct._GimpPaintOptions* %40, double %41)
  %mul = fmul double %37, %call26
  store double %mul, double* %rate, align 8
  %42 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve, align 8
  %43 = load %struct._GimpConvolveOptions*, %struct._GimpConvolveOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpConvolveOptions, %struct._GimpConvolveOptions* %43, i32 0, i32 1
  %44 = load i32, i32* %type, align 4
  %45 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %45, i32 0, i32 2
  %46 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %46, i32 0, i32 1
  %47 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %47, i32 0, i32 1
  %48 = load i32, i32* %width, align 4
  %div = sdiv i32 %48, 2
  %49 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %brush27 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %49, i32 0, i32 2
  %50 = load %struct._GimpBrush*, %struct._GimpBrush** %brush27, align 8
  %mask28 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %50, i32 0, i32 1
  %51 = load %struct._TempBuf*, %struct._TempBuf** %mask28, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %51, i32 0, i32 2
  %52 = load i32, i32* %height, align 4
  %div29 = sdiv i32 %52, 2
  %53 = load double, double* %rate, align 8
  call void @gimp_convolve_calculate_matrix(%struct._GimpConvolve* %42, i32 %44, i32 %div, i32 %div29, double %53)
  %54 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call30 = call %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable* %54)
  %55 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %x = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %55, i32 0, i32 3
  %56 = load i32, i32* %x, align 4
  %57 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %y = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %57, i32 0, i32 4
  %58 = load i32, i32* %y, align 4
  %59 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width31 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %59, i32 0, i32 1
  %60 = load i32, i32* %width31, align 4
  %61 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height32 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %61, i32 0, i32 2
  %62 = load i32, i32* %height32, align 4
  call void @pixel_region_init(%struct._PixelRegion* %srcPR, %struct._TileManager* %call30, i32 %56, i32 %58, i32 %60, i32 %62, i32 0)
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call33 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %63)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.23
  %bytes36 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %64 = load i32, i32* %bytes36, align 4
  store i32 %64, i32* %bytes, align 4
  %65 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height37 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %65, i32 0, i32 2
  %66 = load i32, i32* %height37, align 4
  %67 = load i32, i32* %bytes, align 4
  %mul38 = mul nsw i32 %66, %67
  %68 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width39 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %68, i32 0, i32 1
  %69 = load i32, i32* %width39, align 4
  %mul40 = mul nsw i32 %mul38, %69
  %conv = sext i32 %mul40 to i64
  %call41 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call41, i8** %buffer, align 8
  %70 = load i8*, i8** %buffer, align 8
  %71 = load i32, i32* %bytes, align 4
  %72 = load i32, i32* %bytes, align 4
  %73 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width42 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %73, i32 0, i32 1
  %74 = load i32, i32* %width42, align 4
  %mul43 = mul nsw i32 %72, %74
  %75 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width44 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %75, i32 0, i32 1
  %76 = load i32, i32* %width44, align 4
  %77 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height45 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %77, i32 0, i32 2
  %78 = load i32, i32* %height45, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %tempPR, i8* %70, i32 %71, i32 %mul43, i32 0, i32 0, i32 %76, i32 %78)
  call void @copy_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %tempPR)
  br label %if.end.57

if.else:                                          ; preds = %if.end.23
  %bytes46 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %79 = load i32, i32* %bytes46, align 4
  %add = add nsw i32 %79, 1
  store i32 %add, i32* %bytes, align 4
  %80 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height47 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %80, i32 0, i32 2
  %81 = load i32, i32* %height47, align 4
  %82 = load i32, i32* %bytes, align 4
  %mul48 = mul nsw i32 %81, %82
  %83 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width49 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %83, i32 0, i32 1
  %84 = load i32, i32* %width49, align 4
  %mul50 = mul nsw i32 %mul48, %84
  %conv51 = sext i32 %mul50 to i64
  %call52 = call noalias i8* @g_malloc(i64 %conv51)
  store i8* %call52, i8** %buffer, align 8
  %85 = load i8*, i8** %buffer, align 8
  %86 = load i32, i32* %bytes, align 4
  %87 = load i32, i32* %bytes, align 4
  %88 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width53 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %88, i32 0, i32 1
  %89 = load i32, i32* %width53, align 4
  %mul54 = mul nsw i32 %87, %89
  %90 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width55 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %90, i32 0, i32 1
  %91 = load i32, i32* %width55, align 4
  %92 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height56 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %92, i32 0, i32 2
  %93 = load i32, i32* %height56, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %tempPR, i8* %85, i32 %86, i32 %mul54, i32 0, i32 0, i32 %91, i32 %93)
  call void @add_alpha_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %tempPR)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %if.then.35
  %94 = load i8*, i8** %buffer, align 8
  %95 = load i32, i32* %bytes, align 4
  %96 = load i32, i32* %bytes, align 4
  %97 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width58 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %97, i32 0, i32 1
  %98 = load i32, i32* %width58, align 4
  %mul59 = mul nsw i32 %96, %98
  %99 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width60 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %99, i32 0, i32 1
  %100 = load i32, i32* %width60, align 4
  %101 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height61 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %101, i32 0, i32 2
  %102 = load i32, i32* %height61, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %tempPR, i8* %94, i32 %95, i32 %mul59, i32 0, i32 0, i32 %100, i32 %102)
  %103 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %104 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width62 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %104, i32 0, i32 1
  %105 = load i32, i32* %width62, align 4
  %106 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height63 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %106, i32 0, i32 2
  %107 = load i32, i32* %height63, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %103, i32 0, i32 0, i32 %105, i32 %107)
  %108 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve, align 8
  %matrix = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %108, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x float], [9 x float]* %matrix, i32 0, i32 0
  %109 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve, align 8
  %matrix_divisor = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %109, i32 0, i32 2
  %110 = load float, float* %matrix_divisor, align 4
  %conv64 = fpext float %110 to double
  call void @convolve_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %destPR, float* %arraydecay, i32 3, double %conv64, i32 0, i32 1)
  %111 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %111)
  %112 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %113 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %114 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %115 = load double, double* %opacity, align 8
  %cmp65 = fcmp olt double %115, 1.000000e+00
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.57
  %116 = load double, double* %opacity, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %116, %cond.true ], [ 1.000000e+00, %cond.false ]
  %117 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call67 = call double @gimp_context_get_opacity(%struct._GimpContext* %117)
  %118 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %call68 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %118)
  call void @gimp_brush_core_replace_canvas(%struct._GimpBrushCore* %112, %struct._GimpDrawable* %113, %struct._GimpCoords* %114, double %cond, double %call67, i32 %call68, double 1.000000e+00, i32 1)
  br label %return

return:                                           ; preds = %cond.end, %if.then.22, %if.then.18, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare double @gimp_paint_options_get_fade(%struct._GimpPaintOptions*, %struct._GimpImage*, double) #1

declare double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

declare %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_convolve_calculate_matrix(%struct._GimpConvolve* %convolve, i32 %type, i32 %radius_x, i32 %radius_y, double %rate) #3 {
entry:
  %convolve.addr = alloca %struct._GimpConvolve*, align 8
  %type.addr = alloca i32, align 4
  %radius_x.addr = alloca i32, align 4
  %radius_y.addr = alloca i32, align 4
  %rate.addr = alloca double, align 8
  %percent = alloca double, align 8
  store %struct._GimpConvolve* %convolve, %struct._GimpConvolve** %convolve.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %radius_x, i32* %radius_x.addr, align 4
  store i32 %radius_y, i32* %radius_y.addr, align 4
  store double %rate, double* %rate.addr, align 8
  %0 = load double, double* %rate.addr, align 8
  %div = fdiv double %0, 1.000000e+02
  %cmp = fcmp olt double %div, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %rate.addr, align 8
  %div1 = fdiv double %1, 1.000000e+02
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div1, %cond.true ], [ 1.000000e+00, %cond.false ]
  store double %cond, double* %percent, align 8
  %2 = load i32, i32* %radius_x.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %3 = load i32, i32* %radius_y.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %4 = phi i1 [ false, %cond.end ], [ %tobool2, %land.rhs ]
  %cond3 = select i1 %4, double 1.000000e+00, double 0.000000e+00
  %conv = fptrunc double %cond3 to float
  %5 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [9 x float], [9 x float]* %matrix, i32 0, i64 0
  store float %conv, float* %arrayidx, align 4
  %6 = load i32, i32* %radius_y.addr, align 4
  %tobool4 = icmp ne i32 %6, 0
  %cond5 = select i1 %tobool4, double 1.000000e+00, double 0.000000e+00
  %conv6 = fptrunc double %cond5 to float
  %7 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix7 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [9 x float], [9 x float]* %matrix7, i32 0, i64 1
  store float %conv6, float* %arrayidx8, align 4
  %8 = load i32, i32* %radius_x.addr, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %land.rhs.10, label %land.end.12

land.rhs.10:                                      ; preds = %land.end
  %9 = load i32, i32* %radius_y.addr, align 4
  %tobool11 = icmp ne i32 %9, 0
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.10, %land.end
  %10 = phi i1 [ false, %land.end ], [ %tobool11, %land.rhs.10 ]
  %cond13 = select i1 %10, double 1.000000e+00, double 0.000000e+00
  %conv14 = fptrunc double %cond13 to float
  %11 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix15 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %11, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [9 x float], [9 x float]* %matrix15, i32 0, i64 2
  store float %conv14, float* %arrayidx16, align 4
  %12 = load i32, i32* %radius_x.addr, align 4
  %tobool17 = icmp ne i32 %12, 0
  %cond18 = select i1 %tobool17, double 1.000000e+00, double 0.000000e+00
  %conv19 = fptrunc double %cond18 to float
  %13 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix20 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [9 x float], [9 x float]* %matrix20, i32 0, i64 3
  store float %conv19, float* %arrayidx21, align 4
  %14 = load i32, i32* %type.addr, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
    i32 2, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %land.end.12
  %15 = load double, double* %percent, align 8
  %mul = fmul double %15, -6.375000e+01
  %add = fadd double 6.400000e+01, %mul
  %conv22 = fptrunc double %add to float
  %16 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix23 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %16, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [9 x float], [9 x float]* %matrix23, i32 0, i64 4
  store float %conv22, float* %arrayidx24, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %land.end.12
  %17 = load double, double* %percent, align 8
  %mul26 = fmul double %17, 4.480000e+02
  %add27 = fadd double -5.120000e+02, %mul26
  %conv28 = fptrunc double %add27 to float
  %18 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix29 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %18, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [9 x float], [9 x float]* %matrix29, i32 0, i64 4
  store float %conv28, float* %arrayidx30, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %land.end.12
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.end.12, %sw.bb.31, %sw.bb.25, %sw.bb
  %19 = load i32, i32* %radius_x.addr, align 4
  %tobool32 = icmp ne i32 %19, 0
  %cond33 = select i1 %tobool32, double 1.000000e+00, double 0.000000e+00
  %conv34 = fptrunc double %cond33 to float
  %20 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix35 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %20, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [9 x float], [9 x float]* %matrix35, i32 0, i64 5
  store float %conv34, float* %arrayidx36, align 4
  %21 = load i32, i32* %radius_x.addr, align 4
  %tobool37 = icmp ne i32 %21, 0
  br i1 %tobool37, label %land.rhs.38, label %land.end.40

land.rhs.38:                                      ; preds = %sw.epilog
  %22 = load i32, i32* %radius_y.addr, align 4
  %tobool39 = icmp ne i32 %22, 0
  br label %land.end.40

land.end.40:                                      ; preds = %land.rhs.38, %sw.epilog
  %23 = phi i1 [ false, %sw.epilog ], [ %tobool39, %land.rhs.38 ]
  %cond41 = select i1 %23, double 1.000000e+00, double 0.000000e+00
  %conv42 = fptrunc double %cond41 to float
  %24 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix43 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %24, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [9 x float], [9 x float]* %matrix43, i32 0, i64 6
  store float %conv42, float* %arrayidx44, align 4
  %25 = load i32, i32* %radius_y.addr, align 4
  %tobool45 = icmp ne i32 %25, 0
  %cond46 = select i1 %tobool45, double 1.000000e+00, double 0.000000e+00
  %conv47 = fptrunc double %cond46 to float
  %26 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix48 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %26, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [9 x float], [9 x float]* %matrix48, i32 0, i64 7
  store float %conv47, float* %arrayidx49, align 4
  %27 = load i32, i32* %radius_x.addr, align 4
  %tobool50 = icmp ne i32 %27, 0
  br i1 %tobool50, label %land.rhs.51, label %land.end.53

land.rhs.51:                                      ; preds = %land.end.40
  %28 = load i32, i32* %radius_y.addr, align 4
  %tobool52 = icmp ne i32 %28, 0
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.51, %land.end.40
  %29 = phi i1 [ false, %land.end.40 ], [ %tobool52, %land.rhs.51 ]
  %cond54 = select i1 %29, double 1.000000e+00, double 0.000000e+00
  %conv55 = fptrunc double %cond54 to float
  %30 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix56 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %30, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [9 x float], [9 x float]* %matrix56, i32 0, i64 8
  store float %conv55, float* %arrayidx57, align 4
  %31 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix58 = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %31, i32 0, i32 1
  %arraydecay = getelementptr inbounds [9 x float], [9 x float]* %matrix58, i32 0, i32 0
  %call = call double @gimp_convolve_sum_matrix(float* %arraydecay)
  %conv59 = fptrunc double %call to float
  %32 = load %struct._GimpConvolve*, %struct._GimpConvolve** %convolve.addr, align 8
  %matrix_divisor = getelementptr inbounds %struct._GimpConvolve, %struct._GimpConvolve* %32, i32 0, i32 2
  store float %conv59, float* %matrix_divisor, align 4
  ret void
}

declare void @pixel_region_init(%struct._PixelRegion*, %struct._TileManager*, i32, i32, i32, i32, i32) #1

declare %struct._TileManager* @gimp_drawable_get_tiles(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare noalias i8* @g_malloc(i64) #1

declare void @pixel_region_init_data(%struct._PixelRegion*, i8*, i32, i32, i32, i32, i32, i32) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @add_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare void @convolve_region(%struct._PixelRegion*, %struct._PixelRegion*, float*, i32, double, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_brush_core_replace_canvas(%struct._GimpBrushCore*, %struct._GimpDrawable*, %struct._GimpCoords*, double, double, i32, double, i32) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions*) #1

; Function Attrs: nounwind uwtable
define internal double @gimp_convolve_sum_matrix(float* %matrix) #3 {
entry:
  %matrix.addr = alloca float*, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  store float* %matrix, float** %matrix.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load float*, float** %matrix.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %conv = fpext float %3 to double
  %4 = load double, double* %sum, align 8
  %add = fadd double %4, %conv
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load double, double* %sum, align 8
  ret double %6
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
