; ModuleID = './app/core/gimp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDataFactoryLoaderEntry = type { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)*, i8*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type { %struct._GimpObject, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type { %struct._GimpObject, %struct._GimpIdTablePriv* }
%struct._GimpIdTablePriv = type opaque
%struct._GimpDataFactory = type { %struct._GimpObject, %struct._GimpDataFactoryPriv* }
%struct._GimpDataFactoryPriv = type opaque
%struct._GimpTagCache = type { %struct._GimpObject, %struct._GimpTagCachePriv* }
%struct._GimpTagCachePriv = type opaque
%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
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
%struct._GError = type { i32, i32, i8* }
%struct._GimpClass = type { %struct._GimpObjectClass, void (%struct._Gimp*, void (i8*, i8*, double)*)*, void (%struct._Gimp*, void (i8*, i8*, double)*)*, i32 (%struct._Gimp*, i32)*, void (%struct._Gimp*)*, void (%struct._Gimp*, i8*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpRc = type { %struct._GimpPluginConfig, i8*, i8*, i32, i32, i32 }
%struct._GimpPluginConfig = type { %struct._GimpGuiConfig, i8*, i8*, i8*, i8*, i8* }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpConfig = type opaque
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }

@gimp_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Gimp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_new = private unnamed_addr constant [9 x i8] c"gimp_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@__func__.gimp_set_show_gui = private unnamed_addr constant [18 x i8] c"gimp_set_show_gui\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@__func__.gimp_get_show_gui = private unnamed_addr constant [18 x i8] c"gimp_get_show_gui\00", align 1
@__func__.gimp_load_config = private unnamed_addr constant [17 x i8] c"gimp_load_config\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gimp->config == NULL\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"gimp->edit_config == NULL\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"INIT: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@__func__.gimp_initialize = private unnamed_addr constant [16 x i8] c"gimp_initialize\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"status_callback != NULL\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"GIMP_IS_CORE_CONFIG (gimp->config)\00", align 1
@gimp_signals = internal global [5 x i32] zeroinitializer, align 16
@__func__.gimp_restore = private unnamed_addr constant [13 x i8] c"gimp_restore\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Looking for data files\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Parasites\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Brushes\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Dynamics\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Patterns\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Palettes\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Gradients\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Fonts (this may take a while)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Tool Presets\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Templates\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Modules\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Updating tag cache\00", align 1
@__func__.gimp_is_restored = private unnamed_addr constant [17 x i8] c"gimp_is_restored\00", align 1
@__func__.gimp_exit = private unnamed_addr constant [10 x i8] c"gimp_exit\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"EXIT: %s\0A\00", align 1
@__func__.gimp_get_image_iter = private unnamed_addr constant [20 x i8] c"gimp_get_image_iter\00", align 1
@__func__.gimp_get_display_iter = private unnamed_addr constant [22 x i8] c"gimp_get_display_iter\00", align 1
@__func__.gimp_get_image_windows = private unnamed_addr constant [23 x i8] c"gimp_get_image_windows\00", align 1
@__func__.gimp_get_paint_info_iter = private unnamed_addr constant [25 x i8] c"gimp_get_paint_info_iter\00", align 1
@__func__.gimp_get_tool_info_iter = private unnamed_addr constant [24 x i8] c"gimp_get_tool_info_iter\00", align 1
@__func__.gimp_set_global_buffer = private unnamed_addr constant [23 x i8] c"gimp_set_global_buffer\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"buffer == NULL || GIMP_IS_BUFFER (buffer)\00", align 1
@__func__.gimp_create_image = private unnamed_addr constant [18 x i8] c"gimp_create_image\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@__func__.gimp_set_default_context = private unnamed_addr constant [25 x i8] c"gimp_set_default_context\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@__func__.gimp_get_default_context = private unnamed_addr constant [25 x i8] c"gimp_get_default_context\00", align 1
@__func__.gimp_set_user_context = private unnamed_addr constant [22 x i8] c"gimp_set_user_context\00", align 1
@__func__.gimp_get_user_context = private unnamed_addr constant [22 x i8] c"gimp_get_user_context\00", align 1
@__func__.gimp_get_tool_info = private unnamed_addr constant [19 x i8] c"gimp_get_tool_info\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"tool_id != NULL\00", align 1
@__func__.gimp_message_valist = private unnamed_addr constant [20 x i8] c"gimp_message_valist\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"handler == NULL || G_IS_OBJECT (handler)\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1
@__func__.gimp_message_literal = private unnamed_addr constant [21 x i8] c"gimp_message_literal\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"message != NULL\00", align 1
@__func__.gimp_image_opened = private unnamed_addr constant [18 x i8] c"gimp_image_opened\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@__func__.gimp_use_gegl = private unnamed_addr constant [14 x i8] c"gimp_use_gegl\00", align 1
@gimp_parent_class = internal global i8* null, align 8
@Gimp_private_offset = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"buffer-changed\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"image-opened\00", align 1
@__func__.gimp_dispose = private unnamed_addr constant [13 x i8] c"gimp_dispose\00", align 1
@__func__.gimp_finalize = private unnamed_addr constant [14 x i8] c"gimp_finalize\00", align 1
@gimp_real_initialize.brush_loader_entries = internal constant [6 x %struct._GimpDataFactoryLoaderEntry] [%struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_brush_load, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0 }, %struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_brush_load, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0 }, %struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_brush_load_abr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0 }, %struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_brush_load_abr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0 }, %struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_brush_generated_load, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 1 }, %struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_brush_pipe_load, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0 }], align 16
@.str.37 = private unnamed_addr constant [5 x i8] c".gbr\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c".gpb\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c".abr\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c".jbr\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c".vbr\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c".gih\00", align 1
@gimp_real_initialize.dynamics_loader_entries = internal constant [1 x %struct._GimpDataFactoryLoaderEntry] [%struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_dynamics_load, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 1 }], align 16
@.str.43 = private unnamed_addr constant [6 x i8] c".gdyn\00", align 1
@gimp_real_initialize.pattern_loader_entries = internal constant [2 x %struct._GimpDataFactoryLoaderEntry] [%struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_pattern_load, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0 }, %struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_pattern_load_pixbuf, i8* null, i32 0 }], align 16
@.str.44 = private unnamed_addr constant [5 x i8] c".pat\00", align 1
@gimp_real_initialize.gradient_loader_entries = internal constant [3 x %struct._GimpDataFactoryLoaderEntry] [%struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_gradient_load, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 1 }, %struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_gradient_load_svg, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0 }, %struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_gradient_load, i8* null, i32 1 }], align 16
@.str.45 = private unnamed_addr constant [5 x i8] c".ggr\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c".svg\00", align 1
@gimp_real_initialize.palette_loader_entries = internal constant [2 x %struct._GimpDataFactoryLoaderEntry] [%struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_palette_load, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 1 }, %struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_palette_load, i8* null, i32 1 }], align 16
@.str.47 = private unnamed_addr constant [5 x i8] c".gpl\00", align 1
@gimp_real_initialize.tool_preset_loader_entries = internal constant [1 x %struct._GimpDataFactoryLoaderEntry] [%struct._GimpDataFactoryLoaderEntry { %struct._GList* (%struct._GimpContext*, i8*, %struct._GError**)* @gimp_tool_preset_load, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 1 }], align 16
@.str.48 = private unnamed_addr constant [5 x i8] c".gtp\00", align 1
@__func__.gimp_real_initialize = private unnamed_addr constant [21 x i8] c"gimp_real_initialize\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Initialization\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"brush-path\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"brush-path-writable\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"brush factory\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"dynamics-path\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"dynamics-path-writable\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"dynamics factory\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"pattern-path\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"pattern-path-writable\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"pattern factory\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"gradient-path\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"gradient-path-writable\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"gradient factory\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"palette-path\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"palette-path-writable\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"palette factory\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"tool-preset-path\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"tool-preset-path-writable\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"tool preset factory\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"gimp-brush-clipboard\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"gimp-pattern-clipboard\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"Internal Procedures\00", align 1
@.str.71 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.gimp_real_restore = private unnamed_addr constant [18 x i8] c"gimp_real_restore\00", align 1
@__func__.gimp_real_exit = private unnamed_addr constant [15 x i8] c"gimp_real_exit\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"displays\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"named buffers\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"tool infos\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"templates\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 200, void (i8*, i8*)* bitcast (void (i8*)* @gimp_class_intern_init to void (i8*, i8*)*), i32 592, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._Gimp*)* @gimp_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_parent_class, align 8
  %1 = load i32, i32* @Gimp_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @Gimp_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpClass*
  call void @gimp_class_init(%struct._GimpClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_init(%struct._Gimp* %gimp) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  store %struct._GimpCoreConfig* null, %struct._GimpCoreConfig** %config, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %session_name = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 3
  store i8* null, i8** %session_name, align 8
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 4
  store i32 0, i32* %be_verbose, align 4
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_data = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 5
  store i32 0, i32* %no_data, align 4
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 7
  store i32 0, i32* %no_interface, align 4
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %show_gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 8
  store i32 1, i32* %show_gui, align 4
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %use_shm = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 9
  store i32 0, i32* %use_shm, align 4
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %message_handler = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 10
  store i32 1, i32* %message_handler, align 4
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %stack_trace_mode = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 12
  store i32 0, i32* %stack_trace_mode, align 4
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb_compat_mode = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 13
  store i32 0, i32* %pdb_compat_mode, align 4
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %restored = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 15
  store i32 0, i32* %restored, align 4
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_gui_init(%struct._Gimp* %11)
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 16
  store i32 0, i32* %busy, align 4
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %busy_idle_id = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 17
  store i32 0, i32* %busy_idle_id, align 4
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_units_init(%struct._Gimp* %14)
  %call = call %struct._GimpParasiteList* @gimp_parasite_list_new()
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %parasites = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 20
  store %struct._GimpParasiteList* %call, %struct._GimpParasiteList** %parasites, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_modules_init(%struct._Gimp* %16)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call1 = call %struct._GimpPlugInManager* @gimp_plug_in_manager_new(%struct._Gimp* %17)
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 25
  store %struct._GimpPlugInManager* %call1, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %call2 = call i64 @gimp_image_get_type() #7
  %call3 = call %struct._GimpContainer* @gimp_list_new_weak(i64 %call2, i32 0)
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 26
  store %struct._GimpContainer* %call3, %struct._GimpContainer** %images, align 8
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images4 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 26
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %images4, align 8
  %22 = bitcast %struct._GimpContainer* %21 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call5)
  %23 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0))
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %next_guide_ID = getelementptr inbounds %struct._Gimp, %struct._Gimp* %24, i32 0, i32 27
  store i32 1, i32* %next_guide_ID, align 4
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %next_sample_point_ID = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 28
  store i32 1, i32* %next_sample_point_ID, align 4
  %call7 = call %struct._GimpIdTable* @gimp_id_table_new()
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %image_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 29
  store %struct._GimpIdTable* %call7, %struct._GimpIdTable** %image_table, align 8
  %call8 = call %struct._GimpIdTable* @gimp_id_table_new()
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %item_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 30
  store %struct._GimpIdTable* %call8, %struct._GimpIdTable** %item_table, align 8
  %call9 = call i64 @gimp_list_get_type() #7
  %call10 = call i64 @gimp_object_get_type() #7
  %call11 = call i8* (i64, i8*, ...) @g_object_new(i64 %call9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i64 %call10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 1, i8* null)
  %28 = bitcast i8* %call11 to %struct._GimpContainer*
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 31
  store %struct._GimpContainer* %28, %struct._GimpContainer** %displays, align 8
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %displays12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 31
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %displays12, align 8
  %32 = bitcast %struct._GimpContainer* %31 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call13)
  %33 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0))
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %next_display_ID = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 32
  store i32 1, i32* %next_display_ID, align 4
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %image_windows = getelementptr inbounds %struct._Gimp, %struct._Gimp* %35, i32 0, i32 33
  store %struct._GList* null, %struct._GList** %image_windows, align 8
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 34
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %global_buffer, align 8
  %call15 = call i64 @gimp_buffer_get_type() #7
  %call16 = call %struct._GimpContainer* @gimp_list_new(i64 %call15, i32 1)
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 35
  store %struct._GimpContainer* %call16, %struct._GimpContainer** %named_buffers, align 8
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %named_buffers17 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %38, i32 0, i32 35
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers17, align 8
  %40 = bitcast %struct._GimpContainer* %39 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_object_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call18)
  %41 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0))
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %42, i32 0, i32 36
  store %struct._GimpContainer* null, %struct._GimpContainer** %fonts, align 8
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %43, i32 0, i32 37
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %brush_factory, align 8
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %44, i32 0, i32 38
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %dynamics_factory, align 8
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %45, i32 0, i32 39
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %pattern_factory, align 8
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %46, i32 0, i32 40
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %gradient_factory, align 8
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %47, i32 0, i32 41
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %palette_factory, align 8
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %48, i32 0, i32 42
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache = getelementptr inbounds %struct._Gimp, %struct._Gimp* %49, i32 0, i32 43
  store %struct._GimpTagCache* null, %struct._GimpTagCache** %tag_cache, align 8
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call20 = call %struct._GimpPDB* @gimp_pdb_new(%struct._Gimp* %50)
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %51, i32 0, i32 44
  store %struct._GimpPDB* %call20, %struct._GimpPDB** %pdb, align 8
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @xcf_init(%struct._Gimp* %52)
  %call21 = call i64 @gimp_tool_info_get_type() #7
  %call22 = call %struct._GimpContainer* @gimp_list_new(i64 %call21, i32 0)
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %53, i32 0, i32 45
  store %struct._GimpContainer* %call22, %struct._GimpContainer** %tool_info_list, align 8
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list23 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %54, i32 0, i32 45
  %55 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list23, align 8
  %56 = bitcast %struct._GimpContainer* %55 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call24)
  %57 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0))
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %standard_tool_info = getelementptr inbounds %struct._Gimp, %struct._Gimp* %58, i32 0, i32 46
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %standard_tool_info, align 8
  %59 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call26 = call %struct._GimpContainer* @gimp_document_list_new(%struct._Gimp* %59)
  %60 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %60, i32 0, i32 47
  store %struct._GimpContainer* %call26, %struct._GimpContainer** %documents, align 8
  %call27 = call i64 @gimp_template_get_type() #7
  %call28 = call %struct._GimpContainer* @gimp_list_new(i64 %call27, i32 1)
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %61, i32 0, i32 48
  store %struct._GimpContainer* %call28, %struct._GimpContainer** %templates, align 8
  %62 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates29 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %62, i32 0, i32 48
  %63 = load %struct._GimpContainer*, %struct._GimpContainer** %templates29, align 8
  %64 = bitcast %struct._GimpContainer* %63 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_object_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call30)
  %65 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0))
  %66 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %image_new_last_template = getelementptr inbounds %struct._Gimp, %struct._Gimp* %66, i32 0, i32 49
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %image_new_last_template, align 8
  %67 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %context_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %67, i32 0, i32 50
  store %struct._GList* null, %struct._GList** %context_list, align 8
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %default_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %68, i32 0, i32 51
  store %struct._GimpContext* null, %struct._GimpContext** %default_context, align 8
  %69 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %69, i32 0, i32 52
  store %struct._GimpContext* null, %struct._GimpContext** %user_context, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._Gimp* @gimp_new(i8* %name, i8* %session_name, i32 %be_verbose, i32 %no_data, i32 %no_fonts, i32 %no_interface, i32 %use_shm, i32 %console_messages, i32 %stack_trace_mode, i32 %pdb_compat_mode) #3 {
