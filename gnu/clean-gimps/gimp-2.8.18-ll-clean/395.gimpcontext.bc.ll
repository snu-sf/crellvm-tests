; ModuleID = './app/core/gimpcontext.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
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
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i8*, %struct._GimpPaintOptions* }
%struct._GimpPaintOptions = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type { %struct._GimpData }
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpToolPreset = type { %struct._GimpData, %struct._Gimp*, %struct._GimpToolOptions*, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpFont = type opaque
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._TileManager = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GdkPixbuf = type opaque
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_context_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpContext\00", align 1
@gimp_context_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_context_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_context_new = private unnamed_addr constant [17 x i8] c"gimp_context_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"! template || GIMP_IS_CONTEXT (template)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@__func__.gimp_context_get_parent = private unnamed_addr constant [24 x i8] c"gimp_context_get_parent\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@__func__.gimp_context_set_parent = private unnamed_addr constant [24 x i8] c"gimp_context_set_parent\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"parent == NULL || GIMP_IS_CONTEXT (parent)\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"parent == NULL || parent->parent != context\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"context != parent\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@__func__.gimp_context_define_property = private unnamed_addr constant [29 x i8] c"gimp_context_define_property\00", align 1
@.str.12 = private unnamed_addr constant [70 x i8] c"(prop >= GIMP_CONTEXT_FIRST_PROP) && (prop <= GIMP_CONTEXT_LAST_PROP)\00", align 1
@__func__.gimp_context_property_defined = private unnamed_addr constant [30 x i8] c"gimp_context_property_defined\00", align 1
@__func__.gimp_context_define_properties = private unnamed_addr constant [31 x i8] c"gimp_context_define_properties\00", align 1
@__func__.gimp_context_set_serialize_properties = private unnamed_addr constant [38 x i8] c"gimp_context_set_serialize_properties\00", align 1
@__func__.gimp_context_get_serialize_properties = private unnamed_addr constant [38 x i8] c"gimp_context_get_serialize_properties\00", align 1
@__func__.gimp_context_copy_property = private unnamed_addr constant [27 x i8] c"gimp_context_copy_property\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"GIMP_IS_CONTEXT (src)\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"GIMP_IS_CONTEXT (dest)\00", align 1
@__func__.gimp_context_copy_properties = private unnamed_addr constant [29 x i8] c"gimp_context_copy_properties\00", align 1
@gimp_context_prop_types = internal global [20 x i64] [i64 4, i64 4, i64 0, i64 4, i64 0, i64 0, i64 4, i64 4, i64 4, i64 4, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], align 16
@gimp_context_prop_names = internal constant [20 x i8*] [i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0)], align 16
@gimp_context_signals = internal global [20 x i32] zeroinitializer, align 16
@__func__.gimp_context_get_by_type = private unnamed_addr constant [25 x i8] c"gimp_context_get_by_type\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"(prop = gimp_context_type_to_property (type)) != -1\00", align 1
@__func__.gimp_context_set_by_type = private unnamed_addr constant [25 x i8] c"gimp_context_set_by_type\00", align 1
@__func__.gimp_context_changed_by_type = private unnamed_addr constant [29 x i8] c"gimp_context_changed_by_type\00", align 1
@__func__.gimp_context_get_image = private unnamed_addr constant [23 x i8] c"gimp_context_get_image\00", align 1
@__func__.gimp_context_set_image = private unnamed_addr constant [23 x i8] c"gimp_context_set_image\00", align 1
@__func__.gimp_context_image_changed = private unnamed_addr constant [27 x i8] c"gimp_context_image_changed\00", align 1
@__func__.gimp_context_get_display = private unnamed_addr constant [25 x i8] c"gimp_context_get_display\00", align 1
@__func__.gimp_context_set_display = private unnamed_addr constant [25 x i8] c"gimp_context_set_display\00", align 1
@__func__.gimp_context_display_changed = private unnamed_addr constant [29 x i8] c"gimp_context_display_changed\00", align 1
@__func__.gimp_context_get_tool = private unnamed_addr constant [22 x i8] c"gimp_context_get_tool\00", align 1
@__func__.gimp_context_set_tool = private unnamed_addr constant [22 x i8] c"gimp_context_set_tool\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"! tool_info || GIMP_IS_TOOL_INFO (tool_info)\00", align 1
@__func__.gimp_context_tool_changed = private unnamed_addr constant [26 x i8] c"gimp_context_tool_changed\00", align 1
@__func__.gimp_context_get_paint_info = private unnamed_addr constant [28 x i8] c"gimp_context_get_paint_info\00", align 1
@__func__.gimp_context_set_paint_info = private unnamed_addr constant [28 x i8] c"gimp_context_set_paint_info\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"! paint_info || GIMP_IS_PAINT_INFO (paint_info)\00", align 1
@__func__.gimp_context_paint_info_changed = private unnamed_addr constant [32 x i8] c"gimp_context_paint_info_changed\00", align 1
@__func__.gimp_context_get_foreground = private unnamed_addr constant [28 x i8] c"gimp_context_get_foreground\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"color != NULL\00", align 1
@__func__.gimp_context_set_foreground = private unnamed_addr constant [28 x i8] c"gimp_context_set_foreground\00", align 1
@__func__.gimp_context_foreground_changed = private unnamed_addr constant [32 x i8] c"gimp_context_foreground_changed\00", align 1
@__func__.gimp_context_get_background = private unnamed_addr constant [28 x i8] c"gimp_context_get_background\00", align 1
@__func__.gimp_context_set_background = private unnamed_addr constant [28 x i8] c"gimp_context_set_background\00", align 1
@__func__.gimp_context_background_changed = private unnamed_addr constant [32 x i8] c"gimp_context_background_changed\00", align 1
@__func__.gimp_context_set_default_colors = private unnamed_addr constant [32 x i8] c"gimp_context_set_default_colors\00", align 1
@__func__.gimp_context_swap_colors = private unnamed_addr constant [25 x i8] c"gimp_context_swap_colors\00", align 1
@__func__.gimp_context_get_opacity = private unnamed_addr constant [25 x i8] c"gimp_context_get_opacity\00", align 1
@__func__.gimp_context_set_opacity = private unnamed_addr constant [25 x i8] c"gimp_context_set_opacity\00", align 1
@__func__.gimp_context_opacity_changed = private unnamed_addr constant [29 x i8] c"gimp_context_opacity_changed\00", align 1
@__func__.gimp_context_get_paint_mode = private unnamed_addr constant [28 x i8] c"gimp_context_get_paint_mode\00", align 1
@__func__.gimp_context_set_paint_mode = private unnamed_addr constant [28 x i8] c"gimp_context_set_paint_mode\00", align 1
@__func__.gimp_context_paint_mode_changed = private unnamed_addr constant [32 x i8] c"gimp_context_paint_mode_changed\00", align 1
@__func__.gimp_context_get_brush = private unnamed_addr constant [23 x i8] c"gimp_context_get_brush\00", align 1
@__func__.gimp_context_set_brush = private unnamed_addr constant [23 x i8] c"gimp_context_set_brush\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"! brush || GIMP_IS_BRUSH (brush)\00", align 1
@__func__.gimp_context_brush_changed = private unnamed_addr constant [27 x i8] c"gimp_context_brush_changed\00", align 1
@__func__.gimp_context_get_dynamics = private unnamed_addr constant [26 x i8] c"gimp_context_get_dynamics\00", align 1
@__func__.gimp_context_set_dynamics = private unnamed_addr constant [26 x i8] c"gimp_context_set_dynamics\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"! dynamics || GIMP_IS_DYNAMICS (dynamics)\00", align 1
@__func__.gimp_context_dynamics_changed = private unnamed_addr constant [30 x i8] c"gimp_context_dynamics_changed\00", align 1
@__func__.gimp_context_get_pattern = private unnamed_addr constant [25 x i8] c"gimp_context_get_pattern\00", align 1
@__func__.gimp_context_set_pattern = private unnamed_addr constant [25 x i8] c"gimp_context_set_pattern\00", align 1
@__func__.gimp_context_pattern_changed = private unnamed_addr constant [29 x i8] c"gimp_context_pattern_changed\00", align 1
@__func__.gimp_context_get_gradient = private unnamed_addr constant [26 x i8] c"gimp_context_get_gradient\00", align 1
@__func__.gimp_context_set_gradient = private unnamed_addr constant [26 x i8] c"gimp_context_set_gradient\00", align 1
@__func__.gimp_context_gradient_changed = private unnamed_addr constant [30 x i8] c"gimp_context_gradient_changed\00", align 1
@__func__.gimp_context_get_palette = private unnamed_addr constant [25 x i8] c"gimp_context_get_palette\00", align 1
@__func__.gimp_context_set_palette = private unnamed_addr constant [25 x i8] c"gimp_context_set_palette\00", align 1
@__func__.gimp_context_palette_changed = private unnamed_addr constant [29 x i8] c"gimp_context_palette_changed\00", align 1
@__func__.gimp_context_get_tool_preset = private unnamed_addr constant [29 x i8] c"gimp_context_get_tool_preset\00", align 1
@__func__.gimp_context_set_tool_preset = private unnamed_addr constant [29 x i8] c"gimp_context_set_tool_preset\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"! tool_preset || GIMP_IS_TOOL_PRESET (tool_preset)\00", align 1
@__func__.gimp_context_tool_preset_changed = private unnamed_addr constant [33 x i8] c"gimp_context_tool_preset_changed\00", align 1
@__func__.gimp_context_get_font = private unnamed_addr constant [22 x i8] c"gimp_context_get_font\00", align 1
@__func__.gimp_context_set_font = private unnamed_addr constant [22 x i8] c"gimp_context_set_font\00", align 1
@__func__.gimp_context_get_font_name = private unnamed_addr constant [27 x i8] c"gimp_context_get_font_name\00", align 1
@__func__.gimp_context_set_font_name = private unnamed_addr constant [27 x i8] c"gimp_context_set_font_name\00", align 1
@__func__.gimp_context_font_changed = private unnamed_addr constant [26 x i8] c"gimp_context_font_changed\00", align 1
@__func__.gimp_context_get_buffer = private unnamed_addr constant [24 x i8] c"gimp_context_get_buffer\00", align 1
@__func__.gimp_context_set_buffer = private unnamed_addr constant [24 x i8] c"gimp_context_set_buffer\00", align 1
@__func__.gimp_context_buffer_changed = private unnamed_addr constant [28 x i8] c"gimp_context_buffer_changed\00", align 1
@__func__.gimp_context_get_imagefile = private unnamed_addr constant [27 x i8] c"gimp_context_get_imagefile\00", align 1
@__func__.gimp_context_set_imagefile = private unnamed_addr constant [27 x i8] c"gimp_context_set_imagefile\00", align 1
@__func__.gimp_context_imagefile_changed = private unnamed_addr constant [31 x i8] c"gimp_context_imagefile_changed\00", align 1
@__func__.gimp_context_get_template = private unnamed_addr constant [26 x i8] c"gimp_context_get_template\00", align 1
@__func__.gimp_context_set_template = private unnamed_addr constant [26 x i8] c"gimp_context_set_template\00", align 1
@__func__.gimp_context_template_changed = private unnamed_addr constant [30 x i8] c"gimp_context_template_changed\00", align 1
@gimp_context_parent_class = internal global i8* null, align 8
@GimpContext_private_offset = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"image-changed\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"display-changed\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"tool-changed\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"paint-info-changed\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"foreground-changed\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"background-changed\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"opacity-changed\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"paint-mode-changed\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"brush-changed\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"dynamics-changed\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"pattern-changed\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"gradient-changed\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"palette-changed\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"tool-preset-changed\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"font-changed\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"buffer-changed\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"imagefile-changed\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"template-changed\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Paint Mode\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"gimpcontext.c\00", align 1
@__func__.gimp_context_constructed = private unnamed_addr constant [25 x i8] c"gimp_context_constructed\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"gimp-paintbrush-tool\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"gimp-paintbrush\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"imagefile\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.50 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"tool\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"paint-info\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"paint-mode\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"brush\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"dynamics\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"gradient\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"palette\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"tool-preset\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"name-changed\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_context_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_context_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_context_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 424, void (i8*, i8*)* bitcast (void (i8*)* @gimp_context_class_intern_init to void (i8*, i8*)*), i32 344, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContext*)* @gimp_context_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #8
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_context_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_context_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_context_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_context_parent_class, align 8
  %1 = load i32, i32* @GimpContext_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContext_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContextClass*
  call void @gimp_context_class_init(%struct._GimpContextClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_init(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 2
  store %struct._GimpContext* null, %struct._GimpContext** %parent, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 3
  store i32 1015804, i32* %defined_props, align 4
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %serialize_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 4
  store i32 1015804, i32* %serialize_props, align 4
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %image = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 5
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %display = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 6
  store i8* null, i8** %display, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 7
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %tool_info, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %7, i32 0, i32 8
  store i8* null, i8** %tool_name, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 9
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %paint_info, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 10
  store i8* null, i8** %paint_name, align 8
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 15
  store %struct._GimpBrush* null, %struct._GimpBrush** %brush, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 16
  store i8* null, i8** %brush_name, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %12, i32 0, i32 17
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %dynamics, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 18
  store i8* null, i8** %dynamics_name, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 19
  store %struct._GimpPattern* null, %struct._GimpPattern** %pattern, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 20
  store i8* null, i8** %pattern_name, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 21
  store %struct._GimpGradient* null, %struct._GimpGradient** %gradient, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %17, i32 0, i32 22
  store i8* null, i8** %gradient_name, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 23
  store %struct._GimpPalette* null, %struct._GimpPalette** %palette, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 24
  store i8* null, i8** %palette_name, align 8
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %20, i32 0, i32 25
  store %struct._GimpToolPreset* null, %struct._GimpToolPreset** %tool_preset, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 26
  store i8* null, i8** %tool_preset_name, align 8
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %22, i32 0, i32 27
  store %struct._GimpFont* null, %struct._GimpFont** %font, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 28
  store i8* null, i8** %font_name, align 8
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %24, i32 0, i32 29
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %buffer, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %25, i32 0, i32 30
  store i8* null, i8** %buffer_name, align 8
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %26, i32 0, i32 31
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %imagefile, align 8
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 32
  store i8* null, i8** %imagefile_name, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %28, i32 0, i32 33
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %template, align 8
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 34
  store i8* null, i8** %template_name, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_context_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %1 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize_property = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %1, i32 0, i32 3
  store i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)* @gimp_context_serialize_property, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)** %serialize_property, align 8
  %2 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize_property = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %2, i32 0, i32 4
  store i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)* @gimp_context_deserialize_property, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)** %deserialize_property, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_context_new(%struct._Gimp* %gimp, i8* %name, %struct._GimpContext* %template) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %template.addr = alloca %struct._GimpContext*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GimpContext* %template, %struct._GimpContext** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_context_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %name.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_context_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpContext*, %struct._GimpContext** %template.addr, align 8
  %tobool18 = icmp ne %struct._GimpContext* %14, null
  br i1 %tobool18, label %lor.lhs.false, label %if.then.42

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GimpContext*, %struct._GimpContext** %template.addr, align 8
  %16 = bitcast %struct._GimpContext* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gimp_context_get_type() #8
  store i64 %call23, i64* %__t22, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type33, align 8
  %23 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %22, %23
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %25 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #9
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %26 = load i32, i32* %__r25, align 4
  store i32 %26, i32* %tmp40
  %27 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %27, 0
  br i1 %tobool41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39, %do.body.17
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_context_new, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %call46 = call i64 @gimp_context_get_type() #8
  %28 = load i8*, i8** %name.addr, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call47 = call i8* (i64, i8*, ...) @g_object_new(i64 %call46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._Gimp* %29, i8* null)
  %30 = bitcast i8* %call47 to %struct._GimpContext*
  store %struct._GimpContext* %30, %struct._GimpContext** %context, align 8
  %31 = load %struct._GimpContext*, %struct._GimpContext** %template.addr, align 8
  %tobool48 = icmp ne %struct._GimpContext* %31, null
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %do.end.45
  %32 = load %struct._GimpContext*, %struct._GimpContext** %template.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %32, i32 0, i32 3
  %33 = load i32, i32* %defined_props, align 4
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %defined_props50 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %34, i32 0, i32 3
  store i32 %33, i32* %defined_props50, align 4
  %35 = load %struct._GimpContext*, %struct._GimpContext** %template.addr, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_copy_properties(%struct._GimpContext* %35, %struct._GimpContext* %36, i32 1015804)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %do.end.45
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  store %struct._GimpContext* %37, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.else.43, %if.else.14, %if.else.9
  %38 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %38
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_context_copy_properties(%struct._GimpContext* %src, %struct._GimpContext* %dest, i32 %prop_mask) #3 {
entry:
  %src.addr = alloca %struct._GimpContext*, align 8
  %dest.addr = alloca %struct._GimpContext*, align 8
  %prop_mask.addr = alloca i32, align 4
  %prop = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContext* %src, %struct._GimpContext** %src.addr, align 8
  store %struct._GimpContext* %dest, %struct._GimpContext** %dest.addr, align 8
  store i32 %prop_mask, i32* %prop_mask.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_copy_properties, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_copy_properties, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0))
  br label %for.end

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  store i32 2, i32* %prop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.38
  %26 = load i32, i32* %prop, align 4
  %cmp39 = icmp ule i32 %26, 19
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %prop, align 4
  %shl = shl i32 1, %27
  %28 = load i32, i32* %prop_mask.addr, align 4
  %and = and i32 %shl, %28
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body
  %29 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %31 = load i32, i32* %prop, align 4
  call void @gimp_context_copy_property(%struct._GimpContext* %29, %struct._GimpContext* %30, i32 %31)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %32 = load i32, i32* %prop, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %prop, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.else.36, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_context_get_parent(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_context_get_parent, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 2
  %14 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  store %struct._GimpContext* %14, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_parent(%struct._GimpContext* %context, %struct._GimpContext* %parent) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %parent.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpContext* %parent, %struct._GimpContext** %parent.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_context_set_parent, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.69

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %cmp12 = icmp eq %struct._GimpContext* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_context_set_parent, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.69

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %cmp41 = icmp eq %struct._GimpContext* %27, null
  br i1 %cmp41, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %parent43 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %28, i32 0, i32 2
  %29 = load %struct._GimpContext*, %struct._GimpContext** %parent43, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp44 = icmp ne %struct._GimpContext* %29, %30
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %lor.lhs.false.42, %do.body.40
  br label %if.end.47

if.else.46:                                       ; preds = %lor.lhs.false.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_context_set_parent, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.69

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %cmp50 = icmp ne %struct._GimpContext* %31, %32
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.49
  br label %if.end.53

if.else.52:                                       ; preds = %do.body.49
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_context_set_parent, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.69

if.end.53:                                        ; preds = %if.then.51
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent55 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %33, i32 0, i32 2
  %34 = load %struct._GimpContext*, %struct._GimpContext** %parent55, align 8
  %35 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %cmp56 = icmp eq %struct._GimpContext* %34, %35
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %do.end.54
  br label %if.end.69

if.end.58:                                        ; preds = %do.end.54
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent59 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %36, i32 0, i32 2
  %37 = load %struct._GimpContext*, %struct._GimpContext** %parent59, align 8
  %tobool60 = icmp ne %struct._GimpContext* %37, null
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %if.end.58
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent62 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %38, i32 0, i32 2
  %39 = load %struct._GimpContext*, %struct._GimpContext** %parent62, align 8
  %40 = bitcast %struct._GimpContext* %39 to i8*
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %42 = bitcast %struct._GimpContext* %41 to i8*
  %call63 = call i32 @g_signal_handlers_disconnect_matched(i8* %40, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GParamSpec*, %struct._GimpContext*)* @gimp_context_parent_notify to i8*), i8* %42)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %if.end.58
  %43 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent65 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %44, i32 0, i32 2
  store %struct._GimpContext* %43, %struct._GimpContext** %parent65, align 8
  %45 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %tobool66 = icmp ne %struct._GimpContext* %45, null
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.64
  %46 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %47 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %48, i32 0, i32 3
  %49 = load i32, i32* %defined_props, align 4
  %neg = xor i32 %49, -1
  %and = and i32 %neg, 1015804
  call void @gimp_context_copy_properties(%struct._GimpContext* %46, %struct._GimpContext* %47, i32 %and)
  %50 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %51 = bitcast %struct._GimpContext* %50 to i8*
  %52 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %53 = bitcast %struct._GimpContext* %52 to i8*
  %call68 = call i64 @g_signal_connect_object(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GParamSpec*, %struct._GimpContext*)* @gimp_context_parent_notify to void ()*), i8* %53, i32 0)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.9, %if.else.37, %if.else.46, %if.else.52, %if.then.57, %if.then.67, %if.end.64
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_parent_notify(%struct._GimpContext* %parent, %struct._GParamSpec* %pspec, %struct._GimpContext* %context) #3 {
entry:
  %parent.addr = alloca %struct._GimpContext*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContext* %parent, %struct._GimpContext** %parent.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %0, i32 0, i32 4
  %1 = load i64, i64* %owner_type, align 8
  %call = call i64 @gimp_context_get_type() #8
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %param_id = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 9
  %3 = load i32, i32* %param_id, align 4
  %shl = shl i32 1, %3
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 3
  %5 = load i32, i32* %defined_props, align 4
  %and = and i32 %shl, %5
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GimpContext*, %struct._GimpContext** %parent.addr, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %param_id1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %8, i32 0, i32 9
  %9 = load i32, i32* %param_id1, align 4
  call void @gimp_context_copy_property(%struct._GimpContext* %6, %struct._GimpContext* %7, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_context_define_property(%struct._GimpContext* %context, i32 %prop, i32 %defined) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %prop.addr = alloca i32, align 4
  %defined.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %prop, i32* %prop.addr, align 4
  store i32 %defined, i32* %defined.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_define_property, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.37

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %prop.addr, align 4
  %cmp12 = icmp uge i32 %13, 2
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %prop.addr, align 4
  %cmp14 = icmp ule i32 %14, 19
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_define_property, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.37

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %15 = load i32, i32* %prop.addr, align 4
  %shl = shl i32 1, %15
  store i32 %shl, i32* %mask, align 4
  %16 = load i32, i32* %defined.addr, align 4
  %tobool19 = icmp ne i32 %16, 0
  br i1 %tobool19, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %do.end.18
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %17, i32 0, i32 3
  %18 = load i32, i32* %defined_props, align 4
  %19 = load i32, i32* %mask, align 4
  %and = and i32 %18, %19
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %if.then.20
  %20 = load i32, i32* %mask, align 4
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props23 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 3
  %22 = load i32, i32* %defined_props23, align 4
  %or = or i32 %22, %20
  store i32 %or, i32* %defined_props23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.20
  br label %if.end.37

if.else.25:                                       ; preds = %do.end.18
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props26 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 3
  %24 = load i32, i32* %defined_props26, align 4
  %25 = load i32, i32* %mask, align 4
  %and27 = and i32 %24, %25
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.else.25
  %26 = load i32, i32* %mask, align 4
  %neg = xor i32 %26, -1
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props30 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 3
  %28 = load i32, i32* %defined_props30, align 4
  %and31 = and i32 %28, %neg
  store i32 %and31, i32* %defined_props30, align 4
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 2
  %30 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool32 = icmp ne %struct._GimpContext* %30, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.29
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent34 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %31, i32 0, i32 2
  %32 = load %struct._GimpContext*, %struct._GimpContext** %parent34, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %34 = load i32, i32* %prop.addr, align 4
  call void @gimp_context_copy_property(%struct._GimpContext* %32, %struct._GimpContext* %33, i32 %34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.else.25
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.9, %if.else.16, %if.end.36, %if.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_copy_property(%struct._GimpContext* %src, %struct._GimpContext* %dest, i32 %prop) #3 {
entry:
  %src.addr = alloca %struct._GimpContext*, align 8
  %dest.addr = alloca %struct._GimpContext*, align 8
  %prop.addr = alloca i32, align 4
  %object = alloca i8*, align 8
  %standard_object = alloca i8*, align 8
  %src_name = alloca i8*, align 8
  %dest_name_loc = alloca i8**, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContext* %src, %struct._GimpContext** %src.addr, align 8
  store %struct._GimpContext* %dest, %struct._GimpContext** %dest.addr, align 8
  store i32 %prop, i32* %prop.addr, align 4
  store i8* null, i8** %object, align 8
  store i8* null, i8** %standard_object, align 8
  store i8* null, i8** %src_name, align 8
  store i8** null, i8*** %dest_name_loc, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_context_copy_property, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.102

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #8
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_context_copy_property, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.102

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* %prop.addr, align 4
  %cmp40 = icmp uge i32 %26, 2
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.44

land.lhs.true.41:                                 ; preds = %do.body.39
  %27 = load i32, i32* %prop.addr, align 4
  %cmp42 = icmp ule i32 %27, 19
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.41
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true.41, %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_context_copy_property, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.102

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %28 = load i32, i32* %prop.addr, align 4
  switch i32 %28, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.47
    i32 4, label %sw.bb.48
    i32 5, label %sw.bb.52
    i32 6, label %sw.bb.57
    i32 7, label %sw.bb.58
    i32 8, label %sw.bb.59
    i32 9, label %sw.bb.60
    i32 10, label %sw.bb.61
    i32 11, label %sw.bb.65
    i32 12, label %sw.bb.69
    i32 13, label %sw.bb.73
    i32 14, label %sw.bb.77
    i32 15, label %sw.bb.81
    i32 16, label %sw.bb.84
    i32 17, label %sw.bb.88
    i32 18, label %sw.bb.89
    i32 19, label %sw.bb.90
  ]

sw.bb:                                            ; preds = %do.end.46
  %29 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %image = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %30, i32 0, i32 5
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_context_real_set_image(%struct._GimpContext* %29, %struct._GimpImage* %31)
  br label %sw.epilog

sw.bb.47:                                         ; preds = %do.end.46
  %32 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %display = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %33, i32 0, i32 6
  %34 = load i8*, i8** %display, align 8
  call void @gimp_context_real_set_display(%struct._GimpContext* %32, i8* %34)
  br label %sw.epilog

sw.bb.48:                                         ; preds = %do.end.46
  %35 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %36, i32 0, i32 7
  %37 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_context_real_set_tool(%struct._GimpContext* %35, %struct._GimpToolInfo* %37)
  %38 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %tool_info49 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %38, i32 0, i32 7
  %39 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info49, align 8
  %40 = bitcast %struct._GimpToolInfo* %39 to i8*
  store i8* %40, i8** %object, align 8
  %41 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %41, i32 0, i32 1
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call50 = call %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp* %42)
  %43 = bitcast %struct._GimpToolInfo* %call50 to i8*
  store i8* %43, i8** %standard_object, align 8
  %44 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %tool_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %44, i32 0, i32 8
  %45 = load i8*, i8** %tool_name, align 8
  store i8* %45, i8** %src_name, align 8
  %46 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %tool_name51 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %46, i32 0, i32 8
  store i8** %tool_name51, i8*** %dest_name_loc, align 8
  br label %sw.epilog

