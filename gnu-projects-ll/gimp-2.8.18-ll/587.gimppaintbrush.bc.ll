; ModuleID = './app/paint/gimppaintbrush.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpPaintbrush = type { %struct._GimpBrushCore }
%struct._GimpDynamicsOutput = type { %struct._GimpObject }

@gimp_paintbrush_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpPaintbrush\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gimp-paintbrush\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Paintbrush\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@_gimp_paintbrush_motion.pixel = private unnamed_addr constant [4 x i8] c"\FF\FF\FF\FF", align 1
@gimp_paintbrush_parent_class = internal global i8* null, align 8
@GimpPaintbrush_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_paintbrush_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_paintbrush_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_paintbrush_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_paintbrush_class_intern_init to void (i8*, i8*)*), i32 6480, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPaintbrush*)* @gimp_paintbrush_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_paintbrush_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_paintbrush_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_core_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paintbrush_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_paintbrush_parent_class, align 8
  %1 = load i32, i32* @GimpPaintbrush_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPaintbrush_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaintbrushClass*
  call void @gimp_paintbrush_class_init(%struct._GimpPaintbrushClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paintbrush_init(%struct._GimpPaintbrush* %paintbrush) #3 {
entry:
  %paintbrush.addr = alloca %struct._GimpPaintbrush*, align 8
  store %struct._GimpPaintbrush* %paintbrush, %struct._GimpPaintbrush** %paintbrush.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_paintbrush_register(%struct._Gimp* %gimp, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %callback.addr = alloca void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)* %callback, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %0 = load void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)*, void (%struct._Gimp*, i64, i64, i8*, i8*, i8*)** %callback.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call i64 @gimp_paintbrush_get_type() #6
  %call1 = call i64 @gimp_paint_options_get_type() #6
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #5
  call void %0(%struct._Gimp* %1, i64 %call, i64 %call1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @_gimp_paintbrush_motion(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, double %opacity) #3 {
entry:
  %paint_core.addr = alloca %struct._GimpPaintCore*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %opacity.addr = alloca double, align 8
  %brush_core = alloca %struct._GimpBrushCore*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %opacity_output = alloca %struct._GimpDynamicsOutput*, align 8
  %color_output = alloca %struct._GimpDynamicsOutput*, align 8
  %force_output = alloca %struct._GimpDynamicsOutput*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %gradient_color = alloca %struct._GimpRGB, align 8
  %area = alloca %struct._TempBuf*, align 8
  %col = alloca [4 x i8], align 1
  %paint_appl_mode = alloca i32, align 4
  %fade_point = alloca double, align 8
  %grad_point = alloca double, align 8
  %force = alloca double, align 8
  %pixel = alloca [4 x i8], align 1
  store %struct._GimpPaintCore* %paint_core, %struct._GimpPaintCore** %paint_core.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  %0 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %1 = bitcast %struct._GimpPaintCore* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_core_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushCore*
  store %struct._GimpBrushCore* %2, %struct._GimpBrushCore** %brush_core, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %4 = bitcast %struct._GimpPaintOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_context_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContext*
  store %struct._GimpContext* %5, %struct._GimpContext** %context, align 8
  %6 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %dynamics4 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %6, i32 0, i32 3
  %7 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics4, align 8
  store %struct._GimpDynamics* %7, %struct._GimpDynamics** %dynamics, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_item_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpItem*
  %call7 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %10)
  store %struct._GimpImage* %call7, %struct._GimpImage** %image, align 8
  %11 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call8 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %11, i32 0)
  store %struct._GimpDynamicsOutput* %call8, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %12 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %14 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %14, i32 0, i32 8
  %15 = load double, double* %pixel_dist, align 8
  %call9 = call double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %12, %struct._GimpImage* %13, double %15)
  store double %call9, double* %fade_point, align 8
  %16 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %opacity_output, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %18 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %19 = load double, double* %fade_point, align 8
  %call10 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %16, %struct._GimpCoords* %17, %struct._GimpPaintOptions* %18, double %19)
  %20 = load double, double* %opacity.addr, align 8
  %mul = fmul double %20, %call10
  store double %mul, double* %opacity.addr, align 8
  %21 = load double, double* %opacity.addr, align 8
  %cmp = fcmp oeq double %21, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %22 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %24 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call11 = call %struct._TempBuf* @gimp_paint_core_get_paint_area(%struct._GimpPaintCore* %22, %struct._GimpDrawable* %23, %struct._GimpPaintOptions* %24, %struct._GimpCoords* %25)
  store %struct._TempBuf* %call11, %struct._TempBuf** %area, align 8
  %26 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %tobool = icmp ne %struct._TempBuf* %26, null
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  br label %return