entry:
  %retval = alloca %struct._Gimp*, align 8
  %name.addr = alloca i8*, align 8
  %session_name.addr = alloca i8*, align 8
  %be_verbose.addr = alloca i32, align 4
  %no_data.addr = alloca i32, align 4
  %no_fonts.addr = alloca i32, align 4
  %no_interface.addr = alloca i32, align 4
  %use_shm.addr = alloca i32, align 4
  %console_messages.addr = alloca i32, align 4
  %stack_trace_mode.addr = alloca i32, align 4
  %pdb_compat_mode.addr = alloca i32, align 4
  %gimp = alloca %struct._Gimp*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %session_name, i8** %session_name.addr, align 8
  store i32 %be_verbose, i32* %be_verbose.addr, align 4
  store i32 %no_data, i32* %no_data.addr, align 4
  store i32 %no_fonts, i32* %no_fonts.addr, align 4
  store i32 %no_interface, i32* %no_interface.addr, align 4
  store i32 %use_shm, i32* %use_shm.addr, align 4
  store i32 %console_messages, i32* %console_messages.addr, align 4
  store i32 %stack_trace_mode, i32* %stack_trace_mode.addr, align 4
  store i32 %pdb_compat_mode, i32* %pdb_compat_mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.gimp_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._Gimp* null, %struct._Gimp** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_get_type() #7
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %1, i8* null)
  %2 = bitcast i8* %call1 to %struct._Gimp*
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load i8*, i8** %session_name.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %3)
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %session_name3 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 3
  store i8* %call2, i8** %session_name3, align 8
  %5 = load i32, i32* %be_verbose.addr, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose4 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 4
  store i32 %cond, i32* %be_verbose4, align 4
  %7 = load i32, i32* %no_data.addr, align 4
  %tobool5 = icmp ne i32 %7, 0
  %cond6 = select i1 %tobool5, i32 1, i32 0
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %no_data7 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 5
  store i32 %cond6, i32* %no_data7, align 4
  %9 = load i32, i32* %no_fonts.addr, align 4
  %tobool8 = icmp ne i32 %9, 0
  %cond9 = select i1 %tobool8, i32 1, i32 0
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %no_fonts10 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %10, i32 0, i32 6
  store i32 %cond9, i32* %no_fonts10, align 4
  %11 = load i32, i32* %no_interface.addr, align 4
  %tobool11 = icmp ne i32 %11, 0
  %cond12 = select i1 %tobool11, i32 1, i32 0
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %no_interface13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 7
  store i32 %cond12, i32* %no_interface13, align 4
  %13 = load i32, i32* %use_shm.addr, align 4
  %tobool14 = icmp ne i32 %13, 0
  %cond15 = select i1 %tobool14, i32 1, i32 0
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %use_shm16 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 9
  store i32 %cond15, i32* %use_shm16, align 4
  %15 = load i32, i32* %console_messages.addr, align 4
  %tobool17 = icmp ne i32 %15, 0
  %cond18 = select i1 %tobool17, i32 1, i32 0
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %console_messages19 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 11
  store i32 %cond18, i32* %console_messages19, align 4
  %17 = load i32, i32* %stack_trace_mode.addr, align 4
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %stack_trace_mode20 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 12
  store i32 %17, i32* %stack_trace_mode20, align 4
  %19 = load i32, i32* %pdb_compat_mode.addr, align 4
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb_compat_mode21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 13
  store i32 %19, i32* %pdb_compat_mode21, align 4
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  store %struct._Gimp* %21, %struct._Gimp** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %22 = load %struct._Gimp*, %struct._Gimp** %retval
  ret %struct._Gimp* %22
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_set_show_gui(%struct._Gimp* %gimp, i32 %show_gui) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %show_gui.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %show_gui, i32* %show_gui.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_set_show_gui, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %show_gui.addr, align 4
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %show_gui11 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 8
  store i32 %13, i32* %show_gui11, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_get_show_gui(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_get_show_gui, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %show_gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 8
  %14 = load i32, i32* %show_gui, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_load_config(%struct._Gimp* %gimp, i8* %alternate_system_gimprc, i8* %alternate_gimprc) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %alternate_system_gimprc.addr = alloca i8*, align 8
  %alternate_gimprc.addr = alloca i8*, align 8
  %gimprc = alloca %struct._GimpRc*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %alternate_system_gimprc, i8** %alternate_system_gimprc.addr, align 8
  store i8* %alternate_gimprc, i8** %alternate_gimprc.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_load_config, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 1
  %14 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %cmp12 = icmp eq %struct._GimpCoreConfig* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_load_config, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %edit_config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 2
  %16 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config, align 8
  %cmp18 = icmp eq %struct._GimpCoreConfig* %16, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_load_config, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 4
  %18 = load i32, i32* %be_verbose, align 4
  %tobool23 = icmp ne i32 %18, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.end.22
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_load_config, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %do.end.22
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unitrc_load(%struct._Gimp* %19)
  %20 = load i8*, i8** %alternate_system_gimprc.addr, align 8
  %21 = load i8*, i8** %alternate_gimprc.addr, align 8
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose26 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 4
  %23 = load i32, i32* %be_verbose26, align 4
  %call27 = call %struct._GimpRc* @gimp_rc_new(i8* %20, i8* %21, i32 %23)
  store %struct._GimpRc* %call27, %struct._GimpRc** %gimprc, align 8
  %24 = load %struct._GimpRc*, %struct._GimpRc** %gimprc, align 8
  %25 = bitcast %struct._GimpRc* %24 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_core_config_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call28)
  %26 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpCoreConfig*
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config30 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 1
  store %struct._GimpCoreConfig* %26, %struct._GimpCoreConfig** %config30, align 8
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config31 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 1
  %29 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config31, align 8
  %30 = bitcast %struct._GimpCoreConfig* %29 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_config_interface_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call32)
  %31 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpConfig*
  %call34 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %31)
  %32 = bitcast i8* %call34 to %struct._GimpCoreConfig*
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %edit_config35 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %33, i32 0, i32 2
  store %struct._GimpCoreConfig* %32, %struct._GimpCoreConfig** %edit_config35, align 8
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config36 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 1
  %35 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config36, align 8
  %36 = bitcast %struct._GimpCoreConfig* %35 to i8*
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %edit_config37 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 2
  %38 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config37, align 8
  %39 = bitcast %struct._GimpCoreConfig* %38 to i8*
  %call38 = call i64 @g_signal_connect_object(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_global_config_notify to void ()*), i8* %39, i32 0)
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %edit_config39 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %40, i32 0, i32 2
  %41 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config39, align 8
  %42 = bitcast %struct._GimpCoreConfig* %41 to i8*
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config40 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %43, i32 0, i32 1
  %44 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config40, align 8
  %45 = bitcast %struct._GimpCoreConfig* %44 to i8*
  %call41 = call i64 @g_signal_connect_object(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_edit_config_notify to void ()*), i8* %45, i32 0)
  br label %return

return:                                           ; preds = %if.end.25, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare void @g_print(i8*, ...) #1

declare void @gimp_unitrc_load(%struct._Gimp*) #1

declare %struct._GimpRc* @gimp_rc_new(i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_core_config_get_type() #2

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_global_config_notify(%struct._GObject* %global_config, %struct._GParamSpec* %param_spec, %struct._GObject* %edit_config) #3 {
entry:
  %global_config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %edit_config.addr = alloca %struct._GObject*, align 8
  %global_value = alloca %struct._GValue, align 8
  %edit_value = alloca %struct._GValue, align 8
  store %struct._GObject* %global_config, %struct._GObject** %global_config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GObject* %edit_config, %struct._GObject** %edit_config.addr, align 8
  %0 = bitcast %struct._GValue* %global_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = bitcast %struct._GValue* %edit_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 3
  %3 = load i64, i64* %value_type, align 8
  %call = call %struct._GValue* @g_value_init(%struct._GValue* %global_value, i64 %3)
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 3
  %5 = load i64, i64* %value_type1, align 8
  %call2 = call %struct._GValue* @g_value_init(%struct._GValue* %edit_value, i64 %5)
  %6 = load %struct._GObject*, %struct._GObject** %global_config.addr, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %6, i8* %8, %struct._GValue* %global_value)
  %9 = load %struct._GObject*, %struct._GObject** %edit_config.addr, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name3, align 8
  call void @g_object_get_property(%struct._GObject* %9, i8* %11, %struct._GValue* %edit_value)
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call4 = call i32 @g_param_values_cmp(%struct._GParamSpec* %12, %struct._GValue* %global_value, %struct._GValue* %edit_value)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GObject*, %struct._GObject** %edit_config.addr, align 8
  %14 = bitcast %struct._GObject* %13 to i8*
  %15 = load %struct._GObject*, %struct._GObject** %global_config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %call5 = call i32 @g_signal_handlers_block_matched(i8* %14, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_edit_config_notify to i8*), i8* %16)
  %17 = load %struct._GObject*, %struct._GObject** %edit_config.addr, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name6 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 1
  %19 = load i8*, i8** %name6, align 8
  call void @g_object_set_property(%struct._GObject* %17, i8* %19, %struct._GValue* %global_value)
  %20 = load %struct._GObject*, %struct._GObject** %edit_config.addr, align 8
  %21 = bitcast %struct._GObject* %20 to i8*
  %22 = load %struct._GObject*, %struct._GObject** %global_config.addr, align 8
  %23 = bitcast %struct._GObject* %22 to i8*
  %call7 = call i32 @g_signal_handlers_unblock_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_edit_config_notify to i8*), i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @g_value_unset(%struct._GValue* %global_value)
  call void @g_value_unset(%struct._GValue* %edit_value)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_edit_config_notify(%struct._GObject* %edit_config, %struct._GParamSpec* %param_spec, %struct._GObject* %global_config) #3 {
