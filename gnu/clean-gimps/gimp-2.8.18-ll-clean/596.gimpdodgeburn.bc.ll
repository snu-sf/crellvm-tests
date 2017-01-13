; ModuleID = './app/paint/gimpdodgeburn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDodgeBurnClass = type { %struct._GimpBrushCoreClass }
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
%struct._GimpDodgeBurn = type { %struct._GimpBrushCore, %struct._GimpLut* }
%struct._GimpLut = type { i8**, i32 }
%struct._GimpDodgeBurnOptions = type { %struct._GimpPaintOptions, i32, i32, double }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Tile = type opaque

@gimp_dodge_burn_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpDodgeBurn\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gimp-dodge-burn\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Dodge/Burn\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gimp-tool-dodge\00", align 1
@gimp_dodge_burn_parent_class = internal global i8* null, align 8
@GimpDodgeBurn_private_offset = internal global i32 0, align 4
@gimp_dodge_burn_make_luts.exposure = internal global float 0.000000e+00, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dodge_burn_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dodge_burn_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dodge_burn_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dodge_burn_class_intern_init to void (i8*, i8*)*), i32 6488, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDodgeBurn*)* @gimp_dodge_burn_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dodge_burn_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dodge_burn_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dodge_burn_parent_class, align 8
  %1 = load i32, i32* @GimpDodgeBurn_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDodgeBurn_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDodgeBurnClass*
  call void @gimp_dodge_burn_class_init(%struct._GimpDodgeBurnClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_init(%struct._GimpDodgeBurn* %dodgeburn) #3 {
entry:
  %dodgeburn.addr = alloca %struct._GimpDodgeBurn*, align 8
  store %struct._GimpDodgeBurn* %dodgeburn, %struct._GimpDodgeBurn** %dodgeburn.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_dodge_burn_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_dodge_burn_get_type() #5
  %call1 = call i64 @gimp_dodge_burn_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #6
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dodge_burn_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_class_init(%struct._GimpDodgeBurnClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDodgeBurnClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  %brush_core_class = alloca %struct._GimpBrushCoreClass*, align 8
  store %struct._GimpDodgeBurnClass* %klass, %struct._GimpDodgeBurnClass** %klass.addr, align 8
  %0 = load %struct._GimpDodgeBurnClass*, %struct._GimpDodgeBurnClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDodgeBurnClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDodgeBurnClass*, %struct._GimpDodgeBurnClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDodgeBurnClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_paint_core_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %5, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %6 = load %struct._GimpDodgeBurnClass*, %struct._GimpDodgeBurnClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDodgeBurnClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_brush_core_get_type() #5
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpBrushCoreClass*
  store %struct._GimpBrushCoreClass* %8, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dodge_burn_finalize, void (%struct._GObject*)** %finalize, align 8
  %10 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %10, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_dodge_burn_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %11 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %handles_changing_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %11, i32 0, i32 1
  store i32 1, i32* %handles_changing_brush, align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dodgeburn = alloca %struct._GimpDodgeBurn*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dodge_burn_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDodgeBurn*
  store %struct._GimpDodgeBurn* %2, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %3 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %lut = getelementptr inbounds %struct._GimpDodgeBurn, %struct._GimpDodgeBurn* %3, i32 0, i32 1
  %4 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %tobool = icmp ne %struct._GimpLut* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %lut2 = getelementptr inbounds %struct._GimpDodgeBurn, %struct._GimpDodgeBurn* %5, i32 0, i32 1
  %6 = load %struct._GimpLut*, %struct._GimpLut** %lut2, align 8
  call void @gimp_lut_free(%struct._GimpLut* %6)
  %7 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %lut3 = getelementptr inbounds %struct._GimpDodgeBurn, %struct._GimpDodgeBurn* %7, i32 0, i32 1
  store %struct._GimpLut* null, %struct._GimpLut** %lut3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_dodge_burn_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %dodgeburn = alloca %struct._GimpDodgeBurn*, align 8
  %options = alloca %struct._GimpDodgeBurnOptions*, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dodge_burn_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDodgeBurn*
  store %struct._GimpDodgeBurn* %2, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_dodge_burn_options_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDodgeBurnOptions*
  store %struct._GimpDodgeBurnOptions* %5, %struct._GimpDodgeBurnOptions** %options, align 8
  %6 = load i32, i32* %paint_state.addr, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %call4 = call %struct._GimpLut* @gimp_lut_new()
  %7 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %lut = getelementptr inbounds %struct._GimpDodgeBurn, %struct._GimpDodgeBurn* %7, i32 0, i32 1
  store %struct._GimpLut* %call4, %struct._GimpLut** %lut, align 8
  %8 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %9 = load %struct._GimpDodgeBurnOptions*, %struct._GimpDodgeBurnOptions** %options, align 8
  %exposure = getelementptr inbounds %struct._GimpDodgeBurnOptions, %struct._GimpDodgeBurnOptions* %9, i32 0, i32 3
  %10 = load double, double* %exposure, align 8
  %11 = load %struct._GimpDodgeBurnOptions*, %struct._GimpDodgeBurnOptions** %options, align 8
  %type = getelementptr inbounds %struct._GimpDodgeBurnOptions, %struct._GimpDodgeBurnOptions* %11, i32 0, i32 1
  %12 = load i32, i32* %type, align 4
  %13 = load %struct._GimpDodgeBurnOptions*, %struct._GimpDodgeBurnOptions** %options, align 8
  %mode = getelementptr inbounds %struct._GimpDodgeBurnOptions, %struct._GimpDodgeBurnOptions* %13, i32 0, i32 2
  %14 = load i32, i32* %mode, align 4
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  call void @gimp_dodge_burn_make_luts(%struct._GimpDodgeBurn* %8, double %10, i32 %12, i32 %14, %struct._GimpDrawable* %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %18 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %19 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_dodge_burn_motion(%struct._GimpPaintCore* %16, %struct._GimpDrawable* %17, %struct._GimpPaintOptions* %18, %struct._GimpCoords* %19)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %20 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %lut7 = getelementptr inbounds %struct._GimpDodgeBurn, %struct._GimpDodgeBurn* %20, i32 0, i32 1
  %21 = load %struct._GimpLut*, %struct._GimpLut** %lut7, align 8
  %tobool = icmp ne %struct._GimpLut* %21, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.6
  %22 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %lut8 = getelementptr inbounds %struct._GimpDodgeBurn, %struct._GimpDodgeBurn* %22, i32 0, i32 1
  %23 = load %struct._GimpLut*, %struct._GimpLut** %lut8, align 8
  call void @gimp_lut_free(%struct._GimpLut* %23)
  %24 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %lut9 = getelementptr inbounds %struct._GimpDodgeBurn, %struct._GimpDodgeBurn* %24, i32 0, i32 1
  store %struct._GimpLut* null, %struct._GimpLut** %lut9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.6
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb.5, %sw.bb
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_lut_free(%struct._GimpLut*) #1

declare %struct._GimpLut* @gimp_lut_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_make_luts(%struct._GimpDodgeBurn* %dodgeburn, double %db_exposure, i32 %type, i32 %mode, %struct._GimpDrawable* %drawable) #3 {
entry:
  %dodgeburn.addr = alloca %struct._GimpDodgeBurn*, align 8
  %db_exposure.addr = alloca double, align 8
  %type.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %lut_func = alloca float (i8*, i32, i32, float)*, align 8
  %nchannels = alloca i32, align 4
  store %struct._GimpDodgeBurn* %dodgeburn, %struct._GimpDodgeBurn** %dodgeburn.addr, align 8
  store double %db_exposure, double* %db_exposure.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %0)
  store i32 %call, i32* %nchannels, align 4
  %1 = load double, double* %db_exposure.addr, align 8
  %div = fdiv double %1, 1.000000e+02
  %conv = fptrunc double %div to float
  store float %conv, float* @gimp_dodge_burn_make_luts.exposure, align 4
  %2 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load float, float* @gimp_dodge_burn_make_luts.exposure, align 4
  %sub = fsub float -0.000000e+00, %3
  store float %sub, float* @gimp_dodge_burn_make_luts.exposure, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %mode.addr, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.2
    i32 0, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.end
  store float (i8*, i32, i32, float)* @gimp_dodge_burn_highlights_lut_func, float (i8*, i32, i32, float)** %lut_func, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  store float (i8*, i32, i32, float)* @gimp_dodge_burn_midtones_lut_func, float (i8*, i32, i32, float)** %lut_func, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  store float (i8*, i32, i32, float)* @gimp_dodge_burn_shadows_lut_func, float (i8*, i32, i32, float)** %lut_func, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store float (i8*, i32, i32, float)* null, float (i8*, i32, i32, float)** %lut_func, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb
  %5 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn.addr, align 8
  %lut = getelementptr inbounds %struct._GimpDodgeBurn, %struct._GimpDodgeBurn* %5, i32 0, i32 1
  %6 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %7 = load float (i8*, i32, i32, float)*, float (i8*, i32, i32, float)** %lut_func, align 8
  %8 = load i32, i32* %nchannels, align 4
  call void @gimp_lut_setup_exact(%struct._GimpLut* %6, float (i8*, i32, i32, float)* %7, i8* bitcast (float* @gimp_dodge_burn_make_luts.exposure to i8*), i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dodge_burn_motion(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %dodgeburn = alloca %struct._GimpDodgeBurn*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %opacity_output = alloca %struct._GimpDynamicsOutput*, align 8
  %hardness_output = alloca %struct._GimpDynamicsOutput*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %area = alloca %struct._TempBuf*, align 8
  %orig = alloca %struct._TempBuf*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %tempPR = alloca %struct._PixelRegion, align 8
  %temp_data = alloca i8*, align 8
  %fade_point = alloca double, align 8
  %opacity = alloca double, align 8
  %hardness = alloca double, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dodge_burn_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDodgeBurn*
  store %struct._GimpDodgeBurn* %2, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_context_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContext*
  store %struct._GimpContext* %5, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %7 = bitcast %struct._GimpPaintCore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_core_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushCore*
  %dynamics6 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %8, i32 0, i32 3
  %9 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics6, align 8
  store %struct._GimpDynamics* %9, %struct._GimpDynamics** %dynamics, align 8
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call7 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %10)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %12 = bitcast %struct._GimpDrawable* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  %call10 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %13)
  store %struct._GimpImage* %call10, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call11 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %14, i32 0)
  store %struct._GimpDynamicsOutput* %call11, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %15 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %17, i32 0, i32 8
  %18 = load double, double* %pixel_dist, align 8
  %call12 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %15, %struct._GimpImage* %16, double %18)
  store double %call12, double* %fade_point, align 8
  %19 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %21 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %22 = load double, double* %fade_point, align 8
  %call13 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %19, %struct._GimpCoords* %20, %struct._GimpPaintOptions* %21, double %22)
  store double %call13, double* %opacity, align 8
  %23 = load double, double* %opacity, align 8
  %cmp = fcmp oeq double %23, 0.000000e+00
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  br label %return