if.end.13:                                        ; preds = %if.end
  %27 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %application_mode = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %27, i32 0, i32 5
  %28 = load i32, i32* %application_mode, align 4
  store i32 %28, i32* %paint_appl_mode, align 4
  %29 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call14 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %29, i32 3)
  store %struct._GimpDynamicsOutput* %call14, %struct._GimpDynamicsOutput** %color_output, align 8
  %30 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %color_output, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %32 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %33 = load double, double* %fade_point, align 8
  %call15 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %30, %struct._GimpCoords* %31, %struct._GimpPaintOptions* %32, double %33)
  store double %call15, double* %grad_point, align 8
  %34 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %36 = load double, double* %grad_point, align 8
  %37 = load %struct._GimpPaintCore*, %struct._GimpPaintCore** %paint_core.addr, align 8
  %pixel_dist16 = getelementptr inbounds %struct._GimpPaintCore, %struct._GimpPaintCore* %37, i32 0, i32 8
  %38 = load double, double* %pixel_dist16, align 8
  %call17 = call i32 @gimp_paint_options_get_gradient_color(%struct._GimpPaintOptions* %34, %struct._GimpImage* %35, double %36, double %38, %struct._GimpRGB* %gradient_color)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.13
  %39 = bitcast [4 x i8]* %pixel to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_gimp_paintbrush_motion.pixel, i32 0, i32 0), i64 4, i32 1, i1 false)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %gradient_color, i32 0, i32 3
  %40 = load double, double* %a, align 8
  %41 = load double, double* %opacity.addr, align 8
  %mul20 = fmul double %41, %40
  store double %mul20, double* %opacity.addr, align 8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 1
  %arrayidx22 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 2
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %gradient_color, i8* %arrayidx, i8* %arrayidx21, i8* %arrayidx22)
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %43 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call23 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %43)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @gimp_image_transform_color(%struct._GimpImage* %42, i32 %call23, i8* %arraydecay, i32 0, i8* %arraydecay24)
  %44 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %call25 = call i8* @temp_buf_get_data(%struct._TempBuf* %44)
  %arraydecay26 = getelementptr inbounds [4 x i8], [4 x i8]* %pixel, i32 0, i32 0
  %45 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %45, i32 0, i32 1
  %46 = load i32, i32* %width, align 4
  %47 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %47, i32 0, i32 2
  %48 = load i32, i32* %height, align 4
  %mul27 = mul nsw i32 %46, %48
  %49 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %49, i32 0, i32 0
  %50 = load i32, i32* %bytes, align 4
  call void @color_pixels(i8* %call25, i8* %arraydecay26, i32 %mul27, i32 %50)
  store i32 1, i32* %paint_appl_mode, align 4
  br label %if.end.45

if.else:                                          ; preds = %if.end.13
  %51 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %brush = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %51, i32 0, i32 2
  %52 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool28 = icmp ne %struct._GimpBrush* %52, null
  br i1 %tobool28, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %if.else
  %53 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %brush29 = getelementptr inbounds %struct._GimpBrushCore, %struct._GimpBrushCore* %53, i32 0, i32 2
  %54 = load %struct._GimpBrush*, %struct._GimpBrush** %brush29, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %54, i32 0, i32 2
  %55 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  %tobool30 = icmp ne %struct._TempBuf* %55, null
  br i1 %tobool30, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %land.lhs.true
  %56 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %57 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %58 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %59 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %60 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %call32 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %60)
  call void @gimp_brush_core_color_area_with_pixmap(%struct._GimpBrushCore* %56, %struct._GimpDrawable* %57, %struct._GimpCoords* %58, %struct._TempBuf* %59, i32 %call32)
  store i32 1, i32* %paint_appl_mode, align 4
  br label %if.end.44

