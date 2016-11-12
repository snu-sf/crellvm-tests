; ModuleID = './app/paint/gimppaintoptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPaintOptionsClass = type { %struct._GimpToolOptionsClass }
%struct._GimpToolOptionsClass = type { %struct._GimpContextClass, void (%struct._GimpToolOptions*)* }
%struct._GimpContextClass = type { %struct._GimpViewableClass, void (%struct._GimpContext*, %struct._GimpImage*)*, void (%struct._GimpContext*, i8*)*, void (%struct._GimpContext*, %struct._GimpToolInfo*)*, void (%struct._GimpContext*, %struct._GimpPaintInfo*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, double)*, void (%struct._GimpContext*, i32)*, void (%struct._GimpContext*, %struct._GimpBrush*)*, void (%struct._GimpContext*, %struct._GimpDynamics*)*, void (%struct._GimpContext*, %struct._GimpPattern*)*, void (%struct._GimpContext*, %struct._GimpGradient*)*, void (%struct._GimpContext*, %struct._GimpPalette*)*, void (%struct._GimpContext*, %struct._GimpToolPreset*)*, void (%struct._GimpContext*, %struct._GimpFont*)*, void (%struct._GimpContext*, %struct._GimpBuffer*)*, void (%struct._GimpContext*, %struct._GimpImagefile*)*, void (%struct._GimpContext*, %struct._GimpTemplate*)* }
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
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
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
%struct._GdkPixbuf = type opaque
%struct._GimpDynamicsOutput = type { %struct._GimpObject }

@gimp_paint_options_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpPaintOptions\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Paint\00", align 1
@__func__.gimp_paint_options_new = private unnamed_addr constant [23 x i8] c"gimp_paint_options_new\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GIMP_IS_PAINT_INFO (paint_info)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"paint-info\00", align 1
@__func__.gimp_paint_options_get_fade = private unnamed_addr constant [28 x i8] c"gimp_paint_options_get_fade\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"GIMP_IS_PAINT_OPTIONS (paint_options)\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_paint_options_get_jitter = private unnamed_addr constant [30 x i8] c"gimp_paint_options_get_jitter\00", align 1
@__func__.gimp_paint_options_get_gradient_color = private unnamed_addr constant [38 x i8] c"gimp_paint_options_get_gradient_color\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_paint_options_get_brush_mode = private unnamed_addr constant [34 x i8] c"gimp_paint_options_get_brush_mode\00", align 1
@__func__.gimp_paint_options_set_default_brush_size = private unnamed_addr constant [42 x i8] c"gimp_paint_options_set_default_brush_size\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"brush == NULL || GIMP_IS_BRUSH (brush)\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"brush-size\00", align 1
@__func__.gimp_paint_options_copy_brush_props = private unnamed_addr constant [36 x i8] c"gimp_paint_options_copy_brush_props\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PAINT_OPTIONS (src)\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"GIMP_IS_PAINT_OPTIONS (dest)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"brush-angle\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"brush-aspect-ratio\00", align 1
@__func__.gimp_paint_options_copy_dynamics_props = private unnamed_addr constant [39 x i8] c"gimp_paint_options_copy_dynamics_props\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"dynamics-expanded\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"fade-reverse\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"fade-length\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"fade-unit\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"fade-repeat\00", align 1
@__func__.gimp_paint_options_copy_gradient_props = private unnamed_addr constant [39 x i8] c"gimp_paint_options_copy_gradient_props\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"gradient-reverse\00", align 1
@gimp_paint_options_parent_class = internal global i8* null, align 8
@GimpPaintOptions_private_offset = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"Brush Size\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Brush Aspect Ratio\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Brush Angle\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"application-mode\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Every stamp has its own opacity\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Ignore fuzziness of the current brush\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"use-jitter\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Scatter brush as you paint\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"jitter-amount\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"Distance of scattering\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Distance over which strokes fade out\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Reverse direction of fading\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"How fade is repeated as you paint\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"brush-view-type\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"brush-view-size\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"dynamics-view-type\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"dynamics-view-size\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"pattern-view-type\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"pattern-view-size\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"gradient-view-type\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"gradient-view-size\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"use-smoothing\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Paint smoother strokes\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"smoothing-quality\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"Depth of smoothing\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"smoothing-factor\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"Gravity of the pen\00", align 1
@.str.49 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"gimppaintoptions.c\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_paint_options_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_paint_options_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_paint_options_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_tool_options_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 432, void (i8*, i8*)* bitcast (void (i8*)* @gimp_paint_options_class_intern_init to void (i8*, i8*)*), i32 472, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPaintOptions*)* @gimp_paint_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_paint_options_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_paint_options_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_options_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_paint_options_parent_class, align 8
  %1 = load i32, i32* @GimpPaintOptions_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPaintOptions_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPaintOptionsClass*
  call void @gimp_paint_options_class_init(%struct._GimpPaintOptionsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_init(%struct._GimpPaintOptions* %options) #3 {
entry:
  %options.addr = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GimpPaintOptions* %options, %struct._GimpPaintOptions** %options.addr, align 8
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %application_mode_save = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %0, i32 0, i32 6
  store i32 0, i32* %application_mode_save, align 4
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %1 = bitcast i8* %call to %struct._GimpJitterOptions*
  %2 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %jitter_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %2, i32 0, i32 8
  store %struct._GimpJitterOptions* %1, %struct._GimpJitterOptions** %jitter_options, align 8
  %call1 = call noalias i8* @g_slice_alloc0(i64 24)
  %3 = bitcast i8* %call1 to %struct._GimpFadeOptions*
  %4 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %fade_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %4, i32 0, i32 10
  store %struct._GimpFadeOptions* %3, %struct._GimpFadeOptions** %fade_options, align 8
  %call2 = call noalias i8* @g_slice_alloc0(i64 8)
  %5 = bitcast i8* %call2 to %struct._GimpGradientOptions*
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %gradient_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %6, i32 0, i32 11
  store %struct._GimpGradientOptions* %5, %struct._GimpGradientOptions** %gradient_options, align 8
  %call3 = call noalias i8* @g_slice_alloc0(i64 16)
  %7 = bitcast i8* %call3 to %struct._GimpSmoothingOptions*
  %8 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options.addr, align 8
  %smoothing_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %8, i32 0, i32 12
  store %struct._GimpSmoothingOptions* %7, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpPaintOptions* @gimp_paint_options_new(%struct._GimpPaintInfo* %paint_info) #3 {
entry:
  %retval = alloca %struct._GimpPaintOptions*, align 8
  %paint_info.addr = alloca %struct._GimpPaintInfo*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintInfo* %paint_info, %struct._GimpPaintInfo** %paint_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %1 = bitcast %struct._GimpPaintInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_info_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_paint_options_new, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpPaintOptions* null, %struct._GimpPaintOptions** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %paint_options_type = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %13, i32 0, i32 3
  %14 = load i64, i64* %paint_options_type, align 8
  %15 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %17 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %18 = bitcast %struct._GimpPaintInfo* %17 to i8*
  %call11 = call i8* @gimp_object_get_name(i8* %18)
  %19 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._Gimp* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %call11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._GimpPaintInfo* %19, i8* null)
  %20 = bitcast i8* %call12 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %20, %struct._GimpPaintOptions** %options, align 8
  %21 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  store %struct._GimpPaintOptions* %21, %struct._GimpPaintOptions** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %retval
  ret %struct._GimpPaintOptions* %22
}

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_info_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind uwtable
define double @gimp_paint_options_get_fade(%struct._GimpPaintOptions* %paint_options, %struct._GimpImage* %image, double %pixel_dist) #3 {
entry:
  %retval = alloca double, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %pixel_dist.addr = alloca double, align 8
  %fade_options = alloca %struct._GimpFadeOptions*, align 8
  %z = alloca double, align 8
  %fade_out = alloca double, align 8
  %unit_factor = alloca double, align 8
  %pos = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store double %pixel_dist, double* %pixel_dist.addr, align 8
  store double -1.000000e+00, double* %z, align 8
  store double 0.000000e+00, double* %fade_out, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_options_get_fade, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_paint_options_get_fade, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %fade_options39 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %26, i32 0, i32 10
  %27 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options39, align 8
  store %struct._GimpFadeOptions* %27, %struct._GimpFadeOptions** %fade_options, align 8
  %28 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_unit = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %28, i32 0, i32 2
  %29 = load i32, i32* %fade_unit, align 4
  switch i32 %29, label %sw.default [
    i32 0, label %sw.bb
    i32 65536, label %sw.bb.40
  ]