entry:
  %edit_config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %global_config.addr = alloca %struct._GObject*, align 8
  %edit_value = alloca %struct._GValue, align 8
  %global_value = alloca %struct._GValue, align 8
  store %struct._GObject* %edit_config, %struct._GObject** %edit_config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GObject* %global_config, %struct._GObject** %global_config.addr, align 8
  %0 = bitcast %struct._GValue* %edit_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  %1 = bitcast %struct._GValue* %global_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 3
  %3 = load i64, i64* %value_type, align 8
  %call = call %struct._GValue* @g_value_init(%struct._GValue* %edit_value, i64 %3)
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 3
  %5 = load i64, i64* %value_type1, align 8
  %call2 = call %struct._GValue* @g_value_init(%struct._GValue* %global_value, i64 %5)
  %6 = load %struct._GObject*, %struct._GObject** %edit_config.addr, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 1
  %8 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %6, i8* %8, %struct._GValue* %edit_value)
  %9 = load %struct._GObject*, %struct._GObject** %global_config.addr, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name3, align 8
  call void @g_object_get_property(%struct._GObject* %9, i8* %11, %struct._GValue* %global_value)
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call4 = call i32 @g_param_values_cmp(%struct._GParamSpec* %12, %struct._GValue* %edit_value, %struct._GValue* %global_value)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 2
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, 1024
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct._GObject*, %struct._GObject** %global_config.addr, align 8
  %16 = bitcast %struct._GObject* %15 to i8*
  %17 = load %struct._GObject*, %struct._GObject** %edit_config.addr, align 8
  %18 = bitcast %struct._GObject* %17 to i8*
  %call7 = call i32 @g_signal_handlers_block_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_global_config_notify to i8*), i8* %18)
  %19 = load %struct._GObject*, %struct._GObject** %global_config.addr, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name8, align 8
  call void @g_object_set_property(%struct._GObject* %19, i8* %21, %struct._GValue* %edit_value)
  %22 = load %struct._GObject*, %struct._GObject** %global_config.addr, align 8
  %23 = bitcast %struct._GObject* %22 to i8*
  %24 = load %struct._GObject*, %struct._GObject** %edit_config.addr, align 8
  %25 = bitcast %struct._GObject* %24 to i8*
  %call9 = call i32 @g_signal_handlers_unblock_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GObject*)* @gimp_global_config_notify to i8*), i8* %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  call void @g_value_unset(%struct._GValue* %edit_value)
  call void @g_value_unset(%struct._GValue* %global_value)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_initialize(%struct._Gimp* %gimp, void (i8*, i8*, double)* %status_callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_initialize, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %cmp12 = icmp ne void (i8*, i8*, double)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_initialize, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 1
  %15 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %16 = bitcast %struct._GimpCoreConfig* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_core_config_get_type() #7
  store i64 %call22, i64* %__t21, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type32, align 8
  %23 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %22, %23
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %25 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %26 = load i32, i32* %__r24, align 4
  store i32 %26, i32* %tmp39
  %27 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_initialize, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 4
  %29 = load i32, i32* %be_verbose, align 4
  %tobool45 = icmp ne i32 %29, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end.44
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_initialize, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %do.end.44
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %31 = bitcast %struct._Gimp* %30 to i8*
  %32 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 0), align 4
  %33 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %31, i32 %32, i32 0, void (i8*, i8*, double)* %33)
  br label %return

return:                                           ; preds = %if.end.47, %if.else.42, %if.else.14, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_restore(%struct._Gimp* %gimp, void (i8*, i8*, double)* %status_callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %cmp12 = icmp ne void (i8*, i8*, double)* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_restore, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 4
  %15 = load i32, i32* %be_verbose, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end.16
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_restore, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.end.16
  %16 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0)) #6
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #6
  call void %16(i8* %call20, i8* %call21, double 0.000000e+00)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_parasiterc_load(%struct._Gimp* %17)
  %18 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call22 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)) #6
  call void %18(i8* null, i8* %call22, double 1.000000e-01)
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 37
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 52
  %22 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_data = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 5
  %24 = load i32, i32* %no_data, align 4
  call void @gimp_data_factory_data_init(%struct._GimpDataFactory* %20, %struct._GimpContext* %22, i32 %24)
  %25 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0)) #6
  call void %25(i8* null, i8* %call23, double 2.000000e-01)
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 38
  %27 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context24 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 52
  %29 = load %struct._GimpContext*, %struct._GimpContext** %user_context24, align 8
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_data25 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 5
  %31 = load i32, i32* %no_data25, align 4
  call void @gimp_data_factory_data_init(%struct._GimpDataFactory* %27, %struct._GimpContext* %29, i32 %31)
  %32 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #6
  call void %32(i8* null, i8* %call26, double 3.000000e-01)
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %33, i32 0, i32 39
  %34 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context27 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %35, i32 0, i32 52
  %36 = load %struct._GimpContext*, %struct._GimpContext** %user_context27, align 8
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_data28 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 5
  %38 = load i32, i32* %no_data28, align 4
  call void @gimp_data_factory_data_init(%struct._GimpDataFactory* %34, %struct._GimpContext* %36, i32 %38)
  %39 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)) #6
  call void %39(i8* null, i8* %call29, double 4.000000e-01)
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %40, i32 0, i32 41
  %41 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context30 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %42, i32 0, i32 52
  %43 = load %struct._GimpContext*, %struct._GimpContext** %user_context30, align 8
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_data31 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %44, i32 0, i32 5
  %45 = load i32, i32* %no_data31, align 4
  call void @gimp_data_factory_data_init(%struct._GimpDataFactory* %41, %struct._GimpContext* %43, i32 %45)
  %46 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)) #6
  call void %46(i8* null, i8* %call32, double 5.000000e-01)
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %47, i32 0, i32 40
  %48 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context33 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %49, i32 0, i32 52
  %50 = load %struct._GimpContext*, %struct._GimpContext** %user_context33, align 8
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_data34 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %51, i32 0, i32 5
  %52 = load i32, i32* %no_data34, align 4
  call void @gimp_data_factory_data_init(%struct._GimpDataFactory* %48, %struct._GimpContext* %50, i32 %52)
  %53 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0)) #6
  call void %53(i8* null, i8* %call35, double 6.000000e-01)
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %54, i32 0, i32 6
  %55 = load i32, i32* %no_fonts, align 4
  %tobool36 = icmp ne i32 %55, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.end.19
  %56 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %57 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void @gimp_fonts_load_with_status(%struct._Gimp* %56, void (i8*, i8*, double)* %57)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.19
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %58, i32 0, i32 7
  %59 = load i32, i32* %no_interface, align 4
  %tobool39 = icmp ne i32 %59, 0
  br i1 %tobool39, label %if.end.44, label %if.then.40

if.then.40:                                       ; preds = %if.end.38
  %60 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)) #6
  call void %60(i8* null, i8* %call41, double 6.500000e-01)
  %61 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %61, i32 0, i32 42
  %62 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %63 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context42 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %63, i32 0, i32 52
  %64 = load %struct._GimpContext*, %struct._GimpContext** %user_context42, align 8
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_data43 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %65, i32 0, i32 5
  %66 = load i32, i32* %no_data43, align 4
  call void @gimp_data_factory_data_init(%struct._GimpDataFactory* %62, %struct._GimpContext* %64, i32 %66)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.end.38
  %67 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0)) #6
  call void %67(i8* null, i8* %call45, double 7.000000e-01)
  %68 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_templates_load(%struct._Gimp* %68)
  %69 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #6
  call void %69(i8* null, i8* %call46, double 8.000000e-01)
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_modules_load(%struct._Gimp* %70)
  %71 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0)) #6
  call void %71(i8* null, i8* %call47, double 9.000000e-01)
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache = getelementptr inbounds %struct._Gimp, %struct._Gimp* %72, i32 0, i32 43
  %73 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache, align 8
  call void @gimp_tag_cache_load(%struct._GimpTagCache* %73)
  %74 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache48 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %74, i32 0, i32 43
  %75 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache48, align 8
  %76 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory49 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %76, i32 0, i32 37
  %77 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory49, align 8
  %call50 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %77)
  call void @gimp_tag_cache_add_container(%struct._GimpTagCache* %75, %struct._GimpContainer* %call50)
  %78 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache51 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %78, i32 0, i32 43
  %79 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache51, align 8
  %80 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %dynamics_factory52 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %80, i32 0, i32 38
  %81 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory52, align 8
  %call53 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %81)
  call void @gimp_tag_cache_add_container(%struct._GimpTagCache* %79, %struct._GimpContainer* %call53)
  %82 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache54 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %82, i32 0, i32 43
  %83 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache54, align 8
  %84 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pattern_factory55 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %84, i32 0, i32 39
  %85 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory55, align 8
  %call56 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %85)
  call void @gimp_tag_cache_add_container(%struct._GimpTagCache* %83, %struct._GimpContainer* %call56)
  %86 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache57 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %86, i32 0, i32 43
  %87 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache57, align 8
  %88 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory58 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %88, i32 0, i32 40
  %89 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory58, align 8
  %call59 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %89)
  call void @gimp_tag_cache_add_container(%struct._GimpTagCache* %87, %struct._GimpContainer* %call59)
  %90 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache60 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %90, i32 0, i32 43
  %91 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache60, align 8
  %92 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory61 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %92, i32 0, i32 41
  %93 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory61, align 8
  %call62 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %93)
  call void @gimp_tag_cache_add_container(%struct._GimpTagCache* %91, %struct._GimpContainer* %call62)
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache63 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %94, i32 0, i32 43
  %95 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache63, align 8
  %96 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_preset_factory64 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %96, i32 0, i32 42
  %97 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory64, align 8
  %call65 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %97)
  call void @gimp_tag_cache_add_container(%struct._GimpTagCache* %95, %struct._GimpContainer* %call65)
  %98 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %99 = bitcast %struct._Gimp* %98 to i8*
  %100 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 1), align 4
  %101 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %99, i32 %100, i32 0, void (i8*, i8*, double)* %101)
  br label %return

return:                                           ; preds = %if.end.44, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @gimp_parasiterc_load(%struct._Gimp*) #1

declare void @gimp_data_factory_data_init(%struct._GimpDataFactory*, %struct._GimpContext*, i32) #1

declare void @gimp_fonts_load_with_status(%struct._Gimp*, void (i8*, i8*, double)*) #1

declare void @gimp_templates_load(%struct._Gimp*) #1

declare void @gimp_modules_load(%struct._Gimp*) #1

declare void @gimp_tag_cache_load(%struct._GimpTagCache*) #1

declare void @gimp_tag_cache_add_container(%struct._GimpTagCache*, %struct._GimpContainer*) #1