if.end.15:                                        ; preds = %if.end
  %24 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call16 = call %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore* %24, %struct._GimpDrawable* %25, %struct._GimpPaintOptions* %26, %struct._GimpCoords* %27)
  store %struct._TempBuf* %call16, %struct._TempBuf** %area, align 8
  %28 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %tobool17 = icmp ne %struct._TempBuf* %28, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call20)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  store %struct._GimpItem* %31, %struct._GimpItem** %item, align 8
  %32 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %x22 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %32, i32 0, i32 3
  %33 = load i32, i32* %x22, align 4
  %34 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %y23 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %34, i32 0, i32 4
  %35 = load i32, i32* %y23, align 4
  %36 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width24 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %36, i32 0, i32 1
  %37 = load i32, i32* %width24, align 4
  %38 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height25 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %38, i32 0, i32 2
  %39 = load i32, i32* %height25, align 4
  %40 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call26 = call i32 @gimp_item_get_width(%struct._GimpItem* %40)
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call27 = call i32 @gimp_item_get_height(%struct._GimpItem* %41)
  %call28 = call i32 @gimp_rectangle_intersect(i32 %33, i32 %35, i32 %37, i32 %39, i32 0, i32 0, i32 %call26, i32 %call27, i32* %x, i32* %y, i32* %width, i32* %height)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.19
  br label %return