sw.bb.52:                                         ; preds = %do.end.46
  %47 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %48 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %paint_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %48, i32 0, i32 9
  %49 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  call void @gimp_context_real_set_paint_info(%struct._GimpContext* %47, %struct._GimpPaintInfo* %49)
  %50 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %paint_info53 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %50, i32 0, i32 9
  %51 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info53, align 8
  %52 = bitcast %struct._GimpPaintInfo* %51 to i8*
  store i8* %52, i8** %object, align 8
  %53 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %gimp54 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %53, i32 0, i32 1
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp54, align 8
  %call55 = call %struct._GimpPaintInfo* @gimp_paint_info_get_standard(%struct._Gimp* %54)
  %55 = bitcast %struct._GimpPaintInfo* %call55 to i8*
  store i8* %55, i8** %standard_object, align 8
  %56 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %paint_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %56, i32 0, i32 10
  %57 = load i8*, i8** %paint_name, align 8
  store i8* %57, i8** %src_name, align 8
  %58 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %paint_name56 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %58, i32 0, i32 10
  store i8** %paint_name56, i8*** %dest_name_loc, align 8
  br label %sw.epilog

sw.bb.57:                                         ; preds = %do.end.46
  %59 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %60 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %foreground = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %60, i32 0, i32 11
  call void @gimp_context_real_set_foreground(%struct._GimpContext* %59, %struct._GimpRGB* %foreground)
  br label %sw.epilog

sw.bb.58:                                         ; preds = %do.end.46
  %61 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %62 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %background = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %62, i32 0, i32 12
  call void @gimp_context_real_set_background(%struct._GimpContext* %61, %struct._GimpRGB* %background)
  br label %sw.epilog

sw.bb.59:                                         ; preds = %do.end.46
  %63 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %64 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %opacity = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %64, i32 0, i32 13
  %65 = load double, double* %opacity, align 8
  call void @gimp_context_real_set_opacity(%struct._GimpContext* %63, double %65)
  br label %sw.epilog

sw.bb.60:                                         ; preds = %do.end.46
  %66 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %67 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %paint_mode = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %67, i32 0, i32 14
  %68 = load i32, i32* %paint_mode, align 4
  call void @gimp_context_real_set_paint_mode(%struct._GimpContext* %66, i32 %68)
  br label %sw.epilog

sw.bb.61:                                         ; preds = %do.end.46
  %69 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %70 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %brush = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %70, i32 0, i32 15
  %71 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  call void @gimp_context_real_set_brush(%struct._GimpContext* %69, %struct._GimpBrush* %71)
  %72 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %brush62 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %72, i32 0, i32 15
  %73 = load %struct._GimpBrush*, %struct._GimpBrush** %brush62, align 8
  %74 = bitcast %struct._GimpBrush* %73 to i8*
  store i8* %74, i8** %object, align 8
  %75 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %call63 = call %struct._GimpData* @gimp_brush_get_standard(%struct._GimpContext* %75)
  %76 = bitcast %struct._GimpData* %call63 to i8*
  store i8* %76, i8** %standard_object, align 8
  %77 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %brush_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %77, i32 0, i32 16
  %78 = load i8*, i8** %brush_name, align 8
  store i8* %78, i8** %src_name, align 8
  %79 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %brush_name64 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %79, i32 0, i32 16
  store i8** %brush_name64, i8*** %dest_name_loc, align 8
  br label %sw.epilog

sw.bb.65:                                         ; preds = %do.end.46
  %80 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %81 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %dynamics = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %81, i32 0, i32 17
  %82 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  call void @gimp_context_real_set_dynamics(%struct._GimpContext* %80, %struct._GimpDynamics* %82)
  %83 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %dynamics66 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %83, i32 0, i32 17
  %84 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics66, align 8
  %85 = bitcast %struct._GimpDynamics* %84 to i8*
  store i8* %85, i8** %object, align 8
  %86 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %call67 = call %struct._GimpData* @gimp_dynamics_get_standard(%struct._GimpContext* %86)
  %87 = bitcast %struct._GimpData* %call67 to i8*
  store i8* %87, i8** %standard_object, align 8
  %88 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %dynamics_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %88, i32 0, i32 18
  %89 = load i8*, i8** %dynamics_name, align 8
  store i8* %89, i8** %src_name, align 8
  %90 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %dynamics_name68 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %90, i32 0, i32 18
  store i8** %dynamics_name68, i8*** %dest_name_loc, align 8
  br label %sw.epilog

sw.bb.69:                                         ; preds = %do.end.46
  %91 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %92 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %pattern = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %92, i32 0, i32 19
  %93 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  call void @gimp_context_real_set_pattern(%struct._GimpContext* %91, %struct._GimpPattern* %93)
  %94 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %pattern70 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %94, i32 0, i32 19
  %95 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern70, align 8
  %96 = bitcast %struct._GimpPattern* %95 to i8*
  store i8* %96, i8** %object, align 8
  %97 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %call71 = call %struct._GimpData* @gimp_pattern_get_standard(%struct._GimpContext* %97)
  %98 = bitcast %struct._GimpData* %call71 to i8*
  store i8* %98, i8** %standard_object, align 8
  %99 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %pattern_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %99, i32 0, i32 20
  %100 = load i8*, i8** %pattern_name, align 8
  store i8* %100, i8** %src_name, align 8
  %101 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %pattern_name72 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %101, i32 0, i32 20
  store i8** %pattern_name72, i8*** %dest_name_loc, align 8
  br label %sw.epilog

sw.bb.73:                                         ; preds = %do.end.46
  %102 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %103 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %gradient = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %103, i32 0, i32 21
  %104 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  call void @gimp_context_real_set_gradient(%struct._GimpContext* %102, %struct._GimpGradient* %104)
  %105 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %gradient74 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %105, i32 0, i32 21
  %106 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient74, align 8
  %107 = bitcast %struct._GimpGradient* %106 to i8*
  store i8* %107, i8** %object, align 8
  %108 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %call75 = call %struct._GimpData* @gimp_gradient_get_standard(%struct._GimpContext* %108)
  %109 = bitcast %struct._GimpData* %call75 to i8*
  store i8* %109, i8** %standard_object, align 8
  %110 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %gradient_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %110, i32 0, i32 22
  %111 = load i8*, i8** %gradient_name, align 8
  store i8* %111, i8** %src_name, align 8
  %112 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %gradient_name76 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %112, i32 0, i32 22
  store i8** %gradient_name76, i8*** %dest_name_loc, align 8
  br label %sw.epilog

sw.bb.77:                                         ; preds = %do.end.46
  %113 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %114 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %palette = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %114, i32 0, i32 23
  %115 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  call void @gimp_context_real_set_palette(%struct._GimpContext* %113, %struct._GimpPalette* %115)
  %116 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %palette78 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %116, i32 0, i32 23
  %117 = load %struct._GimpPalette*, %struct._GimpPalette** %palette78, align 8
  %118 = bitcast %struct._GimpPalette* %117 to i8*
  store i8* %118, i8** %object, align 8
  %119 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %call79 = call %struct._GimpData* @gimp_palette_get_standard(%struct._GimpContext* %119)
  %120 = bitcast %struct._GimpData* %call79 to i8*
  store i8* %120, i8** %standard_object, align 8
  %121 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %palette_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %121, i32 0, i32 24
  %122 = load i8*, i8** %palette_name, align 8
  store i8* %122, i8** %src_name, align 8
  %123 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %palette_name80 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %123, i32 0, i32 24
  store i8** %palette_name80, i8*** %dest_name_loc, align 8
  br label %sw.epilog

sw.bb.81:                                         ; preds = %do.end.46
  %124 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %125 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %tool_preset = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %125, i32 0, i32 25
  %126 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  call void @gimp_context_real_set_tool_preset(%struct._GimpContext* %124, %struct._GimpToolPreset* %126)
  %127 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %tool_preset82 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %127, i32 0, i32 25
  %128 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset82, align 8
  %129 = bitcast %struct._GimpToolPreset* %128 to i8*
  store i8* %129, i8** %object, align 8
  %130 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %tool_preset_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %130, i32 0, i32 26
  %131 = load i8*, i8** %tool_preset_name, align 8
  store i8* %131, i8** %src_name, align 8
  %132 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %tool_preset_name83 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %132, i32 0, i32 26
  store i8** %tool_preset_name83, i8*** %dest_name_loc, align 8
  br label %sw.epilog

sw.bb.84:                                         ; preds = %do.end.46
  %133 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %134 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %font = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %134, i32 0, i32 27
  %135 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  call void @gimp_context_real_set_font(%struct._GimpContext* %133, %struct._GimpFont* %135)
  %136 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %font85 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %136, i32 0, i32 27
  %137 = load %struct._GimpFont*, %struct._GimpFont** %font85, align 8
  %138 = bitcast %struct._GimpFont* %137 to i8*
  store i8* %138, i8** %object, align 8
  %call86 = call %struct._GimpFont* @gimp_font_get_standard()
  %139 = bitcast %struct._GimpFont* %call86 to i8*
  store i8* %139, i8** %standard_object, align 8
  %140 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %140, i32 0, i32 28
  %141 = load i8*, i8** %font_name, align 8
  store i8* %141, i8** %src_name, align 8
  %142 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %font_name87 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %142, i32 0, i32 28
  store i8** %font_name87, i8*** %dest_name_loc, align 8
  br label %sw.epilog

sw.bb.88:                                         ; preds = %do.end.46
  %143 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %144 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %144, i32 0, i32 29
  %145 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  call void @gimp_context_real_set_buffer(%struct._GimpContext* %143, %struct._GimpBuffer* %145)
  br label %sw.epilog

sw.bb.89:                                         ; preds = %do.end.46
  %146 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %147 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %imagefile = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %147, i32 0, i32 31
  %148 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  call void @gimp_context_real_set_imagefile(%struct._GimpContext* %146, %struct._GimpImagefile* %148)
  br label %sw.epilog

sw.bb.90:                                         ; preds = %do.end.46
  %149 = load %struct._GimpContext*, %struct._GimpContext** %dest.addr, align 8
  %150 = load %struct._GimpContext*, %struct._GimpContext** %src.addr, align 8
  %template = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %150, i32 0, i32 33
  %151 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  call void @gimp_context_real_set_template(%struct._GimpContext* %149, %struct._GimpTemplate* %151)
  br label %sw.epilog

sw.default:                                       ; preds = %do.end.46
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.90, %sw.bb.89, %sw.bb.88, %sw.bb.84, %sw.bb.81, %sw.bb.77, %sw.bb.73, %sw.bb.69, %sw.bb.65, %sw.bb.61, %sw.bb.60, %sw.bb.59, %sw.bb.58, %sw.bb.57, %sw.bb.52, %sw.bb.48, %sw.bb.47, %sw.bb
  %152 = load i8*, i8** %src_name, align 8
  %tobool91 = icmp ne i8* %152, null
  br i1 %tobool91, label %land.lhs.true.92, label %if.end.102

land.lhs.true.92:                                 ; preds = %sw.epilog
  %153 = load i8**, i8*** %dest_name_loc, align 8
  %tobool93 = icmp ne i8** %153, null
  br i1 %tobool93, label %if.then.94, label %if.end.102

if.then.94:                                       ; preds = %land.lhs.true.92
  %154 = load i8*, i8** %object, align 8
  %tobool95 = icmp ne i8* %154, null
  br i1 %tobool95, label %lor.lhs.false, label %if.then.99

lor.lhs.false:                                    ; preds = %if.then.94
  %155 = load i8*, i8** %standard_object, align 8
  %tobool96 = icmp ne i8* %155, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.101

land.lhs.true.97:                                 ; preds = %lor.lhs.false
  %156 = load i8*, i8** %object, align 8
  %157 = load i8*, i8** %standard_object, align 8
  %cmp98 = icmp eq i8* %156, %157
  br i1 %cmp98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %land.lhs.true.97, %if.then.94
  %158 = load i8**, i8*** %dest_name_loc, align 8
  %159 = load i8*, i8** %158, align 8
  call void @g_free(i8* %159)
  %160 = load i8*, i8** %src_name, align 8
  %call100 = call noalias i8* @g_strdup(i8* %160)
  %161 = load i8**, i8*** %dest_name_loc, align 8
  store i8* %call100, i8** %161, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %land.lhs.true.97, %lor.lhs.false
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.9, %if.else.36, %if.else.44, %if.end.101, %land.lhs.true.92, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_property_defined(%struct._GimpContext* %context, i32 %prop) #3 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._GimpContext*, align 8
  %prop.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %prop, i32* %prop.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_context_property_defined, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %15 = load i32, i32* %prop.addr, align 4
  %shl = shl i32 1, %15
  %and = and i32 %14, %shl
  %tobool11 = icmp ne i32 %and, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_context_define_properties(%struct._GimpContext* %context, i32 %prop_mask, i32 %defined) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %prop_mask.addr = alloca i32, align 4
  %defined.addr = alloca i32, align 4
  %prop = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %prop_mask, i32* %prop_mask.addr, align 4
  store i32 %defined, i32* %defined.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_context_define_properties, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %for.end

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 2, i32* %prop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %13 = load i32, i32* %prop, align 4
  %cmp11 = icmp ule i32 %13, 19
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %prop, align 4
  %shl = shl i32 1, %14
  %15 = load i32, i32* %prop_mask.addr, align 4
  %and = and i32 %shl, %15
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = load i32, i32* %prop, align 4
  %18 = load i32, i32* %defined.addr, align 4
  call void @gimp_context_define_property(%struct._GimpContext* %16, i32 %17, i32 %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %19 = load i32, i32* %prop, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %prop, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_serialize_properties(%struct._GimpContext* %context, i32 %props_mask) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %props_mask.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %props_mask, i32* %props_mask.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_context_set_serialize_properties, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %props_mask.addr, align 4
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %serialize_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 4
  store i32 %13, i32* %serialize_props, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_get_serialize_properties(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_context_get_serialize_properties, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %serialize_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 4
  %14 = load i32, i32* %serialize_props, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_image(%struct._GimpContext* %context, %struct._GimpImage* %image) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %image1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 5
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %image2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 5
  store %struct._GimpImage* %3, %struct._GimpImage** %image2, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = bitcast %struct._GimpContext* %5 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0))
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_image_changed(%struct._GimpContext* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_display(%struct._GimpContext* %context, i8* %display) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %display.addr = alloca i8*, align 8
  %old_display = alloca %struct._GimpObject*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %image12 = alloca %struct._GimpImage*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %display, i8** %display.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 6
  %1 = load i8*, i8** %display1, align 8
  %2 = load i8*, i8** %display.addr, align 8
  %cmp = icmp eq i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %display.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %4 = load i8*, i8** %display.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), %struct._GimpImage** %image, i8* null)
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_context_real_set_image(%struct._GimpContext* %5, %struct._GimpImage* %6)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool3 = icmp ne %struct._GimpImage* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = bitcast %struct._GimpImage* %8 to i8*
  call void @g_object_unref(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %return

if.end.6:                                         ; preds = %entry
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %display7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 6
  %11 = load i8*, i8** %display7, align 8
  %12 = bitcast i8* %11 to %struct._GimpObject*
  store %struct._GimpObject* %12, %struct._GimpObject** %old_display, align 8
  %13 = load i8*, i8** %display.addr, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %display8 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 6
  store i8* %13, i8** %display8, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %display9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 6
  %16 = load i8*, i8** %display9, align 8
  %tobool10 = icmp ne i8* %16, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.6
  %17 = load i8*, i8** %display.addr, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), %struct._GimpImage** %image12, i8* null)
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image12, align 8
  call void @gimp_context_real_set_image(%struct._GimpContext* %18, %struct._GimpImage* %19)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image12, align 8
  %tobool13 = icmp ne %struct._GimpImage* %20, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.11
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image12, align 8
  %22 = bitcast %struct._GimpImage* %21 to i8*
  call void @g_object_unref(i8* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.11
  br label %if.end.19

if.else:                                          ; preds = %if.end.6
  %23 = load %struct._GimpObject*, %struct._GimpObject** %old_display, align 8
  %tobool16 = icmp ne %struct._GimpObject* %23, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_real_set_image(%struct._GimpContext* %24, %struct._GimpImage* null)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.15
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = bitcast %struct._GimpContext* %25 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0))
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_display_changed(%struct._GimpContext* %28)
  br label %return

return:                                           ; preds = %if.end.19, %if.end.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_tool(%struct._GimpContext* %context, %struct._GimpToolInfo* %tool_info) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 7
  %1 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info1, align 8
  %2 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %cmp = icmp eq %struct._GimpToolInfo* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 8
  %4 = load i8*, i8** %tool_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp* %7)
  %cmp2 = icmp ne %struct._GimpToolInfo* %5, %call
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 8
  %9 = load i8*, i8** %tool_name4, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name5 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 8
  store i8* null, i8** %tool_name5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 7
  %12 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info7, align 8
  %tobool8 = icmp ne %struct._GimpToolInfo* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 7
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info10, align 8
  %15 = bitcast %struct._GimpToolInfo* %14 to i8*
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to i8*
  %call11 = call i32 @g_signal_handlers_disconnect_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolInfo*, %struct._GimpContext*)* @gimp_context_tool_dirty to i8*), i8* %17)
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 7
  %19 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info12, align 8
  %20 = bitcast %struct._GimpToolInfo* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.6
  %21 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %22, i32 0, i32 7
  store %struct._GimpToolInfo* %21, %struct._GimpToolInfo** %tool_info14, align 8
  %23 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool15 = icmp ne %struct._GimpToolInfo* %23, null
  br i1 %tobool15, label %if.then.16, label %if.end.31

if.then.16:                                       ; preds = %if.end.13
  %24 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %25 = bitcast %struct._GimpToolInfo* %24 to i8*
  %call17 = call i8* @g_object_ref(i8* %25)
  %26 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %27 = bitcast %struct._GimpToolInfo* %26 to i8*
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = bitcast %struct._GimpContext* %28 to i8*
  %call18 = call i64 @g_signal_connect_object(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolInfo*, %struct._GimpContext*)* @gimp_context_tool_dirty to void ()*), i8* %29, i32 0)
  %30 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp* %32)
  %cmp21 = icmp ne %struct._GimpToolInfo* %30, %call20
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.then.16
  %33 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %34 = bitcast %struct._GimpToolInfo* %33 to i8*
  %call23 = call i8* @gimp_object_get_name(i8* %34)
  %call24 = call noalias i8* @g_strdup(i8* %call23)
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name25 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %35, i32 0, i32 8
  store i8* %call24, i8** %tool_name25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.then.16
  %36 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %paint_info = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %36, i32 0, i32 13
  %37 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %tobool27 = icmp ne %struct._GimpPaintInfo* %37, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.26
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %paint_info29 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %39, i32 0, i32 13
  %40 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info29, align 8
  call void @gimp_context_real_set_paint_info(%struct._GimpContext* %38, %struct._GimpPaintInfo* %40)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.13
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %42 = bitcast %struct._GimpContext* %41 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_tool_changed(%struct._GimpContext* %44)
  br label %return

return:                                           ; preds = %if.end.31, %if.then
  ret void
}

