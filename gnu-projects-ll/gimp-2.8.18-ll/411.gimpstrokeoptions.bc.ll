; ModuleID = './app/core/gimpstrokeoptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpStrokeOptionsClass = type { %struct._GimpFillOptionsClass, void (%struct._GimpStrokeOptions*, i32)* }
%struct._GimpFillOptionsClass = type { %struct._GimpContextClass }
%struct._GimpContextClass = type { %struct._GimpViewableClass, void (%struct._GimpContext*, %struct._GimpImage*)*, void (%struct._GimpContext*, i8*)*, void (%struct._GimpContext*, %struct._GimpToolInfo*)*, void (%struct._GimpContext*, %struct._GimpPaintInfo*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, %struct._GimpRGB*)*, void (%struct._GimpContext*, double)*, void (%struct._GimpContext*, i32)*, void (%struct._GimpContext*, %struct._GimpBrush*)*, void (%struct._GimpContext*, %struct._GimpDynamics*)*, void (%struct._GimpContext*, %struct._GimpPattern*)*, void (%struct._GimpContext*, %struct._GimpGradient*)*, void (%struct._GimpContext*, %struct._GimpPalette*)*, void (%struct._GimpContext*, %struct._GimpToolPreset*)*, void (%struct._GimpContext*, %struct._GimpFont*)*, void (%struct._GimpContext*, %struct._GimpBuffer*)*, void (%struct._GimpContext*, %struct._GimpImagefile*)*, void (%struct._GimpContext*, %struct._GimpTemplate*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type { %struct._GimpToolOptions, %struct._GimpPaintInfo*, double, double, double, i32, i32, i32, %struct._GimpJitterOptions*, i32, %struct._GimpFadeOptions*, %struct._GimpGradientOptions*, %struct._GimpSmoothingOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpJitterOptions = type { i32, double }
%struct._GimpFadeOptions = type { i32, double, i32, i32 }
%struct._GimpGradientOptions = type { i32, i32 }
%struct._GimpSmoothingOptions = type { i32, i32, double }
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
%struct._GdkPixbuf = type opaque
%struct._GimpStrokeOptions = type { %struct._GimpFillOptions }
%struct._GimpFillOptions = type { %struct._GimpContext }
%struct._GimpStrokeOptionsPrivate = type { i32, double, i32, i32, i32, double, double, %struct._GArray*, %struct._GimpPaintOptions*, i32 }
%struct._GArray = type { i8*, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }

@gimp_stroke_options_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpStrokeOptions\00", align 1
@gimp_stroke_options_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* @gimp_stroke_options_config_iface_init, void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_stroke_options_new = private unnamed_addr constant [24 x i8] c"gimp_stroke_options_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"use_context_color == FALSE || context != NULL\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"paint-info\00", align 1
@__func__.gimp_stroke_options_get_method = private unnamed_addr constant [31 x i8] c"gimp_stroke_options_get_method\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"GIMP_IS_STROKE_OPTIONS (options)\00", align 1
@__func__.gimp_stroke_options_get_width = private unnamed_addr constant [30 x i8] c"gimp_stroke_options_get_width\00", align 1
@__func__.gimp_stroke_options_get_unit = private unnamed_addr constant [29 x i8] c"gimp_stroke_options_get_unit\00", align 1
@__func__.gimp_stroke_options_get_cap_style = private unnamed_addr constant [34 x i8] c"gimp_stroke_options_get_cap_style\00", align 1
@__func__.gimp_stroke_options_get_join_style = private unnamed_addr constant [35 x i8] c"gimp_stroke_options_get_join_style\00", align 1
@__func__.gimp_stroke_options_get_miter_limit = private unnamed_addr constant [36 x i8] c"gimp_stroke_options_get_miter_limit\00", align 1
@__func__.gimp_stroke_options_get_dash_offset = private unnamed_addr constant [36 x i8] c"gimp_stroke_options_get_dash_offset\00", align 1
@__func__.gimp_stroke_options_get_dash_info = private unnamed_addr constant [34 x i8] c"gimp_stroke_options_get_dash_info\00", align 1
@__func__.gimp_stroke_options_get_paint_options = private unnamed_addr constant [38 x i8] c"gimp_stroke_options_get_paint_options\00", align 1
@__func__.gimp_stroke_options_get_emulate_dynamics = private unnamed_addr constant [41 x i8] c"gimp_stroke_options_get_emulate_dynamics\00", align 1
@__func__.gimp_stroke_options_take_dash_pattern = private unnamed_addr constant [38 x i8] c"gimp_stroke_options_take_dash_pattern\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"preset == GIMP_DASH_CUSTOM || pattern == NULL\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"dash-info\00", align 1
@stroke_options_signals = internal global [1 x i32] zeroinitializer, align 4
@__func__.gimp_stroke_options_prepare = private unnamed_addr constant [28 x i8] c"gimp_stroke_options_prepare\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"paint_options == NULL || GIMP_IS_PAINT_OPTIONS (paint_options)\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"paint_info == paint_options->paint_info\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"paint-options\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"gimpstrokeoptions.c\00", align 1
@__func__.gimp_stroke_options_finish = private unnamed_addr constant [27 x i8] c"gimp_stroke_options_finish\00", align 1
@gimp_stroke_options_parent_class = internal global i8* null, align 8
@GimpStrokeOptions_private_offset = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"dash-info-changed\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"cap-style\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"join-style\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"miter-limit\00", align 1
@.str.23 = private unnamed_addr constant [148 x i8] c"Convert a mitered join to a bevelled join if the miter would extend to a distance of more than miter-limit * line-width from the actual join point.\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"dash-offset\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"dash-length\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"emulate-brush-dynamics\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@parent_config_iface = internal global %struct._GimpConfigInterface* null, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_stroke_options_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_stroke_options_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_stroke_options_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_fill_options_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 432, void (i8*, i8*)* bitcast (void (i8*)* @gimp_stroke_options_class_intern_init to void (i8*, i8*)*), i32 344, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpStrokeOptions*)* @gimp_stroke_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_stroke_options_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_stroke_options_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_stroke_options_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_fill_options_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_options_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_stroke_options_parent_class, align 8
  %1 = load i32, i32* @GimpStrokeOptions_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpStrokeOptions_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpStrokeOptionsClass*
  call void @gimp_stroke_options_class_init(%struct._GimpStrokeOptionsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_options_init(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_options_config_iface_init(i8* %iface, i8* %iface_data) #3 {
entry:
  %iface.addr = alloca i8*, align 8
  %iface_data.addr = alloca i8*, align 8
  %config_iface = alloca %struct._GimpConfigInterface*, align 8
  store i8* %iface, i8** %iface.addr, align 8
  store i8* %iface_data, i8** %iface_data.addr, align 8
  %0 = load i8*, i8** %iface.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %1, %struct._GimpConfigInterface** %config_iface, align 8
  %2 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %3 = bitcast %struct._GimpConfigInterface* %2 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %3)
  %4 = bitcast i8* %call to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %4, %struct._GimpConfigInterface** @parent_config_iface, align 8
  %5 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** @parent_config_iface, align 8
  %tobool = icmp ne %struct._GimpConfigInterface* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @gimp_config_interface_get_type() #7
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %6 = bitcast i8* %call2 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %6, %struct._GimpConfigInterface** @parent_config_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %duplicate = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %7, i32 0, i32 5
  store %struct._GimpConfig* (%struct._GimpConfig*)* @gimp_stroke_options_duplicate, %struct._GimpConfig* (%struct._GimpConfig*)** %duplicate, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpStrokeOptions* @gimp_stroke_options_new(%struct._Gimp* %gimp, %struct._GimpContext* %context, i32 %use_context_color) #3 {
entry:
  %retval = alloca %struct._GimpStrokeOptions*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %use_context_color.addr = alloca i32, align 4
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  %options = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %use_context_color, i32* %use_context_color.addr, align 4
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %paint_info, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_stroke_options_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpStrokeOptions* null, %struct._GimpStrokeOptions** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp12 = icmp eq %struct._GimpContext* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_stroke_options_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpStrokeOptions* null, %struct._GimpStrokeOptions** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load i32, i32* %use_context_color.addr, align 4
  %cmp41 = icmp eq i32 %27, 0
  br i1 %cmp41, label %if.then.44, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp43 = icmp ne %struct._GimpContext* %28, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %lor.lhs.false.42, %do.body.40
  br label %if.end.46

if.else.45:                                       ; preds = %lor.lhs.false.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_stroke_options_new, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpStrokeOptions* null, %struct._GimpStrokeOptions** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool48 = icmp ne %struct._GimpContext* %29, null
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %do.end.47
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call50 = call %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext* %30)
  store %struct._GimpPaintInfo* %call50, %struct._GimpPaintInfo** %paint_info, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %do.end.47
  %31 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %tobool52 = icmp ne %struct._GimpPaintInfo* %31, null
  br i1 %tobool52, label %if.end.55, label %if.then.53

if.then.53:                                       ; preds = %if.end.51
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call54 = call %struct._GimpPaintInfo* @gimp_paint_info_get_standard(%struct._Gimp* %32)
  store %struct._GimpPaintInfo* %call54, %struct._GimpPaintInfo** %paint_info, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.51
  %call56 = call i64 @gimp_stroke_options_get_type() #7
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %34 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %call57 = call i8* (i64, i8*, ...) @g_object_new(i64 %call56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._Gimp* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct._GimpPaintInfo* %34, i8* null)
  %35 = bitcast i8* %call57 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %35, %struct._GimpStrokeOptions** %options, align 8
  %36 = load i32, i32* %use_context_color.addr, align 4
  %tobool58 = icmp ne i32 %36, 0
  br i1 %tobool58, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %if.end.55
  %37 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %38 = bitcast %struct._GimpStrokeOptions* %37 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_context_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call60)
  %39 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpContext*
  call void @gimp_context_define_properties(%struct._GimpContext* %39, i32 4160, i32 0)
  %40 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %41 = bitcast %struct._GimpStrokeOptions* %40 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_context_get_type() #7
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call62)
  %42 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpContext*
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_set_parent(%struct._GimpContext* %42, %struct._GimpContext* %43)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %if.end.55
  %44 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  store %struct._GimpStrokeOptions* %44, %struct._GimpStrokeOptions** %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.else.45, %if.else.37, %if.else.9
  %45 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %retval
  ret %struct._GimpStrokeOptions* %45
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext*) #1