if.end.31:                                        ; preds = %if.end.19
  %42 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %44 = load i32, i32* %x, align 4
  %45 = load i32, i32* %y, align 4
  %46 = load i32, i32* %width, align 4
  %47 = load i32, i32* %height, align 4
  %call32 = call %struct._TempBuf* @gimp_paint_core_get_orig_image(%struct._GimpPaintCore* %42, %struct._GimpDrawable* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store %struct._TempBuf* %call32, %struct._TempBuf** %orig, align 8
  %48 = load %struct._TempBuf*, %struct._TempBuf** %orig, align 8
  %49 = load i32, i32* %width, align 4
  %50 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %srcPR, %struct._TempBuf* %48, i32 0, i32 0, i32 %49, i32 %50)
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %51 = load i32, i32* %h, align 4
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %52 = load i32, i32* %bytes, align 4
  %mul = mul nsw i32 %51, %52
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %53 = load i32, i32* %w, align 4
  %mul33 = mul nsw i32 %mul, %53
  %conv = sext i32 %mul33 to i64
  %call34 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call34, i8** %temp_data, align 8
  %54 = load i8*, i8** %temp_data, align 8
  %bytes35 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %55 = load i32, i32* %bytes35, align 4
  %bytes36 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 10
  %56 = load i32, i32* %bytes36, align 4
  %w37 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %57 = load i32, i32* %w37, align 4
  %mul38 = mul nsw i32 %56, %57
  %x39 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 6
  %58 = load i32, i32* %x39, align 4
  %y40 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 7
  %59 = load i32, i32* %y40, align 4
  %w41 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 8
  %60 = load i32, i32* %w41, align 4
  %h42 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %srcPR, i32 0, i32 9
  %61 = load i32, i32* %h42, align 4
  call void @pixel_region_init_data(%struct._PixelRegion* %tempPR, i8* %54, i32 %55, i32 %mul38, i32 %58, i32 %59, i32 %60, i32 %61)
  %62 = load %struct._GimpDodgeBurn*, %struct._GimpDodgeBurn** %dodgeburn, align 8
  %lut = getelementptr inbounds %struct._GimpDodgeBurn, %struct._GimpDodgeBurn* %62, i32 0, i32 1
  %63 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  call void @gimp_lut_process(%struct._GimpLut* %63, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %tempPR)
  %64 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %65 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width43 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %65, i32 0, i32 1
  %66 = load i32, i32* %width43, align 4
  %67 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height44 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %67, i32 0, i32 2
  %68 = load i32, i32* %height44, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %64, i32 0, i32 0, i32 %66, i32 %68)
  %69 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call45 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %69)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.else, label %if.then.47