declare %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_paint_info(%struct._GimpContext* %context, %struct._GimpPaintInfo* %paint_info) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %paint_info.addr = alloca %struct._GimpPaintInfo*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPaintInfo* %paint_info, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 9
  %1 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info1, align 8
  %2 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %cmp = icmp eq %struct._GimpPaintInfo* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 10
  %4 = load i8*, i8** %paint_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpPaintInfo* @gimp_paint_info_get_standard(%struct._Gimp* %7)
  %cmp2 = icmp ne %struct._GimpPaintInfo* %5, %call
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 10
  %9 = load i8*, i8** %paint_name4, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name5 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 10
  store i8* null, i8** %paint_name5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 9
  %12 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info7, align 8
  %tobool8 = icmp ne %struct._GimpPaintInfo* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 9
  %14 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info10, align 8
  %15 = bitcast %struct._GimpPaintInfo* %14 to i8*
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to i8*
  %call11 = call i32 @g_signal_handlers_disconnect_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPaintInfo*, %struct._GimpContext*)* @gimp_context_paint_info_dirty to i8*), i8* %17)
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 9
  %19 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info12, align 8
  %20 = bitcast %struct._GimpPaintInfo* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.6
  %21 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %22, i32 0, i32 9
  store %struct._GimpPaintInfo* %21, %struct._GimpPaintInfo** %paint_info14, align 8
  %23 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %tobool15 = icmp ne %struct._GimpPaintInfo* %23, null
  br i1 %tobool15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %if.end.13
  %24 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %25 = bitcast %struct._GimpPaintInfo* %24 to i8*
  %call17 = call i8* @g_object_ref(i8* %25)
  %26 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %27 = bitcast %struct._GimpPaintInfo* %26 to i8*
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %29 = bitcast %struct._GimpContext* %28 to i8*
  %call18 = call i64 @g_signal_connect_object(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPaintInfo*, %struct._GimpContext*)* @gimp_context_paint_info_dirty to void ()*), i8* %29, i32 0)
  %30 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp19, align 8
  %call20 = call %struct._GimpPaintInfo* @gimp_paint_info_get_standard(%struct._Gimp* %32)
  %cmp21 = icmp ne %struct._GimpPaintInfo* %30, %call20
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.then.16
  %33 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %34 = bitcast %struct._GimpPaintInfo* %33 to i8*
  %call23 = call i8* @gimp_object_get_name(i8* %34)
  %call24 = call noalias i8* @g_strdup(i8* %call23)
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name25 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %35, i32 0, i32 10
  store i8* %call24, i8** %paint_name25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.13
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %37 = bitcast %struct._GimpContext* %36 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0))
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_paint_info_changed(%struct._GimpContext* %39)
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  ret void
}

declare %struct._GimpPaintInfo* @gimp_paint_info_get_standard(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_foreground(%struct._GimpContext* %context, %struct._GimpRGB* %color) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %foreground = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 11
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call double @gimp_rgba_distance(%struct._GimpRGB* %foreground, %struct._GimpRGB* %1)
  %cmp = fcmp olt double %call, 1.000000e-04
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %foreground1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 11
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %4 = bitcast %struct._GimpRGB* %foreground1 to i8*
  %5 = bitcast %struct._GimpRGB* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %foreground2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 11
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %foreground2, double 1.000000e+00)
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = bitcast %struct._GimpContext* %7 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0))
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_foreground_changed(%struct._GimpContext* %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_background(%struct._GimpContext* %context, %struct._GimpRGB* %color) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %background = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 12
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %call = call double @gimp_rgba_distance(%struct._GimpRGB* %background, %struct._GimpRGB* %1)
  %cmp = fcmp olt double %call, 1.000000e-04
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %background1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 12
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %4 = bitcast %struct._GimpRGB* %background1 to i8*
  %5 = bitcast %struct._GimpRGB* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %background2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 12
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %background2, double 1.000000e+00)
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = bitcast %struct._GimpContext* %7 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0))
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_background_changed(%struct._GimpContext* %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_opacity(%struct._GimpContext* %context, double %opacity) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %opacity.addr = alloca double, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %opacity1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 13
  %1 = load double, double* %opacity1, align 8
  %2 = load double, double* %opacity.addr, align 8
  %cmp = fcmp oeq double %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load double, double* %opacity.addr, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %opacity2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 13
  store double %3, double* %opacity2, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = bitcast %struct._GimpContext* %5 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0))
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_opacity_changed(%struct._GimpContext* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_paint_mode(%struct._GimpContext* %context, i32 %paint_mode) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %paint_mode.addr = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_mode1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 14
  %1 = load i32, i32* %paint_mode1, align 4
  %2 = load i32, i32* %paint_mode.addr, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %paint_mode.addr, align 4
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_mode2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 14
  store i32 %3, i32* %paint_mode2, align 4
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = bitcast %struct._GimpContext* %5 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0))
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_paint_mode_changed(%struct._GimpContext* %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_brush(%struct._GimpContext* %context, %struct._GimpBrush* %brush) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 15
  %1 = load %struct._GimpBrush*, %struct._GimpBrush** %brush1, align 8
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %cmp = icmp eq %struct._GimpBrush* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 16
  %4 = load i8*, i8** %brush_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_brush_get_standard(%struct._GimpContext* %6)
  %7 = bitcast %struct._GimpData* %call to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrush*
  %cmp4 = icmp ne %struct._GimpBrush* %5, %8
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 16
  %10 = load i8*, i8** %brush_name6, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 16
  store i8* null, i8** %brush_name7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %12, i32 0, i32 15
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush9, align 8
  %tobool10 = icmp ne %struct._GimpBrush* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 15
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush12, align 8
  %16 = bitcast %struct._GimpBrush* %15 to i8*
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = bitcast %struct._GimpContext* %17 to i8*
  %call13 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpBrush*, %struct._GimpContext*)* @gimp_context_brush_dirty to i8*), i8* %18)
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 15
  %20 = load %struct._GimpBrush*, %struct._GimpBrush** %brush14, align 8
  %21 = bitcast %struct._GimpBrush* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.8
  %22 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush16 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 15
  store %struct._GimpBrush* %22, %struct._GimpBrush** %brush16, align 8
  %24 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %tobool17 = icmp ne %struct._GimpBrush* %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.15
  %25 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %26 = bitcast %struct._GimpBrush* %25 to i8*
  %call19 = call i8* @g_object_ref(i8* %26)
  %27 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %28 = bitcast %struct._GimpBrush* %27 to i8*
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = bitcast %struct._GimpContext* %29 to i8*
  %call20 = call i64 @g_signal_connect_object(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBrush*, %struct._GimpContext*)* @gimp_context_brush_dirty to void ()*), i8* %30, i32 0)
  %31 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call21 = call %struct._GimpData* @gimp_brush_get_standard(%struct._GimpContext* %32)
  %33 = bitcast %struct._GimpData* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_brush_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpBrush*
  %cmp24 = icmp ne %struct._GimpBrush* %31, %34
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.then.18
  %35 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %36 = bitcast %struct._GimpBrush* %35 to i8*
  %call26 = call i8* @gimp_object_get_name(i8* %36)
  %call27 = call noalias i8* @g_strdup(i8* %call26)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name28 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %37, i32 0, i32 16
  store i8* %call27, i8** %brush_name28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.then.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.15
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = bitcast %struct._GimpContext* %38 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0))
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_brush_changed(%struct._GimpContext* %41)
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  ret void
}

declare %struct._GimpData* @gimp_brush_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_dynamics(%struct._GimpContext* %context, %struct._GimpDynamics* %dynamics) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 17
  %1 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics1, align 8
  %2 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %cmp = icmp eq %struct._GimpDynamics* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 18
  %4 = load i8*, i8** %dynamics_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_dynamics_get_standard(%struct._GimpContext* %6)
  %7 = bitcast %struct._GimpData* %call to %struct._GTypeInstance*
  %call2 = call i64 @gimp_dynamics_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDynamics*
  %cmp4 = icmp ne %struct._GimpDynamics* %5, %8
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 18
  %10 = load i8*, i8** %dynamics_name6, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 18
  store i8* null, i8** %dynamics_name7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %12, i32 0, i32 17
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics9, align 8
  %tobool10 = icmp ne %struct._GimpDynamics* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 17
  %15 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics12, align 8
  %16 = bitcast %struct._GimpDynamics* %15 to i8*
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = bitcast %struct._GimpContext* %17 to i8*
  %call13 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDynamics*, %struct._GimpContext*)* @gimp_context_dynamics_dirty to i8*), i8* %18)
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 17
  %20 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics14, align 8
  %21 = bitcast %struct._GimpDynamics* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.8
  %22 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics16 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 17
  store %struct._GimpDynamics* %22, %struct._GimpDynamics** %dynamics16, align 8
  %24 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %tobool17 = icmp ne %struct._GimpDynamics* %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.15
  %25 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %26 = bitcast %struct._GimpDynamics* %25 to i8*
  %call19 = call i8* @g_object_ref(i8* %26)
  %27 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %28 = bitcast %struct._GimpDynamics* %27 to i8*
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = bitcast %struct._GimpContext* %29 to i8*
  %call20 = call i64 @g_signal_connect_object(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDynamics*, %struct._GimpContext*)* @gimp_context_dynamics_dirty to void ()*), i8* %30, i32 0)
  %31 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call21 = call %struct._GimpData* @gimp_dynamics_get_standard(%struct._GimpContext* %32)
  %33 = bitcast %struct._GimpData* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_dynamics_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDynamics*
  %cmp24 = icmp ne %struct._GimpDynamics* %31, %34
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.then.18
  %35 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %36 = bitcast %struct._GimpDynamics* %35 to i8*
  %call26 = call i8* @gimp_object_get_name(i8* %36)
  %call27 = call noalias i8* @g_strdup(i8* %call26)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name28 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %37, i32 0, i32 18
  store i8* %call27, i8** %dynamics_name28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.then.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.15
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = bitcast %struct._GimpContext* %38 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0))
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_dynamics_changed(%struct._GimpContext* %41)
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  ret void
}

declare %struct._GimpData* @gimp_dynamics_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_pattern(%struct._GimpContext* %context, %struct._GimpPattern* %pattern) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 19
  %1 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern1, align 8
  %2 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %cmp = icmp eq %struct._GimpPattern* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 20
  %4 = load i8*, i8** %pattern_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_pattern_get_standard(%struct._GimpContext* %6)
  %7 = bitcast %struct._GimpData* %call to %struct._GTypeInstance*
  %call2 = call i64 @gimp_pattern_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPattern*
  %cmp4 = icmp ne %struct._GimpPattern* %5, %8
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 20
  %10 = load i8*, i8** %pattern_name6, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 20
  store i8* null, i8** %pattern_name7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %12, i32 0, i32 19
  %13 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern9, align 8
  %tobool10 = icmp ne %struct._GimpPattern* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 19
  %15 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern12, align 8
  %16 = bitcast %struct._GimpPattern* %15 to i8*
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = bitcast %struct._GimpContext* %17 to i8*
  %call13 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPattern*, %struct._GimpContext*)* @gimp_context_pattern_dirty to i8*), i8* %18)
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 19
  %20 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern14, align 8
  %21 = bitcast %struct._GimpPattern* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.8
  %22 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern16 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 19
  store %struct._GimpPattern* %22, %struct._GimpPattern** %pattern16, align 8
  %24 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %tobool17 = icmp ne %struct._GimpPattern* %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.15
  %25 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %26 = bitcast %struct._GimpPattern* %25 to i8*
  %call19 = call i8* @g_object_ref(i8* %26)
  %27 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %28 = bitcast %struct._GimpPattern* %27 to i8*
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = bitcast %struct._GimpContext* %29 to i8*
  %call20 = call i64 @g_signal_connect_object(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPattern*, %struct._GimpContext*)* @gimp_context_pattern_dirty to void ()*), i8* %30, i32 0)
  %31 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call21 = call %struct._GimpData* @gimp_pattern_get_standard(%struct._GimpContext* %32)
  %33 = bitcast %struct._GimpData* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_pattern_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPattern*
  %cmp24 = icmp ne %struct._GimpPattern* %31, %34
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.then.18
  %35 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %36 = bitcast %struct._GimpPattern* %35 to i8*
  %call26 = call i8* @gimp_object_get_name(i8* %36)
  %call27 = call noalias i8* @g_strdup(i8* %call26)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name28 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %37, i32 0, i32 20
  store i8* %call27, i8** %pattern_name28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.then.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.15
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = bitcast %struct._GimpContext* %38 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0))
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_pattern_changed(%struct._GimpContext* %41)
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  ret void
}

declare %struct._GimpData* @gimp_pattern_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_gradient(%struct._GimpContext* %context, %struct._GimpGradient* %gradient) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 21
  %1 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient1, align 8
  %2 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %cmp = icmp eq %struct._GimpGradient* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 22
  %4 = load i8*, i8** %gradient_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_gradient_get_standard(%struct._GimpContext* %6)
  %7 = bitcast %struct._GimpData* %call to %struct._GTypeInstance*
  %call2 = call i64 @gimp_gradient_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpGradient*
  %cmp4 = icmp ne %struct._GimpGradient* %5, %8
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 22
  %10 = load i8*, i8** %gradient_name6, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 22
  store i8* null, i8** %gradient_name7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %12, i32 0, i32 21
  %13 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient9, align 8
  %tobool10 = icmp ne %struct._GimpGradient* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 21
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient12, align 8
  %16 = bitcast %struct._GimpGradient* %15 to i8*
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = bitcast %struct._GimpContext* %17 to i8*
  %call13 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGradient*, %struct._GimpContext*)* @gimp_context_gradient_dirty to i8*), i8* %18)
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 21
  %20 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient14, align 8
  %21 = bitcast %struct._GimpGradient* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.8
  %22 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient16 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 21
  store %struct._GimpGradient* %22, %struct._GimpGradient** %gradient16, align 8
  %24 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %tobool17 = icmp ne %struct._GimpGradient* %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.15
  %25 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %26 = bitcast %struct._GimpGradient* %25 to i8*
  %call19 = call i8* @g_object_ref(i8* %26)
  %27 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %28 = bitcast %struct._GimpGradient* %27 to i8*
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = bitcast %struct._GimpContext* %29 to i8*
  %call20 = call i64 @g_signal_connect_object(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGradient*, %struct._GimpContext*)* @gimp_context_gradient_dirty to void ()*), i8* %30, i32 0)
  %31 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call21 = call %struct._GimpData* @gimp_gradient_get_standard(%struct._GimpContext* %32)
  %33 = bitcast %struct._GimpData* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_gradient_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpGradient*
  %cmp24 = icmp ne %struct._GimpGradient* %31, %34
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.then.18
  %35 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %36 = bitcast %struct._GimpGradient* %35 to i8*
  %call26 = call i8* @gimp_object_get_name(i8* %36)
  %call27 = call noalias i8* @g_strdup(i8* %call26)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name28 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %37, i32 0, i32 22
  store i8* %call27, i8** %gradient_name28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.then.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.15
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = bitcast %struct._GimpContext* %38 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0))
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_gradient_changed(%struct._GimpContext* %41)
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  ret void
}

declare %struct._GimpData* @gimp_gradient_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_palette(%struct._GimpContext* %context, %struct._GimpPalette* %palette) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %palette.addr = alloca %struct._GimpPalette*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 23
  %1 = load %struct._GimpPalette*, %struct._GimpPalette** %palette1, align 8
  %2 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %cmp = icmp eq %struct._GimpPalette* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 24
  %4 = load i8*, i8** %palette_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_palette_get_standard(%struct._GimpContext* %6)
  %7 = bitcast %struct._GimpData* %call to %struct._GTypeInstance*
  %call2 = call i64 @gimp_palette_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPalette*
  %cmp4 = icmp ne %struct._GimpPalette* %5, %8
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 24
  %10 = load i8*, i8** %palette_name6, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 24
  store i8* null, i8** %palette_name7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %12, i32 0, i32 23
  %13 = load %struct._GimpPalette*, %struct._GimpPalette** %palette9, align 8
  %tobool10 = icmp ne %struct._GimpPalette* %13, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 23
  %15 = load %struct._GimpPalette*, %struct._GimpPalette** %palette12, align 8
  %16 = bitcast %struct._GimpPalette* %15 to i8*
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = bitcast %struct._GimpContext* %17 to i8*
  %call13 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPalette*, %struct._GimpContext*)* @gimp_context_palette_dirty to i8*), i8* %18)
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 23
  %20 = load %struct._GimpPalette*, %struct._GimpPalette** %palette14, align 8
  %21 = bitcast %struct._GimpPalette* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.8
  %22 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette16 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 23
  store %struct._GimpPalette* %22, %struct._GimpPalette** %palette16, align 8
  %24 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %tobool17 = icmp ne %struct._GimpPalette* %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.15
  %25 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %26 = bitcast %struct._GimpPalette* %25 to i8*
  %call19 = call i8* @g_object_ref(i8* %26)
  %27 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %28 = bitcast %struct._GimpPalette* %27 to i8*
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %30 = bitcast %struct._GimpContext* %29 to i8*
  %call20 = call i64 @g_signal_connect_object(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpPalette*, %struct._GimpContext*)* @gimp_context_palette_dirty to void ()*), i8* %30, i32 0)
  %31 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call21 = call %struct._GimpData* @gimp_palette_get_standard(%struct._GimpContext* %32)
  %33 = bitcast %struct._GimpData* %call21 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_palette_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpPalette*
  %cmp24 = icmp ne %struct._GimpPalette* %31, %34
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.then.18
  %35 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %36 = bitcast %struct._GimpPalette* %35 to i8*
  %call26 = call i8* @gimp_object_get_name(i8* %36)
  %call27 = call noalias i8* @g_strdup(i8* %call26)
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name28 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %37, i32 0, i32 24
  store i8* %call27, i8** %palette_name28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.then.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.15
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %39 = bitcast %struct._GimpContext* %38 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0))
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_palette_changed(%struct._GimpContext* %41)
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  ret void
}

declare %struct._GimpData* @gimp_palette_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_tool_preset(%struct._GimpContext* %context, %struct._GimpToolPreset* %tool_preset) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %tool_preset.addr = alloca %struct._GimpToolPreset*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpToolPreset* %tool_preset, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 25
  %1 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset1, align 8
  %2 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %cmp = icmp eq %struct._GimpToolPreset* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 26
  %4 = load i8*, i8** %tool_preset_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset_name3 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 26
  %6 = load i8*, i8** %tool_preset_name3, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset_name4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %7, i32 0, i32 26
  store i8* null, i8** %tool_preset_name4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 25
  %9 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset6, align 8
  %tobool7 = icmp ne %struct._GimpToolPreset* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 25
  %11 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset9, align 8
  %12 = bitcast %struct._GimpToolPreset* %11 to i8*
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPreset*, %struct._GimpContext*)* @gimp_context_tool_preset_dirty to i8*), i8* %14)
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 25
  %16 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset10, align 8
  %17 = bitcast %struct._GimpToolPreset* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  %18 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 25
  store %struct._GimpToolPreset* %18, %struct._GimpToolPreset** %tool_preset12, align 8
  %20 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %tobool13 = icmp ne %struct._GimpToolPreset* %20, null
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.11
  %21 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %22 = bitcast %struct._GimpToolPreset* %21 to i8*
  %call15 = call i8* @g_object_ref(i8* %22)
  %23 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %24 = bitcast %struct._GimpToolPreset* %23 to i8*
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = bitcast %struct._GimpContext* %25 to i8*
  %call16 = call i64 @g_signal_connect_object(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpToolPreset*, %struct._GimpContext*)* @gimp_context_tool_preset_dirty to void ()*), i8* %26, i32 0)
  %27 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %28 = bitcast %struct._GimpToolPreset* %27 to i8*
  %call17 = call i8* @gimp_object_get_name(i8* %28)
  %call18 = call noalias i8* @g_strdup(i8* %call17)
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset_name19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 26
  store i8* %call18, i8** %tool_preset_name19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %if.end.11
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = bitcast %struct._GimpContext* %30 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0))
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_tool_preset_changed(%struct._GimpContext* %33)
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_font(%struct._GimpContext* %context, %struct._GimpFont* %font) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %font.addr = alloca %struct._GimpFont*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpFont* %font, %struct._GimpFont** %font.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 27
  %1 = load %struct._GimpFont*, %struct._GimpFont** %font1, align 8
  %2 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %cmp = icmp eq %struct._GimpFont* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 28
  %4 = load i8*, i8** %font_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %call = call %struct._GimpFont* @gimp_font_get_standard()
  %cmp2 = icmp ne %struct._GimpFont* %5, %call
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 28
  %7 = load i8*, i8** %font_name4, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name5 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 28
  store i8* null, i8** %font_name5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 27
  %10 = load %struct._GimpFont*, %struct._GimpFont** %font7, align 8
  %tobool8 = icmp ne %struct._GimpFont* %10, null
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 27
  %12 = load %struct._GimpFont*, %struct._GimpFont** %font10, align 8
  %13 = bitcast %struct._GimpFont* %12 to i8*
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to i8*
  %call11 = call i32 @g_signal_handlers_disconnect_matched(i8* %13, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpFont*, %struct._GimpContext*)* @gimp_context_font_dirty to i8*), i8* %15)
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 27
  %17 = load %struct._GimpFont*, %struct._GimpFont** %font12, align 8
  %18 = bitcast %struct._GimpFont* %17 to i8*
  call void @g_object_unref(i8* %18)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.6
  %19 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %20, i32 0, i32 27
  store %struct._GimpFont* %19, %struct._GimpFont** %font14, align 8
  %21 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %tobool15 = icmp ne %struct._GimpFont* %21, null
  br i1 %tobool15, label %if.then.16, label %if.end.26

if.then.16:                                       ; preds = %if.end.13
  %22 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %23 = bitcast %struct._GimpFont* %22 to i8*
  %call17 = call i8* @g_object_ref(i8* %23)
  %24 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %25 = bitcast %struct._GimpFont* %24 to i8*
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %27 = bitcast %struct._GimpContext* %26 to i8*
  %call18 = call i64 @g_signal_connect_object(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpFont*, %struct._GimpContext*)* @gimp_context_font_dirty to void ()*), i8* %27, i32 0)
  %28 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %call19 = call %struct._GimpFont* @gimp_font_get_standard()
  %cmp20 = icmp ne %struct._GimpFont* %28, %call19
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.then.16
  %29 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %30 = bitcast %struct._GimpFont* %29 to i8*
  %call22 = call i8* @gimp_object_get_name(i8* %30)
  %call23 = call noalias i8* @g_strdup(i8* %call22)
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name24 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %31, i32 0, i32 28
  store i8* %call23, i8** %font_name24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.then.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.13
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %33 = bitcast %struct._GimpContext* %32 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0))
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_font_changed(%struct._GimpContext* %35)
  br label %return

return:                                           ; preds = %if.end.26, %if.then
  ret void
}