declare %struct._GimpPaintInfo* @gimp_paint_info_get_standard(%struct._Gimp*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_context_define_properties(%struct._GimpContext*, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_context_set_parent(%struct._GimpContext*, %struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_options_get_method(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca i32, align 4
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_stroke_options_get_method, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %method = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 0
  %16 = load i32, i32* %method, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define double @gimp_stroke_options_get_width(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca double, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_stroke_options_get_width, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %width = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 1
  %16 = load double, double* %width, align 8
  store double %16, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load double, double* %retval
  ret double %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_options_get_unit(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca i32, align 4
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_stroke_options_get_unit, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %unit = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 2
  %16 = load i32, i32* %unit, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_options_get_cap_style(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca i32, align 4
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_stroke_options_get_cap_style, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %cap_style = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 3
  %16 = load i32, i32* %cap_style, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_options_get_join_style(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca i32, align 4
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_stroke_options_get_join_style, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %join_style = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 4
  %16 = load i32, i32* %join_style, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define double @gimp_stroke_options_get_miter_limit(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca double, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_stroke_options_get_miter_limit, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %miter_limit = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 5
  %16 = load double, double* %miter_limit, align 8
  store double %16, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load double, double* %retval
  ret double %17
}

; Function Attrs: nounwind uwtable
define double @gimp_stroke_options_get_dash_offset(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca double, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_stroke_options_get_dash_offset, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store double 0.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %dash_offset = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 6
  %16 = load double, double* %dash_offset, align 8
  store double %16, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load double, double* %retval
  ret double %17
}

; Function Attrs: nounwind uwtable
define %struct._GArray* @gimp_stroke_options_get_dash_info(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca %struct._GArray*, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_stroke_options_get_dash_info, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %dash_info = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 7
  %16 = load %struct._GArray*, %struct._GArray** %dash_info, align 8
  store %struct._GArray* %16, %struct._GArray** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GArray*, %struct._GArray** %retval
  ret %struct._GArray* %17
}

; Function Attrs: nounwind uwtable
define %struct._GimpPaintOptions* @gimp_stroke_options_get_paint_options(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca %struct._GimpPaintOptions*, align 8
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_stroke_options_get_paint_options, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPaintOptions* null, %struct._GimpPaintOptions** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %paint_options = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 8
  %16 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  store %struct._GimpPaintOptions* %16, %struct._GimpPaintOptions** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %retval
  ret %struct._GimpPaintOptions* %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_stroke_options_get_emulate_dynamics(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %retval = alloca i32, align 4
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_stroke_options_get_emulate_dynamics, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_stroke_options_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpStrokeOptionsPrivate*
  %emulate_dynamics = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %15, i32 0, i32 9
  %16 = load i32, i32* %emulate_dynamics, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @gimp_stroke_options_take_dash_pattern(%struct._GimpStrokeOptions* %options, i32 %preset, %struct._GArray* %pattern) #3 {
entry:
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %preset.addr = alloca i32, align 4
  %pattern.addr = alloca %struct._GArray*, align 8
  %private = alloca %struct._GimpStrokeOptionsPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  store i32 %preset, i32* %preset.addr, align 4
  store %struct._GArray* %pattern, %struct._GArray** %pattern.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_stroke_options_take_dash_pattern, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %preset.addr, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %cmp13 = icmp eq %struct._GArray* %14, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_stroke_options_take_dash_pattern, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %15 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %16 = bitcast %struct._GimpStrokeOptions* %15 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_stroke_options_get_type() #7
  %call19 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %16, i64 %call18)
  %17 = bitcast i8* %call19 to %struct._GimpStrokeOptionsPrivate*
  store %struct._GimpStrokeOptionsPrivate* %17, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %18 = load i32, i32* %preset.addr, align 4
  %cmp20 = icmp ne i32 %18, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %do.end.17
  %19 = load i32, i32* %preset.addr, align 4
  %call22 = call %struct._GArray* @gimp_dash_pattern_new_from_preset(i32 %19)
  store %struct._GArray* %call22, %struct._GArray** %pattern.addr, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %do.end.17
  %20 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %dash_info = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %20, i32 0, i32 7
  %21 = load %struct._GArray*, %struct._GArray** %dash_info, align 8
  %tobool24 = icmp ne %struct._GArray* %21, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.23
  %22 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %dash_info26 = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %22, i32 0, i32 7
  %23 = load %struct._GArray*, %struct._GArray** %dash_info26, align 8
  call void @gimp_dash_pattern_free(%struct._GArray* %23)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.23
  %24 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %25 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %dash_info28 = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %25, i32 0, i32 7
  store %struct._GArray* %24, %struct._GArray** %dash_info28, align 8
  %26 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %27 = bitcast %struct._GimpStrokeOptions* %26 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  %29 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %30 = bitcast %struct._GimpStrokeOptions* %29 to i8*
  %31 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @stroke_options_signals, i32 0, i64 0), align 4
  %32 = load i32, i32* %preset.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %30, i32 %31, i32 0, i32 %32)
  br label %return

return:                                           ; preds = %if.end.27, %if.else.15, %if.else.9
  ret void
}

declare %struct._GArray* @gimp_dash_pattern_new_from_preset(i32) #1

declare void @gimp_dash_pattern_free(%struct._GArray*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_stroke_options_prepare(%struct._GimpStrokeOptions* %options, %struct._GimpContext* %context, %struct._GimpPaintOptions* %paint_options) #3 {
entry:
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %paint_options.addr = alloca %struct._GimpPaintOptions*, align 8
  %private = alloca %struct._GimpStrokeOptionsPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  %config = alloca %struct._GimpCoreConfig*, align 8
  %global_props = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPaintOptions* %paint_options, %struct._GimpPaintOptions** %paint_options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_stroke_options_prepare, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_stroke_options_prepare, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %cmp40 = icmp eq %struct._GimpPaintOptions* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %28 = bitcast %struct._GimpPaintOptions* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_paint_options_get_type() #7
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #8
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_stroke_options_prepare, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %40 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %41 = bitcast %struct._GimpStrokeOptions* %40 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_stroke_options_get_type() #7
  %call69 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %41, i64 %call68)
  %42 = bitcast i8* %call69 to %struct._GimpStrokeOptionsPrivate*
  store %struct._GimpStrokeOptionsPrivate* %42, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %43 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %method = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %43, i32 0, i32 0
  %44 = load i32, i32* %method, align 4
  switch i32 %44, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %do.end.67
  br label %sw.epilog

sw.bb.70:                                         ; preds = %do.end.67
  %45 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %46 = bitcast %struct._GimpStrokeOptions* %45 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_context_get_type() #7
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call72)
  %47 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpContext*
  %paint_info74 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %47, i32 0, i32 9
  %48 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info74, align 8
  store %struct._GimpPaintInfo* %48, %struct._GimpPaintInfo** %paint_info, align 8
  %49 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %tobool75 = icmp ne %struct._GimpPaintOptions* %49, null
  br i1 %tobool75, label %if.then.76, label %if.else.88

if.then.76:                                       ; preds = %sw.bb.70
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %50 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %51 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %paint_info78 = getelementptr inbounds %struct._GimpPaintOptions, %struct._GimpPaintOptions* %51, i32 0, i32 1
  %52 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info78, align 8
  %cmp79 = icmp eq %struct._GimpPaintInfo* %50, %52
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.77
  br label %if.end.82

if.else.81:                                       ; preds = %do.body.77
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_stroke_options_prepare, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog

if.end.82:                                        ; preds = %if.then.80
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  %53 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %54 = bitcast %struct._GimpPaintOptions* %53 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_context_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call84)
  %55 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpContext*
  call void @gimp_context_define_properties(%struct._GimpContext* %55, i32 16320, i32 0)
  %56 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %57 = bitcast %struct._GimpPaintOptions* %56 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_context_get_type() #7
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call86)
  %58 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpContext*
  %59 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_set_parent(%struct._GimpContext* %58, %struct._GimpContext* %59)
  br label %if.end.123

if.else.88:                                       ; preds = %sw.bb.70
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %60, i32 0, i32 1
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config90 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %61, i32 0, i32 1
  %62 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config90, align 8
  store %struct._GimpCoreConfig* %62, %struct._GimpCoreConfig** %config, align 8
  store i32 0, i32* %global_props, align 4
  %63 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %paint_options92 = getelementptr inbounds %struct._GimpPaintInfo, %struct._GimpPaintInfo* %63, i32 0, i32 5
  %64 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options92, align 8
  %65 = bitcast %struct._GimpPaintOptions* %64 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_config_interface_get_type() #7
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call93)
  %66 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpConfig*
  %call95 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %66)
  %67 = bitcast i8* %call95 to %struct._GimpPaintOptions*
  store %struct._GimpPaintOptions* %67, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %68 = load i32, i32* %global_props, align 4
  %or = or i32 %68, 64
  store i32 %or, i32* %global_props, align 4
  %69 = load i32, i32* %global_props, align 4
  %or96 = or i32 %69, 128
  store i32 %or96, i32* %global_props, align 4
  %70 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_brush = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %70, i32 0, i32 29
  %71 = load i32, i32* %global_brush, align 4
  %tobool97 = icmp ne i32 %71, 0
  br i1 %tobool97, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.else.88
  %72 = load i32, i32* %global_props, align 4
  %or99 = or i32 %72, 1024
  store i32 %or99, i32* %global_props, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.else.88
  %73 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_dynamics = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %73, i32 0, i32 30
  %74 = load i32, i32* %global_dynamics, align 4
  %tobool101 = icmp ne i32 %74, 0
  br i1 %tobool101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.100
  %75 = load i32, i32* %global_props, align 4
  %or103 = or i32 %75, 2048
  store i32 %or103, i32* %global_props, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.100
  %76 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_pattern = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %76, i32 0, i32 31
  %77 = load i32, i32* %global_pattern, align 4
  %tobool105 = icmp ne i32 %77, 0
  br i1 %tobool105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.104
  %78 = load i32, i32* %global_props, align 4
  %or107 = or i32 %78, 4096
  store i32 %or107, i32* %global_props, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.104
  %79 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_palette = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %79, i32 0, i32 32
  %80 = load i32, i32* %global_palette, align 4
  %tobool109 = icmp ne i32 %80, 0
  br i1 %tobool109, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.108
  %81 = load i32, i32* %global_props, align 4
  %or111 = or i32 %81, 16384
  store i32 %or111, i32* %global_props, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.108
  %82 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_gradient = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %82, i32 0, i32 33
  %83 = load i32, i32* %global_gradient, align 4
  %tobool113 = icmp ne i32 %83, 0
  br i1 %tobool113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.112
  %84 = load i32, i32* %global_props, align 4
  %or115 = or i32 %84, 8192
  store i32 %or115, i32* %global_props, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.end.112
  %85 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %global_font = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %85, i32 0, i32 34
  %86 = load i32, i32* %global_font, align 4
  %tobool117 = icmp ne i32 %86, 0
  br i1 %tobool117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.end.116
  %87 = load i32, i32* %global_props, align 4
  %or119 = or i32 %87, 65536
  store i32 %or119, i32* %global_props, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.end.116
  %88 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %89 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  %90 = bitcast %struct._GimpPaintOptions* %89 to %struct._GTypeInstance*
  %call121 = call i64 @gimp_context_get_type() #7
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call121)
  %91 = bitcast %struct._GTypeInstance* %call122 to %struct._GimpContext*
  %92 = load i32, i32* %global_props, align 4
  call void @gimp_context_copy_properties(%struct._GimpContext* %88, %struct._GimpContext* %91, i32 %92)
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.120, %do.end.83
  %93 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %94 = bitcast %struct._GimpStrokeOptions* %93 to i8*
  %95 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %struct._GimpPaintOptions* %95, i8* null)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.67
  br label %do.body.124