sw.bb:                                            ; preds = %do.end.38
  %30 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_length = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %30, i32 0, i32 1
  %31 = load double, double* %fade_length, align 8
  store double %31, double* %fade_out, align 8
  br label %sw.epilog

sw.bb.40:                                         ; preds = %do.end.38
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call41 = call i32 @gimp_image_get_width(%struct._GimpImage* %32)
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call42 = call i32 @gimp_image_get_height(%struct._GimpImage* %33)
  %cmp43 = icmp sgt i32 %call41, %call42
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.40
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call44 = call i32 @gimp_image_get_width(%struct._GimpImage* %34)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.40
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call45 = call i32 @gimp_image_get_height(%struct._GimpImage* %35)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call44, %cond.true ], [ %call45, %cond.false ]
  %conv = sitofp i32 %cond to double
  %36 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_length46 = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %36, i32 0, i32 1
  %37 = load double, double* %fade_length46, align 8
  %mul = fmul double %conv, %37
  %div = fdiv double %mul, 1.000000e+02
  store double %div, double* %fade_out, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.38
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %38, double* %xres, double* %yres)
  %39 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_unit49 = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %39, i32 0, i32 2
  %40 = load i32, i32* %fade_unit49, align 4
  %call50 = call double @gimp_unit_get_factor(i32 %40)
  store double %call50, double* %unit_factor, align 8
  %41 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_length51 = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %41, i32 0, i32 1
  %42 = load double, double* %fade_length51, align 8
  %43 = load double, double* %xres, align 8
  %44 = load double, double* %yres, align 8
  %cmp52 = fcmp ogt double %43, %44
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %sw.default
  %45 = load double, double* %xres, align 8
  br label %cond.end.56

cond.false.55:                                    ; preds = %sw.default
  %46 = load double, double* %yres, align 8
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi double [ %45, %cond.true.54 ], [ %46, %cond.false.55 ]
  %mul58 = fmul double %42, %cond57
  %47 = load double, double* %unit_factor, align 8
  %div59 = fdiv double %mul58, %47
  store double %div59, double* %fade_out, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.56, %cond.end, %sw.bb
  %48 = load double, double* %fade_out, align 8
  %cmp60 = fcmp ogt double %48, 0.000000e+00
  br i1 %cmp60, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %sw.epilog
  %49 = load double, double* %pixel_dist.addr, align 8
  %50 = load double, double* %fade_out, align 8
  %div63 = fdiv double %49, %50
  store double %div63, double* %pos, align 8
  br label %if.end.65

if.else.64:                                       ; preds = %sw.epilog
  store double 1.000000e+00, double* %pos, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.then.62
  %51 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_repeat = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %51, i32 0, i32 3
  %52 = load i32, i32* %fade_repeat, align 4
  %cmp66 = icmp eq i32 %52, 0
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.72