declare %struct._GimpFont* @gimp_font_get_standard() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_buffer(%struct._GimpContext* %context, %struct._GimpBuffer* %buffer) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 29
  %1 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer1, align 8
  %2 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %cmp = icmp eq %struct._GimpBuffer* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 30
  %4 = load i8*, i8** %buffer_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer_name3 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 30
  %6 = load i8*, i8** %buffer_name3, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer_name4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %7, i32 0, i32 30
  store i8* null, i8** %buffer_name4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 29
  %9 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer6, align 8
  %tobool7 = icmp ne %struct._GimpBuffer* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 29
  %11 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer9, align 8
  %12 = bitcast %struct._GimpBuffer* %11 to i8*
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpBuffer*, %struct._GimpContext*)* @gimp_context_buffer_dirty to i8*), i8* %14)
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 29
  %16 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer10, align 8
  %17 = bitcast %struct._GimpBuffer* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  %18 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 29
  store %struct._GimpBuffer* %18, %struct._GimpBuffer** %buffer12, align 8
  %20 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %tobool13 = icmp ne %struct._GimpBuffer* %20, null
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.11
  %21 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %22 = bitcast %struct._GimpBuffer* %21 to i8*
  %call15 = call i8* @g_object_ref(i8* %22)
  %23 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %24 = bitcast %struct._GimpBuffer* %23 to i8*
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = bitcast %struct._GimpContext* %25 to i8*
  %call16 = call i64 @g_signal_connect_object(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpBuffer*, %struct._GimpContext*)* @gimp_context_buffer_dirty to void ()*), i8* %26, i32 0)
  %27 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %28 = bitcast %struct._GimpBuffer* %27 to i8*
  %call17 = call i8* @gimp_object_get_name(i8* %28)
  %call18 = call noalias i8* @g_strdup(i8* %call17)
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer_name19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 30
  store i8* %call18, i8** %buffer_name19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %if.end.11
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = bitcast %struct._GimpContext* %30 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0))
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_buffer_changed(%struct._GimpContext* %33)
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_imagefile(%struct._GimpContext* %context, %struct._GimpImagefile* %imagefile) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 31
  %1 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile1, align 8
  %2 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %cmp = icmp eq %struct._GimpImagefile* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 32
  %4 = load i8*, i8** %imagefile_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile_name3 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 32
  %6 = load i8*, i8** %imagefile_name3, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile_name4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %7, i32 0, i32 32
  store i8* null, i8** %imagefile_name4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 31
  %9 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile6, align 8
  %tobool7 = icmp ne %struct._GimpImagefile* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 31
  %11 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile9, align 8
  %12 = bitcast %struct._GimpImagefile* %11 to i8*
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImagefile*, %struct._GimpContext*)* @gimp_context_imagefile_dirty to i8*), i8* %14)
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 31
  %16 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile10, align 8
  %17 = bitcast %struct._GimpImagefile* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  %18 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 31
  store %struct._GimpImagefile* %18, %struct._GimpImagefile** %imagefile12, align 8
  %20 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %tobool13 = icmp ne %struct._GimpImagefile* %20, null
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.11
  %21 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %22 = bitcast %struct._GimpImagefile* %21 to i8*
  %call15 = call i8* @g_object_ref(i8* %22)
  %23 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %24 = bitcast %struct._GimpImagefile* %23 to i8*
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = bitcast %struct._GimpContext* %25 to i8*
  %call16 = call i64 @g_signal_connect_object(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImagefile*, %struct._GimpContext*)* @gimp_context_imagefile_dirty to void ()*), i8* %26, i32 0)
  %27 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %28 = bitcast %struct._GimpImagefile* %27 to i8*
  %call17 = call i8* @gimp_object_get_name(i8* %28)
  %call18 = call noalias i8* @g_strdup(i8* %call17)
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile_name19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 32
  store i8* %call18, i8** %imagefile_name19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %if.end.11
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = bitcast %struct._GimpContext* %30 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0))
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_imagefile_changed(%struct._GimpContext* %33)
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_real_set_template(%struct._GimpContext* %context, %struct._GimpTemplate* %template) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 33
  %1 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template1, align 8
  %2 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %cmp = icmp eq %struct._GimpTemplate* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 34
  %4 = load i8*, i8** %template_name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template_name3 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 34
  %6 = load i8*, i8** %template_name3, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template_name4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %7, i32 0, i32 34
  store i8* null, i8** %template_name4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 33
  %9 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template6, align 8
  %tobool7 = icmp ne %struct._GimpTemplate* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 33
  %11 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template9, align 8
  %12 = bitcast %struct._GimpTemplate* %11 to i8*
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTemplate*, %struct._GimpContext*)* @gimp_context_template_dirty to i8*), i8* %14)
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 33
  %16 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template10, align 8
  %17 = bitcast %struct._GimpTemplate* %16 to i8*
  call void @g_object_unref(i8* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  %18 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 33
  store %struct._GimpTemplate* %18, %struct._GimpTemplate** %template12, align 8
  %20 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %tobool13 = icmp ne %struct._GimpTemplate* %20, null
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.11
  %21 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %22 = bitcast %struct._GimpTemplate* %21 to i8*
  %call15 = call i8* @g_object_ref(i8* %22)
  %23 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %24 = bitcast %struct._GimpTemplate* %23 to i8*
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %26 = bitcast %struct._GimpContext* %25 to i8*
  %call16 = call i64 @g_signal_connect_object(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTemplate*, %struct._GimpContext*)* @gimp_context_template_dirty to void ()*), i8* %26, i32 0)
  %27 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %28 = bitcast %struct._GimpTemplate* %27 to i8*
  %call17 = call i8* @gimp_object_get_name(i8* %28)
  %call18 = call noalias i8* @g_strdup(i8* %call17)
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template_name19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 34
  store i8* %call18, i8** %template_name19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %if.end.11
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %31 = bitcast %struct._GimpContext* %30 to %struct._GTypeInstance*
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call21 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0))
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_template_changed(%struct._GimpContext* %33)
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  ret void
}

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_context_type_to_property(i64 %type) #3 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i64, align 8
  %prop = alloca i32, align 4
  store i64 %type, i64* %type.addr, align 8
  store i32 2, i32* %prop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %prop, align 4
  %cmp = icmp ule i32 %0, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %type.addr, align 8
  %2 = load i32, i32* %prop, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %call = call i32 @g_type_is_a(i64 %1, i64 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %prop, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %prop, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %prop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_context_type_to_prop_name(i64 %type) #3 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i64, align 8
  %prop = alloca i32, align 4
  store i64 %type, i64* %type.addr, align 8
  store i32 2, i32* %prop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %prop, align 4
  %cmp = icmp ule i32 %0, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %type.addr, align 8
  %2 = load i32, i32* %prop, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %call = call i32 @g_type_is_a(i64 %1, i64 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %prop, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %prop, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %prop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define i8* @gimp_context_type_to_signal_name(i64 %type) #3 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i64, align 8
  %prop = alloca i32, align 4
  store i64 %type, i64* %type.addr, align 8
  store i32 2, i32* %prop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %prop, align 4
  %cmp = icmp ule i32 %0, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %type.addr, align 8
  %2 = load i32, i32* %prop, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %call = call i32 @g_type_is_a(i64 %1, i64 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %prop, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %call3 = call i8* @g_signal_name(i32 %5)
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %prop, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %prop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i8*, i8** %retval
  ret i8* %7
}

declare i8* @g_signal_name(i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %context, i64 %type) #3 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %type.addr = alloca i64, align 8
  %prop = alloca i32, align 4
  %object = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store %struct._GimpObject* null, %struct._GimpObject** %object, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_get_by_type, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %type.addr, align 8
  %call12 = call i32 @gimp_context_type_to_property(i64 %13)
  store i32 %call12, i32* %prop, align 4
  %cmp13 = icmp ne i32 %call12, -1
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_get_by_type, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to i8*
  %16 = load i32, i32* %prop, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds [20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %15, i8* %17, %struct._GimpObject** %object, i8* null)
  %18 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool18 = icmp ne %struct._GimpObject* %18, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end.17
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %20 = bitcast %struct._GimpObject* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.end.17
  %21 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  store %struct._GimpObject* %21, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.else.15, %if.else.9
  %22 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %22
}

declare void @g_object_get(i8*, i8*, ...) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_context_set_by_type(%struct._GimpContext* %context, i64 %type, %struct._GimpObject* %object) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %type.addr = alloca i64, align 8
  %object.addr = alloca %struct._GimpObject*, align 8
  %prop = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_set_by_type, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %type.addr, align 8
  %call12 = call i32 @gimp_context_type_to_property(i64 %13)
  store i32 %call12, i32* %prop, align 4
  %cmp13 = icmp ne i32 %call12, -1
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_set_by_type, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to i8*
  %16 = load i32, i32* %prop, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds [20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  %18 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* %17, %struct._GimpObject* %18, i8* null)
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_context_changed_by_type(%struct._GimpContext* %context, i64 %type) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %type.addr = alloca i64, align 8
  %prop = alloca i32, align 4
  %object = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_changed_by_type, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64, i64* %type.addr, align 8
  %call12 = call i32 @gimp_context_type_to_property(i64 %13)
  store i32 %call12, i32* %prop, align 4
  %cmp13 = icmp ne i32 %call12, -1
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_changed_by_type, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load i64, i64* %type.addr, align 8
  %call18 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %14, i64 %15)
  store %struct._GimpObject* %call18, %struct._GimpObject** %object, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %17 = bitcast %struct._GimpContext* %16 to i8*
  %18 = load i32, i32* %prop, align 4
  %idxprom = zext i32 %18 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4
  %20 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %17, i32 %19, i32 0, %struct._GimpObject* %20)
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_context_get_image, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %image = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 5
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %14, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_image(%struct._GimpContext* %context, %struct._GimpImage* %image) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_context_set_image, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 4
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_context_real_set_image(%struct._GimpContext* %20, %struct._GimpImage* %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_image_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_context_image_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 2), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %image = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 5
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpImage* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_context_get_display(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca i8*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_get_display, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %display = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 6
  %14 = load i8*, i8** %display, align 8
  store i8* %14, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_display(%struct._GimpContext* %context, i8* %display) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %display.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %display, i8** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_set_display, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 8
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load i8*, i8** %display.addr, align 8
  call void @gimp_context_real_set_display(%struct._GimpContext* %20, i8* %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_display_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_display_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 3), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %display = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 6
  %17 = load i8*, i8** %display, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i8* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpToolInfo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_context_get_tool, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 7
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  store %struct._GimpToolInfo* %14, %struct._GimpToolInfo** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %retval
  ret %struct._GimpToolInfo* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_tool(%struct._GimpContext* %context, %struct._GimpToolInfo* %tool_info) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_context_set_tool, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %tobool12 = icmp ne %struct._GimpToolInfo* %13, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %15 = bitcast %struct._GimpToolInfo* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_tool_info_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_context_set_tool, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 3
  %28 = load i32, i32* %defined_props, align 4
  %and = and i32 %28, 16
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 2
  %30 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool41 = icmp ne %struct._GimpContext* %30, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %tobool41, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent42 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %32, i32 0, i32 2
  %33 = load %struct._GimpContext*, %struct._GimpContext** %parent42, align 8
  store %struct._GimpContext* %33, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %35 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  call void @gimp_context_real_set_tool(%struct._GimpContext* %34, %struct._GimpToolInfo* %35)
  br label %return

return:                                           ; preds = %while.end, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_context_tool_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_context_tool_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 4), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 7
  %17 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpToolInfo* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpPaintInfo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_get_paint_info, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 9
  %14 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  store %struct._GimpPaintInfo* %14, %struct._GimpPaintInfo** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %retval
  ret %struct._GimpPaintInfo* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_paint_info(%struct._GimpContext* %context, %struct._GimpPaintInfo* %paint_info) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %paint_info.addr = alloca %struct._GimpPaintInfo*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPaintInfo* %paint_info, %struct._GimpPaintInfo** %paint_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_set_paint_info, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %tobool12 = icmp ne %struct._GimpPaintInfo* %13, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %15 = bitcast %struct._GimpPaintInfo* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_paint_info_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_set_paint_info, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 3
  %28 = load i32, i32* %defined_props, align 4
  %and = and i32 %28, 32
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 2
  %30 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool41 = icmp ne %struct._GimpContext* %30, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %tobool41, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent42 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %32, i32 0, i32 2
  %33 = load %struct._GimpContext*, %struct._GimpContext** %parent42, align 8
  store %struct._GimpContext* %33, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %35 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  call void @gimp_context_real_set_paint_info(%struct._GimpContext* %34, %struct._GimpPaintInfo* %35)
  br label %return

return:                                           ; preds = %while.end, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_paint_info_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_context_paint_info_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_context_paint_info_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 5), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 9
  %17 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpPaintInfo* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_get_foreground(%struct._GimpContext* %context, %struct._GimpRGB* %color) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_get_foreground, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_get_foreground, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %foreground = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 11
  %16 = bitcast %struct._GimpRGB* %14 to i8*
  %17 = bitcast %struct._GimpRGB* %foreground to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @gimp_context_set_foreground(%struct._GimpContext* %context, %struct._GimpRGB* %color) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_set_foreground, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_set_foreground, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.16
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 3
  %15 = load i32, i32* %defined_props, align 4
  %and = and i32 %15, 64
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 2
  %17 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool18 = icmp ne %struct._GimpContext* %17, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool18, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 2
  %20 = load %struct._GimpContext*, %struct._GimpContext** %parent19, align 8
  store %struct._GimpContext* %20, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_context_real_set_foreground(%struct._GimpContext* %21, %struct._GimpRGB* %22)
  br label %return

return:                                           ; preds = %while.end, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_foreground_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_context_foreground_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 6), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %foreground = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 11
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpRGB* %foreground)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_get_background(%struct._GimpContext* %context, %struct._GimpRGB* %color) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_get_background, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_get_background, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %background = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 12
  %16 = bitcast %struct._GimpRGB* %14 to i8*
  %17 = bitcast %struct._GimpRGB* %background to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_background(%struct._GimpContext* %context, %struct._GimpRGB* %color) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_set_background, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp12 = icmp ne %struct._GimpRGB* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_set_background, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.16
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 3
  %15 = load i32, i32* %defined_props, align 4
  %and = and i32 %15, 128
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 2
  %17 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool18 = icmp ne %struct._GimpContext* %17, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool18, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 2
  %20 = load %struct._GimpContext*, %struct._GimpContext** %parent19, align 8
  store %struct._GimpContext* %20, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %22 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_context_real_set_background(%struct._GimpContext* %21, %struct._GimpRGB* %22)
  br label %return

return:                                           ; preds = %while.end, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_background_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_context_background_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 7), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %background = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 12
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpRGB* %background)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_default_colors(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %bg_context = alloca %struct._GimpContext*, align 8
  %fg = alloca %struct._GimpRGB, align 8
  %bg = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_context_set_default_colors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpContext* %13, %struct._GimpContext** %bg_context, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 3
  %15 = load i32, i32* %defined_props, align 4
  %and = and i32 %15, 64
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 2
  %17 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %17, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 2
  %20 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %20, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.22, %while.end
  %21 = load %struct._GimpContext*, %struct._GimpContext** %bg_context, align 8
  %defined_props15 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 3
  %22 = load i32, i32* %defined_props15, align 4
  %and16 = and i32 %22, 128
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %land.end.21, label %land.rhs.18

land.rhs.18:                                      ; preds = %while.cond.14
  %23 = load %struct._GimpContext*, %struct._GimpContext** %bg_context, align 8
  %parent19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 2
  %24 = load %struct._GimpContext*, %struct._GimpContext** %parent19, align 8
  %tobool20 = icmp ne %struct._GimpContext* %24, null
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.18, %while.cond.14
  %25 = phi i1 [ false, %while.cond.14 ], [ %tobool20, %land.rhs.18 ]
  br i1 %25, label %while.body.22, label %while.end.24

while.body.22:                                    ; preds = %land.end.21
  %26 = load %struct._GimpContext*, %struct._GimpContext** %bg_context, align 8
  %parent23 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %26, i32 0, i32 2
  %27 = load %struct._GimpContext*, %struct._GimpContext** %parent23, align 8
  store %struct._GimpContext* %27, %struct._GimpContext** %bg_context, align 8
  br label %while.cond.14

while.end.24:                                     ; preds = %land.end.21
  call void @gimp_rgba_set(%struct._GimpRGB* %fg, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* %bg, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_real_set_foreground(%struct._GimpContext* %28, %struct._GimpRGB* %fg)
  %29 = load %struct._GimpContext*, %struct._GimpContext** %bg_context, align 8
  call void @gimp_context_real_set_background(%struct._GimpContext* %29, %struct._GimpRGB* %bg)
  br label %return

return:                                           ; preds = %while.end.24, %if.else.9
  ret void
}

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_context_swap_colors(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %bg_context = alloca %struct._GimpContext*, align 8
  %fg = alloca %struct._GimpRGB, align 8
  %bg = alloca %struct._GimpRGB, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_swap_colors, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpContext* %13, %struct._GimpContext** %bg_context, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 3
  %15 = load i32, i32* %defined_props, align 4
  %and = and i32 %15, 64
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 2
  %17 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %17, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 2
  %20 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %20, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.22, %while.end
  %21 = load %struct._GimpContext*, %struct._GimpContext** %bg_context, align 8
  %defined_props15 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 3
  %22 = load i32, i32* %defined_props15, align 4
  %and16 = and i32 %22, 128
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %land.end.21, label %land.rhs.18

land.rhs.18:                                      ; preds = %while.cond.14
  %23 = load %struct._GimpContext*, %struct._GimpContext** %bg_context, align 8
  %parent19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 2
  %24 = load %struct._GimpContext*, %struct._GimpContext** %parent19, align 8
  %tobool20 = icmp ne %struct._GimpContext* %24, null
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.18, %while.cond.14
  %25 = phi i1 [ false, %while.cond.14 ], [ %tobool20, %land.rhs.18 ]
  br i1 %25, label %while.body.22, label %while.end.24

while.body.22:                                    ; preds = %land.end.21
  %26 = load %struct._GimpContext*, %struct._GimpContext** %bg_context, align 8
  %parent23 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %26, i32 0, i32 2
  %27 = load %struct._GimpContext*, %struct._GimpContext** %parent23, align 8
  store %struct._GimpContext* %27, %struct._GimpContext** %bg_context, align 8
  br label %while.cond.14

while.end.24:                                     ; preds = %land.end.21
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %28, %struct._GimpRGB* %fg)
  %29 = load %struct._GimpContext*, %struct._GimpContext** %bg_context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %29, %struct._GimpRGB* %bg)
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_real_set_foreground(%struct._GimpContext* %30, %struct._GimpRGB* %bg)
  %31 = load %struct._GimpContext*, %struct._GimpContext** %bg_context, align 8
  call void @gimp_context_real_set_background(%struct._GimpContext* %31, %struct._GimpRGB* %fg)
  br label %return