do.body.124:                                      ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 614, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_stroke_options_prepare, i32 0, i32 0))
  br label %sw.epilog

do.end.125:                                       ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.9, %if.else.36, %if.else.65, %if.else.81, %do.body.124, %do.end.125, %if.end.123, %sw.bb
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_options_get_type() #2

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

declare void @gimp_context_copy_properties(%struct._GimpContext*, %struct._GimpContext*, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_stroke_options_finish(%struct._GimpStrokeOptions* %options) #3 {
entry:
  %options.addr = alloca %struct._GimpStrokeOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStrokeOptions* %options, %struct._GimpStrokeOptions** %options.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptions* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_stroke_options_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_stroke_options_finish, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options.addr, align 8
  %14 = bitcast %struct._GimpStrokeOptions* %13 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_options_class_init(%struct._GimpStrokeOptionsClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpStrokeOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %array_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpStrokeOptionsClass* %klass, %struct._GimpStrokeOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpStrokeOptionsClass*, %struct._GimpStrokeOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpStrokeOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_stroke_options_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_stroke_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_stroke_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GimpStrokeOptionsClass*, %struct._GimpStrokeOptionsClass** %klass.addr, align 8
  %dash_info_changed = getelementptr inbounds %struct._GimpStrokeOptionsClass, %struct._GimpStrokeOptionsClass* %6, i32 0, i32 1
  store void (%struct._GimpStrokeOptions*, i32)* null, void (%struct._GimpStrokeOptions*, i32)** %dash_info_changed, align 8
  %7 = load %struct._GimpStrokeOptionsClass*, %struct._GimpStrokeOptionsClass** %klass.addr, align 8
  %8 = bitcast %struct._GimpStrokeOptionsClass* %7 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %call1 = call i64 @gimp_dash_preset_get_type() #7
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i64 %9, i32 1, i32 424, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__ENUM, i64 4, i32 1, i64 %call1)
  store i32 %call2, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @stroke_options_signals, i32 0, i64 0), align 4
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_stroke_method_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 1, %struct._GParamSpec* %call4)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.000000e+03, double 6.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 3, %struct._GParamSpec* %call5)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 4, %struct._GParamSpec* %call6)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_cap_style_get_type() #7
  %call8 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 5, %struct._GParamSpec* %call8)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call i64 @gimp_join_style_get_type() #7
  %call10 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* null, i64 %call9, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 6, %struct._GParamSpec* %call10)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.23, i32 0, i32 0)) #6
  %call12 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* %call11, double 0.000000e+00, double 1.000000e+02, double 1.000000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 7, %struct._GParamSpec* %call12)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.000000e+03, double 0.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 10, %struct._GParamSpec* %call13)
  %call14 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 2.000000e+03, double 1.000000e+00, i32 227)
  store %struct._GParamSpec* %call14, %struct._GParamSpec** %array_spec, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %array_spec, align 8
  %call15 = call %struct._GParamSpec* @g_param_spec_value_array(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, %struct._GParamSpec* %18, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 11, %struct._GParamSpec* %call15)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call i64 @gimp_paint_options_get_type() #7
  %call17 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i64 %call16, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 12, %struct._GParamSpec* %call17)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* null, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 13, %struct._GParamSpec* %call18)
  %21 = load %struct._GimpStrokeOptionsClass*, %struct._GimpStrokeOptionsClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpStrokeOptionsClass* %21 to i8*
  call void @g_type_class_add_private(i8* %22, i64 72)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_options_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpStrokeOptionsPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_stroke_options_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpStrokeOptionsPrivate*
  store %struct._GimpStrokeOptionsPrivate* %2, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %3 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %dash_info = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %3, i32 0, i32 7
  %4 = load %struct._GArray*, %struct._GArray** %dash_info, align 8
  %tobool = icmp ne %struct._GArray* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %dash_info2 = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %5, i32 0, i32 7
  %6 = load %struct._GArray*, %struct._GArray** %dash_info2, align 8
  call void @gimp_dash_pattern_free(%struct._GArray* %6)
  %7 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %dash_info3 = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %7, i32 0, i32 7
  store %struct._GArray* null, %struct._GArray** %dash_info3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %paint_options = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %8, i32 0, i32 8
  %9 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %tobool4 = icmp ne %struct._GimpPaintOptions* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %paint_options6 = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %10, i32 0, i32 8
  %11 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options6, align 8
  %12 = bitcast %struct._GimpPaintOptions* %11 to i8*
  call void @g_object_unref(i8* %12)
  %13 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %paint_options7 = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %13, i32 0, i32 8
  store %struct._GimpPaintOptions* null, %struct._GimpPaintOptions** %paint_options7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %14 = load i8*, i8** @gimp_stroke_options_parent_class, align 8
  %15 = bitcast i8* %14 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %15, i64 80)
  %16 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 6
  %17 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %17(%struct._GObject* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_options_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpStrokeOptions*, align 8
  %private = alloca %struct._GimpStrokeOptionsPrivate*, align 8
  %value_array = alloca %struct._GValueArray*, align 8
  %pattern = alloca %struct._GArray*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_stroke_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %2, %struct._GimpStrokeOptions** %options, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_stroke_options_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpStrokeOptionsPrivate*
  store %struct._GimpStrokeOptionsPrivate* %5, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 10, label %sw.bb.15
    i32 11, label %sw.bb.17
    i32 12, label %sw.bb.20
    i32 13, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_enum(%struct._GValue* %7)
  %8 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %method = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %8, i32 0, i32 0
  store i32 %call4, i32* %method, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call double @g_value_get_double(%struct._GValue* %9)
  %10 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %10, i32 0, i32 1
  store double %call6, double* %width, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_int(%struct._GValue* %11)
  %12 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %unit = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %12, i32 0, i32 2
  store i32 %call8, i32* %unit, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_enum(%struct._GValue* %13)
  %14 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %cap_style = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %14, i32 0, i32 3
  store i32 %call10, i32* %cap_style, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_enum(%struct._GValue* %15)
  %16 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %join_style = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %16, i32 0, i32 4
  store i32 %call12, i32* %join_style, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call double @g_value_get_double(%struct._GValue* %17)
  %18 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %miter_limit = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %18, i32 0, i32 5
  store double %call14, double* %miter_limit, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call double @g_value_get_double(%struct._GValue* %19)
  %20 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %dash_offset = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %20, i32 0, i32 6
  store double %call16, double* %dash_offset, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i8* @g_value_get_boxed(%struct._GValue* %21)
  %22 = bitcast i8* %call18 to %struct._GValueArray*
  store %struct._GValueArray* %22, %struct._GValueArray** %value_array, align 8
  %23 = load %struct._GValueArray*, %struct._GValueArray** %value_array, align 8
  %call19 = call %struct._GArray* @gimp_dash_pattern_from_value_array(%struct._GValueArray* %23)
  store %struct._GArray* %call19, %struct._GArray** %pattern, align 8
  %24 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %25 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  call void @gimp_stroke_options_take_dash_pattern(%struct._GimpStrokeOptions* %24, i32 0, %struct._GArray* %25)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %26 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %paint_options = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %26, i32 0, i32 8
  %27 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %27, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.20
  %28 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %paint_options21 = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %28, i32 0, i32 8
  %29 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options21, align 8
  %30 = bitcast %struct._GimpPaintOptions* %29 to i8*
  call void @g_object_unref(i8* %30)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.20
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i8* @g_value_dup_object(%struct._GValue* %31)
  %32 = bitcast i8* %call22 to %struct._GimpPaintOptions*
  %33 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %paint_options23 = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %33, i32 0, i32 8
  store %struct._GimpPaintOptions* %32, %struct._GimpPaintOptions** %paint_options23, align 8
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call25 = call i32 @g_value_get_boolean(%struct._GValue* %34)
  %35 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %emulate_dynamics = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %35, i32 0, i32 9
  store i32 %call25, i32* %emulate_dynamics, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %36 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %36, %struct._GObject** %_glib__object, align 8
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %37, %struct._GParamSpec** %_glib__pspec, align 8
  %38 = load i32, i32* %property_id.addr, align 4
  store i32 %38, i32* %_glib__property_id, align 4
  %39 = load i32, i32* %_glib__property_id, align 4
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %40, i32 0, i32 1
  %41 = load i8*, i8** %name, align 8
  %42 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %43 = bitcast %struct._GParamSpec* %42 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type, align 8
  %call26 = call i8* @g_type_name(i64 %45)
  %46 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %47 = bitcast %struct._GObject* %46 to %struct._GTypeInstance*
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %48, i32 0, i32 0
  %49 = load i64, i64* %g_type28, align 8
  %call29 = call i8* @g_type_name(i64 %49)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 307, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %39, i8* %41, i8* %call26, i8* %call29)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.24, %if.end, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_options_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpStrokeOptionsPrivate*, align 8
  %value_array = alloca %struct._GValueArray*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_stroke_options_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpStrokeOptionsPrivate*
  store %struct._GimpStrokeOptionsPrivate* %2, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.4
    i32 6, label %sw.bb.5
    i32 7, label %sw.bb.6
    i32 10, label %sw.bb.7
    i32 11, label %sw.bb.8
    i32 12, label %sw.bb.10
    i32 13, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %method = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %method, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %8, i32 0, i32 1
  %9 = load double, double* %width, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %unit = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %11, i32 0, i32 2
  %12 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %cap_style = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %14, i32 0, i32 3
  %15 = load i32, i32* %cap_style, align 4
  call void @g_value_set_enum(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %join_style = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %17, i32 0, i32 4
  %18 = load i32, i32* %join_style, align 4
  call void @g_value_set_enum(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %miter_limit = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %20, i32 0, i32 5
  %21 = load double, double* %miter_limit, align 8
  call void @g_value_set_double(%struct._GValue* %19, double %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %dash_offset = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %23, i32 0, i32 6
  %24 = load double, double* %dash_offset, align 8
  call void @g_value_set_double(%struct._GValue* %22, double %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %dash_info = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %25, i32 0, i32 7
  %26 = load %struct._GArray*, %struct._GArray** %dash_info, align 8
  %call9 = call %struct._GValueArray* @gimp_dash_pattern_to_value_array(%struct._GArray* %26)
  store %struct._GValueArray* %call9, %struct._GValueArray** %value_array, align 8
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GValueArray*, %struct._GValueArray** %value_array, align 8
  %29 = bitcast %struct._GValueArray* %28 to i8*
  call void @g_value_take_boxed(%struct._GValue* %27, i8* %29)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %31 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %paint_options = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %31, i32 0, i32 8
  %32 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %33 = bitcast %struct._GimpPaintOptions* %32 to i8*
  call void @g_value_set_object(%struct._GValue* %30, i8* %33)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %emulate_dynamics = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %35, i32 0, i32 9
  %36 = load i32, i32* %emulate_dynamics, align 4
  call void @g_value_set_boolean(%struct._GValue* %34, i32 %36)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %37 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %37, %struct._GObject** %_glib__object, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %38, %struct._GParamSpec** %_glib__pspec, align 8
  %39 = load i32, i32* %property_id.addr, align 4
  store i32 %39, i32* %_glib__property_id, align 4
  %40 = load i32, i32* %_glib__property_id, align 4
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %41, i32 0, i32 1
  %42 = load i8*, i8** %name, align 8
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %44 = bitcast %struct._GParamSpec* %43 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type, align 8
  %call12 = call i8* @g_type_name(i64 %46)
  %47 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %48 = bitcast %struct._GObject* %47 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type14, align 8
  %call15 = call i8* @g_type_name(i64 %50)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 361, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %40, i8* %42, i8* %call12, i8* %call15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.10, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__ENUM(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dash_preset_get_type() #2

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_stroke_method_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_cap_style_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_join_style_get_type() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GParamSpec* @g_param_spec_value_array(i8*, i8*, i8*, %struct._GParamSpec*, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare %struct._GArray* @gimp_dash_pattern_from_value_array(%struct._GValueArray*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare %struct._GValueArray* @gimp_dash_pattern_to_value_array(%struct._GArray*) #1

declare void @g_value_take_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpConfig* @gimp_stroke_options_duplicate(%struct._GimpConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %options = alloca %struct._GimpStrokeOptions*, align 8
  %private = alloca %struct._GimpStrokeOptionsPrivate*, align 8
  %new_options = alloca %struct._GimpStrokeOptions*, align 8
  %paint_options7 = alloca %struct._GObject*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_stroke_options_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %2, %struct._GimpStrokeOptions** %options, align 8
  %3 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %options, align 8
  %4 = bitcast %struct._GimpStrokeOptions* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_stroke_options_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpStrokeOptionsPrivate*
  store %struct._GimpStrokeOptionsPrivate* %5, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %6 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** @parent_config_iface, align 8
  %duplicate = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %6, i32 0, i32 5
  %7 = load %struct._GimpConfig* (%struct._GimpConfig*)*, %struct._GimpConfig* (%struct._GimpConfig*)** %duplicate, align 8
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %call4 = call %struct._GimpConfig* %7(%struct._GimpConfig* %8)
  %9 = bitcast %struct._GimpConfig* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_stroke_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpStrokeOptions*
  store %struct._GimpStrokeOptions* %10, %struct._GimpStrokeOptions** %new_options, align 8
  %11 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %paint_options = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %11, i32 0, i32 8
  %12 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options, align 8
  %tobool = icmp ne %struct._GimpPaintOptions* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GimpStrokeOptionsPrivate*, %struct._GimpStrokeOptionsPrivate** %private, align 8
  %paint_options8 = getelementptr inbounds %struct._GimpStrokeOptionsPrivate, %struct._GimpStrokeOptionsPrivate* %13, i32 0, i32 8
  %14 = load %struct._GimpPaintOptions*, %struct._GimpPaintOptions** %paint_options8, align 8
  %15 = bitcast %struct._GimpPaintOptions* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_config_interface_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpConfig*
  %call11 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %16)
  %17 = bitcast i8* %call11 to %struct._GObject*
  store %struct._GObject* %17, %struct._GObject** %paint_options7, align 8
  %18 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %new_options, align 8
  %19 = bitcast %struct._GimpStrokeOptions* %18 to i8*
  %20 = load %struct._GObject*, %struct._GObject** %paint_options7, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %struct._GObject* %20, i8* null)
  %21 = load %struct._GObject*, %struct._GObject** %paint_options7, align 8
  %22 = bitcast %struct._GObject* %21 to i8*
  call void @g_object_unref(i8* %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct._GimpStrokeOptions*, %struct._GimpStrokeOptions** %new_options, align 8
  %24 = bitcast %struct._GimpStrokeOptions* %23 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_config_interface_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call12)
  %25 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpConfig*
  ret %struct._GimpConfig* %25
}

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
