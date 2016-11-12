; ModuleID = './app/paint/gimpairbrush.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpAirbrushClass = type { %struct._GimpPaintbrushClass }
%struct._GimpPaintbrushClass = type { %struct._GimpBrushCoreClass }
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
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
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
%struct._GimpAirbrush = type { %struct._GimpPaintbrush, i32, %struct._GimpDrawable*, %struct._GimpPaintOptions* }
%struct._GimpPaintbrush = type { %struct._GimpBrushCore }
%struct._GimpAirbrushOptions = type { %struct._GimpPaintOptions, double, i32, double }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }

@gimp_airbrush_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpAirbrush\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gimp-airbrush\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Airbrush\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gimp-tool-airbrush\00", align 1
@gimp_airbrush_parent_class = internal global i8* null, align 8
@GimpAirbrush_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_airbrush_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_airbrush_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_airbrush_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_paintbrush_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_airbrush_class_intern_init to void (i8*, i8*)*), i32 6504, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpAirbrush*)* @gimp_airbrush_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_airbrush_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_airbrush_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paintbrush_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_airbrush_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_airbrush_parent_class, align 8
  %1 = load i32, i32* @GimpAirbrush_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpAirbrush_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpAirbrushClass*
  call void @gimp_airbrush_class_init(%struct._GimpAirbrushClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_airbrush_init(%struct._GimpAirbrush* %airbrush) #3 {
entry:
  %airbrush.addr = alloca %struct._GimpAirbrush*, align 8
  store %struct._GimpAirbrush* %airbrush, %struct._GimpAirbrush** %airbrush.addr, align 8
  %0 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush.addr, align 8
  %timeout_id = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %0, i32 0, i32 1
  store i32 0, i32* %timeout_id, align 4
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_airbrush_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_airbrush_get_type() #5
  %call1 = call i64 @gimp_airbrush_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0)) #6
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_airbrush_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_airbrush_class_init(%struct._GimpAirbrushClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpAirbrushClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  store %struct._GimpAirbrushClass* %klass, %struct._GimpAirbrushClass** %klass.addr, align 8
  %0 = load %struct._GimpAirbrushClass*, %struct._GimpAirbrushClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpAirbrushClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpAirbrushClass*, %struct._GimpAirbrushClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpAirbrushClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_paint_core_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %5, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_airbrush_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %7, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_airbrush_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_airbrush_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %airbrush = alloca %struct._GimpAirbrush*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_airbrush_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAirbrush*
  store %struct._GimpAirbrush* %2, %struct._GimpAirbrush** %airbrush, align 8
  %3 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %3, i32 0, i32 1
  %4 = load i32, i32* %timeout_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id2 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %5, i32 0, i32 1
  %6 = load i32, i32* %timeout_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id4 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %7, i32 0, i32 1
  store i32 0, i32* %timeout_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_airbrush_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_airbrush_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %paint_state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %airbrush = alloca %struct._GimpAirbrush*, align 8
  %options = alloca %struct._GimpAirbrushOptions*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %rate_output = alloca %struct._GimpDynamicsOutput*, align 8
  %fade_point = alloca double, align 8
  %dynamic_rate = alloca double, align 8
  %timeout = alloca i32, align 4
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %paint_state, i32* %paint_state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_airbrush_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAirbrush*
  store %struct._GimpAirbrush* %2, %struct._GimpAirbrush** %airbrush, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_airbrush_options_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpAirbrushOptions*
  store %struct._GimpAirbrushOptions* %5, %struct._GimpAirbrushOptions** %options, align 8
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %7 = bitcast %struct._GimpPaintCore* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_brush_core_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpBrushCore*
  %dynamics6 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %8, i32 0, i32 3
  %9 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics6, align 8
  store %struct._GimpDynamics* %9, %struct._GimpDynamics** %dynamics, align 8
  %10 = load i32, i32* %paint_state.addr, align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %entry
  %11 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %11, i32 0, i32 1
  %12 = load i32, i32* %timeout_id, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %13 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id7 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %13, i32 0, i32 1
  %14 = load i32, i32* %timeout_id7, align 4
  %call8 = call i32 @g_source_remove(i32 %14)
  %15 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id9 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %15, i32 0, i32 1
  store i32 0, i32* %timeout_id9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %16 = load i8*, i8** @gimp_airbrush_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call10 = call i64 @gimp_paint_core_get_type() #5
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 %call10)
  %18 = bitcast %struct._GTypeClass* %call11 to %struct._GimpPaintCoreClass*
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %18, i32 0, i32 3
  %19 = load void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %20 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %24 = load i32, i32* %paint_state.addr, align 4
  %25 = load i32, i32* %time.addr, align 4
  call void %19(%struct._GimpPaintCore* %20, %struct._GimpDrawable* %21, %struct._GimpPaintOptions* %22, %struct._GimpCoords* %23, i32 %24, i32 %25)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %26 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id13 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %26, i32 0, i32 1
  %27 = load i32, i32* %timeout_id13, align 4
  %tobool14 = icmp ne i32 %27, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %sw.bb.12
  %28 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id16 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %28, i32 0, i32 1
  %29 = load i32, i32* %timeout_id16, align 4
  %call17 = call i32 @g_source_remove(i32 %29)
  %30 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id18 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %30, i32 0, i32 1
  store i32 0, i32* %timeout_id18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %sw.bb.12
  %31 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %33 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_airbrush_motion(%struct._GimpPaintCore* %31, %struct._GimpDrawable* %32, %struct._GimpPaintOptions* %33, %struct._GimpCoords* %34)
  %35 = load %struct._GimpAirbrushOptions*, %struct._GimpAirbrushOptions** %options, align 8
  %rate = getelementptr inbounds %struct._GimpAirbrushOptions, %struct._GimpAirbrushOptions* %35, i32 0, i32 1
  %36 = load double, double* %rate, align 8
  %cmp = fcmp une double %36, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.end.19
  %37 = load %struct._GimpAirbrushOptions*, %struct._GimpAirbrushOptions** %options, align 8
  %motion_only = getelementptr inbounds %struct._GimpAirbrushOptions, %struct._GimpAirbrushOptions* %37, i32 0, i32 2
  %38 = load i32, i32* %motion_only, align 4
  %tobool20 = icmp ne i32 %38, 0
  br i1 %tobool20, label %if.end.33, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true
  %39 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %40 = bitcast %struct._GimpDrawable* %39 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_item_get_type() #5
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call22)
  %41 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpItem*
  %call24 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %41)
  store %struct._GimpImage* %call24, %struct._GimpImage** %image, align 8
  %42 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %44 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %44, i32 0, i32 8
  %45 = load double, double* %pixel_dist, align 8
  %call25 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %42, %struct._GimpImage* %43, double %45)
  store double %call25, double* %fade_point, align 8
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %47 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %drawable26 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %47, i32 0, i32 2
  store %struct._GimpDrawable* %46, %struct._GimpDrawable** %drawable26, align 8
  %48 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %49 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %paint_options27 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %49, i32 0, i32 3
  store %struct._GimpPaintOptions* %48, %struct._GimpPaintOptions** %paint_options27, align 8
  %50 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call28 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %50, i32 8)
  store %struct._GimpDynamicsOutput* %call28, %struct._GimpDynamicsOutput** %rate_output, align 8
  %51 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %rate_output, align 8
  %52 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %53 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %54 = load double, double* %fade_point, align 8
  %call29 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %51, %struct._GimpCoords* %52, %struct._GimpPaintOptions* %53, double %54)
  store double %call29, double* %dynamic_rate, align 8
  %55 = load %struct._GimpAirbrushOptions*, %struct._GimpAirbrushOptions** %options, align 8
  %rate30 = getelementptr inbounds %struct._GimpAirbrushOptions, %struct._GimpAirbrushOptions* %55, i32 0, i32 1
  %56 = load double, double* %rate30, align 8
  %57 = load double, double* %dynamic_rate, align 8
  %mul = fmul double %56, %57
  %div = fdiv double 1.000000e+04, %mul
  %conv = fptosi double %div to i32
  store i32 %conv, i32* %timeout, align 4
  %58 = load i32, i32* %timeout, align 4
  %59 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %60 = bitcast %struct._GimpAirbrush* %59 to i8*
  %call31 = call i32 @g_timeout_add(i32 %58, i32 (i8*)* @gimp_airbrush_timeout, i8* %60)
  %61 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id32 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %61, i32 0, i32 1
  store i32 %call31, i32* %timeout_id32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.21, %land.lhs.true, %if.end.19
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  %62 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id35 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %62, i32 0, i32 1
  %63 = load i32, i32* %timeout_id35, align 4
  %tobool36 = icmp ne i32 %63, 0
  br i1 %tobool36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %sw.bb.34
  %64 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id38 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %64, i32 0, i32 1
  %65 = load i32, i32* %timeout_id38, align 4
  %call39 = call i32 @g_source_remove(i32 %65)
  %66 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %timeout_id40 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %66, i32 0, i32 1
  store i32 0, i32* %timeout_id40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %sw.bb.34
  %67 = load i8*, i8** @gimp_airbrush_parent_class, align 8
  %68 = bitcast i8* %67 to %struct._GTypeClass*
  %call42 = call i64 @gimp_paint_core_get_type() #5
  %call43 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %68, i64 %call42)
  %69 = bitcast %struct._GTypeClass* %call43 to %struct._GimpPaintCoreClass*
  %paint44 = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %69, i32 0, i32 3
  %70 = load void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)*, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint44, align 8
  %71 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %72 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %73 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %74 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %75 = load i32, i32* %paint_state.addr, align 4
  %76 = load i32, i32* %time.addr, align 4
  call void %70(%struct._GimpPaintCore* %71, %struct._GimpDrawable* %72, %struct._GimpPaintOptions* %73, %struct._GimpCoords* %74, i32 %75, i32 %76)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.41, %if.end.33, %if.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_source_remove(i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_airbrush_motion(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %options = alloca %struct._GimpAirbrushOptions*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %flow_output = alloca %struct._GimpDynamicsOutput*, align 8
  %opacity = alloca double, align 8
  %fade_point = alloca double, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_airbrush_options_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAirbrushOptions*
  store %struct._GimpAirbrushOptions* %2, %struct._GimpAirbrushOptions** %options, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %4 = bitcast %struct._GimpDrawable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %5)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %7 = bitcast %struct._GimpPaintCore* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_brush_core_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpBrushCore*
  %dynamics = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %8, i32 0, i32 3
  %9 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call7 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %9, i32 9)
  store %struct._GimpDynamicsOutput* %call7, %struct._GimpDynamicsOutput** %flow_output, align 8
  %10 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %12, i32 0, i32 8
  %13 = load double, double* %pixel_dist, align 8
  %call8 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %10, %struct._GimpImage* %11, double %13)
  store double %call8, double* %fade_point, align 8
  %14 = load %struct._GimpAirbrushOptions*, %struct._GimpAirbrushOptions** %options, align 8
  %flow = getelementptr inbounds %struct._GimpAirbrushOptions, %struct._GimpAirbrushOptions* %14, i32 0, i32 3
  %15 = load double, double* %flow, align 8
  %div = fdiv double %15, 1.000000e+02
  %16 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %flow_output, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %18 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %19 = load double, double* %fade_point, align 8
  %call9 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %16, %struct._GimpCoords* %17, %struct._GimpPaintOptions* %18, double %19)
  %mul = fmul double %div, %call9
  store double %mul, double* %opacity, align 8
  %20 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %24 = load double, double* %opacity, align 8
  call void @_gimp_paintbrush_motion(%struct._GimpPaintCore* %20, %struct._GimpDrawable* %21, %struct._GimpPaintOptions* %22, %struct._GimpCoords* %23, double %24)
  ret void
}

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare double @gimp_paint_options_get_fade(%struct._GimpPaintOptions*, %struct._GimpImage*, double) #1

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_airbrush_timeout(i8* %data) #3 {
entry:
  %data.addr = alloca i8*, align 8
  %airbrush = alloca %struct._GimpAirbrush*, align 8
  %coords = alloca %struct._GimpCoords, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_airbrush_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpAirbrush*
  store %struct._GimpAirbrush* %2, %struct._GimpAirbrush** %airbrush, align 8
  %3 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %4 = bitcast %struct._GimpAirbrush* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_paint_core_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPaintCore*
  call void @gimp_paint_core_get_current_coords(%struct._GimpPaintCore* %5, %struct._GimpCoords* %coords)
  %6 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %7 = bitcast %struct._GimpAirbrush* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_paint_core_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpPaintCore*
  %9 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %drawable = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %9, i32 0, i32 2
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %11 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %paint_options = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %11, i32 0, i32 3
  %12 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  call void @gimp_airbrush_paint(%struct._GimpPaintCore* %8, %struct._GimpDrawable* %10, %struct._GimpPaintOptions* %12, %struct._GimpCoords* %coords, i32 1, i32 0)
  %13 = load %struct._GimpAirbrush*, %struct._GimpAirbrush** %airbrush, align 8
  %drawable6 = getelementptr inbounds %struct._GimpAirbrush, %struct._GimpAirbrush* %13, i32 0, i32 2
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable6, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %16)
  call void @gimp_image_flush(%struct._GimpImage* %call9)
  ret i32 0
}

declare void @_gimp_paintbrush_motion(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, double) #1

declare void @gimp_paint_core_get_current_coords(%struct._GimpPaintCore*, %struct._GimpCoords*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