declare %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_is_restored(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_is_restored, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %restored = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 15
  %14 = load i32, i32* %restored, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_exit(%struct._Gimp* %gimp, i32 %force) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %force.addr = alloca i32, align 4
  %handled = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %force, i32* %force.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.gimp_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 4
  %14 = load i32, i32* %be_verbose, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.gimp_exit, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %16 = bitcast %struct._Gimp* %15 to i8*
  %17 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 2), align 4
  %18 = load i32, i32* %force.addr, align 4
  %tobool14 = icmp ne i32 %18, 0
  %cond = select i1 %tobool14, i32 1, i32 0
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %16, i32 %17, i32 0, i32 %cond, i32* %handled)
  br label %return

return:                                           ; preds = %if.end.13, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_get_image_iter(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_get_image_iter, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 26
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list = getelementptr inbounds %struct._GimpList, %struct._GimpList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %17, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %18
}

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_get_display_iter(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_get_display_iter, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 31
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list = getelementptr inbounds %struct._GimpList, %struct._GimpList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %17, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %18
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_get_image_windows(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_get_image_windows, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %image_windows = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 33
  %14 = load %struct._GList*, %struct._GList** %image_windows, align 8
  %call11 = call %struct._GList* @g_list_copy(%struct._GList* %14)
  store %struct._GList* %call11, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %15
}

declare %struct._GList* @g_list_copy(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_get_paint_info_iter(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_get_paint_info_iter, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 21
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list = getelementptr inbounds %struct._GimpList, %struct._GimpList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %17, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %18
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_get_tool_info_iter(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_get_tool_info_iter, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 45
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_list_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpList*
  %list = getelementptr inbounds %struct._GimpList, %struct._GimpList* %16, i32 0, i32 1
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %17, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %18
}

; Function Attrs: nounwind uwtable
define void @gimp_set_global_buffer(%struct._Gimp* %gimp, %struct._GimpBuffer* %buffer) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %buffer.addr = alloca %struct._GimpBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpBuffer* %buffer, %struct._GimpBuffer** %buffer.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_set_global_buffer, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %cmp12 = icmp eq %struct._GimpBuffer* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %15 = bitcast %struct._GimpBuffer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_set_global_buffer, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 34
  %29 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  %cmp40 = icmp eq %struct._GimpBuffer* %27, %29
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.39
  br label %return

if.end.42:                                        ; preds = %do.end.39
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer43 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 34
  %31 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer43, align 8
  %tobool44 = icmp ne %struct._GimpBuffer* %31, null
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.42
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer46 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 34
  %33 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer46, align 8
  %34 = bitcast %struct._GimpBuffer* %33 to i8*
  call void @g_object_unref(i8* %34)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.42
  %35 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer.addr, align 8
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer48 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 34
  store %struct._GimpBuffer* %35, %struct._GimpBuffer** %global_buffer48, align 8
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer49 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 34
  %38 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer49, align 8
  %tobool50 = icmp ne %struct._GimpBuffer* %38, null
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.47
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %global_buffer52 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 34
  %40 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer52, align 8
  %41 = bitcast %struct._GimpBuffer* %40 to i8*
  %call53 = call i8* @g_object_ref(i8* %41)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.end.47
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %43 = bitcast %struct._Gimp* %42 to i8*
  %44 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 3), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %43, i32 %44, i32 0)
  br label %return

return:                                           ; preds = %if.end.54, %if.then.41, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #2

declare void @g_object_unref(i8*) #1

declare i8* @g_object_ref(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_create_image(%struct._Gimp* %gimp, i32 %width, i32 %height, i32 %type, i32 %attach_comment) #3 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %attach_comment.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %comment = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %attach_comment, i32* %attach_comment.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_create_image, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %height.addr, align 4
  %16 = load i32, i32* %type.addr, align 4
  %call11 = call %struct._GimpImage* @gimp_image_new(%struct._Gimp* %13, i32 %14, i32 %15, i32 %16)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %17 = load i32, i32* %attach_comment.addr, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 1
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %19, i32 0, i32 35
  %20 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %call15 = call i8* @gimp_template_get_comment(%struct._GimpTemplate* %20)
  store i8* %call15, i8** %comment, align 8
  %21 = load i8*, i8** %comment, align 8
  %tobool16 = icmp ne i8* %21, null
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.13
  %22 = load i8*, i8** %comment, align 8
  %call19 = call i64 @strlen(i8* %22) #8
  %add = add i64 %call19, 1
  %conv = trunc i64 %add to i32
  %23 = load i8*, i8** %comment, align 8
  %call20 = call %struct._GimpParasite* @gimp_parasite_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 %conv, i8* %23)
  store %struct._GimpParasite* %call20, %struct._GimpParasite** %parasite, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %25 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_image_parasite_attach(%struct._GimpImage* %24, %struct._GimpParasite* %25)
  %26 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %26)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.then.13
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %do.end
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %27, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.else.9
  %28 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %28
}

declare %struct._GimpImage* @gimp_image_new(%struct._Gimp*, i32, i32, i32) #1

declare i8* @gimp_template_get_comment(%struct._GimpTemplate*) #1

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @gimp_image_parasite_attach(%struct._GimpImage*, %struct._GimpParasite*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define void @gimp_set_default_context(%struct._Gimp* %gimp, %struct._GimpContext* %context) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_set_default_context, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.54

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_set_default_context, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.54

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %default_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 51
  %29 = load %struct._GimpContext*, %struct._GimpContext** %default_context, align 8
  %cmp40 = icmp ne %struct._GimpContext* %27, %29
  br i1 %cmp40, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %do.end.39
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %default_context42 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 51
  %31 = load %struct._GimpContext*, %struct._GimpContext** %default_context42, align 8
  %tobool43 = icmp ne %struct._GimpContext* %31, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.41
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %default_context45 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 51
  %33 = load %struct._GimpContext*, %struct._GimpContext** %default_context45, align 8
  %34 = bitcast %struct._GimpContext* %33 to i8*
  call void @g_object_unref(i8* %34)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.41
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %default_context47 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 51
  store %struct._GimpContext* %35, %struct._GimpContext** %default_context47, align 8
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %default_context48 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 51
  %38 = load %struct._GimpContext*, %struct._GimpContext** %default_context48, align 8
  %tobool49 = icmp ne %struct._GimpContext* %38, null
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.46
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %default_context51 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 51
  %40 = load %struct._GimpContext*, %struct._GimpContext** %default_context51, align 8
  %41 = bitcast %struct._GimpContext* %40 to i8*
  %call52 = call i8* @g_object_ref(i8* %41)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.9, %if.else.37, %if.end.53, %do.end.39
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_get_default_context(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_get_default_context, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %default_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 51
  %14 = load %struct._GimpContext*, %struct._GimpContext** %default_context, align 8
  store %struct._GimpContext* %14, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_set_user_context(%struct._Gimp* %gimp, %struct._GimpContext* %context) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_set_user_context, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.54

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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_set_user_context, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.54

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 52
  %29 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %cmp40 = icmp ne %struct._GimpContext* %27, %29
  br i1 %cmp40, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %do.end.39
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context42 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 52
  %31 = load %struct._GimpContext*, %struct._GimpContext** %user_context42, align 8
  %tobool43 = icmp ne %struct._GimpContext* %31, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.41
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context45 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 52
  %33 = load %struct._GimpContext*, %struct._GimpContext** %user_context45, align 8
  %34 = bitcast %struct._GimpContext* %33 to i8*
  call void @g_object_unref(i8* %34)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.41
  %35 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context47 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 52
  store %struct._GimpContext* %35, %struct._GimpContext** %user_context47, align 8
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context48 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 52
  %38 = load %struct._GimpContext*, %struct._GimpContext** %user_context48, align 8
  %tobool49 = icmp ne %struct._GimpContext* %38, null
  br i1 %tobool49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.46
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context51 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 52
  %40 = load %struct._GimpContext*, %struct._GimpContext** %user_context51, align 8
  %41 = bitcast %struct._GimpContext* %40 to i8*
  %call52 = call i8* @g_object_ref(i8* %41)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.9, %if.else.37, %if.end.53, %do.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_get_user_context, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %user_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 52
  %14 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  store %struct._GimpContext* %14, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %15
}

; Function Attrs: nounwind uwtable
define %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %gimp, i8* %tool_id) #3 {
entry:
  %retval = alloca %struct._GimpToolInfo*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %tool_id.addr = alloca i8*, align 8
  %info = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %tool_id, i8** %tool_id.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_get_tool_info, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %tool_id.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_get_tool_info, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0))
  store %struct._GimpToolInfo* null, %struct._GimpToolInfo** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 45
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %16 = load i8*, i8** %tool_id.addr, align 8
  %call17 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %15, i8* %16)
  %17 = bitcast %struct._GimpObject* %call17 to i8*
  store i8* %17, i8** %info, align 8
  %18 = load i8*, i8** %info, align 8
  %19 = bitcast i8* %18 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %19, %struct._GimpToolInfo** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  %20 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %retval
  ret %struct._GimpToolInfo* %20
}

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_message(%struct._Gimp* %gimp, %struct._GObject* %handler, i32 %severity, i8* %format, ...) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %handler.addr = alloca %struct._GObject*, align 8
  %severity.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %handler, %struct._GObject** %handler.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %2 = load i32, i32* %severity.addr, align 4
  %3 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_message_valist(%struct._Gimp* %0, %struct._GObject* %1, i32 %2, i8* %3, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind uwtable
define void @gimp_message_valist(%struct._Gimp* %gimp, %struct._GObject* %handler, i32 %severity, i8* %format, %struct.__va_list_tag* %args) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %handler.addr = alloca %struct._GObject*, align 8
  %severity.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %message = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %handler, %struct._GObject** %handler.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_message_valist, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %cmp12 = icmp eq %struct._GObject* %13, null
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %call13 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %15, i64 80) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_message_valist, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %16 = load i8*, i8** %format.addr, align 8
  %cmp20 = icmp ne i8* %16, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_message_valist, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %17 = load i8*, i8** %format.addr, align 8
  %18 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call25 = call noalias i8* @g_strdup_vprintf(i8* %17, %struct.__va_list_tag* %18)
  store i8* %call25, i8** %message, align 8
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %20 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %21 = load i32, i32* %severity.addr, align 4
  %22 = load i8*, i8** %message, align 8
  call void @gimp_show_message(%struct._Gimp* %19, %struct._GObject* %20, i32 %21, i8* null, i8* %22)
  %23 = load i8*, i8** %message, align 8
  call void @g_free(i8* %23)
  br label %return

return:                                           ; preds = %do.end.24, %if.else.22, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #4

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

declare void @gimp_show_message(%struct._Gimp*, %struct._GObject*, i32, i8*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_message_literal(%struct._Gimp* %gimp, %struct._GObject* %handler, i32 %severity, i8* %message) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %handler.addr = alloca %struct._GObject*, align 8
  %severity.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %handler, %struct._GObject** %handler.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %message, i8** %message.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_message_literal, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %cmp12 = icmp eq %struct._GObject* %13, null
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %call13 = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %15, i64 80) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.17

if.else.16:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_message_literal, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %16 = load i8*, i8** %message.addr, align 8
  %cmp20 = icmp ne i8* %16, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.23

if.else.22:                                       ; preds = %do.body.19
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_message_literal, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %19 = load i32, i32* %severity.addr, align 4
  %20 = load i8*, i8** %message.addr, align 8
  call void @gimp_show_message(%struct._Gimp* %17, %struct._GObject* %18, i32 %19, i8* null, i8* %20)
  br label %return