if.else.33:                                       ; preds = %land.lhs.true, %if.else
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %62 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %63 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call34 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %63)
  %arraydecay35 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  call void @gimp_image_get_foreground(%struct._GimpImage* %61, %struct._GimpContext* %62, i32 %call34, i8* %arraydecay35)
  %64 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %bytes36 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %64, i32 0, i32 0
  %65 = load i32, i32* %bytes36, align 4
  %sub = sub nsw i32 %65, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i64 %idxprom
  store i8 -1, i8* %arrayidx37, align 1
  %66 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %call38 = call i8* @temp_buf_get_data(%struct._TempBuf* %66)
  %arraydecay39 = getelementptr inbounds [4 x i8], [4 x i8]* %col, i32 0, i32 0
  %67 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %width40 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %67, i32 0, i32 1
  %68 = load i32, i32* %width40, align 4
  %69 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %height41 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %69, i32 0, i32 2
  %70 = load i32, i32* %height41, align 4
  %mul42 = mul nsw i32 %68, %70
  %71 = load %struct._TempBuf*, %struct._TempBuf** %area, align 8
  %bytes43 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %71, i32 0, i32 0
  %72 = load i32, i32* %bytes43, align 4
  call void @color_pixels(i8* %call38, i8* %arraydecay39, i32 %mul42, i32 %72)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.33, %if.then.31
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.19
  %73 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call46 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %73, i32 5)
  store %struct._GimpDynamicsOutput* %call46, %struct._GimpDynamicsOutput** %force_output, align 8
  %74 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %force_output, align 8
  %75 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %76 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %77 = load double, double* %fade_point, align 8
  %call47 = call double @gimp_dynamics_output_get_linear_value(%struct._GimpDynamicsOutput* %74, %struct._GimpCoords* %75, %struct._GimpPaintOptions* %76, double %77)
  store double %call47, double* %force, align 8
  %78 = load %struct._GimpBrushCore*, %struct._GimpBrushCore** %brush_core, align 8
  %79 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %80 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %81 = load double, double* %opacity.addr, align 8
  %cmp48 = fcmp olt double %81, 1.000000e+00
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.45
  %82 = load double, double* %opacity.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %82, %cond.true ], [ 1.000000e+00, %cond.false ]
  %83 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call49 = call double @gimp_context_get_opacity(%struct._GimpContext* %83)
  %84 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call50 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %84)
  %85 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %call51 = call i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %85)
  %86 = load double, double* %force, align 8
  %87 = load i32, i32* %paint_appl_mode, align 4
  call void @gimp_brush_core_paste_canvas(%struct._GimpBrushCore* %78, %struct._GimpDrawable* %79, %struct._GimpCoords* %80, double %cond, double %call49, i32 %call50, i32 %call51, double %86, i32 %87)
  br label %return

return:                                           ; preds = %cond.end, %if.then.12, %if.then
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

declare i32 @gimp_paint_options_get_gradient_color(%struct._GimpPaintOptions*, %struct._GimpImage*, double, double, %struct._GimpRGB*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare void @gimp_image_transform_color(%struct._GimpImage*, i32, i8*, i32, i8*) #1

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #1

declare void @color_pixels(i8*, i8*, i32, i32) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

declare void @gimp_brush_core_color_area_with_pixmap(%struct._GimpBrushCore*, %struct._GimpDrawable*, %struct._GimpCoords*, %struct._TempBuf*, i32) #1

declare i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions*) #1

declare void @gimp_image_get_foreground(%struct._GimpImage*, %struct._GimpContext*, i32, i8*) #1

declare void @gimp_brush_core_paste_canvas(%struct._GimpBrushCore*, %struct._GimpDrawable*, %struct._GimpCoords*, double, double, i32, i32, double, i32) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paintbrush_class_init(%struct._GimpPaintbrushClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPaintbrushClass*, align 8
  %paint_core_class = alloca %struct._GimpPaintCoreClass*, align 8
  %brush_core_class = alloca %struct._GimpBrushCoreClass*, align 8
  store %struct._GimpPaintbrushClass* %klass, %struct._GimpPaintbrushClass** %klass.addr, align 8
  %0 = load %struct._GimpPaintbrushClass*, %struct._GimpPaintbrushClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPaintbrushClass* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_paint_core_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpPaintCoreClass*
  store %struct._GimpPaintCoreClass* %2, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %3 = load %struct._GimpPaintbrushClass*, %struct._GimpPaintbrushClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPaintbrushClass* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_brush_core_get_type() #6
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpBrushCoreClass*
  store %struct._GimpBrushCoreClass* %5, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %6 = load %struct._GimpPaintCoreClass*, %struct._GimpPaintCoreClass** %paint_core_class, align 8
  %paint = getelementptr inbounds %struct._GimpPaintCoreClass, %struct._GimpPaintCoreClass* %6, i32 0, i32 3
  store void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)* @gimp_paintbrush_paint, void (%struct._GimpPaintCore*, %struct._GimpDrawable*, %struct._GimpPaintOptions*, %struct._GimpCoords*, i32, i32)** %paint, align 8
  %7 = load %struct._GimpBrushCoreClass*, %struct._GimpBrushCoreClass** %brush_core_class, align 8
  %handles_changing_brush = getelementptr inbounds %struct._GimpBrushCoreClass, %struct._GimpBrushCoreClass* %7, i32 0, i32 1
  store i32 1, i32* %handles_changing_brush, align 4
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_core_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_paintbrush_paint(%struct._GimpPaintCore* %paint_core, %struct._GimpDrawable* %drawable, %struct._GimpPaintOptions* %paint_options, %struct._GimpCoords* %coords, i32 %paint_state, i32 %time) #3 {
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
  call void @_gimp_paintbrush_motion(%struct._GimpPaintCore* %1, %struct._GimpDrawable* %2, %struct._GimpPaintOptions* %3, %struct._GimpCoords* %4, double 1.000000e+00)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