return:                                           ; preds = %while.end.24, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define double @gimp_context_get_opacity(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca double, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_get_opacity, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %opacity = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 13
  %14 = load double, double* %opacity, align 8
  store double %14, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load double, double* %retval
  ret double %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_opacity(%struct._GimpContext* %context, double %opacity) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %opacity.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_set_opacity, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 256
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load double, double* %opacity.addr, align 8
  call void @gimp_context_real_set_opacity(%struct._GimpContext* %20, double %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_opacity_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_opacity_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 8), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %opacity = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 13
  %17 = load double, double* %opacity, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, double %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_context_get_paint_mode(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_get_paint_mode, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_mode = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 14
  %14 = load i32, i32* %paint_mode, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_paint_mode(%struct._GimpContext* %context, i32 %paint_mode) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %paint_mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_set_paint_mode, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 512
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load i32, i32* %paint_mode.addr, align 4
  call void @gimp_context_real_set_paint_mode(%struct._GimpContext* %20, i32 %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_paint_mode_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_context_paint_mode_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 9), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_mode = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 14
  %17 = load i32, i32* %paint_mode, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, i32 %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpBrush*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_context_get_brush, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpBrush* null, %struct._GimpBrush** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 15
  %14 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  store %struct._GimpBrush* %14, %struct._GimpBrush** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %retval
  ret %struct._GimpBrush* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_brush(%struct._GimpContext* %context, %struct._GimpBrush* %brush) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_context_set_brush, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %tobool12 = icmp ne %struct._GimpBrush* %13, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.36

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_context_set_brush, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 3
  %28 = load i32, i32* %defined_props, align 4
  %and = and i32 %28, 1024
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 2
  %30 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool41 = icmp ne %struct._GimpContext* %30, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %tobool41, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent42 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %32, i32 0, i32 2
  %33 = load %struct._GimpContext*, %struct._GimpContext** %parent42, align 8
  store %struct._GimpContext* %33, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %35 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  call void @gimp_context_real_set_brush(%struct._GimpContext* %34, %struct._GimpBrush* %35)
  br label %return

return:                                           ; preds = %while.end, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_context_brush_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_context_brush_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 10), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 15
  %17 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpBrush* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpDynamics*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_context_get_dynamics, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 17
  %14 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  store %struct._GimpDynamics* %14, %struct._GimpDynamics** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpDynamics*, %struct._GimpDynamics** %retval
  ret %struct._GimpDynamics* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_dynamics(%struct._GimpContext* %context, %struct._GimpDynamics* %dynamics) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_context_set_dynamics, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %tobool12 = icmp ne %struct._GimpDynamics* %13, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.36

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_context_set_dynamics, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 3
  %28 = load i32, i32* %defined_props, align 4
  %and = and i32 %28, 2048
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 2
  %30 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool41 = icmp ne %struct._GimpContext* %30, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %tobool41, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent42 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %32, i32 0, i32 2
  %33 = load %struct._GimpContext*, %struct._GimpContext** %parent42, align 8
  store %struct._GimpContext* %33, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %35 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  call void @gimp_context_real_set_dynamics(%struct._GimpContext* %34, %struct._GimpDynamics* %35)
  br label %return

return:                                           ; preds = %while.end, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_context_dynamics_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_context_dynamics_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 11), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 17
  %17 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpDynamics* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpPattern*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_get_pattern, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPattern* null, %struct._GimpPattern** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 19
  %14 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  store %struct._GimpPattern* %14, %struct._GimpPattern** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpPattern*, %struct._GimpPattern** %retval
  ret %struct._GimpPattern* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_pattern(%struct._GimpContext* %context, %struct._GimpPattern* %pattern) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_set_pattern, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 4096
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  call void @gimp_context_real_set_pattern(%struct._GimpContext* %20, %struct._GimpPattern* %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_pattern_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_pattern_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 12), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 19
  %17 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpPattern* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_context_get_gradient, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpGradient* null, %struct._GimpGradient** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 21
  %14 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  store %struct._GimpGradient* %14, %struct._GimpGradient** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %retval
  ret %struct._GimpGradient* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_gradient(%struct._GimpContext* %context, %struct._GimpGradient* %gradient) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_context_set_gradient, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 8192
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  call void @gimp_context_real_set_gradient(%struct._GimpContext* %20, %struct._GimpGradient* %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_gradient_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_context_gradient_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 13), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 21
  %17 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpGradient* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpPalette*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_get_palette, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpPalette* null, %struct._GimpPalette** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 23
  %14 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  store %struct._GimpPalette* %14, %struct._GimpPalette** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpPalette*, %struct._GimpPalette** %retval
  ret %struct._GimpPalette* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_palette(%struct._GimpContext* %context, %struct._GimpPalette* %palette) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_set_palette, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 16384
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  call void @gimp_context_real_set_palette(%struct._GimpContext* %20, %struct._GimpPalette* %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_palette_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_palette_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 14), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 23
  %17 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpPalette* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpToolPreset* @gimp_context_get_tool_preset(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpToolPreset*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_get_tool_preset, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpToolPreset* null, %struct._GimpToolPreset** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 25
  %14 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  store %struct._GimpToolPreset* %14, %struct._GimpToolPreset** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %retval
  ret %struct._GimpToolPreset* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_tool_preset(%struct._GimpContext* %context, %struct._GimpToolPreset* %tool_preset) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %tool_preset.addr = alloca %struct._GimpToolPreset*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpToolPreset* %tool_preset, %struct._GimpToolPreset** %tool_preset.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_set_tool_preset, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %tobool12 = icmp ne %struct._GimpToolPreset* %13, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %15 = bitcast %struct._GimpToolPreset* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_tool_preset_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_context_set_tool_preset, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.21, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.39
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 3
  %28 = load i32, i32* %defined_props, align 4
  %and = and i32 %28, 32768
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %29 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %29, i32 0, i32 2
  %30 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool41 = icmp ne %struct._GimpContext* %30, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %tobool41, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent42 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %32, i32 0, i32 2
  %33 = load %struct._GimpContext*, %struct._GimpContext** %parent42, align 8
  store %struct._GimpContext* %33, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %35 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  call void @gimp_context_real_set_tool_preset(%struct._GimpContext* %34, %struct._GimpToolPreset* %35)
  br label %return

return:                                           ; preds = %while.end, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_preset_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_context_tool_preset_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_context_tool_preset_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 15), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 25
  %17 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpToolPreset* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpFont* @gimp_context_get_font(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpFont*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_context_get_font, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpFont* null, %struct._GimpFont** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 27
  %14 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  store %struct._GimpFont* %14, %struct._GimpFont** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpFont*, %struct._GimpFont** %retval
  ret %struct._GimpFont* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_font(%struct._GimpContext* %context, %struct._GimpFont* %font) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %font.addr = alloca %struct._GimpFont*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpFont* %font, %struct._GimpFont** %font.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_context_set_font, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 65536
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  call void @gimp_context_real_set_font(%struct._GimpContext* %20, %struct._GimpFont* %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_context_get_font_name(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca i8*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_context_get_font_name, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 28
  %14 = load i8*, i8** %font_name, align 8
  store i8* %14, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i8*, i8** %retval
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_font_name(%struct._GimpContext* %context, i8* %name) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %name.addr = alloca i8*, align 8
  %font = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_context_set_font_name, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 36
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %16 = load i8*, i8** %name.addr, align 8
  %call11 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %15, i8* %16)
  store %struct._GimpObject* %call11, %struct._GimpObject** %font, align 8
  %17 = load %struct._GimpObject*, %struct._GimpObject** %font, align 8
  %tobool12 = icmp ne %struct._GimpObject* %17, null
  br i1 %tobool12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %19 = load %struct._GimpObject*, %struct._GimpObject** %font, align 8
  %20 = bitcast %struct._GimpObject* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_font_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpFont*
  call void @gimp_context_set_font(%struct._GimpContext* %18, %struct._GimpFont* %21)
  br label %if.end.20

if.else.16:                                       ; preds = %do.end
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call17 = call %struct._GimpFont* @gimp_font_get_standard()
  call void @gimp_context_set_font(%struct._GimpContext* %22, %struct._GimpFont* %call17)
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 28
  %24 = load i8*, i8** %font_name, align 8
  call void @g_free(i8* %24)
  %25 = load i8*, i8** %name.addr, align 8
  %call18 = call noalias i8* @g_strdup(i8* %25)
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %26, i32 0, i32 28
  store i8* %call18, i8** %font_name19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.else.16, %if.then.13
  ret void
}

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_font_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_context_font_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_context_font_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 16), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 27
  %17 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpFont* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpBuffer* @gimp_context_get_buffer(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpBuffer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_context_get_buffer, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 29
  %14 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  store %struct._GimpBuffer* %14, %struct._GimpBuffer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpBuffer*, %struct._GimpBuffer** %retval
  ret %struct._GimpBuffer* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_buffer(%struct._GimpContext* %context, %struct._GimpBuffer* %buffer) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_context_set_buffer, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 131072
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  call void @gimp_context_real_set_buffer(%struct._GimpContext* %20, %struct._GimpBuffer* %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_buffer_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_context_buffer_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 17), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 29
  %17 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpBuffer* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpImagefile*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_context_get_imagefile, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 31
  %14 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  store %struct._GimpImagefile* %14, %struct._GimpImagefile** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpImagefile*, %struct._GimpImagefile** %retval
  ret %struct._GimpImagefile* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_imagefile(%struct._GimpContext* %context, %struct._GimpImagefile* %imagefile) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_context_set_imagefile, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 262144
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  call void @gimp_context_real_set_imagefile(%struct._GimpContext* %20, %struct._GimpImagefile* %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_imagefile_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_context_imagefile_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 18), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 31
  %17 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpImagefile* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GimpTemplate*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_context_get_template, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 33
  %14 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  store %struct._GimpTemplate* %14, %struct._GimpTemplate** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpTemplate*, %struct._GimpTemplate** %retval
  ret %struct._GimpTemplate* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_context_set_template(%struct._GimpContext* %context, %struct._GimpTemplate* %template) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_context_set_template, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %defined_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 3
  %14 = load i32, i32* %defined_props, align 4
  %and = and i32 %14, 524288
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 2
  %16 = load %struct._GimpContext*, %struct._GimpContext** %parent, align 8
  %tobool12 = icmp ne %struct._GimpContext* %16, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %parent13 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 2
  %19 = load %struct._GimpContext*, %struct._GimpContext** %parent13, align 8
  store %struct._GimpContext* %19, %struct._GimpContext** %context.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  call void @gimp_context_real_set_template(%struct._GimpContext* %20, %struct._GimpTemplate* %21)
  br label %return

return:                                           ; preds = %while.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_context_template_changed(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = bitcast %struct._GimpContext* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_context_template_changed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 19), align 4
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 33
  %17 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0, %struct._GimpTemplate* %17)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_class_init(%struct._GimpContextClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContextClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %black = alloca %struct._GimpRGB, align 8
  %white = alloca %struct._GimpRGB, align 8
  store %struct._GimpContextClass* %klass, %struct._GimpContextClass** %klass.addr, align 8
  %0 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContextClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpContextClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %black, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @gimp_rgba_set(%struct._GimpRGB* %white, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %6 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpContextClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gimp_image_get_type() #8
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i64 %8, i32 1, i32 280, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call3)
  store i32 %call4, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 2), align 4
  %9 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpContextClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gimp_object_get_type() #8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i64 %11, i32 1, i32 288, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 3), align 4
  %12 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpContextClass* %12 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type8, align 8
  %call9 = call i64 @gimp_tool_info_get_type() #8
  %call10 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i64 %14, i32 1, i32 296, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call9)
  store i32 %call10, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 4), align 4
  %15 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpContextClass* %15 to %struct._GTypeClass*
  %g_type11 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type11, align 8
  %call12 = call i64 @gimp_paint_info_get_type() #8
  %call13 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i64 %17, i32 1, i32 304, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call12)
  store i32 %call13, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 5), align 4
  %18 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpContextClass* %18 to %struct._GTypeClass*
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type14, align 8
  %call15 = call i64 @gimp_rgb_get_type() #8
  %or = or i64 %call15, 1
  %call16 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i64 %20, i32 1, i32 312, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__BOXED, i64 4, i32 1, i64 %or)
  store i32 %call16, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 6), align 4
  %21 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpContextClass* %21 to %struct._GTypeClass*
  %g_type17 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type17, align 8
  %call18 = call i64 @gimp_rgb_get_type() #8
  %or19 = or i64 %call18, 1
  %call20 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i64 %23, i32 1, i32 320, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__BOXED, i64 4, i32 1, i64 %or19)
  store i32 %call20, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 7), align 4
  %24 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %25 = bitcast %struct._GimpContextClass* %24 to %struct._GTypeClass*
  %g_type21 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type21, align 8
  %call22 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i64 %26, i32 1, i32 328, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__DOUBLE, i64 4, i32 1, i64 60)
  store i32 %call22, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 8), align 4
  %27 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %28 = bitcast %struct._GimpContextClass* %27 to %struct._GTypeClass*
  %g_type23 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type23, align 8
  %call24 = call i64 @gimp_layer_mode_effects_get_type() #8
  %call25 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i64 %29, i32 1, i32 336, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__ENUM, i64 4, i32 1, i64 %call24)
  store i32 %call25, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 9), align 4
  %30 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %31 = bitcast %struct._GimpContextClass* %30 to %struct._GTypeClass*
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type26, align 8
  %call27 = call i64 @gimp_brush_get_type() #8
  %call28 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i64 %32, i32 1, i32 344, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call27)
  store i32 %call28, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 10), align 4
  %33 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %34 = bitcast %struct._GimpContextClass* %33 to %struct._GTypeClass*
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type29, align 8
  %call30 = call i64 @gimp_dynamics_get_type() #8
  %call31 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i64 %35, i32 1, i32 352, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call30)
  store i32 %call31, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 11), align 4
  %36 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %37 = bitcast %struct._GimpContextClass* %36 to %struct._GTypeClass*
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type32, align 8
  %call33 = call i64 @gimp_pattern_get_type() #8
  %call34 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i64 %38, i32 1, i32 360, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call33)
  store i32 %call34, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 12), align 4
  %39 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %40 = bitcast %struct._GimpContextClass* %39 to %struct._GTypeClass*
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type35, align 8
  %call36 = call i64 @gimp_gradient_get_type() #8
  %call37 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i64 %41, i32 1, i32 368, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call36)
  store i32 %call37, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 13), align 4
  %42 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %43 = bitcast %struct._GimpContextClass* %42 to %struct._GTypeClass*
  %g_type38 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type38, align 8
  %call39 = call i64 @gimp_palette_get_type() #8
  %call40 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i64 %44, i32 1, i32 376, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call39)
  store i32 %call40, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 14), align 4
  %45 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %46 = bitcast %struct._GimpContextClass* %45 to %struct._GTypeClass*
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type41, align 8
  %call42 = call i64 @gimp_tool_preset_get_type() #8
  %call43 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i64 %47, i32 1, i32 384, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call42)
  store i32 %call43, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 15), align 4
  %48 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %49 = bitcast %struct._GimpContextClass* %48 to %struct._GTypeClass*
  %g_type44 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type44, align 8
  %call45 = call i64 @gimp_font_get_type() #8
  %call46 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i64 %50, i32 1, i32 392, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call45)
  store i32 %call46, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 16), align 4
  %51 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %52 = bitcast %struct._GimpContextClass* %51 to %struct._GTypeClass*
  %g_type47 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %52, i32 0, i32 0
  %53 = load i64, i64* %g_type47, align 8
  %call48 = call i64 @gimp_buffer_get_type() #8
  %call49 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i64 %53, i32 1, i32 400, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call48)
  store i32 %call49, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 17), align 4
  %54 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %55 = bitcast %struct._GimpContextClass* %54 to %struct._GTypeClass*
  %g_type50 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %55, i32 0, i32 0
  %56 = load i64, i64* %g_type50, align 8
  %call51 = call i64 @gimp_imagefile_get_type() #8
  %call52 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i64 %56, i32 1, i32 408, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call51)
  store i32 %call52, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 18), align 4
  %57 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %58 = bitcast %struct._GimpContextClass* %57 to %struct._GTypeClass*
  %g_type53 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %58, i32 0, i32 0
  %59 = load i64, i64* %g_type53, align 8
  %call54 = call i64 @gimp_template_get_type() #8
  %call55 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i64 %59, i32 1, i32 416, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call54)
  store i32 %call55, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @gimp_context_signals, i32 0, i64 19), align 4
  %60 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %60, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_context_constructed, void (%struct._GObject*)** %constructed, align 8
  %61 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %61, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_context_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %62 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %62, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_context_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %63 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %63, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_context_dispose, void (%struct._GObject*)** %dispose, align 8
  %64 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %64, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_context_finalize, void (%struct._GObject*)** %finalize, align 8
  %65 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %65, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_context_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %66 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %image_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %66, i32 0, i32 1
  store void (%struct._GimpContext*, %struct._GimpImage*)* null, void (%struct._GimpContext*, %struct._GimpImage*)** %image_changed, align 8
  %67 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %display_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %67, i32 0, i32 2
  store void (%struct._GimpContext*, i8*)* null, void (%struct._GimpContext*, i8*)** %display_changed, align 8
  %68 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %tool_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %68, i32 0, i32 3
  store void (%struct._GimpContext*, %struct._GimpToolInfo*)* null, void (%struct._GimpContext*, %struct._GimpToolInfo*)** %tool_changed, align 8
  %69 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %paint_info_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %69, i32 0, i32 4
  store void (%struct._GimpContext*, %struct._GimpPaintInfo*)* null, void (%struct._GimpContext*, %struct._GimpPaintInfo*)** %paint_info_changed, align 8
  %70 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %foreground_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %70, i32 0, i32 5
  store void (%struct._GimpContext*, %struct._GimpRGB*)* null, void (%struct._GimpContext*, %struct._GimpRGB*)** %foreground_changed, align 8
  %71 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %background_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %71, i32 0, i32 6
  store void (%struct._GimpContext*, %struct._GimpRGB*)* null, void (%struct._GimpContext*, %struct._GimpRGB*)** %background_changed, align 8
  %72 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %opacity_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %72, i32 0, i32 7
  store void (%struct._GimpContext*, double)* null, void (%struct._GimpContext*, double)** %opacity_changed, align 8
  %73 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %paint_mode_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %73, i32 0, i32 8
  store void (%struct._GimpContext*, i32)* null, void (%struct._GimpContext*, i32)** %paint_mode_changed, align 8
  %74 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %brush_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %74, i32 0, i32 9
  store void (%struct._GimpContext*, %struct._GimpBrush*)* null, void (%struct._GimpContext*, %struct._GimpBrush*)** %brush_changed, align 8
  %75 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %dynamics_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %75, i32 0, i32 10
  store void (%struct._GimpContext*, %struct._GimpDynamics*)* null, void (%struct._GimpContext*, %struct._GimpDynamics*)** %dynamics_changed, align 8
  %76 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %pattern_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %76, i32 0, i32 11
  store void (%struct._GimpContext*, %struct._GimpPattern*)* null, void (%struct._GimpContext*, %struct._GimpPattern*)** %pattern_changed, align 8
  %77 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %gradient_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %77, i32 0, i32 12
  store void (%struct._GimpContext*, %struct._GimpGradient*)* null, void (%struct._GimpContext*, %struct._GimpGradient*)** %gradient_changed, align 8
  %78 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %palette_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %78, i32 0, i32 13
  store void (%struct._GimpContext*, %struct._GimpPalette*)* null, void (%struct._GimpContext*, %struct._GimpPalette*)** %palette_changed, align 8
  %79 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %tool_preset_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %79, i32 0, i32 14
  store void (%struct._GimpContext*, %struct._GimpToolPreset*)* null, void (%struct._GimpContext*, %struct._GimpToolPreset*)** %tool_preset_changed, align 8
  %80 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %font_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %80, i32 0, i32 15
  store void (%struct._GimpContext*, %struct._GimpFont*)* null, void (%struct._GimpContext*, %struct._GimpFont*)** %font_changed, align 8
  %81 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %buffer_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %81, i32 0, i32 16
  store void (%struct._GimpContext*, %struct._GimpBuffer*)* null, void (%struct._GimpContext*, %struct._GimpBuffer*)** %buffer_changed, align 8
  %82 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %imagefile_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %82, i32 0, i32 17
  store void (%struct._GimpContext*, %struct._GimpImagefile*)* null, void (%struct._GimpContext*, %struct._GimpImagefile*)** %imagefile_changed, align 8
  %83 = load %struct._GimpContextClass*, %struct._GimpContextClass** %klass.addr, align 8
  %template_changed = getelementptr inbounds %struct._GimpContextClass, %struct._GimpContextClass* %83, i32 0, i32 18
  store void (%struct._GimpContext*, %struct._GimpTemplate*)* null, void (%struct._GimpContext*, %struct._GimpTemplate*)** %template_changed, align 8
  %call56 = call i64 @gimp_image_get_type() #8
  store i64 %call56, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 2), align 8
  %call57 = call i64 @gimp_tool_info_get_type() #8
  store i64 %call57, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 4), align 8
  %call58 = call i64 @gimp_paint_info_get_type() #8
  store i64 %call58, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 5), align 8
  %call59 = call i64 @gimp_brush_get_type() #8
  store i64 %call59, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 10), align 8
  %call60 = call i64 @gimp_dynamics_get_type() #8
  store i64 %call60, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 11), align 8
  %call61 = call i64 @gimp_pattern_get_type() #8
  store i64 %call61, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 12), align 8
  %call62 = call i64 @gimp_gradient_get_type() #8
  store i64 %call62, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 13), align 8
  %call63 = call i64 @gimp_palette_get_type() #8
  store i64 %call63, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 14), align 8
  %call64 = call i64 @gimp_tool_preset_get_type() #8
  store i64 %call64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 15), align 8
  %call65 = call i64 @gimp_font_get_type() #8
  store i64 %call65, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 16), align 8
  %call66 = call i64 @gimp_buffer_get_type() #8
  store i64 %call66, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 17), align 8
  %call67 = call i64 @gimp_imagefile_get_type() #8
  store i64 %call67, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 18), align 8
  %call68 = call i64 @gimp_template_get_type() #8
  store i64 %call68, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @gimp_context_prop_types, i32 0, i64 19), align 8
  %84 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call69 = call i64 @gimp_get_type() #8
  %call70 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call69, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %84, i32 1, %struct._GParamSpec* %call70)
  %85 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %86 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 2), align 8
  %call71 = call i64 @gimp_image_get_type() #8
  %call72 = call %struct._GParamSpec* @g_param_spec_object(i8* %86, i8* null, i8* null, i64 %call71, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %85, i32 2, %struct._GParamSpec* %call72)
  %87 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %88 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 3), align 8
  %call73 = call i64 @gimp_object_get_type() #8
  %call74 = call %struct._GParamSpec* @g_param_spec_object(i8* %88, i8* null, i8* null, i64 %call73, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %87, i32 3, %struct._GParamSpec* %call74)
  %89 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %90 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 4), align 8
  %call75 = call i64 @gimp_tool_info_get_type() #8
  %call76 = call %struct._GParamSpec* @g_param_spec_object(i8* %90, i8* null, i8* null, i64 %call75, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %89, i32 4, %struct._GParamSpec* %call76)
  %91 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %92 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 5), align 8
  %call77 = call i64 @gimp_paint_info_get_type() #8
  %call78 = call %struct._GParamSpec* @g_param_spec_object(i8* %92, i8* null, i8* null, i64 %call77, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %91, i32 5, %struct._GParamSpec* %call78)
  %93 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %94 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 6), align 8
  %call79 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* %94, i8* null, i8* null, i32 0, %struct._GimpRGB* %black, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %93, i32 6, %struct._GParamSpec* %call79)
  %95 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %96 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 7), align 8
  %call80 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* %96, i8* null, i8* null, i32 0, %struct._GimpRGB* %white, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %95, i32 7, %struct._GParamSpec* %call80)
  %97 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %98 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 8), align 8
  %call81 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0)) #5
  %call82 = call %struct._GParamSpec* @g_param_spec_double(i8* %98, i8* null, i8* %call81, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %97, i32 8, %struct._GParamSpec* %call82)
  %99 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %100 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 9), align 8
  %call83 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0)) #5
  %call84 = call i64 @gimp_layer_mode_effects_get_type() #8
  %call85 = call %struct._GParamSpec* @g_param_spec_enum(i8* %100, i8* null, i8* %call83, i64 %call84, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %99, i32 9, %struct._GParamSpec* %call85)
  %101 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %102 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 10), align 8
  %call86 = call i64 @gimp_brush_get_type() #8
  %call87 = call %struct._GParamSpec* @g_param_spec_object(i8* %102, i8* null, i8* null, i64 %call86, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %101, i32 10, %struct._GParamSpec* %call87)
  %103 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %104 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 11), align 8
  %call88 = call i64 @gimp_dynamics_get_type() #8
  %call89 = call %struct._GParamSpec* @g_param_spec_object(i8* %104, i8* null, i8* null, i64 %call88, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %103, i32 11, %struct._GParamSpec* %call89)
  %105 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %106 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 12), align 8
  %call90 = call i64 @gimp_pattern_get_type() #8
  %call91 = call %struct._GParamSpec* @g_param_spec_object(i8* %106, i8* null, i8* null, i64 %call90, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %105, i32 12, %struct._GParamSpec* %call91)
  %107 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %108 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 13), align 8
  %call92 = call i64 @gimp_gradient_get_type() #8
  %call93 = call %struct._GParamSpec* @g_param_spec_object(i8* %108, i8* null, i8* null, i64 %call92, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %107, i32 13, %struct._GParamSpec* %call93)
  %109 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %110 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 14), align 8
  %call94 = call i64 @gimp_palette_get_type() #8
  %call95 = call %struct._GParamSpec* @g_param_spec_object(i8* %110, i8* null, i8* null, i64 %call94, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %109, i32 14, %struct._GParamSpec* %call95)
  %111 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %112 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 15), align 8
  %call96 = call i64 @gimp_tool_preset_get_type() #8
  %call97 = call %struct._GParamSpec* @g_param_spec_object(i8* %112, i8* null, i8* null, i64 %call96, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %111, i32 15, %struct._GParamSpec* %call97)
  %113 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %114 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 16), align 8
  %call98 = call i64 @gimp_font_get_type() #8
  %call99 = call %struct._GParamSpec* @g_param_spec_object(i8* %114, i8* null, i8* null, i64 %call98, i32 483)
  call void @g_object_class_install_property(%struct._GObjectClass* %113, i32 16, %struct._GParamSpec* %call99)
  %115 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %116 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 17), align 8
  %call100 = call i64 @gimp_buffer_get_type() #8
  %call101 = call %struct._GParamSpec* @g_param_spec_object(i8* %116, i8* null, i8* null, i64 %call100, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %115, i32 17, %struct._GParamSpec* %call101)
  %117 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %118 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 18), align 8
  %call102 = call i64 @gimp_imagefile_get_type() #8
  %call103 = call %struct._GParamSpec* @g_param_spec_object(i8* %118, i8* null, i8* null, i64 %call102, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %117, i32 18, %struct._GParamSpec* %call103)
  %119 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %120 = load i8*, i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @gimp_context_prop_names, i32 0, i64 19), align 8
  %call104 = call i64 @gimp_template_get_type() #8
  %call105 = call %struct._GParamSpec* @g_param_spec_object(i8* %120, i8* null, i8* null, i64 %call104, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %119, i32 19, %struct._GParamSpec* %call105)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare void @g_cclosure_marshal_VOID__BOXED(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #2

declare void @g_cclosure_marshal_VOID__DOUBLE(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__ENUM(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mode_effects_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_imagefile_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_template_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_context_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_context_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @gimp_context_parent_class, align 8
  %5 = bitcast i8* %4 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %5, i64 80)
  %6 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  %constructed2 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  %7 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed2, align 8
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %7(%struct._GObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %10 = bitcast %struct._GObject* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_context_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContext*
  %gimp5 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp5, align 8
  store %struct._Gimp* %12, %struct._Gimp** %gimp, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gimp_get_type() #8
  store i64 %call6, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool7 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call13, i32* %__r, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool16 = icmp ne i32 %25, 0
  br i1 %tobool16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.15
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.15
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 782, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_context_constructed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)) #10
  unreachable

if.end.19:                                        ; preds = %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %context_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 50
  %27 = load %struct._GList*, %struct._GList** %context_list, align 8
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %29 = bitcast %struct._GObject* %28 to i8*
  %call20 = call %struct._GList* @g_list_prepend(%struct._GList* %27, i8* %29)
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %context_list21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 50
  store %struct._GList* %call20, %struct._GList** %context_list21, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %31, i32 0, i32 26
  %32 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %33 = bitcast %struct._GimpContainer* %32 to i8*
  %34 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %35 = bitcast %struct._GObject* %34 to i8*
  %call22 = call i64 @g_signal_connect_object(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpImage*, %struct._GimpContext*)* @gimp_context_image_removed to void ()*), i8* %35, i32 0)
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 31
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %38 = bitcast %struct._GimpContainer* %37 to i8*
  %39 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %40 = bitcast %struct._GObject* %39 to i8*
  %call23 = call i64 @g_signal_connect_object(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, i8*, %struct._GimpContext*)* @gimp_context_display_removed to void ()*), i8* %40, i32 0)
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %41, i32 0, i32 45
  %42 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %43 = bitcast %struct._GimpContainer* %42 to i8*
  %44 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %45 = bitcast %struct._GObject* %44 to i8*
  %call24 = call i64 @g_signal_connect_object(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContext*)* @gimp_context_tool_removed to void ()*), i8* %45, i32 0)
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list25 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %46, i32 0, i32 45
  %47 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list25, align 8
  %48 = bitcast %struct._GimpContainer* %47 to i8*
  %49 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %50 = bitcast %struct._GObject* %49 to i8*
  %call26 = call i64 @g_signal_connect_object(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_tool_list_thaw to void ()*), i8* %50, i32 0)
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %51, i32 0, i32 21
  %52 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  %53 = bitcast %struct._GimpContainer* %52 to i8*
  %54 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %55 = bitcast %struct._GObject* %54 to i8*
  %call27 = call i64 @g_signal_connect_object(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpContext*)* @gimp_context_paint_info_removed to void ()*), i8* %55, i32 0)
  %56 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %paint_info_list28 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %56, i32 0, i32 21
  %57 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list28, align 8
  %58 = bitcast %struct._GimpContainer* %57 to i8*
  %59 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %60 = bitcast %struct._GObject* %59 to i8*
  %call29 = call i64 @g_signal_connect_object(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_paint_info_list_thaw to void ()*), i8* %60, i32 0)
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %61, i32 0, i32 37
  %62 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %call30 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %62)
  store %struct._GimpContainer* %call30, %struct._GimpContainer** %container, align 8
  %63 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %64 = bitcast %struct._GimpContainer* %63 to i8*
  %65 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %66 = bitcast %struct._GObject* %65 to i8*
  %call31 = call i64 @g_signal_connect_object(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpBrush*, %struct._GimpContext*)* @gimp_context_brush_removed to void ()*), i8* %66, i32 0)
  %67 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %68 = bitcast %struct._GimpContainer* %67 to i8*
  %69 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %70 = bitcast %struct._GObject* %69 to i8*
  %call32 = call i64 @g_signal_connect_object(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_brush_list_thaw to void ()*), i8* %70, i32 0)
  %71 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %71, i32 0, i32 38
  %72 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %call33 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %72)
  store %struct._GimpContainer* %call33, %struct._GimpContainer** %container, align 8
  %73 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %74 = bitcast %struct._GimpContainer* %73 to i8*
  %75 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %76 = bitcast %struct._GObject* %75 to i8*
  %call34 = call i64 @g_signal_connect_object(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpDynamics*, %struct._GimpContext*)* @gimp_context_dynamics_removed to void ()*), i8* %76, i32 0)
  %77 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %78 = bitcast %struct._GimpContainer* %77 to i8*
  %79 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %80 = bitcast %struct._GObject* %79 to i8*
  %call35 = call i64 @g_signal_connect_object(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_dynamics_list_thaw to void ()*), i8* %80, i32 0)
  %81 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %81, i32 0, i32 39
  %82 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %call36 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %82)
  store %struct._GimpContainer* %call36, %struct._GimpContainer** %container, align 8
  %83 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %84 = bitcast %struct._GimpContainer* %83 to i8*
  %85 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %86 = bitcast %struct._GObject* %85 to i8*
  %call37 = call i64 @g_signal_connect_object(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpPattern*, %struct._GimpContext*)* @gimp_context_pattern_removed to void ()*), i8* %86, i32 0)
  %87 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %88 = bitcast %struct._GimpContainer* %87 to i8*
  %89 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %90 = bitcast %struct._GObject* %89 to i8*
  %call38 = call i64 @g_signal_connect_object(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_pattern_list_thaw to void ()*), i8* %90, i32 0)
  %91 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %91, i32 0, i32 40
  %92 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %call39 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %92)
  store %struct._GimpContainer* %call39, %struct._GimpContainer** %container, align 8
  %93 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %94 = bitcast %struct._GimpContainer* %93 to i8*
  %95 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %96 = bitcast %struct._GObject* %95 to i8*
  %call40 = call i64 @g_signal_connect_object(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpGradient*, %struct._GimpContext*)* @gimp_context_gradient_removed to void ()*), i8* %96, i32 0)
  %97 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %98 = bitcast %struct._GimpContainer* %97 to i8*
  %99 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %100 = bitcast %struct._GObject* %99 to i8*
  %call41 = call i64 @g_signal_connect_object(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_gradient_list_thaw to void ()*), i8* %100, i32 0)
  %101 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %101, i32 0, i32 41
  %102 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call42 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %102)
  store %struct._GimpContainer* %call42, %struct._GimpContainer** %container, align 8
  %103 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %104 = bitcast %struct._GimpContainer* %103 to i8*
  %105 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %106 = bitcast %struct._GObject* %105 to i8*
  %call43 = call i64 @g_signal_connect_object(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpPalette*, %struct._GimpContext*)* @gimp_context_palette_removed to void ()*), i8* %106, i32 0)
  %107 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %108 = bitcast %struct._GimpContainer* %107 to i8*
  %109 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %110 = bitcast %struct._GObject* %109 to i8*
  %call44 = call i64 @g_signal_connect_object(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_palette_list_thaw to void ()*), i8* %110, i32 0)
  %111 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %111, i32 0, i32 42
  %112 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %call45 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %112)
  store %struct._GimpContainer* %call45, %struct._GimpContainer** %container, align 8
  %113 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %114 = bitcast %struct._GimpContainer* %113 to i8*
  %115 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %116 = bitcast %struct._GObject* %115 to i8*
  %call46 = call i64 @g_signal_connect_object(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpToolPreset*, %struct._GimpContext*)* @gimp_context_tool_preset_removed to void ()*), i8* %116, i32 0)
  %117 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %118 = bitcast %struct._GimpContainer* %117 to i8*
  %119 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %120 = bitcast %struct._GObject* %119 to i8*
  %call47 = call i64 @g_signal_connect_object(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_tool_preset_list_thaw to void ()*), i8* %120, i32 0)
  %121 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %121, i32 0, i32 36
  %122 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %123 = bitcast %struct._GimpContainer* %122 to i8*
  %124 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %125 = bitcast %struct._GObject* %124 to i8*
  %call48 = call i64 @g_signal_connect_object(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpFont*, %struct._GimpContext*)* @gimp_context_font_removed to void ()*), i8* %125, i32 0)
  %126 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts49 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %126, i32 0, i32 36
  %127 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts49, align 8
  %128 = bitcast %struct._GimpContainer* %127 to i8*
  %129 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %130 = bitcast %struct._GObject* %129 to i8*
  %call50 = call i64 @g_signal_connect_object(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_font_list_thaw to void ()*), i8* %130, i32 0)
  %131 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %131, i32 0, i32 35
  %132 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %133 = bitcast %struct._GimpContainer* %132 to i8*
  %134 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %135 = bitcast %struct._GObject* %134 to i8*
  %call51 = call i64 @g_signal_connect_object(i8* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpBuffer*, %struct._GimpContext*)* @gimp_context_buffer_removed to void ()*), i8* %135, i32 0)
  %136 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers52 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %136, i32 0, i32 35
  %137 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers52, align 8
  %138 = bitcast %struct._GimpContainer* %137 to i8*
  %139 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %140 = bitcast %struct._GObject* %139 to i8*
  %call53 = call i64 @g_signal_connect_object(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_buffer_list_thaw to void ()*), i8* %140, i32 0)
  %141 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %141, i32 0, i32 47
  %142 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %143 = bitcast %struct._GimpContainer* %142 to i8*
  %144 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %145 = bitcast %struct._GObject* %144 to i8*
  %call54 = call i64 @g_signal_connect_object(i8* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpImagefile*, %struct._GimpContext*)* @gimp_context_imagefile_removed to void ()*), i8* %145, i32 0)
  %146 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents55 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %146, i32 0, i32 47
  %147 = load %struct._GimpContainer*, %struct._GimpContainer** %documents55, align 8
  %148 = bitcast %struct._GimpContainer* %147 to i8*
  %149 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %150 = bitcast %struct._GObject* %149 to i8*
  %call56 = call i64 @g_signal_connect_object(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_imagefile_list_thaw to void ()*), i8* %150, i32 0)
  %151 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %151, i32 0, i32 48
  %152 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %153 = bitcast %struct._GimpContainer* %152 to i8*
  %154 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %155 = bitcast %struct._GObject* %154 to i8*
  %call57 = call i64 @g_signal_connect_object(i8* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpTemplate*, %struct._GimpContext*)* @gimp_context_template_removed to void ()*), i8* %155, i32 0)
  %156 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates58 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %156, i32 0, i32 48
  %157 = load %struct._GimpContainer*, %struct._GimpContainer** %templates58, align 8
  %158 = bitcast %struct._GimpContainer* %157 to i8*
  %159 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %160 = bitcast %struct._GObject* %159 to i8*
  %call59 = call i64 @g_signal_connect_object(i8* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainer*, %struct._GimpContext*)* @gimp_context_template_list_thaw to void ()*), i8* %160, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.15
    i32 9, label %sw.bb.17
    i32 10, label %sw.bb.19
    i32 11, label %sw.bb.21
    i32 12, label %sw.bb.23
    i32 13, label %sw.bb.25
    i32 14, label %sw.bb.27
    i32 15, label %sw.bb.29
    i32 16, label %sw.bb.31
    i32 17, label %sw.bb.33
    i32 18, label %sw.bb.35
    i32 19, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 1
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_object(%struct._GValue* %8)
  %9 = bitcast i8* %call4 to %struct._GimpImage*
  call void @gimp_context_set_image(%struct._GimpContext* %7, %struct._GimpImage* %9)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_object(%struct._GValue* %11)
  call void @gimp_context_set_display(%struct._GimpContext* %10, i8* %call6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_get_object(%struct._GValue* %13)
  %14 = bitcast i8* %call8 to %struct._GimpToolInfo*
  call void @gimp_context_set_tool(%struct._GimpContext* %12, %struct._GimpToolInfo* %14)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_get_object(%struct._GValue* %16)
  %17 = bitcast i8* %call10 to %struct._GimpPaintInfo*
  call void @gimp_context_set_paint_info(%struct._GimpContext* %15, %struct._GimpPaintInfo* %17)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i8* @g_value_get_boxed(%struct._GValue* %19)
  %20 = bitcast i8* %call12 to %struct._GimpRGB*
  call void @gimp_context_set_foreground(%struct._GimpContext* %18, %struct._GimpRGB* %20)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i8* @g_value_get_boxed(%struct._GValue* %22)
  %23 = bitcast i8* %call14 to %struct._GimpRGB*
  call void @gimp_context_set_background(%struct._GimpContext* %21, %struct._GimpRGB* %23)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call double @g_value_get_double(%struct._GValue* %25)
  call void @gimp_context_set_opacity(%struct._GimpContext* %24, double %call16)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %27)
  call void @gimp_context_set_paint_mode(%struct._GimpContext* %26, i32 %call18)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %29 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i8* @g_value_get_object(%struct._GValue* %29)
  %30 = bitcast i8* %call20 to %struct._GimpBrush*
  call void @gimp_context_set_brush(%struct._GimpContext* %28, %struct._GimpBrush* %30)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i8* @g_value_get_object(%struct._GValue* %32)
  %33 = bitcast i8* %call22 to %struct._GimpDynamics*
  call void @gimp_context_set_dynamics(%struct._GimpContext* %31, %struct._GimpDynamics* %33)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %34 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %35 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i8* @g_value_get_object(%struct._GValue* %35)
  %36 = bitcast i8* %call24 to %struct._GimpPattern*
  call void @gimp_context_set_pattern(%struct._GimpContext* %34, %struct._GimpPattern* %36)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %38 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call26 = call i8* @g_value_get_object(%struct._GValue* %38)
  %39 = bitcast i8* %call26 to %struct._GimpGradient*
  call void @gimp_context_set_gradient(%struct._GimpContext* %37, %struct._GimpGradient* %39)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %40 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %41 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call28 = call i8* @g_value_get_object(%struct._GValue* %41)
  %42 = bitcast i8* %call28 to %struct._GimpPalette*
  call void @gimp_context_set_palette(%struct._GimpContext* %40, %struct._GimpPalette* %42)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %44 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call30 = call i8* @g_value_get_object(%struct._GValue* %44)
  %45 = bitcast i8* %call30 to %struct._GimpToolPreset*
  call void @gimp_context_set_tool_preset(%struct._GimpContext* %43, %struct._GimpToolPreset* %45)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %47 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call32 = call i8* @g_value_get_object(%struct._GValue* %47)
  %48 = bitcast i8* %call32 to %struct._GimpFont*
  call void @gimp_context_set_font(%struct._GimpContext* %46, %struct._GimpFont* %48)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %50 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call34 = call i8* @g_value_get_object(%struct._GValue* %50)
  %51 = bitcast i8* %call34 to %struct._GimpBuffer*
  call void @gimp_context_set_buffer(%struct._GimpContext* %49, %struct._GimpBuffer* %51)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %52 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %53 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call36 = call i8* @g_value_get_object(%struct._GValue* %53)
  %54 = bitcast i8* %call36 to %struct._GimpImagefile*
  call void @gimp_context_set_imagefile(%struct._GimpContext* %52, %struct._GimpImagefile* %54)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %56 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call38 = call i8* @g_value_get_object(%struct._GValue* %56)
  %57 = bitcast i8* %call38 to %struct._GimpTemplate*
  call void @gimp_context_set_template(%struct._GimpContext* %55, %struct._GimpTemplate* %57)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %58 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %58, %struct._GObject** %_glib__object, align 8
  %59 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %59, %struct._GParamSpec** %_glib__pspec, align 8
  %60 = load i32, i32* %property_id.addr, align 4
  store i32 %60, i32* %_glib__property_id, align 4
  %61 = load i32, i32* %_glib__property_id, align 4
  %62 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %62, i32 0, i32 1
  %63 = load i8*, i8** %name, align 8
  %64 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %65 = bitcast %struct._GParamSpec* %64 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %65, i32 0, i32 0
  %66 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %66, i32 0, i32 0
  %67 = load i64, i64* %g_type, align 8
  %call39 = call i8* @g_type_name(i64 %67)
  %68 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %69 = bitcast %struct._GObject* %68 to %struct._GTypeInstance*
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %69, i32 0, i32 0
  %70 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %70, i32 0, i32 0
  %71 = load i64, i64* %g_type41, align 8
  %call42 = call i8* @g_type_name(i64 %71)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %61, i8* %63, i8* %call39, i8* %call42)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.37, %sw.bb.35, %sw.bb.33, %sw.bb.31, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %color12 = alloca %struct._GimpRGB, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.8
    i32 6, label %sw.bb.10
    i32 7, label %sw.bb.11
    i32 8, label %sw.bb.13
    i32 9, label %sw.bb.15
    i32 10, label %sw.bb.17
    i32 11, label %sw.bb.19
    i32 12, label %sw.bb.21
    i32 13, label %sw.bb.23
    i32 14, label %sw.bb.25
    i32 15, label %sw.bb.27
    i32 16, label %sw.bb.29
    i32 17, label %sw.bb.31
    i32 18, label %sw.bb.33
    i32 19, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call3 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %9)
  %10 = bitcast %struct._GimpImage* %call3 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %10)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call i8* @gimp_context_get_display(%struct._GimpContext* %12)
  call void @g_value_set_object(%struct._GValue* %11, i8* %call5)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call7 = call %struct._GimpToolInfo* @gimp_context_get_tool(%struct._GimpContext* %14)
  %15 = bitcast %struct._GimpToolInfo* %call7 to i8*
  call void @g_value_set_object(%struct._GValue* %13, i8* %15)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call9 = call %struct._GimpPaintInfo* @gimp_context_get_paint_info(%struct._GimpContext* %17)
  %18 = bitcast %struct._GimpPaintInfo* %call9 to i8*
  call void @g_value_set_object(%struct._GValue* %16, i8* %18)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_foreground(%struct._GimpContext* %19, %struct._GimpRGB* %color)
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %21 = bitcast %struct._GimpRGB* %color to i8*
  call void @g_value_set_boxed(%struct._GValue* %20, i8* %21)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_get_background(%struct._GimpContext* %22, %struct._GimpRGB* %color12)
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %24 = bitcast %struct._GimpRGB* %color12 to i8*
  call void @g_value_set_boxed(%struct._GValue* %23, i8* %24)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call14 = call double @gimp_context_get_opacity(%struct._GimpContext* %26)
  call void @g_value_set_double(%struct._GValue* %25, double %call14)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call16 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %28)
  call void @g_value_set_enum(%struct._GValue* %27, i32 %call16)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %29 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call18 = call %struct._GimpBrush* @gimp_context_get_brush(%struct._GimpContext* %30)
  %31 = bitcast %struct._GimpBrush* %call18 to i8*
  call void @g_value_set_object(%struct._GValue* %29, i8* %31)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call20 = call %struct._GimpDynamics* @gimp_context_get_dynamics(%struct._GimpContext* %33)
  %34 = bitcast %struct._GimpDynamics* %call20 to i8*
  call void @g_value_set_object(%struct._GValue* %32, i8* %34)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %35 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call22 = call %struct._GimpPattern* @gimp_context_get_pattern(%struct._GimpContext* %36)
  %37 = bitcast %struct._GimpPattern* %call22 to i8*
  call void @g_value_set_object(%struct._GValue* %35, i8* %37)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %38 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call24 = call %struct._GimpGradient* @gimp_context_get_gradient(%struct._GimpContext* %39)
  %40 = bitcast %struct._GimpGradient* %call24 to i8*
  call void @g_value_set_object(%struct._GValue* %38, i8* %40)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %41 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call26 = call %struct._GimpPalette* @gimp_context_get_palette(%struct._GimpContext* %42)
  %43 = bitcast %struct._GimpPalette* %call26 to i8*
  call void @g_value_set_object(%struct._GValue* %41, i8* %43)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %44 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call28 = call %struct._GimpToolPreset* @gimp_context_get_tool_preset(%struct._GimpContext* %45)
  %46 = bitcast %struct._GimpToolPreset* %call28 to i8*
  call void @g_value_set_object(%struct._GValue* %44, i8* %46)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %47 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call30 = call %struct._GimpFont* @gimp_context_get_font(%struct._GimpContext* %48)
  %49 = bitcast %struct._GimpFont* %call30 to i8*
  call void @g_value_set_object(%struct._GValue* %47, i8* %49)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %50 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %51 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call32 = call %struct._GimpBuffer* @gimp_context_get_buffer(%struct._GimpContext* %51)
  %52 = bitcast %struct._GimpBuffer* %call32 to i8*
  call void @g_value_set_object(%struct._GValue* %50, i8* %52)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %53 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %54 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call34 = call %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext* %54)
  %55 = bitcast %struct._GimpImagefile* %call34 to i8*
  call void @g_value_set_object(%struct._GValue* %53, i8* %55)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %56 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call36 = call %struct._GimpTemplate* @gimp_context_get_template(%struct._GimpContext* %57)
  %58 = bitcast %struct._GimpTemplate* %call36 to i8*
  call void @g_value_set_object(%struct._GValue* %56, i8* %58)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %59 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %59, %struct._GObject** %_glib__object, align 8
  %60 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %60, %struct._GParamSpec** %_glib__pspec, align 8
  %61 = load i32, i32* %property_id.addr, align 4
  store i32 %61, i32* %_glib__property_id, align 4
  %62 = load i32, i32* %_glib__property_id, align 4
  %63 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %63, i32 0, i32 1
  %64 = load i8*, i8** %name, align 8
  %65 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %66 = bitcast %struct._GParamSpec* %65 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %66, i32 0, i32 0
  %67 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %67, i32 0, i32 0
  %68 = load i64, i64* %g_type, align 8
  %call37 = call i8* @g_type_name(i64 %68)
  %69 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %70 = bitcast %struct._GObject* %69 to %struct._GTypeInstance*
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %70, i32 0, i32 0
  %71 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %g_type39 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %71, i32 0, i32 0
  %72 = load i64, i64* %g_type39, align 8
  %call40 = call i8* @g_type_name(i64 %72)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %62, i8* %64, i8* %call37, i8* %call40)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.35, %sw.bb.33, %sw.bb.31, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp2, align 8
  %context_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 50
  %7 = load %struct._GList*, %struct._GList** %context_list, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %9 = bitcast %struct._GimpContext* %8 to i8*
  %call3 = call %struct._GList* @g_list_remove(%struct._GList* %7, i8* %9)
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp4 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp4, align 8
  %context_list5 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 50
  store %struct._GList* %call3, %struct._GList** %context_list5, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %12, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 7
  %14 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool7 = icmp ne %struct._GimpToolInfo* %14, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_info9 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 7
  %16 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info9, align 8
  %17 = bitcast %struct._GimpToolInfo* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_info10 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 7
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %tool_info10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %paint_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %19, i32 0, i32 9
  %20 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %tobool12 = icmp ne %struct._GimpPaintInfo* %20, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.11
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %paint_info14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 9
  %22 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info14, align 8
  %23 = bitcast %struct._GimpPaintInfo* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %paint_info15 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %24, i32 0, i32 9
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %paint_info15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.11
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %brush = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %25, i32 0, i32 15
  %26 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %tobool17 = icmp ne %struct._GimpBrush* %26, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %brush19 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 15
  %28 = load %struct._GimpBrush*, %struct._GimpBrush** %brush19, align 8
  %29 = bitcast %struct._GimpBrush* %28 to i8*
  call void @g_object_unref(i8* %29)
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %brush20 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %30, i32 0, i32 15
  store %struct._GimpBrush* null, %struct._GimpBrush** %brush20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %dynamics = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %31, i32 0, i32 17
  %32 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %tobool22 = icmp ne %struct._GimpDynamics* %32, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.21
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %dynamics24 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %33, i32 0, i32 17
  %34 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics24, align 8
  %35 = bitcast %struct._GimpDynamics* %34 to i8*
  call void @g_object_unref(i8* %35)
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %dynamics25 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %36, i32 0, i32 17
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %dynamics25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.21
  %37 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %pattern = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %37, i32 0, i32 19
  %38 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %tobool27 = icmp ne %struct._GimpPattern* %38, null
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.26
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %pattern29 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %39, i32 0, i32 19
  %40 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern29, align 8
  %41 = bitcast %struct._GimpPattern* %40 to i8*
  call void @g_object_unref(i8* %41)
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %pattern30 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %42, i32 0, i32 19
  store %struct._GimpPattern* null, %struct._GimpPattern** %pattern30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.26
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gradient = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %43, i32 0, i32 21
  %44 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %tobool32 = icmp ne %struct._GimpGradient* %44, null
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.31
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gradient34 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %45, i32 0, i32 21
  %46 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient34, align 8
  %47 = bitcast %struct._GimpGradient* %46 to i8*
  call void @g_object_unref(i8* %47)
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gradient35 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %48, i32 0, i32 21
  store %struct._GimpGradient* null, %struct._GimpGradient** %gradient35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.31
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %palette = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %49, i32 0, i32 23
  %50 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %tobool37 = icmp ne %struct._GimpPalette* %50, null
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.36
  %51 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %palette39 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %51, i32 0, i32 23
  %52 = load %struct._GimpPalette*, %struct._GimpPalette** %palette39, align 8
  %53 = bitcast %struct._GimpPalette* %52 to i8*
  call void @g_object_unref(i8* %53)
  %54 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %palette40 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %54, i32 0, i32 23
  store %struct._GimpPalette* null, %struct._GimpPalette** %palette40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.36
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_preset = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %55, i32 0, i32 25
  %56 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %tobool42 = icmp ne %struct._GimpToolPreset* %56, null
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.end.41
  %57 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_preset44 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %57, i32 0, i32 25
  %58 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset44, align 8
  %59 = bitcast %struct._GimpToolPreset* %58 to i8*
  call void @g_object_unref(i8* %59)
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_preset45 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %60, i32 0, i32 25
  store %struct._GimpToolPreset* null, %struct._GimpToolPreset** %tool_preset45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.end.41
  %61 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %font = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %61, i32 0, i32 27
  %62 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %tobool47 = icmp ne %struct._GimpFont* %62, null
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.46
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %font49 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %63, i32 0, i32 27
  %64 = load %struct._GimpFont*, %struct._GimpFont** %font49, align 8
  %65 = bitcast %struct._GimpFont* %64 to i8*
  call void @g_object_unref(i8* %65)
  %66 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %font50 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %66, i32 0, i32 27
  store %struct._GimpFont* null, %struct._GimpFont** %font50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.46
  %67 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %buffer = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %67, i32 0, i32 29
  %68 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool52 = icmp ne %struct._GimpBuffer* %68, null
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.51
  %69 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %buffer54 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %69, i32 0, i32 29
  %70 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer54, align 8
  %71 = bitcast %struct._GimpBuffer* %70 to i8*
  call void @g_object_unref(i8* %71)
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %buffer55 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %72, i32 0, i32 29
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %buffer55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.51
  %73 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %imagefile = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %73, i32 0, i32 31
  %74 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool57 = icmp ne %struct._GimpImagefile* %74, null
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.end.56
  %75 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %imagefile59 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %75, i32 0, i32 31
  %76 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile59, align 8
  %77 = bitcast %struct._GimpImagefile* %76 to i8*
  call void @g_object_unref(i8* %77)
  %78 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %imagefile60 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %78, i32 0, i32 31
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %imagefile60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.end.56
  %79 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %template = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %79, i32 0, i32 33
  %80 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %tobool62 = icmp ne %struct._GimpTemplate* %80, null
  br i1 %tobool62, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %if.end.61
  %81 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %template64 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %81, i32 0, i32 33
  %82 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template64, align 8
  %83 = bitcast %struct._GimpTemplate* %82 to i8*
  call void @g_object_unref(i8* %83)
  %84 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %template65 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %84, i32 0, i32 33
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %template65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.end.61
  %85 = load i8*, i8** @gimp_context_parent_class, align 8
  %86 = bitcast i8* %85 to %struct._GTypeClass*
  %call67 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %86, i64 80)
  %87 = bitcast %struct._GTypeClass* %call67 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %87, i32 0, i32 5
  %88 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %89 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %88(%struct._GObject* %89)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %context = alloca %struct._GimpContext*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %parent = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 2
  store %struct._GimpContext* null, %struct._GimpContext** %parent, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %image = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 5
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %display = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 6
  store i8* null, i8** %display, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 8
  %7 = load i8*, i8** %tool_name, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %8, i32 0, i32 8
  %9 = load i8*, i8** %tool_name2, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_name3 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 8
  store i8* null, i8** %tool_name3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %paint_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 10
  %12 = load i8*, i8** %paint_name, align 8
  %tobool4 = icmp ne i8* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %paint_name6 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 10
  %14 = load i8*, i8** %paint_name6, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %paint_name7 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 10
  store i8* null, i8** %paint_name7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %brush_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 16
  %17 = load i8*, i8** %brush_name, align 8
  %tobool9 = icmp ne i8* %17, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %brush_name11 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 16
  %19 = load i8*, i8** %brush_name11, align 8
  call void @g_free(i8* %19)
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %brush_name12 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %20, i32 0, i32 16
  store i8* null, i8** %brush_name12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %dynamics_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 18
  %22 = load i8*, i8** %dynamics_name, align 8
  %tobool14 = icmp ne i8* %22, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %dynamics_name16 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %23, i32 0, i32 18
  %24 = load i8*, i8** %dynamics_name16, align 8
  call void @g_free(i8* %24)
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %dynamics_name17 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %25, i32 0, i32 18
  store i8* null, i8** %dynamics_name17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %pattern_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %26, i32 0, i32 20
  %27 = load i8*, i8** %pattern_name, align 8
  %tobool19 = icmp ne i8* %27, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %pattern_name21 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %28, i32 0, i32 20
  %29 = load i8*, i8** %pattern_name21, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %pattern_name22 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %30, i32 0, i32 20
  store i8* null, i8** %pattern_name22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gradient_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %31, i32 0, i32 22
  %32 = load i8*, i8** %gradient_name, align 8
  %tobool24 = icmp ne i8* %32, null
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.23
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gradient_name26 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %33, i32 0, i32 22
  %34 = load i8*, i8** %gradient_name26, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gradient_name27 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %35, i32 0, i32 22
  store i8* null, i8** %gradient_name27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.23
  %36 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %palette_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %36, i32 0, i32 24
  %37 = load i8*, i8** %palette_name, align 8
  %tobool29 = icmp ne i8* %37, null
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.28
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %palette_name31 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %38, i32 0, i32 24
  %39 = load i8*, i8** %palette_name31, align 8
  call void @g_free(i8* %39)
  %40 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %palette_name32 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %40, i32 0, i32 24
  store i8* null, i8** %palette_name32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %41 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_preset_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %41, i32 0, i32 26
  %42 = load i8*, i8** %tool_preset_name, align 8
  %tobool34 = icmp ne i8* %42, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.33
  %43 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_preset_name36 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %43, i32 0, i32 26
  %44 = load i8*, i8** %tool_preset_name36, align 8
  call void @g_free(i8* %44)
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_preset_name37 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %45, i32 0, i32 26
  store i8* null, i8** %tool_preset_name37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.33
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %46, i32 0, i32 28
  %47 = load i8*, i8** %font_name, align 8
  %tobool39 = icmp ne i8* %47, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %48 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %font_name41 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %48, i32 0, i32 28
  %49 = load i8*, i8** %font_name41, align 8
  call void @g_free(i8* %49)
  %50 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %font_name42 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %50, i32 0, i32 28
  store i8* null, i8** %font_name42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.38
  %51 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %buffer_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %51, i32 0, i32 30
  %52 = load i8*, i8** %buffer_name, align 8
  %tobool44 = icmp ne i8* %52, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.43
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %buffer_name46 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %53, i32 0, i32 30
  %54 = load i8*, i8** %buffer_name46, align 8
  call void @g_free(i8* %54)
  %55 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %buffer_name47 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %55, i32 0, i32 30
  store i8* null, i8** %buffer_name47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.43
  %56 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %imagefile_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %56, i32 0, i32 32
  %57 = load i8*, i8** %imagefile_name, align 8
  %tobool49 = icmp ne i8* %57, null
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.48
  %58 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %imagefile_name51 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %58, i32 0, i32 32
  %59 = load i8*, i8** %imagefile_name51, align 8
  call void @g_free(i8* %59)
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %imagefile_name52 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %60, i32 0, i32 32
  store i8* null, i8** %imagefile_name52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.48
  %61 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %template_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %61, i32 0, i32 34
  %62 = load i8*, i8** %template_name, align 8
  %tobool54 = icmp ne i8* %62, null
  br i1 %tobool54, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.end.53
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %template_name56 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %63, i32 0, i32 34
  %64 = load i8*, i8** %template_name56, align 8
  call void @g_free(i8* %64)
  %65 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %template_name57 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %65, i32 0, i32 34
  store i8* null, i8** %template_name57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.end.53
  %66 = load i8*, i8** @gimp_context_parent_class, align 8
  %67 = bitcast i8* %66 to %struct._GTypeClass*
  %call59 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %67, i64 80)
  %68 = bitcast %struct._GTypeClass* %call59 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %68, i32 0, i32 6
  %69 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %70 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %69(%struct._GObject* %70)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_context_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 8
  %4 = load i8*, i8** %tool_name, align 8
  %call2 = call i64 @gimp_string_get_memsize(i8* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %paint_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 10
  %7 = load i8*, i8** %paint_name, align 8
  %call3 = call i64 @gimp_string_get_memsize(i8* %7)
  %8 = load i64, i64* %memsize, align 8
  %add4 = add nsw i64 %8, %call3
  store i64 %add4, i64* %memsize, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %brush_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 16
  %10 = load i8*, i8** %brush_name, align 8
  %call5 = call i64 @gimp_string_get_memsize(i8* %10)
  %11 = load i64, i64* %memsize, align 8
  %add6 = add nsw i64 %11, %call5
  store i64 %add6, i64* %memsize, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %dynamics_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %12, i32 0, i32 18
  %13 = load i8*, i8** %dynamics_name, align 8
  %call7 = call i64 @gimp_string_get_memsize(i8* %13)
  %14 = load i64, i64* %memsize, align 8
  %add8 = add nsw i64 %14, %call7
  store i64 %add8, i64* %memsize, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %pattern_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 20
  %16 = load i8*, i8** %pattern_name, align 8
  %call9 = call i64 @gimp_string_get_memsize(i8* %16)
  %17 = load i64, i64* %memsize, align 8
  %add10 = add nsw i64 %17, %call9
  store i64 %add10, i64* %memsize, align 8
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %palette_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 24
  %19 = load i8*, i8** %palette_name, align 8
  %call11 = call i64 @gimp_string_get_memsize(i8* %19)
  %20 = load i64, i64* %memsize, align 8
  %add12 = add nsw i64 %20, %call11
  store i64 %add12, i64* %memsize, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_preset_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 26
  %22 = load i8*, i8** %tool_preset_name, align 8
  %call13 = call i64 @gimp_string_get_memsize(i8* %22)
  %23 = load i64, i64* %memsize, align 8
  %add14 = add nsw i64 %23, %call13
  store i64 %add14, i64* %memsize, align 8
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %24, i32 0, i32 28
  %25 = load i8*, i8** %font_name, align 8
  %call15 = call i64 @gimp_string_get_memsize(i8* %25)
  %26 = load i64, i64* %memsize, align 8
  %add16 = add nsw i64 %26, %call15
  store i64 %add16, i64* %memsize, align 8
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %buffer_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %27, i32 0, i32 30
  %28 = load i8*, i8** %buffer_name, align 8
  %call17 = call i64 @gimp_string_get_memsize(i8* %28)
  %29 = load i64, i64* %memsize, align 8
  %add18 = add nsw i64 %29, %call17
  store i64 %add18, i64* %memsize, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %imagefile_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %30, i32 0, i32 32
  %31 = load i8*, i8** %imagefile_name, align 8
  %call19 = call i64 @gimp_string_get_memsize(i8* %31)
  %32 = load i64, i64* %memsize, align 8
  %add20 = add nsw i64 %32, %call19
  store i64 %add20, i64* %memsize, align 8
  %33 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %template_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %33, i32 0, i32 34
  %34 = load i8*, i8** %template_name, align 8
  %call21 = call i64 @gimp_string_get_memsize(i8* %34)
  %35 = load i64, i64* %memsize, align 8
  %add22 = add nsw i64 %35, %call21
  store i64 %add22, i64* %memsize, align 8
  %36 = load i64, i64* %memsize, align 8
  %37 = load i8*, i8** @gimp_context_parent_class, align 8
  %38 = bitcast i8* %37 to %struct._GTypeClass*
  %call23 = call i64 @gimp_object_get_type() #8
  %call24 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %38, i64 %call23)
  %39 = bitcast %struct._GTypeClass* %call24 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %39, i32 0, i32 3
  %40 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %41 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %42 = load i64*, i64** %gui_size.addr, align 8
  %call25 = call i64 %40(%struct._GimpObject* %41, i64* %42)
  %add26 = add nsw i64 %36, %call25
  ret i64 %add26
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_image_removed(%struct._GimpContainer* %container, %struct._GimpImage* %image, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %image1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 5
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_real_set_image(%struct._GimpContext* %3, %struct._GimpImage* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_display_removed(%struct._GimpContainer* %container, i8* %display, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %display.addr = alloca i8*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %display, i8** %display.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 6
  %1 = load i8*, i8** %display1, align 8
  %2 = load i8*, i8** %display.addr, align 8
  %cmp = icmp eq i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_real_set_display(%struct._GimpContext* %3, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_tool_removed(%struct._GimpContainer* %container, %struct._GimpToolInfo* %tool_info, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 7
  %2 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info1, align 8
  %cmp = icmp eq %struct._GimpToolInfo* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_info2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 7
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %tool_info2, align 8
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %5 = bitcast %struct._GimpToolInfo* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolInfo*, %struct._GimpContext*)* @gimp_context_tool_dirty to i8*), i8* %7)
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %9 = bitcast %struct._GimpToolInfo* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_tool_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_tool_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 8
  %1 = load i8*, i8** %tool_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_strdup(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0))
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 8
  store i8* %call, i8** %tool_name1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 8
  %6 = load i8*, i8** %tool_name2, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GimpToolInfo* @gimp_tool_info_get_standard(%struct._Gimp* %8)
  %9 = bitcast %struct._GimpToolInfo* %call3 to i8*
  %call4 = call i8* @gimp_context_find_object(%struct._GimpContext* %3, %struct._GimpContainer* %4, i8* %6, i8* %9)
  %10 = bitcast i8* %call4 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %10, %struct._GimpToolInfo** %tool_info, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %12 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_context_real_set_tool(%struct._GimpContext* %11, %struct._GimpToolInfo* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_paint_info_removed(%struct._GimpContainer* %container, %struct._GimpPaintInfo* %paint_info, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %paint_info.addr = alloca %struct._GimpPaintInfo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpPaintInfo* %paint_info, %struct._GimpPaintInfo** %paint_info.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 9
  %2 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info1, align 8
  %cmp = icmp eq %struct._GimpPaintInfo* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_info2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 9
  store %struct._GimpPaintInfo* null, %struct._GimpPaintInfo** %paint_info2, align 8
  %4 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %5 = bitcast %struct._GimpPaintInfo* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPaintInfo*, %struct._GimpContext*)* @gimp_context_paint_info_dirty to i8*), i8* %7)
  %8 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %9 = bitcast %struct._GimpPaintInfo* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_paint_info_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_paint_info_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %paint_info = alloca %struct._GimpPaintInfo*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 10
  %1 = load i8*, i8** %paint_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @g_strdup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0))
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 10
  store i8* %call, i8** %paint_name1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 10
  %6 = load i8*, i8** %paint_name2, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call %struct._GimpPaintInfo* @gimp_paint_info_get_standard(%struct._Gimp* %8)
  %9 = bitcast %struct._GimpPaintInfo* %call3 to i8*
  %call4 = call i8* @gimp_context_find_object(%struct._GimpContext* %3, %struct._GimpContainer* %4, i8* %6, i8* %9)
  %10 = bitcast i8* %call4 to %struct._GimpPaintInfo*
  store %struct._GimpPaintInfo* %10, %struct._GimpPaintInfo** %paint_info, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %12 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  call void @gimp_context_real_set_paint_info(%struct._GimpContext* %11, %struct._GimpPaintInfo* %12)
  ret void
}

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_brush_removed(%struct._GimpContainer* %container, %struct._GimpBrush* %brush, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 15
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush1, align 8
  %cmp = icmp eq %struct._GimpBrush* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 15
  store %struct._GimpBrush* null, %struct._GimpBrush** %brush2, align 8
  %4 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %5 = bitcast %struct._GimpBrush* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpBrush*, %struct._GimpContext*)* @gimp_context_brush_dirty to i8*), i8* %7)
  %8 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %9 = bitcast %struct._GimpBrush* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_brush_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_brush_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %brush = alloca %struct._GimpBrush*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 16
  %1 = load i8*, i8** %brush_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_brush = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %4, i32 0, i32 22
  %5 = load i8*, i8** %default_brush, align 8
  %call = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 16
  store i8* %call, i8** %brush_name1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 16
  %10 = load i8*, i8** %brush_name2, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call3 = call %struct._GimpData* @gimp_brush_get_standard(%struct._GimpContext* %11)
  %12 = bitcast %struct._GimpData* %call3 to i8*
  %call4 = call i8* @gimp_context_find_object(%struct._GimpContext* %7, %struct._GimpContainer* %8, i8* %10, i8* %12)
  %13 = bitcast i8* %call4 to %struct._GimpBrush*
  store %struct._GimpBrush* %13, %struct._GimpBrush** %brush, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  call void @gimp_context_real_set_brush(%struct._GimpContext* %14, %struct._GimpBrush* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_dynamics_removed(%struct._GimpContainer* %container, %struct._GimpDynamics* %dynamics, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 17
  %2 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics1, align 8
  %cmp = icmp eq %struct._GimpDynamics* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 17
  store %struct._GimpDynamics* null, %struct._GimpDynamics** %dynamics2, align 8
  %4 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %5 = bitcast %struct._GimpDynamics* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDynamics*, %struct._GimpContext*)* @gimp_context_dynamics_dirty to i8*), i8* %7)
  %8 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %9 = bitcast %struct._GimpDynamics* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_dynamics_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_dynamics_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %dynamics = alloca %struct._GimpDynamics*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 18
  %1 = load i8*, i8** %dynamics_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_dynamics = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %4, i32 0, i32 23
  %5 = load i8*, i8** %default_dynamics, align 8
  %call = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 18
  store i8* %call, i8** %dynamics_name1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 18
  %10 = load i8*, i8** %dynamics_name2, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call3 = call %struct._GimpData* @gimp_dynamics_get_standard(%struct._GimpContext* %11)
  %12 = bitcast %struct._GimpData* %call3 to i8*
  %call4 = call i8* @gimp_context_find_object(%struct._GimpContext* %7, %struct._GimpContainer* %8, i8* %10, i8* %12)
  %13 = bitcast i8* %call4 to %struct._GimpDynamics*
  store %struct._GimpDynamics* %13, %struct._GimpDynamics** %dynamics, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  call void @gimp_context_real_set_dynamics(%struct._GimpContext* %14, %struct._GimpDynamics* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_pattern_removed(%struct._GimpContainer* %container, %struct._GimpPattern* %pattern, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 19
  %2 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern1, align 8
  %cmp = icmp eq %struct._GimpPattern* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 19
  store %struct._GimpPattern* null, %struct._GimpPattern** %pattern2, align 8
  %4 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %5 = bitcast %struct._GimpPattern* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPattern*, %struct._GimpContext*)* @gimp_context_pattern_dirty to i8*), i8* %7)
  %8 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %9 = bitcast %struct._GimpPattern* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_pattern_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_pattern_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 20
  %1 = load i8*, i8** %pattern_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_pattern = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %4, i32 0, i32 24
  %5 = load i8*, i8** %default_pattern, align 8
  %call = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 20
  store i8* %call, i8** %pattern_name1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 20
  %10 = load i8*, i8** %pattern_name2, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call3 = call %struct._GimpData* @gimp_pattern_get_standard(%struct._GimpContext* %11)
  %12 = bitcast %struct._GimpData* %call3 to i8*
  %call4 = call i8* @gimp_context_find_object(%struct._GimpContext* %7, %struct._GimpContainer* %8, i8* %10, i8* %12)
  %13 = bitcast i8* %call4 to %struct._GimpPattern*
  store %struct._GimpPattern* %13, %struct._GimpPattern** %pattern, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  call void @gimp_context_real_set_pattern(%struct._GimpContext* %14, %struct._GimpPattern* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_gradient_removed(%struct._GimpContainer* %container, %struct._GimpGradient* %gradient, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 21
  %2 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient1, align 8
  %cmp = icmp eq %struct._GimpGradient* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 21
  store %struct._GimpGradient* null, %struct._GimpGradient** %gradient2, align 8
  %4 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %5 = bitcast %struct._GimpGradient* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGradient*, %struct._GimpContext*)* @gimp_context_gradient_dirty to i8*), i8* %7)
  %8 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %9 = bitcast %struct._GimpGradient* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_gradient_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_gradient_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %gradient = alloca %struct._GimpGradient*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 22
  %1 = load i8*, i8** %gradient_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_gradient = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %4, i32 0, i32 27
  %5 = load i8*, i8** %default_gradient, align 8
  %call = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 22
  store i8* %call, i8** %gradient_name1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 22
  %10 = load i8*, i8** %gradient_name2, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call3 = call %struct._GimpData* @gimp_gradient_get_standard(%struct._GimpContext* %11)
  %12 = bitcast %struct._GimpData* %call3 to i8*
  %call4 = call i8* @gimp_context_find_object(%struct._GimpContext* %7, %struct._GimpContainer* %8, i8* %10, i8* %12)
  %13 = bitcast i8* %call4 to %struct._GimpGradient*
  store %struct._GimpGradient* %13, %struct._GimpGradient** %gradient, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  call void @gimp_context_real_set_gradient(%struct._GimpContext* %14, %struct._GimpGradient* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_palette_removed(%struct._GimpContainer* %container, %struct._GimpPalette* %palette, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 23
  %2 = load %struct._GimpPalette*, %struct._GimpPalette** %palette1, align 8
  %cmp = icmp eq %struct._GimpPalette* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 23
  store %struct._GimpPalette* null, %struct._GimpPalette** %palette2, align 8
  %4 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %5 = bitcast %struct._GimpPalette* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpPalette*, %struct._GimpContext*)* @gimp_context_palette_dirty to i8*), i8* %7)
  %8 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %9 = bitcast %struct._GimpPalette* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_palette_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_palette_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %palette = alloca %struct._GimpPalette*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 24
  %1 = load i8*, i8** %palette_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_palette = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %4, i32 0, i32 25
  %5 = load i8*, i8** %default_palette, align 8
  %call = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 24
  store i8* %call, i8** %palette_name1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 24
  %10 = load i8*, i8** %palette_name2, align 8
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call3 = call %struct._GimpData* @gimp_palette_get_standard(%struct._GimpContext* %11)
  %12 = bitcast %struct._GimpData* %call3 to i8*
  %call4 = call i8* @gimp_context_find_object(%struct._GimpContext* %7, %struct._GimpContainer* %8, i8* %10, i8* %12)
  %13 = bitcast i8* %call4 to %struct._GimpPalette*
  store %struct._GimpPalette* %13, %struct._GimpPalette** %palette, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  call void @gimp_context_real_set_palette(%struct._GimpContext* %14, %struct._GimpPalette* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_tool_preset_removed(%struct._GimpContainer* %container, %struct._GimpToolPreset* %tool_preset, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %tool_preset.addr = alloca %struct._GimpToolPreset*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpToolPreset* %tool_preset, %struct._GimpToolPreset** %tool_preset.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 25
  %2 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset1, align 8
  %cmp = icmp eq %struct._GimpToolPreset* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 25
  store %struct._GimpToolPreset* null, %struct._GimpToolPreset** %tool_preset2, align 8
  %4 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %5 = bitcast %struct._GimpToolPreset* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpToolPreset*, %struct._GimpContext*)* @gimp_context_tool_preset_dirty to i8*), i8* %7)
  %8 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %9 = bitcast %struct._GimpToolPreset* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_tool_preset_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_tool_preset_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %tool_preset = alloca %struct._GimpToolPreset*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 26
  %3 = load i8*, i8** %tool_preset_name, align 8
  %call = call i8* @gimp_context_find_object(%struct._GimpContext* %0, %struct._GimpContainer* %1, i8* %3, i8* null)
  %4 = bitcast i8* %call to %struct._GimpToolPreset*
  store %struct._GimpToolPreset* %4, %struct._GimpToolPreset** %tool_preset, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %6 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  call void @gimp_context_real_set_tool_preset(%struct._GimpContext* %5, %struct._GimpToolPreset* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_font_removed(%struct._GimpContainer* %container, %struct._GimpFont* %font, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %font.addr = alloca %struct._GimpFont*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpFont* %font, %struct._GimpFont** %font.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 27
  %2 = load %struct._GimpFont*, %struct._GimpFont** %font1, align 8
  %cmp = icmp eq %struct._GimpFont* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 27
  store %struct._GimpFont* null, %struct._GimpFont** %font2, align 8
  %4 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %5 = bitcast %struct._GimpFont* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpFont*, %struct._GimpContext*)* @gimp_context_font_dirty to i8*), i8* %7)
  %8 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %9 = bitcast %struct._GimpFont* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_font_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_font_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %font = alloca %struct._GimpFont*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 28
  %1 = load i8*, i8** %font_name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 1
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_font = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %4, i32 0, i32 28
  %5 = load i8*, i8** %default_font, align 8
  %call = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %6, i32 0, i32 28
  store i8* %call, i8** %font_name1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 28
  %10 = load i8*, i8** %font_name2, align 8
  %call3 = call %struct._GimpFont* @gimp_font_get_standard()
  %11 = bitcast %struct._GimpFont* %call3 to i8*
  %call4 = call i8* @gimp_context_find_object(%struct._GimpContext* %7, %struct._GimpContainer* %8, i8* %10, i8* %11)
  %12 = bitcast i8* %call4 to %struct._GimpFont*
  store %struct._GimpFont* %12, %struct._GimpFont** %font, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  call void @gimp_context_real_set_font(%struct._GimpContext* %13, %struct._GimpFont* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_buffer_removed(%struct._GimpContainer* %container, %struct._GimpBuffer* %buffer, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 29
  %2 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer1, align 8
  %cmp = icmp eq %struct._GimpBuffer* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 29
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %buffer2, align 8
  %4 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %5 = bitcast %struct._GimpBuffer* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpBuffer*, %struct._GimpContext*)* @gimp_context_buffer_dirty to i8*), i8* %7)
  %8 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %9 = bitcast %struct._GimpBuffer* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_buffer_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_buffer_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 30
  %3 = load i8*, i8** %buffer_name, align 8
  %call = call i8* @gimp_context_find_object(%struct._GimpContext* %0, %struct._GimpContainer* %1, i8* %3, i8* null)
  %4 = bitcast i8* %call to %struct._GimpBuffer*
  store %struct._GimpBuffer* %4, %struct._GimpBuffer** %buffer, align 8
  %5 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool = icmp ne %struct._GimpBuffer* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  call void @gimp_context_real_set_buffer(%struct._GimpContext* %6, %struct._GimpBuffer* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0))
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_buffer_changed(%struct._GimpContext* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_imagefile_removed(%struct._GimpContainer* %container, %struct._GimpImagefile* %imagefile, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 31
  %2 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile1, align 8
  %cmp = icmp eq %struct._GimpImagefile* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 31
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %imagefile2, align 8
  %4 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %5 = bitcast %struct._GimpImagefile* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImagefile*, %struct._GimpContext*)* @gimp_context_imagefile_dirty to i8*), i8* %7)
  %8 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %9 = bitcast %struct._GimpImagefile* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_imagefile_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_imagefile_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 32
  %3 = load i8*, i8** %imagefile_name, align 8
  %call = call i8* @gimp_context_find_object(%struct._GimpContext* %0, %struct._GimpContainer* %1, i8* %3, i8* null)
  %4 = bitcast i8* %call to %struct._GimpImagefile*
  store %struct._GimpImagefile* %4, %struct._GimpImagefile** %imagefile, align 8
  %5 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool = icmp ne %struct._GimpImagefile* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  call void @gimp_context_real_set_imagefile(%struct._GimpContext* %6, %struct._GimpImagefile* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0))
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_imagefile_changed(%struct._GimpContext* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_template_removed(%struct._GimpContainer* %container, %struct._GimpTemplate* %template, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template1 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %1, i32 0, i32 33
  %2 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template1, align 8
  %cmp = icmp eq %struct._GimpTemplate* %0, %2
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %3, i32 0, i32 33
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %template2, align 8
  %4 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %5 = bitcast %struct._GimpTemplate* %4 to i8*
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %5, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTemplate*, %struct._GimpContext*)* @gimp_context_template_dirty to i8*), i8* %7)
  %8 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %9 = bitcast %struct._GimpTemplate* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i32 @gimp_container_frozen(%struct._GimpContainer* %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %11 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_template_list_thaw(%struct._GimpContainer* %11, %struct._GimpContext* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_template_list_thaw(%struct._GimpContainer* %container, %struct._GimpContext* %context) #3 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 34
  %3 = load i8*, i8** %template_name, align 8
  %call = call i8* @gimp_context_find_object(%struct._GimpContext* %0, %struct._GimpContainer* %1, i8* %3, i8* null)
  %4 = bitcast i8* %call to %struct._GimpTemplate*
  store %struct._GimpTemplate* %4, %struct._GimpTemplate** %template, align 8
  %5 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %tobool = icmp ne %struct._GimpTemplate* %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %7 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  call void @gimp_context_real_set_template(%struct._GimpContext* %6, %struct._GimpTemplate* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %9 = bitcast %struct._GimpContext* %8 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0))
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_context_template_changed(%struct._GimpContext* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_tool_dirty(%struct._GimpToolInfo* %tool_info, %struct._GimpContext* %context) #3 {
entry:
  %tool_info.addr = alloca %struct._GimpToolInfo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpToolInfo* %tool_info, %struct._GimpToolInfo** %tool_info.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 8
  %1 = load i8*, i8** %tool_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info.addr, align 8
  %3 = bitcast %struct._GimpToolInfo* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 8
  store i8* %call1, i8** %tool_name2, align 8
  ret void
}

declare i32 @gimp_container_frozen(%struct._GimpContainer*) #1

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_context_find_object(%struct._GimpContext* %context, %struct._GimpContainer* %container, i8* %object_name, i8* %standard_object) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %object_name.addr = alloca i8*, align 8
  %standard_object.addr = alloca i8*, align 8
  %object = alloca %struct._GimpObject*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %object_name, i8** %object_name.addr, align 8
  store i8* %standard_object, i8** %standard_object.addr, align 8
  store %struct._GimpObject* null, %struct._GimpObject** %object, align 8
  %0 = load i8*, i8** %object_name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = load i8*, i8** %object_name.addr, align 8
  %call = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %1, i8* %2)
  store %struct._GimpObject* %call, %struct._GimpObject** %object, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool1 = icmp ne %struct._GimpObject* %3, null
  br i1 %tobool1, label %if.end.6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call2 = call i32 @gimp_container_is_empty(%struct._GimpContainer* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call5 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %5, i32 0)
  store %struct._GimpObject* %call5, %struct._GimpObject** %object, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %6 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool7 = icmp ne %struct._GimpObject* %6, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %7 = load i8*, i8** %standard_object.addr, align 8
  %8 = bitcast i8* %7 to %struct._GimpObject*
  store %struct._GimpObject* %8, %struct._GimpObject** %object, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %9 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %10 = bitcast %struct._GimpObject* %9 to i8*
  ret i8* %10
}