if.then.47:                                       ; preds = %if.end.31
  call void @add_alpha_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %destPR)
  br label %if.end.48

if.else:                                          ; preds = %if.end.31
  call void @copy_region(%struct._PixelRegion* %tempPR, %struct._PixelRegion* %destPR)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.47
  %70 = load i8*, i8** %temp_data, align 8
  call void @g_free(i8* %70)
  %71 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call49 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %71, i32 4)
  store %struct._GimpDynamicsOutput* %call49, %struct._GimpDynamicsOutput** %hardness_output, align 8
  %72 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %hardness_output, align 8
  %73 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %74 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %75 = load double, double* %fade_point, align 8
  %call50 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %72, %struct._GimpCoords* %73, %struct._GimpPaintOptions* %74, double %75)
  store double %call50, double* %hardness, align 8
  %76 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %77 = bitcast %struct._GimpPaintCore* %76 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_brush_core_get_type() #5
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call51)
  %78 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpBrushCore*
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %80 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %81 = load double, double* %opacity, align 8
  %cmp53 = fcmp olt double %81, 1.000000e+00
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.48
  %82 = load double, double* %opacity, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %82, %cond.true ], [ 1.000000e+00, %cond.false ]
  %83 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call55 = call double @gimp_context_get_opacity(%struct._GimpContext* %83)
  %84 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %call56 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %84)
  %85 = load double, double* %hardness, align 8
  call void @gimp_brush_core_replace_canvas(%struct._GimpBrushCore* %78, %struct._GimpDrawable* %79, %struct._GimpCoords* %80, double %cond, double %call55, i32 %call56, double %85, i32 0)
  br label %return