land.lhs.true.68:                                 ; preds = %if.end.65
  %53 = load double, double* %pos, align 8
  %cmp69 = fcmp oge double %53, 1.000000e+00
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.68
  store double 9.999999e-01, double* %pos, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %land.lhs.true.68, %if.end.65
  %54 = load double, double* %pos, align 8
  %conv73 = fptosi double %54 to i32
  %and = and i32 %conv73, 1
  %tobool74 = icmp ne i32 %and, 0
  br i1 %tobool74, label %land.lhs.true.75, label %if.else.83

land.lhs.true.75:                                 ; preds = %if.end.72
  %55 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_repeat76 = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %55, i32 0, i32 3
  %56 = load i32, i32* %fade_repeat76, align 4
  %cmp77 = icmp ne i32 %56, 1
  br i1 %cmp77, label %if.then.79, label %if.else.83

if.then.79:                                       ; preds = %land.lhs.true.75
  %57 = load double, double* %pos, align 8
  %58 = load double, double* %pos, align 8
  %conv80 = fptosi double %58 to i32
  %conv81 = sitofp i32 %conv80 to double
  %sub = fsub double %57, %conv81
  %sub82 = fsub double 1.000000e+00, %sub
  store double %sub82, double* %pos, align 8
  br label %if.end.87

if.else.83:                                       ; preds = %land.lhs.true.75, %if.end.72
  %59 = load double, double* %pos, align 8
  %60 = load double, double* %pos, align 8
  %conv84 = fptosi double %60 to i32
  %conv85 = sitofp i32 %conv84 to double
  %sub86 = fsub double %59, %conv85
  store double %sub86, double* %pos, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.83, %if.then.79
  %61 = load double, double* %pos, align 8
  store double %61, double* %z, align 8
  %62 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_reverse = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %62, i32 0, i32 0
  %63 = load i32, i32* %fade_reverse, align 4
  %tobool88 = icmp ne i32 %63, 0
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.87
  %64 = load double, double* %z, align 8
  %sub90 = fsub double 1.000000e+00, %64
  store double %sub90, double* %z, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.87
  %65 = load double, double* %z, align 8
  store double %65, double* %retval
  br label %return

return:                                           ; preds = %if.end.91, %if.else.36, %if.else.9
  %66 = load double, double* %retval
  ret double %66
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare double @gimp_unit_get_factor(i32) #1

; Function Attrs: nounwind uwtable
define double @gimp_paint_options_get_jitter(%struct._GimpPaintOptions* %paint_options, %struct._GimpImage* %image) #3 {
entry:
  %retval = alloca double, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %jitter_options = alloca %struct._GimpJitterOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_paint_options_get_jitter, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %jitter_options11 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %13, i32 0, i32 8
  %14 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options11, align 8
  store %struct._GimpJitterOptions* %14, %struct._GimpJitterOptions** %jitter_options, align 8
  %15 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options, align 8
  %use_jitter = getelementptr inbounds %struct._GimpJitterOptions, %struct._GimpJitterOptions* %15, i32 0, i32 0
  %16 = load i32, i32* %use_jitter, align 4
  %tobool12 = icmp ne i32 %16, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end
  %17 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options, align 8
  %jitter_amount = getelementptr inbounds %struct._GimpJitterOptions, %struct._GimpJitterOptions* %17, i32 0, i32 1
  %18 = load double, double* %jitter_amount, align 8
  store double %18, double* %retval
  br label %return

if.end.14:                                        ; preds = %do.end
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.9
  %19 = load double, double* %retval
  ret double %19
}

; Function Attrs: nounwind uwtable
define i32 @gimp_paint_options_get_gradient_color(%struct._GimpPaintOptions* %paint_options, %struct._GimpImage* %image, double %grad_point, double %pixel_dist, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca i32, align 4
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %grad_point.addr = alloca double, align 8
  %pixel_dist.addr = alloca double, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %gradient_options = alloca %struct._GimpGradientOptions*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %color_output = alloca %struct._GimpDynamicsOutput*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store double %grad_point, double* %grad_point.addr, align 8
  store double %pixel_dist, double* %pixel_dist.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_paint_options_get_gradient_color, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_paint_options_get_gradient_color, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp40 = icmp ne %struct._GimpRGB* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_paint_options_get_gradient_color, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %gradient_options45 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %27, i32 0, i32 11
  %28 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options45, align 8
  store %struct._GimpGradientOptions* %28, %struct._GimpGradientOptions** %gradient_options, align 8
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_context_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call46)
  %31 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpContext*
  %call48 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %31)
  store %struct._GimpGradient* %call48, %struct._GimpGradient** %gradient, align 8
  %32 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %33 = bitcast %struct._GimpPaintOptions* %32 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_context_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call49)
  %34 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpContext*
  %call51 = call %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext* %34)
  store %struct._GimpDynamics* %call51, %struct._GimpDynamics** %dynamics, align 8
  %35 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call52 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %35, i32 3)
  store %struct._GimpDynamicsOutput* %call52, %struct._GimpDynamicsOutput** %color_output, align 8
  %36 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %color_output, align 8
  %call53 = call i32 @gimp_dynamics_output_is_enabled(%struct._GimpDynamicsOutput* %36)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %do.end.44
  %37 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %38 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %39 = bitcast %struct._GimpPaintOptions* %38 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_context_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call56)
  %40 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpContext*
  %41 = load double, double* %grad_point.addr, align 8
  %42 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options, align 8
  %gradient_reverse = getelementptr inbounds %struct._GimpGradientOptions, %struct._GimpGradientOptions* %42, i32 0, i32 0
  %43 = load i32, i32* %gradient_reverse, align 4
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call58 = call %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient* %37, %struct._GimpContext* %40, %struct._GimpGradientSegment* null, double %41, i32 %43, %struct._GimpRGB* %44)
  store i32 1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %do.end.44
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.55, %if.else.42, %if.else.36, %if.else.9
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext*) #1

declare %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics*, i32) #1