declare i32 @gimp_container_is_empty(%struct._GimpContainer*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_paint_info_dirty(%struct._GimpPaintInfo* %paint_info, %struct._GimpContext* %context) #3 {
entry:
  %paint_info.addr = alloca %struct._GimpPaintInfo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpPaintInfo* %paint_info, %struct._GimpPaintInfo** %paint_info.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 10
  %1 = load i8*, i8** %paint_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info.addr, align 8
  %3 = bitcast %struct._GimpPaintInfo* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %paint_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 10
  store i8* %call1, i8** %paint_name2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_brush_dirty(%struct._GimpBrush* %brush, %struct._GimpContext* %context) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 16
  %1 = load i8*, i8** %brush_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %3 = bitcast %struct._GimpBrush* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %brush_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 16
  store i8* %call1, i8** %brush_name2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_dynamics_dirty(%struct._GimpDynamics* %dynamics, %struct._GimpContext* %context) #3 {
entry:
  %dynamics.addr = alloca %struct._GimpDynamics*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpDynamics* %dynamics, %struct._GimpDynamics** %dynamics.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 18
  %1 = load i8*, i8** %dynamics_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics.addr, align 8
  %3 = bitcast %struct._GimpDynamics* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %dynamics_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 18
  store i8* %call1, i8** %dynamics_name2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_pattern_dirty(%struct._GimpPattern* %pattern, %struct._GimpContext* %context) #3 {
entry:
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 20
  %1 = load i8*, i8** %pattern_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %3 = bitcast %struct._GimpPattern* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %pattern_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 20
  store i8* %call1, i8** %pattern_name2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_gradient_dirty(%struct._GimpGradient* %gradient, %struct._GimpContext* %context) #3 {
entry:
  %gradient.addr = alloca %struct._GimpGradient*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpGradient* %gradient, %struct._GimpGradient** %gradient.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 22
  %1 = load i8*, i8** %gradient_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient.addr, align 8
  %3 = bitcast %struct._GimpGradient* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gradient_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 22
  store i8* %call1, i8** %gradient_name2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_palette_dirty(%struct._GimpPalette* %palette, %struct._GimpContext* %context) #3 {
entry:
  %palette.addr = alloca %struct._GimpPalette*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpPalette* %palette, %struct._GimpPalette** %palette.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 24
  %1 = load i8*, i8** %palette_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpPalette*, %struct._GimpPalette** %palette.addr, align 8
  %3 = bitcast %struct._GimpPalette* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %palette_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 24
  store i8* %call1, i8** %palette_name2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_tool_preset_dirty(%struct._GimpToolPreset* %tool_preset, %struct._GimpContext* %context) #3 {
entry:
  %tool_preset.addr = alloca %struct._GimpToolPreset*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpToolPreset* %tool_preset, %struct._GimpToolPreset** %tool_preset.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 26
  %1 = load i8*, i8** %tool_preset_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset.addr, align 8
  %3 = bitcast %struct._GimpToolPreset* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tool_preset_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 26
  store i8* %call1, i8** %tool_preset_name2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_font_dirty(%struct._GimpFont* %font, %struct._GimpContext* %context) #3 {
entry:
  %font.addr = alloca %struct._GimpFont*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpFont* %font, %struct._GimpFont** %font.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 28
  %1 = load i8*, i8** %font_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpFont*, %struct._GimpFont** %font.addr, align 8
  %3 = bitcast %struct._GimpFont* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %font_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 28
  store i8* %call1, i8** %font_name2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_buffer_dirty(%struct._GimpBuffer* %buffer, %struct._GimpContext* %context) #3 {
entry:
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 30
  %1 = load i8*, i8** %buffer_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %3 = bitcast %struct._GimpBuffer* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %buffer_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 30
  store i8* %call1, i8** %buffer_name2, align 8
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_context_imagefile_dirty(%struct._GimpImagefile* %imagefile, %struct._GimpContext* %context) #3 {
entry:
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 32
  %1 = load i8*, i8** %imagefile_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %3 = bitcast %struct._GimpImagefile* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %imagefile_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 32
  store i8* %call1, i8** %imagefile_name2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_context_template_dirty(%struct._GimpTemplate* %template, %struct._GimpContext* %context) #3 {
entry:
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %0, i32 0, i32 34
  %1 = load i8*, i8** %template_name, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %3 = bitcast %struct._GimpTemplate* %2 to i8*
  %call = call i8* @gimp_object_get_name(i8* %3)
  %call1 = call noalias i8* @g_strdup(i8* %call)
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %template_name2 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 34
  store i8* %call1, i8** %template_name2, align 8
  ret void
}

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

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
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare i64 @gimp_string_get_memsize(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_context_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call = call i32 @gimp_config_serialize_changed_properties(%struct._GimpConfig* %0, %struct._GimpConfigWriter* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_context_serialize_property(%struct._GimpConfig* %config, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec, %struct._GimpConfigWriter* %writer) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %serialize_obj = alloca %struct._GimpObject*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  %shl = shl i32 1, %3
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %serialize_props = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 4
  %5 = load i32, i32* %serialize_props, align 4
  %and = and i32 %shl, %5
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %7)
  %8 = bitcast i8* %call2 to %struct._GimpObject*
  store %struct._GimpObject* %8, %struct._GimpObject** %serialize_obj, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %9, i8* %11)
  %12 = load %struct._GimpObject*, %struct._GimpObject** %serialize_obj, align 8
  %tobool3 = icmp ne %struct._GimpObject* %12, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %sw.epilog
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %14 = load %struct._GimpObject*, %struct._GimpObject** %serialize_obj, align 8
  %15 = bitcast %struct._GimpObject* %14 to i8*
  %call5 = call i8* @gimp_object_get_name(i8* %15)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %13, i8* %call5)
  br label %if.end.6