return:                                           ; preds = %do.end.24, %if.else.22, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_image_opened(%struct._Gimp* %gimp, i8* %uri) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %uri.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_opened, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %uri.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_image_opened, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = bitcast %struct._Gimp* %14 to i8*
  %16 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 4), align 4
  %17 = load i8*, i8** %uri.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %15, i32 %16, i32 0, i8* %17)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_use_gegl(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_use_gegl, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 1
  %14 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %use_gegl = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %14, i32 0, i32 50
  %15 = load i32, i32* %use_gegl, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_class_init(%struct._GimpClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  store %struct._GimpClass* %klass, %struct._GimpClass** %klass.addr, align 8
  %0 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i64 %8, i32 2, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call3, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpClass* %9 to %struct._GTypeClass*
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type4, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i64 %11, i32 2, i32 168, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__POINTER, i64 4, i32 1, i64 68)
  store i32 %call5, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 1), align 4
  %12 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpClass* %12 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type6, align 8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i64 %14, i32 2, i32 176, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* @g_signal_accumulator_true_handled, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_BOOLEAN__BOOLEAN, i64 20, i32 1, i64 20)
  store i32 %call7, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 2), align 4
  %15 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpClass* %15 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type8, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i64 %17, i32 2, i32 184, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call9, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 3), align 4
  %18 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpClass* %18 to %struct._GTypeClass*
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type10, align 8
  %call11 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i64 %20, i32 2, i32 192, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__STRING, i64 4, i32 1, i64 64)
  store i32 %call11, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @gimp_signals, i32 0, i64 4), align 4
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %21, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_dispose, void (%struct._GObject*)** %dispose, align 8
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %22, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_finalize, void (%struct._GObject*)** %finalize, align 8
  %23 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %23, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %24 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %initialize = getelementptr inbounds %struct._GimpClass, %struct._GimpClass* %24, i32 0, i32 1
  store void (%struct._Gimp*, void (i8*, i8*, double)*)* @gimp_real_initialize, void (%struct._Gimp*, void (i8*, i8*, double)*)** %initialize, align 8
  %25 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %restore = getelementptr inbounds %struct._GimpClass, %struct._GimpClass* %25, i32 0, i32 2
  store void (%struct._Gimp*, void (i8*, i8*, double)*)* @gimp_real_restore, void (%struct._Gimp*, void (i8*, i8*, double)*)** %restore, align 8
  %26 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %exit = getelementptr inbounds %struct._GimpClass, %struct._GimpClass* %26, i32 0, i32 3
  store i32 (%struct._Gimp*, i32)* @gimp_real_exit, i32 (%struct._Gimp*, i32)** %exit, align 8
  %27 = load %struct._GimpClass*, %struct._GimpClass** %klass.addr, align 8
  %buffer_changed = getelementptr inbounds %struct._GimpClass, %struct._GimpClass* %27, i32 0, i32 4
  store void (%struct._Gimp*)* null, void (%struct._Gimp*)** %buffer_changed, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__POINTER(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare i32 @g_signal_accumulator_true_handled(%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*) #1

declare void @gimp_marshal_BOOLEAN__BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__STRING(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._Gimp*
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 4
  %4 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_dispose, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 37
  %6 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %tobool2 = icmp ne %struct._GimpDataFactory* %6, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory4 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 37
  %8 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory4, align 8
  call void @gimp_data_factory_data_free(%struct._GimpDataFactory* %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 38
  %10 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %tobool6 = icmp ne %struct._GimpDataFactory* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory8 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 38
  %12 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory8, align 8
  call void @gimp_data_factory_data_free(%struct._GimpDataFactory* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 39
  %14 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %tobool10 = icmp ne %struct._GimpDataFactory* %14, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 39
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory12, align 8
  call void @gimp_data_factory_data_free(%struct._GimpDataFactory* %16)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 40
  %18 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %tobool14 = icmp ne %struct._GimpDataFactory* %18, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory16 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 40
  %20 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory16, align 8
  call void @gimp_data_factory_data_free(%struct._GimpDataFactory* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 41
  %22 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %tobool18 = icmp ne %struct._GimpDataFactory* %22, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory20 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 41
  %24 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory20, align 8
  call void @gimp_data_factory_data_free(%struct._GimpDataFactory* %24)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 42
  %26 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %tobool22 = icmp ne %struct._GimpDataFactory* %26, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_preset_factory24 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 42
  %28 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory24, align 8
  call void @gimp_data_factory_data_free(%struct._GimpDataFactory* %28)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %29 = load i8*, i8** @gimp_parent_class, align 8
  %30 = bitcast i8* %29 to %struct._GTypeClass*
  %call26 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %30, i64 80)
  %31 = bitcast %struct._GTypeClass* %call26 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %31, i32 0, i32 5
  %32 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %33 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %32(%struct._GObject* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._Gimp*
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 4
  %4 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_finalize, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_contexts_exit(%struct._Gimp* %5)
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %image_new_last_template = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 49
  %7 = load %struct._GimpTemplate*, %struct._GimpTemplate** %image_new_last_template, align 8
  %tobool2 = icmp ne %struct._GimpTemplate* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %image_new_last_template4 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 49
  %9 = load %struct._GimpTemplate*, %struct._GimpTemplate** %image_new_last_template4, align 8
  %10 = bitcast %struct._GimpTemplate* %9 to i8*
  call void @g_object_unref(i8* %10)
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %image_new_last_template5 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 49
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %image_new_last_template5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 48
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %tobool7 = icmp ne %struct._GimpContainer* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates9 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 48
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %templates9, align 8
  %16 = bitcast %struct._GimpContainer* %15 to i8*
  call void @g_object_unref(i8* %16)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates10 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 48
  store %struct._GimpContainer* null, %struct._GimpContainer** %templates10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 47
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %tobool12 = icmp ne %struct._GimpContainer* %19, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.11
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 47
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %documents14, align 8
  %22 = bitcast %struct._GimpContainer* %21 to i8*
  call void @g_object_unref(i8* %22)
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents15 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 47
  store %struct._GimpContainer* null, %struct._GimpContainer** %documents15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.11
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_tool_info_set_standard(%struct._Gimp* %24, %struct._GimpToolInfo* null)
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 45
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %tobool17 = icmp ne %struct._GimpContainer* %26, null
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.16
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list19 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 45
  %28 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list19, align 8
  call void @gimp_container_foreach(%struct._GimpContainer* %28, void (i8*, i8*)* bitcast (void (%struct._GObject*)* @g_object_run_dispose to void (i8*, i8*)*), i8* null)
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list20 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 45
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list20, align 8
  %31 = bitcast %struct._GimpContainer* %30 to i8*
  call void @g_object_unref(i8* %31)
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 45
  store %struct._GimpContainer* null, %struct._GimpContainer** %tool_info_list21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.16
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @xcf_exit(%struct._Gimp* %33)
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 44
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %tobool23 = icmp ne %struct._GimpPDB* %35, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.22
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb25 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 44
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb25, align 8
  %38 = bitcast %struct._GimpPDB* %37 to i8*
  call void @g_object_unref(i8* %38)
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb26 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 44
  store %struct._GimpPDB* null, %struct._GimpPDB** %pdb26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.22
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %40, i32 0, i32 37
  %41 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %tobool28 = icmp ne %struct._GimpDataFactory* %41, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.27
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory30 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %42, i32 0, i32 37
  %43 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory30, align 8
  %44 = bitcast %struct._GimpDataFactory* %43 to i8*
  call void @g_object_unref(i8* %44)
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory31 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %45, i32 0, i32 37
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %brush_factory31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.27
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %46, i32 0, i32 38
  %47 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %tobool33 = icmp ne %struct._GimpDataFactory* %47, null
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.32
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory35 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %48, i32 0, i32 38
  %49 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory35, align 8
  %50 = bitcast %struct._GimpDataFactory* %49 to i8*
  call void @g_object_unref(i8* %50)
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory36 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %51, i32 0, i32 38
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %dynamics_factory36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.32
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %52, i32 0, i32 39
  %53 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %tobool38 = icmp ne %struct._GimpDataFactory* %53, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.37
  %54 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory40 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %54, i32 0, i32 39
  %55 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory40, align 8
  %56 = bitcast %struct._GimpDataFactory* %55 to i8*
  call void @g_object_unref(i8* %56)
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory41 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %57, i32 0, i32 39
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %pattern_factory41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.37
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %58, i32 0, i32 40
  %59 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %tobool43 = icmp ne %struct._GimpDataFactory* %59, null
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.42
  %60 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory45 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %60, i32 0, i32 40
  %61 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory45, align 8
  %62 = bitcast %struct._GimpDataFactory* %61 to i8*
  call void @g_object_unref(i8* %62)
  %63 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory46 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %63, i32 0, i32 40
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %gradient_factory46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.42
  %64 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %64, i32 0, i32 41
  %65 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %tobool48 = icmp ne %struct._GimpDataFactory* %65, null
  br i1 %tobool48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.47
  %66 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory50 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %66, i32 0, i32 41
  %67 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory50, align 8
  %68 = bitcast %struct._GimpDataFactory* %67 to i8*
  call void @g_object_unref(i8* %68)
  %69 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory51 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %69, i32 0, i32 41
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %palette_factory51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.47
  %70 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %70, i32 0, i32 42
  %71 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %tobool53 = icmp ne %struct._GimpDataFactory* %71, null
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.52
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_preset_factory55 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %72, i32 0, i32 42
  %73 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory55, align 8
  %74 = bitcast %struct._GimpDataFactory* %73 to i8*
  call void @g_object_unref(i8* %74)
  %75 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_preset_factory56 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %75, i32 0, i32 42
  store %struct._GimpDataFactory* null, %struct._GimpDataFactory** %tool_preset_factory56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end.52
  %76 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tag_cache = getelementptr inbounds %struct._Gimp, %struct._Gimp* %76, i32 0, i32 43
  %77 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache, align 8
  %tobool58 = icmp ne %struct._GimpTagCache* %77, null
  br i1 %tobool58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.57
  %78 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tag_cache60 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %78, i32 0, i32 43
  %79 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache60, align 8
  %80 = bitcast %struct._GimpTagCache* %79 to i8*
  call void @g_object_unref(i8* %80)
  %81 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tag_cache61 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %81, i32 0, i32 43
  store %struct._GimpTagCache* null, %struct._GimpTagCache** %tag_cache61, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.end.57
  %82 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %82, i32 0, i32 36
  %83 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %tobool63 = icmp ne %struct._GimpContainer* %83, null
  br i1 %tobool63, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.62
  %84 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts65 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %84, i32 0, i32 36
  %85 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts65, align 8
  %86 = bitcast %struct._GimpContainer* %85 to i8*
  call void @g_object_unref(i8* %86)
  %87 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts66 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %87, i32 0, i32 36
  store %struct._GimpContainer* null, %struct._GimpContainer** %fonts66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.62
  %88 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %88, i32 0, i32 35
  %89 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %tobool68 = icmp ne %struct._GimpContainer* %89, null
  br i1 %tobool68, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %if.end.67
  %90 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers70 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %90, i32 0, i32 35
  %91 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers70, align 8
  %92 = bitcast %struct._GimpContainer* %91 to i8*
  call void @g_object_unref(i8* %92)
  %93 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers71 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %93, i32 0, i32 35
  store %struct._GimpContainer* null, %struct._GimpContainer** %named_buffers71, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %if.end.67
  %94 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %94, i32 0, i32 34
  %95 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  %tobool73 = icmp ne %struct._GimpBuffer* %95, null
  br i1 %tobool73, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %if.end.72
  %96 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %global_buffer75 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %96, i32 0, i32 34
  %97 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer75, align 8
  %98 = bitcast %struct._GimpBuffer* %97 to i8*
  call void @g_object_unref(i8* %98)
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %global_buffer76 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %99, i32 0, i32 34
  store %struct._GimpBuffer* null, %struct._GimpBuffer** %global_buffer76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %if.end.72
  %100 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %100, i32 0, i32 31
  %101 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %tobool78 = icmp ne %struct._GimpContainer* %101, null
  br i1 %tobool78, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %if.end.77
  %102 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays80 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %102, i32 0, i32 31
  %103 = load %struct._GimpContainer*, %struct._GimpContainer** %displays80, align 8
  %104 = bitcast %struct._GimpContainer* %103 to i8*
  call void @g_object_unref(i8* %104)
  %105 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays81 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %105, i32 0, i32 31
  store %struct._GimpContainer* null, %struct._GimpContainer** %displays81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %if.end.77
  %106 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %item_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %106, i32 0, i32 30
  %107 = load %struct._GimpIdTable*, %struct._GimpIdTable** %item_table, align 8
  %tobool83 = icmp ne %struct._GimpIdTable* %107, null
  br i1 %tobool83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.82
  %108 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %item_table85 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %108, i32 0, i32 30
  %109 = load %struct._GimpIdTable*, %struct._GimpIdTable** %item_table85, align 8
  %110 = bitcast %struct._GimpIdTable* %109 to i8*
  call void @g_object_unref(i8* %110)
  %111 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %item_table86 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %111, i32 0, i32 30
  store %struct._GimpIdTable* null, %struct._GimpIdTable** %item_table86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.end.82
  %112 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %image_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %112, i32 0, i32 29
  %113 = load %struct._GimpIdTable*, %struct._GimpIdTable** %image_table, align 8
  %tobool88 = icmp ne %struct._GimpIdTable* %113, null
  br i1 %tobool88, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.end.87
  %114 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %image_table90 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %114, i32 0, i32 29
  %115 = load %struct._GimpIdTable*, %struct._GimpIdTable** %image_table90, align 8
  %116 = bitcast %struct._GimpIdTable* %115 to i8*
  call void @g_object_unref(i8* %116)
  %117 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %image_table91 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %117, i32 0, i32 29
  store %struct._GimpIdTable* null, %struct._GimpIdTable** %image_table91, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.end.87
  %118 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %118, i32 0, i32 26
  %119 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %tobool93 = icmp ne %struct._GimpContainer* %119, null
  br i1 %tobool93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.end.92
  %120 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images95 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %120, i32 0, i32 26
  %121 = load %struct._GimpContainer*, %struct._GimpContainer** %images95, align 8
  %122 = bitcast %struct._GimpContainer* %121 to i8*
  call void @g_object_unref(i8* %122)
  %123 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images96 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %123, i32 0, i32 26
  store %struct._GimpContainer* null, %struct._GimpContainer** %images96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.end.92
  %124 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %124, i32 0, i32 25
  %125 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %tobool98 = icmp ne %struct._GimpPlugInManager* %125, null
  br i1 %tobool98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %if.end.97
  %126 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager100 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %126, i32 0, i32 25
  %127 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager100, align 8
  %128 = bitcast %struct._GimpPlugInManager* %127 to i8*
  call void @g_object_unref(i8* %128)
  %129 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager101 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %129, i32 0, i32 25
  store %struct._GimpPlugInManager* null, %struct._GimpPlugInManager** %plug_in_manager101, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %if.end.97
  %130 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %130, i32 0, i32 23
  %131 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %tobool103 = icmp ne %struct._GimpModuleDB* %131, null
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.102
  %132 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_modules_exit(%struct._Gimp* %132)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.102
  %133 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_paint_exit(%struct._Gimp* %133)
  %134 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %parasites = getelementptr inbounds %struct._Gimp, %struct._Gimp* %134, i32 0, i32 20
  %135 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %tobool106 = icmp ne %struct._GimpParasiteList* %135, null
  br i1 %tobool106, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %if.end.105
  %136 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %parasites108 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %136, i32 0, i32 20
  %137 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites108, align 8
  %138 = bitcast %struct._GimpParasiteList* %137 to i8*
  call void @g_object_unref(i8* %138)
  %139 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %parasites109 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %139, i32 0, i32 20
  store %struct._GimpParasiteList* null, %struct._GimpParasiteList** %parasites109, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %if.end.105
  %140 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %140, i32 0, i32 2
  %141 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config, align 8
  %tobool111 = icmp ne %struct._GimpCoreConfig* %141, null
  br i1 %tobool111, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %if.end.110
  %142 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config113 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %142, i32 0, i32 2
  %143 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %edit_config113, align 8
  %144 = bitcast %struct._GimpCoreConfig* %143 to i8*
  call void @g_object_unref(i8* %144)
  %145 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %edit_config114 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %145, i32 0, i32 2
  store %struct._GimpCoreConfig* null, %struct._GimpCoreConfig** %edit_config114, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.112, %if.end.110
  %146 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %session_name = getelementptr inbounds %struct._Gimp, %struct._Gimp* %146, i32 0, i32 3
  %147 = load i8*, i8** %session_name, align 8
  %tobool116 = icmp ne i8* %147, null
  br i1 %tobool116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.end.115
  %148 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %session_name118 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %148, i32 0, i32 3
  %149 = load i8*, i8** %session_name118, align 8
  call void @g_free(i8* %149)
  %150 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %session_name119 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %150, i32 0, i32 3
  store i8* null, i8** %session_name119, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %if.end.115
  %151 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %context_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %151, i32 0, i32 50
  %152 = load %struct._GList*, %struct._GList** %context_list, align 8
  %tobool121 = icmp ne %struct._GList* %152, null
  br i1 %tobool121, label %if.then.122, label %if.end.125

if.then.122:                                      ; preds = %if.end.120
  %153 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %context_list123 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %153, i32 0, i32 50
  %154 = load %struct._GList*, %struct._GList** %context_list123, align 8
  call void @g_list_free(%struct._GList* %154)
  %155 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %context_list124 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %155, i32 0, i32 50
  store %struct._GList* null, %struct._GList** %context_list124, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.122, %if.end.120
  %156 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_units_exit(%struct._Gimp* %156)
  %157 = load i8*, i8** @gimp_parent_class, align 8
  %158 = bitcast i8* %157 to %struct._GTypeClass*
  %call126 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %158, i64 80)
  %159 = bitcast %struct._GTypeClass* %call126 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %159, i32 0, i32 6
  %160 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %161 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %160(%struct._GObject* %161)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._Gimp*
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %user_units = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 18
  %4 = load %struct._GList*, %struct._GList** %user_units, align 8
  %call2 = call i64 @gimp_g_list_get_memsize(%struct._GList* %4, i64 0)
  %5 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %parasites = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 20
  %7 = load %struct._GimpParasiteList*, %struct._GimpParasiteList** %parasites, align 8
  %8 = bitcast %struct._GimpParasiteList* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %10 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %9, i64* %10)
  %11 = load i64, i64* %memsize, align 8
  %add6 = add nsw i64 %11, %call5
  store i64 %add6, i64* %memsize, align 8
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %paint_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 21
  %13 = load %struct._GimpContainer*, %struct._GimpContainer** %paint_info_list, align 8
  %14 = bitcast %struct._GimpContainer* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  %16 = load i64*, i64** %gui_size.addr, align 8
  %call9 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %15, i64* %16)
  %17 = load i64, i64* %memsize, align 8
  %add10 = add nsw i64 %17, %call9
  store i64 %add10, i64* %memsize, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %module_db = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 23
  %19 = load %struct._GimpModuleDB*, %struct._GimpModuleDB** %module_db, align 8
  %20 = bitcast %struct._GimpModuleDB* %19 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i64 @gimp_g_object_get_memsize(%struct._GObject* %21)
  %22 = load i64, i64* %memsize, align 8
  %add13 = add nsw i64 %22, %call12
  store i64 %add13, i64* %memsize, align 8
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 25
  %24 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %25 = bitcast %struct._GimpPlugInManager* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_object_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpObject*
  %27 = load i64*, i64** %gui_size.addr, align 8
  %call16 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %26, i64* %27)
  %28 = load i64, i64* %memsize, align 8
  %add17 = add nsw i64 %28, %call16
  store i64 %add17, i64* %memsize, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %image_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 29
  %30 = load %struct._GimpIdTable*, %struct._GimpIdTable** %image_table, align 8
  %31 = bitcast %struct._GimpIdTable* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_object_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpObject*
  %call20 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %32, i64* null)
  %33 = load i64, i64* %memsize, align 8
  %add21 = add nsw i64 %33, %call20
  store i64 %add21, i64* %memsize, align 8
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %item_table = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 30
  %35 = load %struct._GimpIdTable*, %struct._GimpIdTable** %item_table, align 8
  %36 = bitcast %struct._GimpIdTable* %35 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_object_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call22)
  %37 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpObject*
  %call24 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %37, i64* null)
  %38 = load i64, i64* %memsize, align 8
  %add25 = add nsw i64 %38, %call24
  store i64 %add25, i64* %memsize, align 8
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 31
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %41 = bitcast %struct._GimpContainer* %40 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_object_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call26)
  %42 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpObject*
  %43 = load i64*, i64** %gui_size.addr, align 8
  %call28 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %42, i64* %43)
  %44 = load i64, i64* %memsize, align 8
  %add29 = add nsw i64 %44, %call28
  store i64 %add29, i64* %memsize, align 8
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %global_buffer = getelementptr inbounds %struct._Gimp, %struct._Gimp* %45, i32 0, i32 34
  %46 = load %struct._GimpBuffer*, %struct._GimpBuffer** %global_buffer, align 8
  %47 = bitcast %struct._GimpBuffer* %46 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_object_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call30)
  %48 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpObject*
  %49 = load i64*, i64** %gui_size.addr, align 8
  %call32 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %48, i64* %49)
  %50 = load i64, i64* %memsize, align 8
  %add33 = add nsw i64 %50, %call32
  store i64 %add33, i64* %memsize, align 8
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %named_buffers = getelementptr inbounds %struct._Gimp, %struct._Gimp* %51, i32 0, i32 35
  %52 = load %struct._GimpContainer*, %struct._GimpContainer** %named_buffers, align 8
  %53 = bitcast %struct._GimpContainer* %52 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_object_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call34)
  %54 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpObject*
  %55 = load i64*, i64** %gui_size.addr, align 8
  %call36 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %54, i64* %55)
  %56 = load i64, i64* %memsize, align 8
  %add37 = add nsw i64 %56, %call36
  store i64 %add37, i64* %memsize, align 8
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %fonts = getelementptr inbounds %struct._Gimp, %struct._Gimp* %57, i32 0, i32 36
  %58 = load %struct._GimpContainer*, %struct._GimpContainer** %fonts, align 8
  %59 = bitcast %struct._GimpContainer* %58 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_object_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call38)
  %60 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpObject*
  %61 = load i64*, i64** %gui_size.addr, align 8
  %call40 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %60, i64* %61)
  %62 = load i64, i64* %memsize, align 8
  %add41 = add nsw i64 %62, %call40
  store i64 %add41, i64* %memsize, align 8
  %63 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %63, i32 0, i32 37
  %64 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  %65 = bitcast %struct._GimpDataFactory* %64 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_object_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call42)
  %66 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpObject*
  %67 = load i64*, i64** %gui_size.addr, align 8
  %call44 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %66, i64* %67)
  %68 = load i64, i64* %memsize, align 8
  %add45 = add nsw i64 %68, %call44
  store i64 %add45, i64* %memsize, align 8
  %69 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %69, i32 0, i32 38
  %70 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  %71 = bitcast %struct._GimpDataFactory* %70 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_object_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call46)
  %72 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpObject*
  %73 = load i64*, i64** %gui_size.addr, align 8
  %call48 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %72, i64* %73)
  %74 = load i64, i64* %memsize, align 8
  %add49 = add nsw i64 %74, %call48
  store i64 %add49, i64* %memsize, align 8
  %75 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %75, i32 0, i32 39
  %76 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  %77 = bitcast %struct._GimpDataFactory* %76 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_object_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call50)
  %78 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpObject*
  %79 = load i64*, i64** %gui_size.addr, align 8
  %call52 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %78, i64* %79)
  %80 = load i64, i64* %memsize, align 8
  %add53 = add nsw i64 %80, %call52
  store i64 %add53, i64* %memsize, align 8
  %81 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %81, i32 0, i32 40
  %82 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  %83 = bitcast %struct._GimpDataFactory* %82 to %struct._GTypeInstance*
  %call54 = call i64 @gimp_object_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call54)
  %84 = bitcast %struct._GTypeInstance* %call55 to %struct._GimpObject*
  %85 = load i64*, i64** %gui_size.addr, align 8
  %call56 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %84, i64* %85)
  %86 = load i64, i64* %memsize, align 8
  %add57 = add nsw i64 %86, %call56
  store i64 %add57, i64* %memsize, align 8
  %87 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %87, i32 0, i32 41
  %88 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  %89 = bitcast %struct._GimpDataFactory* %88 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_object_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call58)
  %90 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpObject*
  %91 = load i64*, i64** %gui_size.addr, align 8
  %call60 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %90, i64* %91)
  %92 = load i64, i64* %memsize, align 8
  %add61 = add nsw i64 %92, %call60
  store i64 %add61, i64* %memsize, align 8
  %93 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %93, i32 0, i32 42
  %94 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %95 = bitcast %struct._GimpDataFactory* %94 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_object_get_type() #7
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call62)
  %96 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpObject*
  %97 = load i64*, i64** %gui_size.addr, align 8
  %call64 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %96, i64* %97)
  %98 = load i64, i64* %memsize, align 8
  %add65 = add nsw i64 %98, %call64
  store i64 %add65, i64* %memsize, align 8
  %99 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tag_cache = getelementptr inbounds %struct._Gimp, %struct._Gimp* %99, i32 0, i32 43
  %100 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache, align 8
  %101 = bitcast %struct._GimpTagCache* %100 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_object_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call66)
  %102 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpObject*
  %103 = load i64*, i64** %gui_size.addr, align 8
  %call68 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %102, i64* %103)
  %104 = load i64, i64* %memsize, align 8
  %add69 = add nsw i64 %104, %call68
  store i64 %add69, i64* %memsize, align 8
  %105 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %105, i32 0, i32 44
  %106 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %107 = bitcast %struct._GimpPDB* %106 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_object_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call70)
  %108 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpObject*
  %109 = load i64*, i64** %gui_size.addr, align 8
  %call72 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %108, i64* %109)
  %110 = load i64, i64* %memsize, align 8
  %add73 = add nsw i64 %110, %call72
  store i64 %add73, i64* %memsize, align 8
  %111 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %111, i32 0, i32 45
  %112 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %113 = bitcast %struct._GimpContainer* %112 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_object_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call74)
  %114 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpObject*
  %115 = load i64*, i64** %gui_size.addr, align 8
  %call76 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %114, i64* %115)
  %116 = load i64, i64* %memsize, align 8
  %add77 = add nsw i64 %116, %call76
  store i64 %add77, i64* %memsize, align 8
  %117 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %standard_tool_info = getelementptr inbounds %struct._Gimp, %struct._Gimp* %117, i32 0, i32 46
  %118 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %standard_tool_info, align 8
  %119 = bitcast %struct._GimpToolInfo* %118 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_object_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call78)
  %120 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpObject*
  %121 = load i64*, i64** %gui_size.addr, align 8
  %call80 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %120, i64* %121)
  %122 = load i64, i64* %memsize, align 8
  %add81 = add nsw i64 %122, %call80
  store i64 %add81, i64* %memsize, align 8
  %123 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %123, i32 0, i32 47
  %124 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %125 = bitcast %struct._GimpContainer* %124 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_object_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call82)
  %126 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpObject*
  %127 = load i64*, i64** %gui_size.addr, align 8
  %call84 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %126, i64* %127)
  %128 = load i64, i64* %memsize, align 8
  %add85 = add nsw i64 %128, %call84
  store i64 %add85, i64* %memsize, align 8
  %129 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %129, i32 0, i32 48
  %130 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %131 = bitcast %struct._GimpContainer* %130 to %struct._GTypeInstance*
  %call86 = call i64 @gimp_object_get_type() #7
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call86)
  %132 = bitcast %struct._GTypeInstance* %call87 to %struct._GimpObject*
  %133 = load i64*, i64** %gui_size.addr, align 8
  %call88 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %132, i64* %133)
  %134 = load i64, i64* %memsize, align 8
  %add89 = add nsw i64 %134, %call88
  store i64 %add89, i64* %memsize, align 8
  %135 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %image_new_last_template = getelementptr inbounds %struct._Gimp, %struct._Gimp* %135, i32 0, i32 49
  %136 = load %struct._GimpTemplate*, %struct._GimpTemplate** %image_new_last_template, align 8
  %137 = bitcast %struct._GimpTemplate* %136 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_object_get_type() #7
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call90)
  %138 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpObject*
  %139 = load i64*, i64** %gui_size.addr, align 8
  %call92 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %138, i64* %139)
  %140 = load i64, i64* %memsize, align 8
  %add93 = add nsw i64 %140, %call92
  store i64 %add93, i64* %memsize, align 8
  %141 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %context_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %141, i32 0, i32 50
  %142 = load %struct._GList*, %struct._GList** %context_list, align 8
  %call94 = call i64 @gimp_g_list_get_memsize(%struct._GList* %142, i64 0)
  %143 = load i64, i64* %memsize, align 8
  %add95 = add nsw i64 %143, %call94
  store i64 %add95, i64* %memsize, align 8
  %144 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %default_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %144, i32 0, i32 51
  %145 = load %struct._GimpContext*, %struct._GimpContext** %default_context, align 8
  %146 = bitcast %struct._GimpContext* %145 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_object_get_type() #7
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %146, i64 %call96)
  %147 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpObject*
  %148 = load i64*, i64** %gui_size.addr, align 8
  %call98 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %147, i64* %148)
  %149 = load i64, i64* %memsize, align 8
  %add99 = add nsw i64 %149, %call98
  store i64 %add99, i64* %memsize, align 8
  %150 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %user_context = getelementptr inbounds %struct._Gimp, %struct._Gimp* %150, i32 0, i32 52
  %151 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %152 = bitcast %struct._GimpContext* %151 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_object_get_type() #7
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call100)
  %153 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpObject*
  %154 = load i64*, i64** %gui_size.addr, align 8
  %call102 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %153, i64* %154)
  %155 = load i64, i64* %memsize, align 8
  %add103 = add nsw i64 %155, %call102
  store i64 %add103, i64* %memsize, align 8
  %156 = load i64, i64* %memsize, align 8
  %157 = load i8*, i8** @gimp_parent_class, align 8
  %158 = bitcast i8* %157 to %struct._GTypeClass*
  %call104 = call i64 @gimp_object_get_type() #7
  %call105 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %158, i64 %call104)
  %159 = bitcast %struct._GTypeClass* %call105 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %159, i32 0, i32 3
  %160 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %161 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %162 = load i64*, i64** %gui_size.addr, align 8
  %call106 = call i64 %160(%struct._GimpObject* %161, i64* %162)
  %add107 = add nsw i64 %156, %call106
  ret i64 %add107
}