return:                                           ; preds = %cond.end, %if.then.30, %if.then.18, %if.then.14, %if.then
  ret void
}

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

; Function Attrs: nounwind uwtable
define internal float @gimp_dodge_burn_highlights_lut_func(i8* %user_data, i32 %nchannels, i32 %channel, float %value) #3 {
entry:
  %retval = alloca float, align 4
  %user_data.addr = alloca i8*, align 8
  %nchannels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  %exposure_ptr = alloca float*, align 8
  %exposure = alloca float, align 4
  %factor = alloca float, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  store i32 %nchannels, i32* %nchannels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to float*
  store float* %1, float** %exposure_ptr, align 8
  %2 = load float*, float** %exposure_ptr, align 8
  %3 = load float, float* %2, align 4
  store float %3, float* %exposure, align 4
  %4 = load float, float* %exposure, align 4
  %conv = fpext float %4 to double
  %mul = fmul double %conv, 3.333330e-01
  %add = fadd double 1.000000e+00, %mul
  %conv1 = fptrunc double %add to float
  store float %conv1, float* %factor, align 4
  %5 = load i32, i32* %nchannels.addr, align 4
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %channel.addr, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %nchannels.addr, align 4
  %cmp5 = icmp eq i32 %7, 4
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %channel.addr, align 4
  %cmp8 = icmp eq i32 %8, 3
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true
  %9 = load float, float* %value.addr, align 4
  store float %9, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7, %lor.lhs.false
  %10 = load float, float* %factor, align 4
  %11 = load float, float* %value.addr, align 4
  %mul10 = fmul float %10, %11
  store float %mul10, float* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load float, float* %retval
  ret float %12
}

; Function Attrs: nounwind uwtable
define internal float @gimp_dodge_burn_midtones_lut_func(i8* %user_data, i32 %nchannels, i32 %channel, float %value) #3 {
entry:
  %retval = alloca float, align 4
  %user_data.addr = alloca i8*, align 8
  %nchannels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  %exposure_ptr = alloca float*, align 8
  %exposure = alloca float, align 4
  %factor = alloca float, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  store i32 %nchannels, i32* %nchannels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to float*
  store float* %1, float** %exposure_ptr, align 8
  %2 = load float*, float** %exposure_ptr, align 8
  %3 = load float, float* %2, align 4
  store float %3, float* %exposure, align 4
  %4 = load i32, i32* %nchannels.addr, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %channel.addr, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %nchannels.addr, align 4
  %cmp2 = icmp eq i32 %6, 4
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %channel.addr, align 4
  %cmp4 = icmp eq i32 %7, 3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %8 = load float, float* %value.addr, align 4
  store float %8, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %lor.lhs.false
  %9 = load float, float* %exposure, align 4
  %cmp5 = fcmp olt float %9, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %10 = load float, float* %exposure, align 4
  %conv = fpext float %10 to double
  %mul = fmul double %conv, 3.333330e-01
  %sub = fsub double 1.000000e+00, %mul
  %conv7 = fptrunc double %sub to float
  store float %conv7, float* %factor, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %11 = load float, float* %exposure, align 4
  %conv8 = fpext float %11 to double
  %add = fadd double 1.000000e+00, %conv8
  %div = fdiv double 1.000000e+00, %add
  %conv9 = fptrunc double %div to float
  store float %conv9, float* %factor, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %12 = load float, float* %value.addr, align 4
  %conv11 = fpext float %12 to double
  %13 = load float, float* %factor, align 4
  %conv12 = fpext float %13 to double
  %call = call double @pow(double %conv11, double %conv12) #6
  %conv13 = fptrunc double %call to float
  store float %conv13, float* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %14 = load float, float* %retval
  ret float %14
}