if.else:                                          ; preds = %sw.epilog
  %16 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_print(%struct._GimpConfigWriter* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 4)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  %17 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %17)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %sw.default, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_context_deserialize_property(%struct._GimpConfig* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec, %struct._GScanner* %scanner, i32* %expected) #3 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %struct._GimpConfig*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %expected.addr = alloca i32*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %current = alloca %struct._GimpObject*, align 8
  %name_loc = alloca i8**, align 8
  %no_data = alloca i32, align 4
  %object_name = alloca i8*, align 8
  %deserialize_obj = alloca %struct._GimpObject*, align 8
  store %struct._GimpConfig* %object, %struct._GimpConfig** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32* %expected, i32** %expected.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %object.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_context_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContext*
  store %struct._GimpContext* %2, %struct._GimpContext** %context, align 8
  store i32 0, i32* %no_data, align 4
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.2
    i32 10, label %sw.bb.4
    i32 11, label %sw.bb.7
    i32 12, label %sw.bb.10
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.16
    i32 15, label %sw.bb.19
    i32 16, label %sw.bb.22
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 45
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  store %struct._GimpContainer* %6, %struct._GimpContainer** %container, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %7, i32 0, i32 7
  %8 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %9 = bitcast %struct._GimpToolInfo* %8 to %struct._GimpObject*
  store %struct._GimpObject* %9, %struct._GimpObject** %current, align 8
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %10, i32 0, i32 8
  store i8** %tool_name, i8*** %name_loc, align 8
  store i32 1, i32* %no_data, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp3 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 21
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  store %struct._GimpContainer* %13, %struct._GimpContainer** %container, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %paint_info = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 9
  %15 = load %struct._GimpPaintInfo*, %struct._GimpPaintInfo** %paint_info, align 8
  %16 = bitcast %struct._GimpPaintInfo* %15 to %struct._GimpObject*
  store %struct._GimpObject* %16, %struct._GimpObject** %current, align 8
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %paint_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %17, i32 0, i32 10
  store i8** %paint_name, i8*** %name_loc, align 8
  store i32 1, i32* %no_data, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp5 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp5, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 37
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %call6 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %20)
  store %struct._GimpContainer* %call6, %struct._GimpContainer** %container, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %brush = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %21, i32 0, i32 15
  %22 = load %struct._GimpBrush*, %struct._GimpBrush** %brush, align 8
  %23 = bitcast %struct._GimpBrush* %22 to %struct._GimpObject*
  store %struct._GimpObject* %23, %struct._GimpObject** %current, align 8
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %brush_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %24, i32 0, i32 16
  store i8** %brush_name, i8*** %name_loc, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp8 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp8, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 38
  %27 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %call9 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %27)
  store %struct._GimpContainer* %call9, %struct._GimpContainer** %container, align 8
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %dynamics = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %28, i32 0, i32 17
  %29 = load %struct._GimpDynamics*, %struct._GimpDynamics** %dynamics, align 8
  %30 = bitcast %struct._GimpDynamics* %29 to %struct._GimpObject*
  store %struct._GimpObject* %30, %struct._GimpObject** %current, align 8
  %31 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %dynamics_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %31, i32 0, i32 18
  store i8** %dynamics_name, i8*** %name_loc, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %32 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp11 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp11, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %33, i32 0, i32 39
  %34 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %call12 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %34)
  store %struct._GimpContainer* %call12, %struct._GimpContainer** %container, align 8
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %pattern = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %35, i32 0, i32 19
  %36 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %37 = bitcast %struct._GimpPattern* %36 to %struct._GimpObject*
  store %struct._GimpObject* %37, %struct._GimpObject** %current, align 8
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %pattern_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %38, i32 0, i32 20
  store i8** %pattern_name, i8*** %name_loc, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp14 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %39, i32 0, i32 1
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %40, i32 0, i32 40
  %41 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %call15 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %41)
  store %struct._GimpContainer* %call15, %struct._GimpContainer** %container, align 8
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gradient = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %42, i32 0, i32 21
  %43 = load %struct._GimpGradient*, %struct._GimpGradient** %gradient, align 8
  %44 = bitcast %struct._GimpGradient* %43 to %struct._GimpObject*
  store %struct._GimpObject* %44, %struct._GimpObject** %current, align 8
  %45 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gradient_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %45, i32 0, i32 22
  store i8** %gradient_name, i8*** %name_loc, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %46 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp17 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp17, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %47, i32 0, i32 41
  %48 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %call18 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %48)
  store %struct._GimpContainer* %call18, %struct._GimpContainer** %container, align 8
  %49 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %palette = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %49, i32 0, i32 23
  %50 = load %struct._GimpPalette*, %struct._GimpPalette** %palette, align 8
  %51 = bitcast %struct._GimpPalette* %50 to %struct._GimpObject*
  store %struct._GimpObject* %51, %struct._GimpObject** %current, align 8
  %52 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %palette_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %52, i32 0, i32 24
  store i8** %palette_name, i8*** %name_loc, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp20 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %53, i32 0, i32 1
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp20, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %54, i32 0, i32 42
  %55 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %call21 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %55)
  store %struct._GimpContainer* %call21, %struct._GimpContainer** %container, align 8
  %56 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_preset = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %56, i32 0, i32 25
  %57 = load %struct._GimpToolPreset*, %struct._GimpToolPreset** %tool_preset, align 8
  %58 = bitcast %struct._GimpToolPreset* %57 to %struct._GimpObject*
  store %struct._GimpObject* %58, %struct._GimpObject** %current, align 8
  %59 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tool_preset_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %59, i32 0, i32 26
  store i8** %tool_preset_name, i8*** %name_loc, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp23 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %60, i32 0, i32 1
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp23, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %61, i32 0, i32 36
  %62 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  store %struct._GimpContainer* %62, %struct._GimpContainer** %container, align 8
  %63 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %font = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %63, i32 0, i32 27
  %64 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %65 = bitcast %struct._GimpFont* %64 to %struct._GimpObject*
  store %struct._GimpObject* %65, %struct._GimpObject** %current, align 8
  %66 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %font_name = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %66, i32 0, i32 28
  store i8** %font_name, i8*** %name_loc, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.22, %sw.bb.19, %sw.bb.16, %sw.bb.13, %sw.bb.10, %sw.bb.7, %sw.bb.4, %sw.bb.2, %sw.bb
  %67 = load i32, i32* %no_data, align 4
  %tobool = icmp ne i32 %67, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %68 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp24 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %68, i32 0, i32 1
  %69 = load %struct._Gimp*, %struct._Gimp** %gimp24, align 8
  %no_data25 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %69, i32 0, i32 5
  %70 = load i32, i32* %no_data25, align 4
  store i32 %70, i32* %no_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %71 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call26 = call i32 @gimp_scanner_parse_identifier(%struct._GScanner* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0))
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end
  %72 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  call void @g_value_set_object(%struct._GValue* %72, i8* null)
  br label %if.end.47