declare i32 @gimp_dynamics_output_is_enabled(%struct._GimpDynamicsOutput*) #1

declare %struct._GimpGradientSegment* @gimp_gradient_get_color_at(%struct._GimpGradient*, %struct._GimpContext*, %struct._GimpGradientSegment*, double, i32, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_paint_options_get_brush_mode(%struct._GimpPaintOptions* %paint_options) #3 {
entry:
  %retval = alloca i32, align 4
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  %force_output = alloca %struct._GimpDynamicsOutput*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_paint_options_get_brush_mode, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %hard = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %13, i32 0, i32 7
  %14 = load i32, i32* %hard, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %16 = bitcast %struct._GimpPaintOptions* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_context_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpContext*
  %call16 = call %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext* %17)
  store %struct._GimpDynamics* %call16, %struct._GimpDynamics** %dynamics, align 8
  %18 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %call17 = call %struct._GimpDynamicsOutput* @gimp_dynamics_get_output(%struct._GimpDynamics* %18, i32 5)
  store %struct._GimpDynamicsOutput* %call17, %struct._GimpDynamicsOutput** %force_output, align 8
  %19 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %force_output, align 8
  %tobool18 = icmp ne %struct._GimpDynamicsOutput* %19, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.13
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.13
  %20 = load %struct._GimpDynamicsOutput*, %struct._GimpDynamicsOutput** %force_output, align 8
  %call21 = call i32 @gimp_dynamics_output_is_enabled(%struct._GimpDynamicsOutput* %20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 2, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.19, %if.then.12, %if.else.9
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @gimp_paint_options_set_default_brush_size(%struct._GimpPaintOptions* %paint_options, %struct._GimpBrush* %brush) #3 {
entry:
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_paint_options_set_default_brush_size, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.51

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
  %call17 = call i64 @gimp_brush_get_type() #7
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__func__.gimp_paint_options_set_default_brush_size, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.51

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %tobool40 = icmp ne %struct._GimpBrush* %27, null
  br i1 %tobool40, label %if.end.45, label %if.then.41

if.then.41:                                       ; preds = %do.end.39
  %28 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %29 = bitcast %struct._GimpPaintOptions* %28 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_context_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call42)
  %30 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpContext*
  %call44 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %30)
  store %struct._GimpBrush* %call44, %struct._GimpBrush** %brush.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %do.end.39
  %31 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %tobool46 = icmp ne %struct._GimpBrush* %31, null
  br i1 %tobool46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.end.45
  %32 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  call void @gimp_brush_transform_size(%struct._GimpBrush* %32, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32* %height, i32* %width)
  %33 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %34 = bitcast %struct._GimpPaintOptions* %33 to i8*
  %35 = load i32, i32* %height, align 4
  %36 = load i32, i32* %width, align 4
  %cmp50 = icmp sgt i32 %35, %36
  br i1 %cmp50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.47
  %37 = load i32, i32* %height, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.47
  %38 = load i32, i32* %width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ]
  %conv = sitofp i32 %cond to double
  call void (i8*, i8*, ...) @g_object_set(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), double %conv, i8* null)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.9, %if.else.37, %cond.end, %if.end.45
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext*) #1

declare void @gimp_brush_transform_size(%struct._GimpBrush*, double, double, double, i32*, i32*) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_options_copy_brush_props(%struct._GimpPaintOptions* %src, %struct._GimpPaintOptions* %dest) #3 {
entry:
  %src.addr = alloca %struct._GimpPaintOptions*, align 8
  %dest.addr = alloca %struct._GimpPaintOptions*, align 8
  %brush_size = alloca double, align 8
  %brush_angle = alloca double, align 8
  %brush_aspect_ratio = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPaintOptions* %src, %struct._GimpPaintOptions** %src.addr, align 8
  store %struct._GimpPaintOptions* %dest, %struct._GimpPaintOptions** %dest.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %src.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_paint_options_copy_brush_props, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %dest.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_paint_options_copy_brush_props, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %src.addr, align 8
  %27 = bitcast %struct._GimpPaintOptions* %26 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), double* %brush_size, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), double* %brush_angle, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), double* %brush_aspect_ratio, i8* null)
  %28 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %dest.addr, align 8
  %29 = bitcast %struct._GimpPaintOptions* %28 to i8*
  %30 = load double, double* %brush_size, align 8
  %31 = load double, double* %brush_angle, align 8
  %32 = load double, double* %brush_aspect_ratio, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), double %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), double %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), double %32, i8* null)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @g_object_get(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_paint_options_copy_dynamics_props(%struct._GimpPaintOptions* %src, %struct._GimpPaintOptions* %dest) #3 {
entry:
  %src.addr = alloca %struct._GimpPaintOptions*, align 8
  %dest.addr = alloca %struct._GimpPaintOptions*, align 8
  %dynamics_expanded = alloca i32, align 4
  %fade_reverse = alloca i32, align 4
  %fade_length = alloca double, align 8
  %fade_unit = alloca i32, align 4
  %fade_repeat = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPaintOptions* %src, %struct._GimpPaintOptions** %src.addr, align 8
  store %struct._GimpPaintOptions* %dest, %struct._GimpPaintOptions** %dest.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %src.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_paint_options_copy_dynamics_props, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %dest.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_paint_options_copy_dynamics_props, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %src.addr, align 8
  %27 = bitcast %struct._GimpPaintOptions* %26 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32* %dynamics_expanded, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32* %fade_reverse, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), double* %fade_length, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32* %fade_unit, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32* %fade_repeat, i8* null)
  %28 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %dest.addr, align 8
  %29 = bitcast %struct._GimpPaintOptions* %28 to i8*
  %30 = load i32, i32* %dynamics_expanded, align 4
  %31 = load i32, i32* %fade_reverse, align 4
  %32 = load double, double* %fade_length, align 8
  %33 = load i32, i32* %fade_unit, align 4
  %34 = load i32, i32* %fade_repeat, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), double %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 %34, i8* null)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_paint_options_copy_gradient_props(%struct._GimpPaintOptions* %src, %struct._GimpPaintOptions* %dest) #3 {