; Function Attrs: nounwind uwtable
define internal float @gimp_dodge_burn_shadows_lut_func(i8* %user_data, i32 %nchannels, i32 %channel, float %value) #3 {
entry:
  %retval = alloca float, align 4
  %user_data.addr = alloca i8*, align 8
  %nchannels.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  %exposure_ptr = alloca float*, align 8
  %exposure = alloca float, align 4
  %new_value = alloca float, align 4
  %factor = alloca float, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  store i32 %nchannels, i32* %nchannels.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to float*
  store float* %1, float** %exposure_ptr, align 8
  %2 = load float*, float** %exposure_ptr, align 8
  %3 = load float, float* %2, align 4
  store float %3, float* %exposure, align 4
  %4 = load i32, i32* %nchannels.addr, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %channel.addr, align 4
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %nchannels.addr, align 4
  %cmp2 = icmp eq i32 %6, 4
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %channel.addr, align 4
  %cmp4 = icmp eq i32 %7, 3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %8 = load float, float* %value.addr, align 4
  store float %8, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %lor.lhs.false
  %9 = load float, float* %exposure, align 4
  %cmp5 = fcmp oge float %9, 0.000000e+00
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %10 = load float, float* %exposure, align 4
  %conv = fpext float %10 to double
  %mul = fmul double 3.333330e-01, %conv
  %conv7 = fptrunc double %mul to float
  store float %conv7, float* %factor, align 4
  %11 = load float, float* %factor, align 4
  %12 = load float, float* %value.addr, align 4
  %add = fadd float %11, %12
  %13 = load float, float* %factor, align 4
  %14 = load float, float* %value.addr, align 4
  %mul8 = fmul float %13, %14
  %sub = fsub float %add, %mul8
  store float %sub, float* %new_value, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %15 = load float, float* %exposure, align 4
  %conv9 = fpext float %15 to double
  %mul10 = fmul double -3.333330e-01, %conv9
  %conv11 = fptrunc double %mul10 to float
  store float %conv11, float* %factor, align 4
  %16 = load float, float* %value.addr, align 4
  %17 = load float, float* %factor, align 4
  %cmp12 = fcmp olt float %16, %17
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  store float 0.000000e+00, float* %new_value, align 4
  br label %if.end.18

if.else.15:                                       ; preds = %if.else
  %18 = load float, float* %value.addr, align 4
  %19 = load float, float* %factor, align 4
  %sub16 = fsub float %18, %19
  %20 = load float, float* %factor, align 4
  %sub17 = fsub float 1.000000e+00, %20
  %div = fdiv float %sub16, %sub17
  store float %div, float* %new_value, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.6
  %21 = load float, float* %new_value, align 4
  store float %21, float* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  %22 = load float, float* %retval
  ret float %22
}

declare void @gimp_lut_setup_exact(%struct._GimpLut*, float (i8*, i32, i32, float)*, i8*, i32) #1

; Function Attrs: nounwind
declare double @pow(double, double) #4

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

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare %struct._TempBuf* @gimp_paint_core_get_orig_image(%struct._GimpPaintCore*, %struct._GimpDrawable*, i32, i32, i32, i32) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare noalias i8* @g_malloc(i64) #1

declare void @pixel_region_init_data(%struct._PixelRegion*, i8*, i32, i32, i32, i32, i32, i32) #1

declare void @gimp_lut_process(%struct._GimpLut*, %struct._PixelRegion*, %struct._PixelRegion*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare void @add_alpha_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @copy_region(%struct._PixelRegion*, %struct._PixelRegion*) #1

declare void @g_free(i8*) #1

declare void @gimp_brush_core_replace_canvas(%struct._GimpBrushCore*, %struct._GimpDrawable*, %struct._GimpCoords*, double, double, i32, double, i32) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