if.else:                                          ; preds = %if.end
  %73 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call29 = call i32 @gimp_scanner_parse_string(%struct._GScanner* %73, i8** %object_name)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.45

if.then.31:                                       ; preds = %if.else
  %74 = load i8*, i8** %object_name, align 8
  %tobool32 = icmp ne i8* %74, null
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %if.then.31
  %call34 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0))
  store i8* %call34, i8** %object_name, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.31
  %75 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %76 = load i8*, i8** %object_name, align 8
  %call36 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %75, i8* %76)
  store %struct._GimpObject* %call36, %struct._GimpObject** %deserialize_obj, align 8
  %77 = load %struct._GimpObject*, %struct._GimpObject** %deserialize_obj, align 8
  %tobool37 = icmp ne %struct._GimpObject* %77, null
  br i1 %tobool37, label %if.end.44, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  %78 = load i32, i32* %no_data, align 4
  %tobool39 = icmp ne i32 %78, 0
  br i1 %tobool39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.then.38
  %79 = load i8**, i8*** %name_loc, align 8
  %80 = load i8*, i8** %79, align 8
  call void @g_free(i8* %80)
  %81 = load i8*, i8** %object_name, align 8
  %call41 = call noalias i8* @g_strdup(i8* %81)
  %82 = load i8**, i8*** %name_loc, align 8
  store i8* %call41, i8** %82, align 8
  br label %if.end.43

if.else.42:                                       ; preds = %if.then.38
  %83 = load %struct._GimpObject*, %struct._GimpObject** %current, align 8
  store %struct._GimpObject* %83, %struct._GimpObject** %deserialize_obj, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.40
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.35
  %84 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %85 = load %struct._GimpObject*, %struct._GimpObject** %deserialize_obj, align 8
  %86 = bitcast %struct._GimpObject* %85 to i8*
  call void @g_value_set_object(%struct._GValue* %84, i8* %86)
  %87 = load i8*, i8** %object_name, align 8
  call void @g_free(i8* %87)
  br label %if.end.46

if.else.45:                                       ; preds = %if.else
  %88 = load i32*, i32** %expected.addr, align 8
  store i32 264, i32* %88, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.end.44
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.28
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %sw.default
  %89 = load i32, i32* %retval
  ret i32 %89
}

declare i32 @gimp_config_serialize_changed_properties(%struct._GimpConfig*, %struct._GimpConfigWriter*) #1

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #1

declare void @gimp_config_writer_print(%struct._GimpConfigWriter*, i8*, i32) #1

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #1

declare i32 @gimp_scanner_parse_identifier(%struct._GScanner*, i8*) #1

declare i32 @gimp_scanner_parse_string(%struct._GScanner*, i8**) #1

declare i8* @g_object_ref(i8*) #1

declare double @gimp_rgba_distance(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