entry:
  %src.addr = alloca %struct._GimpPaintOptions*, align 8
  %dest.addr = alloca %struct._GimpPaintOptions*, align 8
  %gradient_reverse = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpPaintOptions* %src, %struct._GimpPaintOptions** %src.addr, align 8
  store %struct._GimpPaintOptions* %dest, %struct._GimpPaintOptions** %dest.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %src.addr, align 8
  %1 = bitcast %struct._GimpPaintOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_paint_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_paint_options_copy_gradient_props, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %dest.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_paint_options_copy_gradient_props, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %src.addr, align 8
  %27 = bitcast %struct._GimpPaintOptions* %26 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32* %gradient_reverse, i8* null)
  %28 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %dest.addr, align 8
  %29 = bitcast %struct._GimpPaintOptions* %28 to i8*
  %30 = load i32, i32* %gradient_reverse, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 %30, i8* null)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_class_init(%struct._GimpPaintOptionsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPaintOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpPaintOptionsClass* %klass, %struct._GimpPaintOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpPaintOptionsClass*, %struct._GimpPaintOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPaintOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_paint_options_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_paint_options_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_paint_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_paint_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_paint_info_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #6
  %call4 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* %call3, double 1.000000e+00, double 1.000000e+04, double 2.000000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 2, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0)) #6
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* %call5, double -2.000000e+01, double 2.000000e+01, double 0.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 3, %struct._GParamSpec* %call6)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)) #6
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* %call7, double -1.800000e+02, double 1.800000e+02, double 0.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 4, %struct._GParamSpec* %call8)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0)) #6
  %call10 = call i64 @gimp_paint_application_mode_get_type() #7
  %call11 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* %call9, i64 %call10, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 5, %struct._GParamSpec* %call11)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0)) #6
  %call13 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* %call12, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 6, %struct._GParamSpec* %call13)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0)) #6
  %call15 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* %call14, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 7, %struct._GParamSpec* %call15)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0)) #6
  %call17 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* %call16, double 0.000000e+00, double 5.000000e+01, double 2.000000e-01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 8, %struct._GParamSpec* %call17)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 9, %struct._GParamSpec* %call18)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i32 0, i32 0)) #6
  %call20 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* %call19, double 0.000000e+00, double 3.276700e+04, double 1.000000e+02, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 10, %struct._GParamSpec* %call20)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call21 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, i32 1, i32 1, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 13, %struct._GParamSpec* %call21)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0)) #6
  %call23 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* %call22, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 11, %struct._GParamSpec* %call23)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0)) #6
  %call25 = call i64 @gimp_repeat_mode_get_type() #7
  %call26 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* %call24, i64 %call25, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 12, %struct._GParamSpec* %call26)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call27 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 14, %struct._GParamSpec* %call27)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call28 = call i64 @gimp_view_type_get_type() #7
  %call29 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null, i64 %call28, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 15, %struct._GParamSpec* %call29)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call30 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* null, i8* null, i32 12, i32 64, i32 24, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 16, %struct._GParamSpec* %call30)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call31 = call i64 @gimp_view_type_get_type() #7
  %call32 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* null, i64 %call31, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 17, %struct._GParamSpec* %call32)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call33 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* null, i32 12, i32 64, i32 24, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 18, %struct._GParamSpec* %call33)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call34 = call i64 @gimp_view_type_get_type() #7
  %call35 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* null, i64 %call34, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 19, %struct._GParamSpec* %call35)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call36 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* null, i32 12, i32 64, i32 24, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 20, %struct._GParamSpec* %call36)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call37 = call i64 @gimp_view_type_get_type() #7
  %call38 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* null, i64 %call37, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 21, %struct._GParamSpec* %call38)
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call39 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* null, i32 12, i32 64, i32 48, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 22, %struct._GParamSpec* %call39)
  %29 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0)) #6
  %call41 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* %call40, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %29, i32 23, %struct._GParamSpec* %call41)
  %30 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0)) #6
  %call43 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* %call42, i32 1, i32 100, i32 20, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %30, i32 24, %struct._GParamSpec* %call43)
  %31 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0)) #6
  %call45 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* %call44, double 3.000000e+00, double 1.000000e+03, double 5.000000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %31, i32 25, %struct._GParamSpec* %call45)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %3, i32 0, i32 1
  %4 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %tobool = icmp ne %struct._GimpPaintInfo* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info2 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %5, i32 0, i32 1
  %6 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info2, align 8
  %7 = bitcast %struct._GimpPaintInfo* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info3 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %8, i32 0, i32 1
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %paint_info3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_paint_options_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 5
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %2, %struct._GimpPaintOptions** %options, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %jitter_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %3, i32 0, i32 8
  %4 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options, align 8
  %5 = bitcast %struct._GimpJitterOptions* %4 to i8*
  call void @g_slice_free1(i64 16, i8* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %6 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %fade_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %6, i32 0, i32 10
  %7 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %8 = bitcast %struct._GimpFadeOptions* %7 to i8*
  call void @g_slice_free1(i64 24, i8* %8)
  br label %do.end.3

do.end.3:                                         ; preds = %do.body.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.end.3
  %9 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %gradient_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %9, i32 0, i32 11
  %10 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options, align 8
  %11 = bitcast %struct._GimpGradientOptions* %10 to i8*
  call void @g_slice_free1(i64 8, i8* %11)
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %smoothing_options = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %12, i32 0, i32 12
  %13 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %14 = bitcast %struct._GimpSmoothingOptions* %13 to i8*
  call void @g_slice_free1(i64 16, i8* %14)
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  %15 = load i8*, i8** @gimp_paint_options_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call8 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  %fade_options = alloca %struct._GimpFadeOptions*, align 8
  %jitter_options = alloca %struct._GimpJitterOptions*, align 8
  %gradient_options = alloca %struct._GimpGradientOptions*, align 8
  %smoothing_options = alloca %struct._GimpSmoothingOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %fade_options2 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %3, i32 0, i32 10
  %4 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options2, align 8
  store %struct._GimpFadeOptions* %4, %struct._GimpFadeOptions** %fade_options, align 8
  %5 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %jitter_options3 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %5, i32 0, i32 8
  %6 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options3, align 8
  store %struct._GimpJitterOptions* %6, %struct._GimpJitterOptions** %jitter_options, align 8
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %gradient_options4 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %7, i32 0, i32 11
  %8 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options4, align 8
  store %struct._GimpGradientOptions* %8, %struct._GimpGradientOptions** %gradient_options, align 8
  %9 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %smoothing_options5 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %9, i32 0, i32 12
  %10 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options5, align 8
  store %struct._GimpSmoothingOptions* %10, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %11 = load i32, i32* %property_id.addr, align 4
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.9
    i32 4, label %sw.bb.11
    i32 5, label %sw.bb.13
    i32 6, label %sw.bb.15
    i32 7, label %sw.bb.17
    i32 8, label %sw.bb.19
    i32 9, label %sw.bb.21
    i32 10, label %sw.bb.23
    i32 11, label %sw.bb.25
    i32 12, label %sw.bb.27
    i32 13, label %sw.bb.29
    i32 14, label %sw.bb.31
    i32 15, label %sw.bb.33
    i32 16, label %sw.bb.35
    i32 17, label %sw.bb.37
    i32 18, label %sw.bb.39
    i32 19, label %sw.bb.41
    i32 20, label %sw.bb.43
    i32 21, label %sw.bb.45
    i32 22, label %sw.bb.47
    i32 23, label %sw.bb.49
    i32 24, label %sw.bb.51
    i32 25, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_dup_object(%struct._GValue* %12)
  %13 = bitcast i8* %call6 to %struct._GimpPaintInfo*
  %14 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %14, i32 0, i32 1
  store %struct._GimpPaintInfo* %13, %struct._GimpPaintInfo** %paint_info, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %15)
  %16 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %16, i32 0, i32 2
  store double %call8, double* %brush_size, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %17)
  %18 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_aspect_ratio = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %18, i32 0, i32 4
  store double %call10, double* %brush_aspect_ratio, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call double @g_value_get_double(%struct._GValue* %19)
  %mul = fmul double -1.000000e+00, %call12
  %div = fdiv double %mul, 3.600000e+02
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_angle = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %20, i32 0, i32 3
  store double %div, double* %brush_angle, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_enum(%struct._GValue* %21)
  %22 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %application_mode = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %22, i32 0, i32 5
  store i32 %call14, i32* %application_mode, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %23)
  %24 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %hard = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %24, i32 0, i32 7
  store i32 %call16, i32* %hard, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %25)
  %26 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options, align 8
  %use_jitter = getelementptr inbounds %struct._GimpJitterOptions, %struct._GimpJitterOptions* %26, i32 0, i32 0
  store i32 %call18, i32* %use_jitter, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call double @g_value_get_double(%struct._GValue* %27)
  %28 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options, align 8
  %jitter_amount = getelementptr inbounds %struct._GimpJitterOptions, %struct._GimpJitterOptions* %28, i32 0, i32 1
  store double %call20, double* %jitter_amount, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %29 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i32 @g_value_get_boolean(%struct._GValue* %29)
  %30 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %dynamics_expanded = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %30, i32 0, i32 9
  store i32 %call22, i32* %dynamics_expanded, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call double @g_value_get_double(%struct._GValue* %31)
  %32 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_length = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %32, i32 0, i32 1
  store double %call24, double* %fade_length, align 8
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %33 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call26 = call i32 @g_value_get_boolean(%struct._GValue* %33)
  %34 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_reverse = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %34, i32 0, i32 0
  store i32 %call26, i32* %fade_reverse, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %35 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call28 = call i32 @g_value_get_enum(%struct._GValue* %35)
  %36 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_repeat = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %36, i32 0, i32 3
  store i32 %call28, i32* %fade_repeat, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call30 = call i32 @g_value_get_int(%struct._GValue* %37)
  %38 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_unit = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %38, i32 0, i32 2
  store i32 %call30, i32* %fade_unit, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %39 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call32 = call i32 @g_value_get_boolean(%struct._GValue* %39)
  %40 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options, align 8
  %gradient_reverse = getelementptr inbounds %struct._GimpGradientOptions, %struct._GimpGradientOptions* %40, i32 0, i32 0
  store i32 %call32, i32* %gradient_reverse, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %41 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call34 = call i32 @g_value_get_enum(%struct._GValue* %41)
  %42 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_view_type = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %42, i32 0, i32 13
  store i32 %call34, i32* %brush_view_type, align 4
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call36 = call i32 @g_value_get_int(%struct._GValue* %43)
  %44 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_view_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %44, i32 0, i32 14
  store i32 %call36, i32* %brush_view_size, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %45 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call38 = call i32 @g_value_get_enum(%struct._GValue* %45)
  %46 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %dynamics_view_type = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %46, i32 0, i32 15
  store i32 %call38, i32* %dynamics_view_type, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %47 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call40 = call i32 @g_value_get_int(%struct._GValue* %47)
  %48 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %dynamics_view_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %48, i32 0, i32 16
  store i32 %call40, i32* %dynamics_view_size, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %49 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call42 = call i32 @g_value_get_enum(%struct._GValue* %49)
  %50 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %pattern_view_type = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %50, i32 0, i32 17
  store i32 %call42, i32* %pattern_view_type, align 4
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %51 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call44 = call i32 @g_value_get_int(%struct._GValue* %51)
  %52 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %pattern_view_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %52, i32 0, i32 18
  store i32 %call44, i32* %pattern_view_size, align 4
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %53 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call46 = call i32 @g_value_get_enum(%struct._GValue* %53)
  %54 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %gradient_view_type = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %54, i32 0, i32 19
  store i32 %call46, i32* %gradient_view_type, align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call48 = call i32 @g_value_get_int(%struct._GValue* %55)
  %56 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %gradient_view_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %56, i32 0, i32 20
  store i32 %call48, i32* %gradient_view_size, align 4
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry
  %57 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call50 = call i32 @g_value_get_boolean(%struct._GValue* %57)
  %58 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %use_smoothing = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %58, i32 0, i32 0
  store i32 %call50, i32* %use_smoothing, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry
  %59 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call52 = call i32 @g_value_get_int(%struct._GValue* %59)
  %60 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_quality = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %60, i32 0, i32 1
  store i32 %call52, i32* %smoothing_quality, align 4
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  %61 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call54 = call double @g_value_get_double(%struct._GValue* %61)
  %62 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_factor = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %62, i32 0, i32 2
  store double %call54, double* %smoothing_factor, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %63 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %63, %struct._GObject** %_glib__object, align 8
  %64 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %64, %struct._GParamSpec** %_glib__pspec, align 8
  %65 = load i32, i32* %property_id.addr, align 4
  store i32 %65, i32* %_glib__property_id, align 4
  %66 = load i32, i32* %_glib__property_id, align 4
  %67 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %67, i32 0, i32 1
  %68 = load i8*, i8** %name, align 8
  %69 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %70 = bitcast %struct._GParamSpec* %69 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %70, i32 0, i32 0
  %71 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %71, i32 0, i32 0
  %72 = load i64, i64* %g_type, align 8
  %call55 = call i8* @g_type_name(i64 %72)
  %73 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %74 = bitcast %struct._GObject* %73 to %struct._GTypeInstance*
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %74, i32 0, i32 0
  %75 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type57 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %75, i32 0, i32 0
  %76 = load i64, i64* %g_type57, align 8
  %call58 = call i8* @g_type_name(i64 %76)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i32 426, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %66, i8* %68, i8* %call55, i8* %call58)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.53, %sw.bb.51, %sw.bb.49, %sw.bb.47, %sw.bb.45, %sw.bb.43, %sw.bb.41, %sw.bb.39, %sw.bb.37, %sw.bb.35, %sw.bb.33, %sw.bb.31, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_paint_options_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpPaintOptions*, align 8
  %fade_options = alloca %struct._GimpFadeOptions*, align 8
  %jitter_options = alloca %struct._GimpJitterOptions*, align 8
  %gradient_options = alloca %struct._GimpGradientOptions*, align 8
  %smoothing_options = alloca %struct._GimpSmoothingOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_paint_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %2, %struct._GimpPaintOptions** %options, align 8
  %3 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %fade_options2 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %3, i32 0, i32 10
  %4 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options2, align 8
  store %struct._GimpFadeOptions* %4, %struct._GimpFadeOptions** %fade_options, align 8
  %5 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %jitter_options3 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %5, i32 0, i32 8
  %6 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options3, align 8
  store %struct._GimpJitterOptions* %6, %struct._GimpJitterOptions** %jitter_options, align 8
  %7 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %gradient_options4 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %7, i32 0, i32 11
  %8 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options4, align 8
  store %struct._GimpGradientOptions* %8, %struct._GimpGradientOptions** %gradient_options, align 8
  %9 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %smoothing_options5 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %9, i32 0, i32 12
  %10 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options5, align 8
  store %struct._GimpSmoothingOptions* %10, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %11 = load i32, i32* %property_id.addr, align 4
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.10
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.12
    i32 8, label %sw.bb.13
    i32 9, label %sw.bb.14
    i32 10, label %sw.bb.15
    i32 11, label %sw.bb.16
    i32 12, label %sw.bb.17
    i32 13, label %sw.bb.18
    i32 14, label %sw.bb.19
    i32 15, label %sw.bb.20
    i32 16, label %sw.bb.21
    i32 17, label %sw.bb.22
    i32 18, label %sw.bb.23
    i32 19, label %sw.bb.24
    i32 20, label %sw.bb.25
    i32 21, label %sw.bb.26
    i32 22, label %sw.bb.27
    i32 23, label %sw.bb.28
    i32 24, label %sw.bb.29
    i32 25, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %paint_info = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %13, i32 0, i32 1
  %14 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %15 = bitcast %struct._GimpPaintInfo* %14 to i8*
  call void @g_value_set_object(%struct._GValue* %12, i8* %15)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %17, i32 0, i32 2
  %18 = load double, double* %brush_size, align 8
  call void @g_value_set_double(%struct._GValue* %16, double %18)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_aspect_ratio = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %20, i32 0, i32 4
  %21 = load double, double* %brush_aspect_ratio, align 8
  call void @g_value_set_double(%struct._GValue* %19, double %21)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_angle = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %23, i32 0, i32 3
  %24 = load double, double* %brush_angle, align 8
  %mul = fmul double -1.000000e+00, %24
  %mul9 = fmul double %mul, 3.600000e+02
  call void @g_value_set_double(%struct._GValue* %22, double %mul9)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %application_mode = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %26, i32 0, i32 5
  %27 = load i32, i32* %application_mode, align 4
  call void @g_value_set_enum(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %hard = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %29, i32 0, i32 7
  %30 = load i32, i32* %hard, align 4
  call void @g_value_set_boolean(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options, align 8
  %use_jitter = getelementptr inbounds %struct._GimpJitterOptions, %struct._GimpJitterOptions* %32, i32 0, i32 0
  %33 = load i32, i32* %use_jitter, align 4
  call void @g_value_set_boolean(%struct._GValue* %31, i32 %33)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpJitterOptions*, %struct._GimpJitterOptions** %jitter_options, align 8
  %jitter_amount = getelementptr inbounds %struct._GimpJitterOptions, %struct._GimpJitterOptions* %35, i32 0, i32 1
  %36 = load double, double* %jitter_amount, align 8
  call void @g_value_set_double(%struct._GValue* %34, double %36)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %38 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %dynamics_expanded = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %38, i32 0, i32 9
  %39 = load i32, i32* %dynamics_expanded, align 4
  call void @g_value_set_boolean(%struct._GValue* %37, i32 %39)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_length = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %41, i32 0, i32 1
  %42 = load double, double* %fade_length, align 8
  call void @g_value_set_double(%struct._GValue* %40, double %42)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %44 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_reverse = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %44, i32 0, i32 0
  %45 = load i32, i32* %fade_reverse, align 4
  call void @g_value_set_boolean(%struct._GValue* %43, i32 %45)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %47 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_repeat = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %47, i32 0, i32 3
  %48 = load i32, i32* %fade_repeat, align 4
  call void @g_value_set_enum(%struct._GValue* %46, i32 %48)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %49 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %50 = load %struct._GimpFadeOptions*, %struct._GimpFadeOptions** %fade_options, align 8
  %fade_unit = getelementptr inbounds %struct._GimpFadeOptions, %struct._GimpFadeOptions* %50, i32 0, i32 2
  %51 = load i32, i32* %fade_unit, align 4
  call void @g_value_set_int(%struct._GValue* %49, i32 %51)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %52 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %53 = load %struct._GimpGradientOptions*, %struct._GimpGradientOptions** %gradient_options, align 8
  %gradient_reverse = getelementptr inbounds %struct._GimpGradientOptions, %struct._GimpGradientOptions* %53, i32 0, i32 0
  %54 = load i32, i32* %gradient_reverse, align 4
  call void @g_value_set_boolean(%struct._GValue* %52, i32 %54)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %56 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_view_type = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %56, i32 0, i32 13
  %57 = load i32, i32* %brush_view_type, align 4
  call void @g_value_set_enum(%struct._GValue* %55, i32 %57)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %58 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %59 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %brush_view_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %59, i32 0, i32 14
  %60 = load i32, i32* %brush_view_size, align 4
  call void @g_value_set_int(%struct._GValue* %58, i32 %60)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %61 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %62 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %dynamics_view_type = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %62, i32 0, i32 15
  %63 = load i32, i32* %dynamics_view_type, align 4
  call void @g_value_set_enum(%struct._GValue* %61, i32 %63)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %64 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %65 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %dynamics_view_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %65, i32 0, i32 16
  %66 = load i32, i32* %dynamics_view_size, align 4
  call void @g_value_set_int(%struct._GValue* %64, i32 %66)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %67 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %68 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %pattern_view_type = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %68, i32 0, i32 17
  %69 = load i32, i32* %pattern_view_type, align 4
  call void @g_value_set_enum(%struct._GValue* %67, i32 %69)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %70 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %71 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %pattern_view_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %71, i32 0, i32 18
  %72 = load i32, i32* %pattern_view_size, align 4
  call void @g_value_set_int(%struct._GValue* %70, i32 %72)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %73 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %74 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %gradient_view_type = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %74, i32 0, i32 19
  %75 = load i32, i32* %gradient_view_type, align 4
  call void @g_value_set_enum(%struct._GValue* %73, i32 %75)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %76 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %77 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %options, align 8
  %gradient_view_size = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %77, i32 0, i32 20
  %78 = load i32, i32* %gradient_view_size, align 4
  call void @g_value_set_int(%struct._GValue* %76, i32 %78)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %79 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %80 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %use_smoothing = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %80, i32 0, i32 0
  %81 = load i32, i32* %use_smoothing, align 4
  call void @g_value_set_boolean(%struct._GValue* %79, i32 %81)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %82 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %83 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_quality = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %83, i32 0, i32 1
  %84 = load i32, i32* %smoothing_quality, align 4
  call void @g_value_set_int(%struct._GValue* %82, i32 %84)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %85 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %86 = load %struct._GimpSmoothingOptions*, %struct._GimpSmoothingOptions** %smoothing_options, align 8
  %smoothing_factor = getelementptr inbounds %struct._GimpSmoothingOptions, %struct._GimpSmoothingOptions* %86, i32 0, i32 2
  %87 = load double, double* %smoothing_factor, align 8
  call void @g_value_set_double(%struct._GValue* %85, double %87)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %88 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %88, %struct._GObject** %_glib__object, align 8
  %89 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %89, %struct._GParamSpec** %_glib__pspec, align 8
  %90 = load i32, i32* %property_id.addr, align 4
  store i32 %90, i32* %_glib__property_id, align 4
  %91 = load i32, i32* %_glib__property_id, align 4
  %92 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %92, i32 0, i32 1
  %93 = load i8*, i8** %name, align 8
  %94 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %95 = bitcast %struct._GParamSpec* %94 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %95, i32 0, i32 0
  %96 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %96, i32 0, i32 0
  %97 = load i64, i64* %g_type, align 8
  %call31 = call i8* @g_type_name(i64 %97)
  %98 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %99 = bitcast %struct._GObject* %98 to %struct._GTypeInstance*
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %99, i32 0, i32 0
  %100 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %100, i32 0, i32 0
  %101 = load i64, i64* %g_type33, align 8
  %call34 = call i8* @g_type_name(i64 %101)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i32 546, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %91, i8* %93, i8* %call31, i8* %call34)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_application_mode_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_repeat_mode_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_view_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_object_unref(i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

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
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare noalias i8* @g_slice_alloc0(i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