; Function Attrs: nounwind uwtable
define internal void @gimp_real_initialize(%struct._Gimp* %gimp, void (i8*, i8*, double)* %status_callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  %clipboard_brush = alloca %struct._GimpData*, align 8
  %clipboard_pattern = alloca %struct._GimpData*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 4
  %1 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_real_initialize, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)) #6
  call void %2(i8* %call, i8* null, double 0.000000e+00)
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_fonts_init(%struct._Gimp* %3)
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call1 = call i64 @gimp_brush_get_type() #7
  %call2 = call %struct._GimpDataFactory* @gimp_data_factory_new(%struct._Gimp* %4, i64 %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), %struct._GimpDataFactoryLoaderEntry* getelementptr inbounds ([6 x %struct._GimpDataFactoryLoaderEntry], [6 x %struct._GimpDataFactoryLoaderEntry]* @gimp_real_initialize.brush_loader_entries, i32 0, i32 0), i32 6, %struct._GimpData* (%struct._GimpContext*, i8*)* @gimp_brush_new, %struct._GimpData* (%struct._GimpContext*)* @gimp_brush_get_standard)
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 37
  store %struct._GimpDataFactory* %call2, %struct._GimpDataFactory** %brush_factory, align 8
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory3 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 37
  %7 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory3, align 8
  %8 = bitcast %struct._GimpDataFactory* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0))
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call6 = call i64 @gimp_dynamics_get_type() #7
  %call7 = call %struct._GimpDataFactory* @gimp_data_factory_new(%struct._Gimp* %10, i64 %call6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i32 0, i32 0), %struct._GimpDataFactoryLoaderEntry* getelementptr inbounds ([1 x %struct._GimpDataFactoryLoaderEntry], [1 x %struct._GimpDataFactoryLoaderEntry]* @gimp_real_initialize.dynamics_loader_entries, i32 0, i32 0), i32 1, %struct._GimpData* (%struct._GimpContext*, i8*)* @gimp_dynamics_new, %struct._GimpData* (%struct._GimpContext*)* @gimp_dynamics_get_standard)
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 38
  store %struct._GimpDataFactory* %call7, %struct._GimpDataFactory** %dynamics_factory, align 8
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %dynamics_factory8 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 38
  %13 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory8, align 8
  %14 = bitcast %struct._GimpDataFactory* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_object_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0))
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call i64 @gimp_pattern_get_type() #7
  %call12 = call %struct._GimpDataFactory* @gimp_data_factory_new(%struct._Gimp* %16, i64 %call11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0), %struct._GimpDataFactoryLoaderEntry* getelementptr inbounds ([2 x %struct._GimpDataFactoryLoaderEntry], [2 x %struct._GimpDataFactoryLoaderEntry]* @gimp_real_initialize.pattern_loader_entries, i32 0, i32 0), i32 2, %struct._GimpData* (%struct._GimpContext*, i8*)* null, %struct._GimpData* (%struct._GimpContext*)* @gimp_pattern_get_standard)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 39
  store %struct._GimpDataFactory* %call12, %struct._GimpDataFactory** %pattern_factory, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pattern_factory13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 39
  %19 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory13, align 8
  %20 = bitcast %struct._GimpDataFactory* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_object_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0))
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call16 = call i64 @gimp_gradient_get_type() #7
  %call17 = call %struct._GimpDataFactory* @gimp_data_factory_new(%struct._Gimp* %22, i64 %call16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i32 0, i32 0), %struct._GimpDataFactoryLoaderEntry* getelementptr inbounds ([3 x %struct._GimpDataFactoryLoaderEntry], [3 x %struct._GimpDataFactoryLoaderEntry]* @gimp_real_initialize.gradient_loader_entries, i32 0, i32 0), i32 3, %struct._GimpData* (%struct._GimpContext*, i8*)* @gimp_gradient_new, %struct._GimpData* (%struct._GimpContext*)* @gimp_gradient_get_standard)
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 40
  store %struct._GimpDataFactory* %call17, %struct._GimpDataFactory** %gradient_factory, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory18 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %24, i32 0, i32 40
  %25 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory18, align 8
  %26 = bitcast %struct._GimpDataFactory* %25 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_object_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call19)
  %27 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0))
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call21 = call i64 @gimp_palette_get_type() #7
  %call22 = call %struct._GimpDataFactory* @gimp_data_factory_new(%struct._Gimp* %28, i64 %call21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0), %struct._GimpDataFactoryLoaderEntry* getelementptr inbounds ([2 x %struct._GimpDataFactoryLoaderEntry], [2 x %struct._GimpDataFactoryLoaderEntry]* @gimp_real_initialize.palette_loader_entries, i32 0, i32 0), i32 2, %struct._GimpData* (%struct._GimpContext*, i8*)* @gimp_palette_new, %struct._GimpData* (%struct._GimpContext*)* @gimp_palette_get_standard)
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 41
  store %struct._GimpDataFactory* %call22, %struct._GimpDataFactory** %palette_factory, align 8
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory23 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 41
  %31 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory23, align 8
  %32 = bitcast %struct._GimpDataFactory* %31 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_object_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call24)
  %33 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0))
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call26 = call i64 @gimp_tool_preset_get_type() #7
  %call27 = call %struct._GimpDataFactory* @gimp_data_factory_new(%struct._Gimp* %34, i64 %call26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), %struct._GimpDataFactoryLoaderEntry* getelementptr inbounds ([1 x %struct._GimpDataFactoryLoaderEntry], [1 x %struct._GimpDataFactoryLoaderEntry]* @gimp_real_initialize.tool_preset_loader_entries, i32 0, i32 0), i32 1, %struct._GimpData* (%struct._GimpContext*, i8*)* @gimp_tool_preset_new, %struct._GimpData* (%struct._GimpContext*)* null)
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %35, i32 0, i32 42
  store %struct._GimpDataFactory* %call27, %struct._GimpDataFactory** %tool_preset_factory, align 8
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_preset_factory28 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 42
  %37 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory28, align 8
  %38 = bitcast %struct._GimpDataFactory* %37 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_object_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call29)
  %39 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpObject*
  call void @gimp_object_set_static_name(%struct._GimpObject* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0))
  %call31 = call %struct._GimpTagCache* @gimp_tag_cache_new()
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache = getelementptr inbounds %struct._Gimp, %struct._Gimp* %40, i32 0, i32 43
  store %struct._GimpTagCache* %call31, %struct._GimpTagCache** %tag_cache, align 8
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_paint_init(%struct._Gimp* %41)
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %42, i32 0, i32 1
  %43 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %43, i32 0, i32 35
  %44 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %45 = bitcast %struct._GimpTemplate* %44 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_config_interface_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call32)
  %46 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpConfig*
  %call34 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %46)
  %47 = bitcast i8* %call34 to %struct._GimpTemplate*
  %48 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %image_new_last_template = getelementptr inbounds %struct._Gimp, %struct._Gimp* %48, i32 0, i32 49
  store %struct._GimpTemplate* %47, %struct._GimpTemplate** %image_new_last_template, align 8
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_contexts_init(%struct._Gimp* %49)
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_gradients_init(%struct._Gimp* %50)
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call35 = call %struct._GimpData* @gimp_brush_clipboard_new(%struct._Gimp* %51)
  store %struct._GimpData* %call35, %struct._GimpData** %clipboard_brush, align 8
  %52 = load %struct._GimpData*, %struct._GimpData** %clipboard_brush, align 8
  %53 = bitcast %struct._GimpData* %52 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_data_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call36)
  %54 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpData*
  call void @gimp_data_make_internal(%struct._GimpData* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0))
  %55 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory38 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %55, i32 0, i32 37
  %56 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory38, align 8
  %call39 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %56)
  %57 = load %struct._GimpData*, %struct._GimpData** %clipboard_brush, align 8
  %58 = bitcast %struct._GimpData* %57 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_object_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call40)
  %59 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpObject*
  %call42 = call i32 @gimp_container_add(%struct._GimpContainer* %call39, %struct._GimpObject* %59)
  %60 = load %struct._GimpData*, %struct._GimpData** %clipboard_brush, align 8
  %61 = bitcast %struct._GimpData* %60 to i8*
  call void @g_object_unref(i8* %61)
  %62 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call43 = call %struct._GimpData* @gimp_pattern_clipboard_new(%struct._Gimp* %62)
  store %struct._GimpData* %call43, %struct._GimpData** %clipboard_pattern, align 8
  %63 = load %struct._GimpData*, %struct._GimpData** %clipboard_pattern, align 8
  %64 = bitcast %struct._GimpData* %63 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_data_get_type() #7
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call44)
  %65 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpData*
  call void @gimp_data_make_internal(%struct._GimpData* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i32 0, i32 0))
  %66 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pattern_factory46 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %66, i32 0, i32 39
  %67 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory46, align 8
  %call47 = call %struct._GimpContainer* @gimp_data_factory_get_container(%struct._GimpDataFactory* %67)
  %68 = load %struct._GimpData*, %struct._GimpData** %clipboard_pattern, align 8
  %69 = bitcast %struct._GimpData* %68 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_object_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call48)
  %70 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpObject*
  %call50 = call i32 @gimp_container_add(%struct._GimpContainer* %call47, %struct._GimpObject* %70)
  %71 = load %struct._GimpData*, %struct._GimpData** %clipboard_pattern, align 8
  %72 = bitcast %struct._GimpData* %71 to i8*
  call void @g_object_unref(i8* %72)
  %73 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0)) #6
  call void %73(i8* null, i8* %call51, double 2.000000e-01)
  %74 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %74, i32 0, i32 44
  %75 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  call void @internal_procs_init(%struct._GimpPDB* %75)
  %76 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb52 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %76, i32 0, i32 44
  %77 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb52, align 8
  %78 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb_compat_mode = getelementptr inbounds %struct._Gimp, %struct._Gimp* %78, i32 0, i32 13
  %79 = load i32, i32* %pdb_compat_mode, align 4
  call void @gimp_pdb_compat_procs_register(%struct._GimpPDB* %77, i32 %79)
  %80 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %80, i32 0, i32 25
  %81 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %82 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void @gimp_plug_in_manager_initialize(%struct._GimpPlugInManager* %81, void (i8*, i8*, double)* %82)
  %83 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void %83(i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.71, i32 0, i32 0), double 1.000000e+00)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_real_restore(%struct._Gimp* %gimp, void (i8*, i8*, double)* %status_callback) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %status_callback.addr = alloca void (i8*, i8*, double)*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store void (i8*, i8*, double)* %status_callback, void (i8*, i8*, double)** %status_callback.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 4
  %1 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_real_restore, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 25
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %4)
  %5 = load void (i8*, i8*, double)*, void (i8*, i8*, double)** %status_callback.addr, align 8
  call void @gimp_plug_in_manager_restore(%struct._GimpPlugInManager* %3, %struct._GimpContext* %call, void (i8*, i8*, double)* %5)
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %restored = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 15
  store i32 1, i32* %restored, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_real_exit(%struct._Gimp* %gimp, i32 %force) #3 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %force.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %force, i32* %force.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 4
  %1 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.gimp_real_exit, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 25
  %3 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  call void @gimp_plug_in_manager_exit(%struct._GimpPlugInManager* %3)
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_modules_unload(%struct._Gimp* %4)
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tag_cache = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 43
  %6 = load %struct._GimpTagCache*, %struct._GimpTagCache** %tag_cache, align 8
  call void @gimp_tag_cache_save(%struct._GimpTagCache* %6)
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %brush_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %7, i32 0, i32 37
  %8 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %brush_factory, align 8
  call void @gimp_data_factory_data_save(%struct._GimpDataFactory* %8)
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %dynamics_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 38
  %10 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %dynamics_factory, align 8
  call void @gimp_data_factory_data_save(%struct._GimpDataFactory* %10)
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pattern_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 39
  %12 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %pattern_factory, align 8
  call void @gimp_data_factory_data_save(%struct._GimpDataFactory* %12)
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gradient_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 40
  %14 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %gradient_factory, align 8
  call void @gimp_data_factory_data_save(%struct._GimpDataFactory* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %palette_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 41
  %16 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %palette_factory, align 8
  call void @gimp_data_factory_data_save(%struct._GimpDataFactory* %16)
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %tool_preset_factory = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 42
  %18 = load %struct._GimpDataFactory*, %struct._GimpDataFactory** %tool_preset_factory, align 8
  call void @gimp_data_factory_data_save(%struct._GimpDataFactory* %18)
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_fonts_reset(%struct._Gimp* %19)
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_templates_save(%struct._Gimp* %20)
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_parasiterc_save(%struct._Gimp* %21)
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_unitrc_save(%struct._Gimp* %22)
  ret i32 0
}

