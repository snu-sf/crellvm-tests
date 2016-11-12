; ModuleID = './app/paint/gimperaser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpEraserClass = type { %struct._GimpBrushCoreClass }
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
%struct._GimpEraser = type { %struct._GimpBrushCore }
%struct._GimpEraserOptions = type { %struct._GimpPaintOptions, i32 }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }

@gimp_eraser_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpEraser\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gimp-eraser\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Eraser\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"gimp-tool-eraser\00", align 1
@gimp_eraser_parent_class = internal global i8* null, align 8
@GimpEraser_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_eraser_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_eraser_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_eraser_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_eraser_class_intern_init to void (i8*, i8*)*), i32 6480, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpEraser*)* @gimp_eraser_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_eraser_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_eraser_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_eraser_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_eraser_parent_class, align 8
  %1 = load i32, i32* @GimpEraser_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpEraser_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpEraserClass*
  call void @gimp_eraser_class_init(%struct._GimpEraserClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_eraser_init(%struct._GimpEraser* %eraser) #3 {
entry:
  %eraser.addr = alloca %struct._GimpEraser*, align 8
  store %struct._GimpEraser* %eraser, %struct._GimpEraser** %eraser.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_eraser_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_eraser_get_type() #5
  %call1 = call i64 @gimp_eraser_options_get_type() #5
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #6
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_eraser_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_eraser_class_init(%struct._GimpEraserClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpEraserClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  %brush_core_class = alloca %struct._GimpBrushCoreClass*, align 8
  store %struct._GimpEraserClass* %klass, %struct._GimpEraserClass** %klass.addr, align 8
  %0 = load %struct._GimpEraserClass*, %struct._GimpEraserClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpEraserClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_paint_core_get_type() #5
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %2, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %3 = load %struct._GimpEraserClass*, %struct._GimpEraserClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpEraserClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_brush_core_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpBrushCoreClass*
  store %struct._GimpBrushCoreClass* %5, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %6 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %6, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_eraser_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %7 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %handles_changing_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %7, i32 0, i32 1
  store i32 1, i32* %handles_changing_brush, align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_eraser_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
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
  call void @gimp_eraser_motion(%struct._GimpPaintCore* %1, %struct._GimpDrawable* %2, %struct._GimpPaintOptions* %3, %struct._GimpCoords* %4)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_eraser_motion(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %options = alloca %struct._GimpEraserOptions*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %opacity_output = alloca %struct._GimpDynamicsOutput*, align 8
  %force_output = alloca %struct._GimpDynamicsOutput*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %fade_point = alloca double, align 8
  %opacity = alloca double, align 8
  %area = alloca %struct._TempBuf*, align 8
  %col = alloca [4 x i8], align 1
  %force = alloca double, align 8
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_eraser_options_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEraserOptions*
  store %struct._GimpEraserOptions* %2, %struct._GimpEraserOptions** %options, align 8
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
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %12)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call10 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %13, i32 0)
  store %struct._GimpDynamicsOutput* %call10, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %14 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %16 = bitcast %struct._GimpDrawable* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %17)
  %18 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %18, i32 0, i32 8
  %19 = load double, double* %pixel_dist, align 8
  %call14 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %14, %struct._GimpImage* %call13, double %19)
  store double %call14, double* %fade_point, align 8
  %20 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %23 = load double, double* %fade_point, align 8
  %call15 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %20, %struct._GimpCoords* %21, %struct._GimpPaintOptions* %22, double %23)
  store double %call15, double* %opacity, align 8
  %24 = load double, double* %opacity, align 8
  %cmp = fcmp oeq double %24, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %25 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %27 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call16 = call %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore* %25, %struct._GimpDrawable* %26, %struct._GimpPaintOptions* %27, %struct._GimpCoords* %28)
  store %struct._TempBuf* %call16, %struct._TempBuf** %area, align 8
  %29 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %tobool = icmp ne %struct._TempBuf* %29, null
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end
  br label %return

if.end.18:                                        ; preds = %if.end
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %32 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call19 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %32)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @gimp_image_get_background(%struct._GimpImage* %30, %struct._GimpContext* %31, i32 %call19, i8* %arraydecay)
  %33 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %33, i32 0, i32 0
  %34 = load i32, i32* %bytes, align 4
  %sub = sub nsw i32 %34, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx, align 1
  %35 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %call20 = call i8* @temp_buf_get_data(%struct._TempBuf* %35)
  %arraydecay21 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %36 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %36, i32 0, i32 1
  %37 = load i32, i32* %width, align 4
  %38 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %38, i32 0, i32 2
  %39 = load i32, i32* %height, align 4
  %mul = mul nsw i32 %37, %39
  %40 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %bytes22 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %40, i32 0, i32 0
  %41 = load i32, i32* %bytes22, align 4
  call void @color_pixels(i8* %call20, i8* %arraydecay21, i32 %mul, i32 %41)
  %42 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call23 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %42, i32 5)
  store %struct._GimpDynamicsOutput* %call23, %struct._GimpDynamicsOutput** %force_output, align 8
  %43 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %force_output, align 8
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %45 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %46 = load double, double* %fade_point, align 8
  %call24 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %43, %struct._GimpCoords* %44, %struct._GimpPaintOptions* %45, double %46)
  store double %call24, double* %force, align 8
  %47 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %48 = bitcast %struct._GimpPaintCore* %47 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_brush_core_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call25)
  %49 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpBrushCore*
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %51 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %52 = load double, double* %opacity, align 8
  %cmp27 = fcmp olt double %52, 1.000000e+00
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %53 = load double, double* %opacity, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %53, %cond.true ], [ 1.000000e+00, %cond.false ]
  %54 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call28 = call double @gimp_context_get_opacity(%struct._GimpContext* %54)
  %55 = load %struct._GimpEraserOptions*, %struct._GimpEraserOptions** %options, align 8
  %anti_erase = getelementptr inbounds %struct._GimpEraserOptions, %struct._GimpEraserOptions* %55, i32 0, i32 1
  %56 = load i32, i32* %anti_erase, align 4
  %tobool29 = icmp ne i32 %56, 0
  %cond30 = select i1 %tobool29, i32 25, i32 23
  %57 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %call31 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %57)
  %58 = load double, double* %force, align 8
  %59 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %application_mode = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %59, i32 0, i32 5
  %60 = load i32, i32* %application_mode, align 4
  call void @gimp_brush_core_paste_canvas(%struct._GimpBrushCore* %49, %struct._GimpDrawable* %50, %struct._GimpCoords* %51, double %cond, double %call28, i32 %cond30, i32 %call31, double %58, i32 %60)
  br label %return

return:                                           ; preds = %cond.end, %if.then.17, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare double @gimp_paint_options_get_fade(%struct._GimpPaintOptions*, %struct._GimpImage*, double) #1

declare double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput*, %struct._GimpCoords*, %struct._GimpPaintOptions*, double) #1

declare %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*) #1

declare void @gimp_image_get_background(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare void @color_pixels(i8*, i8*, i32, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @gimp_brush_core_paste_canvas(%struct._GimpBrushCore*, %struct._GimpDrawable*, %struct._GimpCoords*, double, double, i32, i32, double, i32) #1

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