declare void @gimp_data_factory_data_free(%struct._GimpDataFactory*) #1

declare void @gimp_contexts_exit(%struct._Gimp*) #1

declare void @gimp_tool_info_set_standard(%struct._Gimp*, %struct._GimpToolInfo*) #1

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #1

declare void @g_object_run_dispose(%struct._GObject*) #1

declare void @xcf_exit(%struct._Gimp*) #1

declare void @gimp_modules_exit(%struct._Gimp*) #1

declare void @gimp_paint_exit(%struct._Gimp*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gimp_units_exit(%struct._Gimp*) #1

declare i64 @gimp_g_list_get_memsize(%struct._GList*, i64) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare i64 @gimp_g_object_get_memsize(%struct._GObject*) #1

declare %struct._GList* @gimp_brush_load(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_brush_load_abr(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_brush_generated_load(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_brush_pipe_load(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_dynamics_load(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_pattern_load(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_pattern_load_pixbuf(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_gradient_load(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_gradient_load_svg(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_palette_load(%struct._GimpContext*, i8*, %struct._GError**) #1

declare %struct._GList* @gimp_tool_preset_load(%struct._GimpContext*, i8*, %struct._GError**) #1

declare void @gimp_fonts_init(%struct._Gimp*) #1

declare %struct._GimpDataFactory* @gimp_data_factory_new(%struct._Gimp*, i64, i8*, i8*, %struct._GimpDataFactoryLoaderEntry*, i32, %struct._GimpData* (%struct._GimpContext*, i8*)*, %struct._GimpData* (%struct._GimpContext*)*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare %struct._GimpData* @gimp_brush_new(%struct._GimpContext*, i8*) #1

declare %struct._GimpData* @gimp_brush_get_standard(%struct._GimpContext*) #1

declare void @gimp_object_set_static_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dynamics_get_type() #2

declare %struct._GimpData* @gimp_dynamics_new(%struct._GimpContext*, i8*) #1

declare %struct._GimpData* @gimp_dynamics_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #2

declare %struct._GimpData* @gimp_pattern_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #2

declare %struct._GimpData* @gimp_gradient_new(%struct._GimpContext*, i8*) #1

declare %struct._GimpData* @gimp_gradient_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #2

declare %struct._GimpData* @gimp_palette_new(%struct._GimpContext*, i8*) #1

declare %struct._GimpData* @gimp_palette_get_standard(%struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_preset_get_type() #2

declare %struct._GimpData* @gimp_tool_preset_new(%struct._GimpContext*, i8*) #1

declare %struct._GimpTagCache* @gimp_tag_cache_new() #1

declare void @gimp_paint_init(%struct._Gimp*) #1

declare void @gimp_contexts_init(%struct._Gimp*) #1

declare void @gimp_gradients_init(%struct._Gimp*) #1

declare %struct._GimpData* @gimp_brush_clipboard_new(%struct._Gimp*) #1

declare void @gimp_data_make_internal(%struct._GimpData*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GimpData* @gimp_pattern_clipboard_new(%struct._Gimp*) #1

declare void @internal_procs_init(%struct._GimpPDB*) #1

declare void @gimp_pdb_compat_procs_register(%struct._GimpPDB*, i32) #1

declare void @gimp_plug_in_manager_initialize(%struct._GimpPlugInManager*, void (i8*, i8*, double)*) #1

declare void @gimp_plug_in_manager_restore(%struct._GimpPlugInManager*, %struct._GimpContext*, void (i8*, i8*, double)*) #1

declare void @gimp_plug_in_manager_exit(%struct._GimpPlugInManager*) #1

declare void @gimp_modules_unload(%struct._Gimp*) #1

declare void @gimp_tag_cache_save(%struct._GimpTagCache*) #1

declare void @gimp_data_factory_data_save(%struct._GimpDataFactory*) #1

declare void @gimp_fonts_reset(%struct._Gimp*) #1

declare void @gimp_templates_save(%struct._Gimp*) #1

declare void @gimp_parasiterc_save(%struct._Gimp*) #1

declare void @gimp_unitrc_save(%struct._Gimp*) #1

declare void @gimp_gui_init(%struct._Gimp*) #1

declare void @gimp_units_init(%struct._Gimp*) #1

declare %struct._GimpParasiteList* @gimp_parasite_list_new() #1

declare void @gimp_modules_init(%struct._Gimp*) #1

declare %struct._GimpPlugInManager* @gimp_plug_in_manager_new(%struct._Gimp*) #1

declare %struct._GimpContainer* @gimp_list_new_weak(i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare %struct._GimpIdTable* @gimp_id_table_new() #1

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #1

declare %struct._GimpPDB* @gimp_pdb_new(%struct._Gimp*) #1

declare void @xcf_init(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_info_get_type() #2

declare %struct._GimpContainer* @gimp_document_list_new(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_template_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i32 @g_param_values_cmp(%struct._GParamSpec*, %struct._GValue*, %struct._GValue*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @g_value_unset(%struct._GValue*) #1

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
