; ModuleID = './app/config/gimpcoreconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCoreConfigClass = type { %struct._GimpBaseConfigClass }
%struct._GimpBaseConfigClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpGrid = type { %struct._GimpObject, i32, %struct._GimpRGB, %struct._GimpRGB, double, double, i32, double, double, i32 }
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_core_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpCoreConfig\00", align 1
@gimp_core_config_parent_class = internal global i8* null, align 8
@GimpCoreConfig_private_offset = internal global i32 0, align 4
@gimp_core_config_class_init.red = private unnamed_addr constant %struct._GimpRGB { double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01 }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Specifies the language to use for the user interface.\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"interpolation-type\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"Sets the level of interpolation used for scaling and other transformations.\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"default-threshold\00", align 1
@.str.6 = private unnamed_addr constant [317 x i8] c"Tools such as fuzzy-select and bucket fill find regions based on a seed-fill algorithm.  The seed fill starts at the initially selected pixel and progresses in all directions until the difference of pixel intensity from the original is greater than a specified threshold. This value represents the default threshold.\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"plug-ins\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"plug-in-path\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Sets the plug-in search path.\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"module-path\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Sets the module search path.\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"interpreters\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"interpreter-path\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Sets the interpreter search path.\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"environ\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"environ-path\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Sets the environ search path.\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"brushes\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"brush-path\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Sets the brush search path.\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"brush-path-writable\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"dynamics\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"dynamics-path\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Sets the dynamics search path.\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"dynamics-path-writable\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"patterns\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"pattern-path\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Sets the pattern search path.\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"pattern-path-writable\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"palettes\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"palette-path\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Sets the palette search path.\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"palette-path-writable\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"gradients\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"gradient-path\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Sets the gradient search path.\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"gradient-path-writable\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"tool-presets\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"tool-preset-path\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"tool-preset-path-writable\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"font-path\00", align 1
@.str.45 = private unnamed_addr constant [72 x i8] c"Where to look for fonts in addition to the system-wide installed fonts.\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"font-path-writable\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"default-brush\00", align 1
@.str.48 = private unnamed_addr constant [81 x i8] c"Specify a default brush.  The brush is searched for in the specified brush path.\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Round Fuzzy\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"default-dynamics\00", align 1
@.str.51 = private unnamed_addr constant [90 x i8] c"Specify a default dynamics.  The dynamics is searched for in the specified dynamics path.\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Dynamics Off\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"default-pattern\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Specify a default pattern.\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Pine\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"default-palette\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"Specify a default palette.\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"default-gradient\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"Specify a default gradient.\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"FG to BG (RGB)\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"default-tool-preset\00", align 1
@.str.63 = private unnamed_addr constant [99 x i8] c"Specify a default tool preset.  The tool preset is searched for in the specified tool prests path.\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"Current Options\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"default-font\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"Specify a default font.\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Sans\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"global-brush\00", align 1
@.str.69 = private unnamed_addr constant [61 x i8] c"When enabled, the selected brush will be used for all tools.\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"global-dynamics\00", align 1
@.str.71 = private unnamed_addr constant [64 x i8] c"When enabled, the selected dynamics will be used for all tools.\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"global-pattern\00", align 1
@.str.73 = private unnamed_addr constant [63 x i8] c"When enabled, the selected pattern will be used for all tools.\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"global-palette\00", align 1
@.str.75 = private unnamed_addr constant [63 x i8] c"When enabled, the selected palette will be used for all tools.\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"global-gradient\00", align 1
@.str.77 = private unnamed_addr constant [64 x i8] c"When enabled, the selected gradient will be used for all tools.\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"global-font\00", align 1
@.str.79 = private unnamed_addr constant [60 x i8] c"When enabled, the selected font will be used for all tools.\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"default-image\00", align 1
@.str.81 = private unnamed_addr constant [49 x i8] c"Sets the default image in the \22File/New\22 dialog.\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"default-grid\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"Specify a default image grid.\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"undo-levels\00", align 1
@.str.85 = private unnamed_addr constant [132 x i8] c"Sets the minimal number of operations that can be undone. More undo levels are kept available until the undo-size limit is reached.\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"undo-size\00", align 1
@.str.87 = private unnamed_addr constant [181 x i8] c"Sets an upper limit to the memory that is used per image to keep operations on the undo stack. Regardless of this setting, at least as many undo-levels as configured can be undone.\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"undo-preview-size\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"Sets the size of the previews in the Undo History.\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"plug-in-history-size\00", align 1
@.str.91 = private unnamed_addr constant [61 x i8] c"How many recently used plug-ins to keep on the Filters menu.\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"pluginrc-path\00", align 1
@.str.93 = private unnamed_addr constant [31 x i8] c"Sets the pluginrc search path.\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"${gimp_dir}/pluginrc\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"layer-previews\00", align 1
@.str.96 = private unnamed_addr constant [187 x i8] c"Sets whether GIMP should create previews of layers and channels. Previews in the layers and channels dialog are nice to have but they can slow things down when working with large images.\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"layer-preview-size\00", align 1
@.str.98 = private unnamed_addr constant [85 x i8] c"Sets the preview size used for layers and channel previews in newly created dialogs.\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"thumbnail-size\00", align 1
@.str.100 = private unnamed_addr constant [57 x i8] c"Sets the size of the thumbnail shown in the Open dialog.\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"thumbnail-filesize-limit\00", align 1
@.str.102 = private unnamed_addr constant [126 x i8] c"The thumbnail in the Open dialog will be automatically updated if the file being previewed is smaller than the size set here.\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"color-management\00", align 1
@.str.104 = private unnamed_addr constant [39 x i8] c"Defines the color management behavior.\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"color-profile-policy\00", align 1
@.str.106 = private unnamed_addr constant [59 x i8] c"How to handle embedded color profiles when opening a file.\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"save-document-history\00", align 1
@.str.108 = private unnamed_addr constant [84 x i8] c"Keep a permanent record of all opened and saved files in the Recent Documents list.\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"quick-mask-color\00", align 1
@.str.110 = private unnamed_addr constant [35 x i8] c"Sets the default quick mask color.\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"use-gegl\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"Use GEGL\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"install-colormap\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"min-colors\00", align 1
@.str.115 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"gimpcoreconfig.c\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"Default Image\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"Created with GIMP\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"Default Grid\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_core_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_core_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_core_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_base_config_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_core_config_class_intern_init to void (i8*, i8*)*), i32 424, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCoreConfig*)* @gimp_core_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_core_config_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_core_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_base_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_core_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_core_config_parent_class, align 8
  %1 = load i32, i32* @GimpCoreConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCoreConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCoreConfigClass*
  call void @gimp_core_config_class_init(%struct._GimpCoreConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_core_config_init(%struct._GimpCoreConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpCoreConfig*, align 8
  store %struct._GimpCoreConfig* %config, %struct._GimpCoreConfig** %config.addr, align 8
  %call = call i64 @gimp_template_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.122, i32 0, i32 0), i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpTemplate*
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %1, i32 0, i32 35
  store %struct._GimpTemplate* %0, %struct._GimpTemplate** %default_image, align 8
  %2 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %default_image2 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %2, i32 0, i32 35
  %3 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image2, align 8
  %4 = bitcast %struct._GimpTemplate* %3 to i8*
  %5 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %6 = bitcast %struct._GimpCoreConfig* %5 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, i8*)* @gimp_core_config_default_image_notify to void ()*), i8* %6, void (i8*, %struct._GClosure*)* null, i32 0)
  %call4 = call i64 @gimp_grid_get_type() #5
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i8* null)
  %7 = bitcast i8* %call5 to %struct._GimpGrid*
  %8 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %default_grid = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %8, i32 0, i32 36
  store %struct._GimpGrid* %7, %struct._GimpGrid** %default_grid, align 8
  %9 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %default_grid6 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %9, i32 0, i32 36
  %10 = load %struct._GimpGrid*, %struct._GimpGrid** %default_grid6, align 8
  %11 = bitcast %struct._GimpGrid* %10 to i8*
  %12 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %13 = bitcast %struct._GimpCoreConfig* %12 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, i8*)* @gimp_core_config_default_grid_notify to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  %call8 = call i64 @gimp_color_config_get_type() #5
  %call9 = call i8* (i64, i8*, ...) @g_object_new(i64 %call8, i8* null)
  %14 = bitcast i8* %call9 to %struct._GimpColorConfig*
  %15 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %15, i32 0, i32 46
  store %struct._GimpColorConfig* %14, %struct._GimpColorConfig** %color_management, align 8
  %16 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %color_management10 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %16, i32 0, i32 46
  %17 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management10, align 8
  %18 = bitcast %struct._GimpColorConfig* %17 to i8*
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config.addr, align 8
  %20 = bitcast %struct._GimpCoreConfig* %19 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, i8*)* @gimp_core_config_color_management_notify to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_core_config_class_init(%struct._GimpCoreConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCoreConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %path = alloca i8*, align 8
  %red = alloca %struct._GimpRGB, align 8
  store %struct._GimpCoreConfigClass* %klass, %struct._GimpCoreConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpCoreConfigClass*, %struct._GimpCoreConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCoreConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = bitcast %struct._GimpRGB* %red to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct._GimpRGB* @gimp_core_config_class_init.red to i8*), i64 32, i32 8, i1 false)
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_core_config_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_core_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_core_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* null, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call1)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call i64 @gimp_interpolation_type_get_type() #5
  %call3 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i32 0, i32 0), i64 %call2, i32 2, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 2, %struct._GParamSpec* %call3)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([317 x i8], [317 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 255, i32 15, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 3, %struct._GParamSpec* %call4)
  %call5 = call noalias i8* @gimp_config_build_plug_in_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call5, i8** %path, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %11 = load i8*, i8** %path, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 3, i8* %11, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 4, %struct._GParamSpec* %call6)
  %12 = load i8*, i8** %path, align 8
  call void @g_free(i8* %12)
  %call7 = call noalias i8* @gimp_config_build_plug_in_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  store i8* %call7, i8** %path, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %14 = load i8*, i8** %path, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0), i32 3, i8* %14, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 5, %struct._GParamSpec* %call8)
  %15 = load i8*, i8** %path, align 8
  call void @g_free(i8* %15)
  %call9 = call noalias i8* @gimp_config_build_plug_in_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call9, i8** %path, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %17 = load i8*, i8** %path, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), i32 3, i8* %17, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 6, %struct._GParamSpec* %call10)
  %18 = load i8*, i8** %path, align 8
  call void @g_free(i8* %18)
  %call11 = call noalias i8* @gimp_config_build_plug_in_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0))
  store i8* %call11, i8** %path, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %20 = load i8*, i8** %path, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i32 3, i8* %20, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 7, %struct._GParamSpec* %call12)
  %21 = load i8*, i8** %path, align 8
  call void @g_free(i8* %21)
  %call13 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  store i8* %call13, i8** %path, align 8
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %23 = load i8*, i8** %path, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i32 3, i8* %23, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 8, %struct._GParamSpec* %call14)
  %24 = load i8*, i8** %path, align 8
  call void @g_free(i8* %24)
  %call15 = call noalias i8* @gimp_config_build_writable_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  store i8* %call15, i8** %path, align 8
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %26 = load i8*, i8** %path, align 8
  %call16 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 3, i8* %26, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 9, %struct._GParamSpec* %call16)
  %27 = load i8*, i8** %path, align 8
  call void @g_free(i8* %27)
  %call17 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0))
  store i8* %call17, i8** %path, align 8
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %29 = load i8*, i8** %path, align 8
  %call18 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i32 3, i8* %29, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 10, %struct._GParamSpec* %call18)
  %30 = load i8*, i8** %path, align 8
  call void @g_free(i8* %30)
  %call19 = call noalias i8* @gimp_config_build_writable_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0))
  store i8* %call19, i8** %path, align 8
  %31 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %32 = load i8*, i8** %path, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 3, i8* %32, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %31, i32 11, %struct._GParamSpec* %call20)
  %33 = load i8*, i8** %path, align 8
  call void @g_free(i8* %33)
  %call21 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  store i8* %call21, i8** %path, align 8
  %34 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %35 = load i8*, i8** %path, align 8
  %call22 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* %35, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %34, i32 12, %struct._GParamSpec* %call22)
  %36 = load i8*, i8** %path, align 8
  call void @g_free(i8* %36)
  %call23 = call noalias i8* @gimp_config_build_writable_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  store i8* %call23, i8** %path, align 8
  %37 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %38 = load i8*, i8** %path, align 8
  %call24 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 3, i8* %38, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %37, i32 13, %struct._GParamSpec* %call24)
  %39 = load i8*, i8** %path, align 8
  call void @g_free(i8* %39)
  %call25 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0))
  store i8* %call25, i8** %path, align 8
  %40 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %41 = load i8*, i8** %path, align 8
  %call26 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i32 0, i32 0), i32 3, i8* %41, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %40, i32 14, %struct._GParamSpec* %call26)
  %42 = load i8*, i8** %path, align 8
  call void @g_free(i8* %42)
  %call27 = call noalias i8* @gimp_config_build_writable_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0))
  store i8* %call27, i8** %path, align 8
  %43 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %44 = load i8*, i8** %path, align 8
  %call28 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 3, i8* %44, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %43, i32 15, %struct._GParamSpec* %call28)
  %45 = load i8*, i8** %path, align 8
  call void @g_free(i8* %45)
  %call29 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0))
  store i8* %call29, i8** %path, align 8
  %46 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %47 = load i8*, i8** %path, align 8
  %call30 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i32 3, i8* %47, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %46, i32 16, %struct._GParamSpec* %call30)
  %48 = load i8*, i8** %path, align 8
  call void @g_free(i8* %48)
  %call31 = call noalias i8* @gimp_config_build_writable_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0))
  store i8* %call31, i8** %path, align 8
  %49 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %50 = load i8*, i8** %path, align 8
  %call32 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 3, i8* %50, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %49, i32 17, %struct._GParamSpec* %call32)
  %51 = load i8*, i8** %path, align 8
  call void @g_free(i8* %51)
  %call33 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0))
  store i8* %call33, i8** %path, align 8
  %52 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %53 = load i8*, i8** %path, align 8
  %call34 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i32 3, i8* %53, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %52, i32 18, %struct._GParamSpec* %call34)
  %54 = load i8*, i8** %path, align 8
  call void @g_free(i8* %54)
  %call35 = call noalias i8* @gimp_config_build_writable_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0))
  store i8* %call35, i8** %path, align 8
  %55 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %56 = load i8*, i8** %path, align 8
  %call36 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 3, i8* %56, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %55, i32 19, %struct._GParamSpec* %call36)
  %57 = load i8*, i8** %path, align 8
  call void @g_free(i8* %57)
  %call37 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0))
  store i8* %call37, i8** %path, align 8
  %58 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %59 = load i8*, i8** %path, align 8
  %call38 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i32 0, i32 0), i32 3, i8* %59, i32 2535)
  call void @g_object_class_install_property(%struct._GObjectClass* %58, i32 20, %struct._GParamSpec* %call38)
  %60 = load i8*, i8** %path, align 8
  call void @g_free(i8* %60)
  %61 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i8* null, i8* null, i32 3, i8* null, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %61, i32 21, %struct._GParamSpec* %call39)
  %62 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call40 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %62, i32 22, %struct._GParamSpec* %call40)
  %63 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call41 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %63, i32 23, %struct._GParamSpec* %call41)
  %64 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call42 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %64, i32 24, %struct._GParamSpec* %call42)
  %65 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call43 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %65, i32 25, %struct._GParamSpec* %call43)
  %66 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call44 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %66, i32 26, %struct._GParamSpec* %call44)
  %67 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call45 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %67, i32 27, %struct._GParamSpec* %call45)
  %68 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call46 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %68, i32 28, %struct._GParamSpec* %call46)
  %69 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call47 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.69, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %69, i32 29, %struct._GParamSpec* %call47)
  %70 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call48 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.71, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %70, i32 30, %struct._GParamSpec* %call48)
  %71 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call49 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.73, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %71, i32 31, %struct._GParamSpec* %call49)
  %72 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call50 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.75, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %72, i32 32, %struct._GParamSpec* %call50)
  %73 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call51 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.77, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %73, i32 33, %struct._GParamSpec* %call51)
  %74 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call52 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.79, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %74, i32 34, %struct._GParamSpec* %call52)
  %75 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call53 = call i64 @gimp_template_get_type() #5
  %call54 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.81, i32 0, i32 0), i64 %call53, i32 995)
  call void @g_object_class_install_property(%struct._GObjectClass* %75, i32 35, %struct._GParamSpec* %call54)
  %76 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call55 = call i64 @gimp_grid_get_type() #5
  %call56 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i32 0, i32 0), i64 %call55, i32 995)
  call void @g_object_class_install_property(%struct._GObjectClass* %76, i32 36, %struct._GParamSpec* %call56)
  %77 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call57 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.85, i32 0, i32 0), i32 0, i32 1048576, i32 5, i32 2535)
  call void @g_object_class_install_property(%struct._GObjectClass* %77, i32 37, %struct._GParamSpec* %call57)
  %78 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call58 = call %struct._GParamSpec* @gimp_param_spec_memsize(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.87, i32 0, i32 0), i64 0, i64 4398046511104, i64 67108864, i32 2535)
  call void @g_object_class_install_property(%struct._GObjectClass* %78, i32 38, %struct._GParamSpec* %call58)
  %79 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call59 = call i64 @gimp_view_size_get_type() #5
  %call60 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.89, i32 0, i32 0), i64 %call59, i32 48, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %79, i32 39, %struct._GParamSpec* %call60)
  %80 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call61 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.90, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 256, i32 10, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %80, i32 40, %struct._GParamSpec* %call61)
  %81 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call62 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.93, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0), i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %81, i32 41, %struct._GParamSpec* %call62)
  %82 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call63 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.96, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %82, i32 42, %struct._GParamSpec* %call63)
  %83 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call64 = call i64 @gimp_view_size_get_type() #5
  %call65 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.98, i32 0, i32 0), i64 %call64, i32 32, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %83, i32 43, %struct._GParamSpec* %call65)
  %84 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call66 = call i64 @gimp_thumbnail_size_get_type() #5
  %call67 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.99, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.100, i32 0, i32 0), i64 %call66, i32 128, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %84, i32 44, %struct._GParamSpec* %call67)
  %85 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call68 = call %struct._GParamSpec* @gimp_param_spec_memsize(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.101, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.102, i32 0, i32 0), i64 0, i64 4398046511104, i64 4194304, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %85, i32 45, %struct._GParamSpec* %call68)
  %86 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call69 = call i64 @gimp_color_config_get_type() #5
  %call70 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.104, i32 0, i32 0), i64 %call69, i32 995)
  call void @g_object_class_install_property(%struct._GObjectClass* %86, i32 46, %struct._GParamSpec* %call70)
  %87 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call71 = call i64 @gimp_color_profile_policy_get_type() #5
  %call72 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.105, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.106, i32 0, i32 0), i64 %call71, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %87, i32 47, %struct._GParamSpec* %call72)
  %88 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call73 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.108, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %88, i32 48, %struct._GParamSpec* %call73)
  %89 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call74 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.110, i32 0, i32 0), i32 1, %struct._GimpRGB* %red, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %89, i32 49, %struct._GParamSpec* %call74)
  %90 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call75 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i8* null, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %90, i32 50, %struct._GParamSpec* %call75)
  %91 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call76 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.113, i32 0, i32 0), i8* null, i8* null, i32 0, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %91, i32 51, %struct._GParamSpec* %call76)
  %92 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call77 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), i8* null, i8* null, i32 27, i32 256, i32 144, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %92, i32 52, %struct._GParamSpec* %call77)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_core_config_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %core_config = alloca %struct._GimpCoreConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_core_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCoreConfig*
  store %struct._GimpCoreConfig* %2, %struct._GimpCoreConfig** %core_config, align 8
  %3 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %language = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %3, i32 0, i32 1
  %4 = load i8*, i8** %language, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %5, i32 0, i32 4
  %6 = load i8*, i8** %plug_in_path, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %module_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %7, i32 0, i32 5
  %8 = load i8*, i8** %module_path, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %interpreter_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %9, i32 0, i32 6
  %10 = load i8*, i8** %interpreter_path, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %environ_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %11, i32 0, i32 7
  %12 = load i8*, i8** %environ_path, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %brush_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %13, i32 0, i32 8
  %14 = load i8*, i8** %brush_path, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %brush_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %15, i32 0, i32 9
  %16 = load i8*, i8** %brush_path_writable, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %dynamics_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %17, i32 0, i32 10
  %18 = load i8*, i8** %dynamics_path, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %dynamics_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %19, i32 0, i32 11
  %20 = load i8*, i8** %dynamics_path_writable, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %pattern_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %21, i32 0, i32 12
  %22 = load i8*, i8** %pattern_path, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %pattern_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %23, i32 0, i32 13
  %24 = load i8*, i8** %pattern_path_writable, align 8
  call void @g_free(i8* %24)
  %25 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %palette_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %25, i32 0, i32 14
  %26 = load i8*, i8** %palette_path, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %palette_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %27, i32 0, i32 15
  %28 = load i8*, i8** %palette_path_writable, align 8
  call void @g_free(i8* %28)
  %29 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %gradient_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %29, i32 0, i32 16
  %30 = load i8*, i8** %gradient_path, align 8
  call void @g_free(i8* %30)
  %31 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %gradient_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %31, i32 0, i32 17
  %32 = load i8*, i8** %gradient_path_writable, align 8
  call void @g_free(i8* %32)
  %33 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %tool_preset_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %33, i32 0, i32 18
  %34 = load i8*, i8** %tool_preset_path, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %tool_preset_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %35, i32 0, i32 19
  %36 = load i8*, i8** %tool_preset_path_writable, align 8
  call void @g_free(i8* %36)
  %37 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %font_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %37, i32 0, i32 20
  %38 = load i8*, i8** %font_path, align 8
  call void @g_free(i8* %38)
  %39 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %font_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %39, i32 0, i32 21
  %40 = load i8*, i8** %font_path_writable, align 8
  call void @g_free(i8* %40)
  %41 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_brush = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %41, i32 0, i32 22
  %42 = load i8*, i8** %default_brush, align 8
  call void @g_free(i8* %42)
  %43 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_dynamics = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %43, i32 0, i32 23
  %44 = load i8*, i8** %default_dynamics, align 8
  call void @g_free(i8* %44)
  %45 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_pattern = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %45, i32 0, i32 24
  %46 = load i8*, i8** %default_pattern, align 8
  call void @g_free(i8* %46)
  %47 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_palette = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %47, i32 0, i32 25
  %48 = load i8*, i8** %default_palette, align 8
  call void @g_free(i8* %48)
  %49 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_gradient = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %49, i32 0, i32 27
  %50 = load i8*, i8** %default_gradient, align 8
  call void @g_free(i8* %50)
  %51 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_tool_preset = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %51, i32 0, i32 26
  %52 = load i8*, i8** %default_tool_preset, align 8
  call void @g_free(i8* %52)
  %53 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_font = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %53, i32 0, i32 28
  %54 = load i8*, i8** %default_font, align 8
  call void @g_free(i8* %54)
  %55 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_rc_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %55, i32 0, i32 41
  %56 = load i8*, i8** %plug_in_rc_path, align 8
  call void @g_free(i8* %56)
  %57 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %57, i32 0, i32 35
  %58 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %tobool = icmp ne %struct._GimpTemplate* %58, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %59 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_image2 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %59, i32 0, i32 35
  %60 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image2, align 8
  %61 = bitcast %struct._GimpTemplate* %60 to i8*
  call void @g_object_unref(i8* %61)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %62 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_grid = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %62, i32 0, i32 36
  %63 = load %struct._GimpGrid*, %struct._GimpGrid** %default_grid, align 8
  %tobool3 = icmp ne %struct._GimpGrid* %63, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %64 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_grid5 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %64, i32 0, i32 36
  %65 = load %struct._GimpGrid*, %struct._GimpGrid** %default_grid5, align 8
  %66 = bitcast %struct._GimpGrid* %65 to i8*
  call void @g_object_unref(i8* %66)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %67 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %67, i32 0, i32 46
  %68 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management, align 8
  %tobool7 = icmp ne %struct._GimpColorConfig* %68, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %69 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %color_management9 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %69, i32 0, i32 46
  %70 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management9, align 8
  %71 = bitcast %struct._GimpColorConfig* %70 to i8*
  call void @g_object_unref(i8* %71)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %72 = load i8*, i8** @gimp_core_config_parent_class, align 8
  %73 = bitcast i8* %72 to %struct._GTypeClass*
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %73, i64 80)
  %74 = bitcast %struct._GTypeClass* %call11 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %74, i32 0, i32 6
  %75 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %76 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %75(%struct._GObject* %76)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_core_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %core_config = alloca %struct._GimpCoreConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_core_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCoreConfig*
  store %struct._GimpCoreConfig* %2, %struct._GimpCoreConfig** %core_config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.17
    i32 8, label %sw.bb.20
    i32 9, label %sw.bb.23
    i32 10, label %sw.bb.26
    i32 11, label %sw.bb.29
    i32 12, label %sw.bb.32
    i32 13, label %sw.bb.35
    i32 14, label %sw.bb.38
    i32 15, label %sw.bb.41
    i32 16, label %sw.bb.44
    i32 17, label %sw.bb.47
    i32 18, label %sw.bb.50
    i32 19, label %sw.bb.53
    i32 20, label %sw.bb.56
    i32 21, label %sw.bb.59
    i32 22, label %sw.bb.62
    i32 23, label %sw.bb.65
    i32 24, label %sw.bb.68
    i32 25, label %sw.bb.71
    i32 26, label %sw.bb.74
    i32 27, label %sw.bb.77
    i32 28, label %sw.bb.80
    i32 29, label %sw.bb.83
    i32 30, label %sw.bb.85
    i32 31, label %sw.bb.87
    i32 32, label %sw.bb.89
    i32 33, label %sw.bb.91
    i32 34, label %sw.bb.93
    i32 35, label %sw.bb.95
    i32 36, label %sw.bb.100
    i32 40, label %sw.bb.108
    i32 37, label %sw.bb.110
    i32 38, label %sw.bb.112
    i32 39, label %sw.bb.114
    i32 41, label %sw.bb.116
    i32 42, label %sw.bb.119
    i32 43, label %sw.bb.121
    i32 44, label %sw.bb.123
    i32 45, label %sw.bb.125
    i32 46, label %sw.bb.127
    i32 47, label %sw.bb.135
    i32 48, label %sw.bb.137
    i32 49, label %sw.bb.139
    i32 50, label %sw.bb.140
    i32 51, label %sw.bb.142
    i32 52, label %sw.bb.142
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %language = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %4, i32 0, i32 1
  %5 = load i8*, i8** %language, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %6)
  %7 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %language3 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %7, i32 0, i32 1
  store i8* %call2, i8** %language3, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i32 @g_value_get_enum(%struct._GValue* %8)
  %9 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %interpolation_type = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %9, i32 0, i32 2
  store i32 %call5, i32* %interpolation_type, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i32 @g_value_get_int(%struct._GValue* %10)
  %11 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_threshold = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %11, i32 0, i32 3
  store i32 %call7, i32* %default_threshold, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %12 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %12, i32 0, i32 4
  %13 = load i8*, i8** %plug_in_path, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @g_value_dup_string(%struct._GValue* %14)
  %15 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_path10 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %15, i32 0, i32 4
  store i8* %call9, i8** %plug_in_path10, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %16 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %module_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %16, i32 0, i32 5
  %17 = load i8*, i8** %module_path, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i8* @g_value_dup_string(%struct._GValue* %18)
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %module_path13 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %19, i32 0, i32 5
  store i8* %call12, i8** %module_path13, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %20 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %interpreter_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %20, i32 0, i32 6
  %21 = load i8*, i8** %interpreter_path, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i8* @g_value_dup_string(%struct._GValue* %22)
  %23 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %interpreter_path16 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %23, i32 0, i32 6
  store i8* %call15, i8** %interpreter_path16, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %24 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %environ_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %24, i32 0, i32 7
  %25 = load i8*, i8** %environ_path, align 8
  call void @g_free(i8* %25)
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i8* @g_value_dup_string(%struct._GValue* %26)
  %27 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %environ_path19 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %27, i32 0, i32 7
  store i8* %call18, i8** %environ_path19, align 8
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %28 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %brush_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %28, i32 0, i32 8
  %29 = load i8*, i8** %brush_path, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call21 = call i8* @g_value_dup_string(%struct._GValue* %30)
  %31 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %brush_path22 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %31, i32 0, i32 8
  store i8* %call21, i8** %brush_path22, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %32 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %brush_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %32, i32 0, i32 9
  %33 = load i8*, i8** %brush_path_writable, align 8
  call void @g_free(i8* %33)
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i8* @g_value_dup_string(%struct._GValue* %34)
  %35 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %brush_path_writable25 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %35, i32 0, i32 9
  store i8* %call24, i8** %brush_path_writable25, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %36 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %dynamics_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %36, i32 0, i32 10
  %37 = load i8*, i8** %dynamics_path, align 8
  call void @g_free(i8* %37)
  %38 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call27 = call i8* @g_value_dup_string(%struct._GValue* %38)
  %39 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %dynamics_path28 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %39, i32 0, i32 10
  store i8* %call27, i8** %dynamics_path28, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %40 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %dynamics_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %40, i32 0, i32 11
  %41 = load i8*, i8** %dynamics_path_writable, align 8
  call void @g_free(i8* %41)
  %42 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call30 = call i8* @g_value_dup_string(%struct._GValue* %42)
  %43 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %dynamics_path_writable31 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %43, i32 0, i32 11
  store i8* %call30, i8** %dynamics_path_writable31, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %44 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %pattern_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %44, i32 0, i32 12
  %45 = load i8*, i8** %pattern_path, align 8
  call void @g_free(i8* %45)
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call33 = call i8* @g_value_dup_string(%struct._GValue* %46)
  %47 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %pattern_path34 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %47, i32 0, i32 12
  store i8* %call33, i8** %pattern_path34, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %48 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %pattern_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %48, i32 0, i32 13
  %49 = load i8*, i8** %pattern_path_writable, align 8
  call void @g_free(i8* %49)
  %50 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call36 = call i8* @g_value_dup_string(%struct._GValue* %50)
  %51 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %pattern_path_writable37 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %51, i32 0, i32 13
  store i8* %call36, i8** %pattern_path_writable37, align 8
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %52 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %palette_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %52, i32 0, i32 14
  %53 = load i8*, i8** %palette_path, align 8
  call void @g_free(i8* %53)
  %54 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call39 = call i8* @g_value_dup_string(%struct._GValue* %54)
  %55 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %palette_path40 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %55, i32 0, i32 14
  store i8* %call39, i8** %palette_path40, align 8
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %56 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %palette_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %56, i32 0, i32 15
  %57 = load i8*, i8** %palette_path_writable, align 8
  call void @g_free(i8* %57)
  %58 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call42 = call i8* @g_value_dup_string(%struct._GValue* %58)
  %59 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %palette_path_writable43 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %59, i32 0, i32 15
  store i8* %call42, i8** %palette_path_writable43, align 8
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %60 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %gradient_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %60, i32 0, i32 16
  %61 = load i8*, i8** %gradient_path, align 8
  call void @g_free(i8* %61)
  %62 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call45 = call i8* @g_value_dup_string(%struct._GValue* %62)
  %63 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %gradient_path46 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %63, i32 0, i32 16
  store i8* %call45, i8** %gradient_path46, align 8
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  %64 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %gradient_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %64, i32 0, i32 17
  %65 = load i8*, i8** %gradient_path_writable, align 8
  call void @g_free(i8* %65)
  %66 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call48 = call i8* @g_value_dup_string(%struct._GValue* %66)
  %67 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %gradient_path_writable49 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %67, i32 0, i32 17
  store i8* %call48, i8** %gradient_path_writable49, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %68 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %tool_preset_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %68, i32 0, i32 18
  %69 = load i8*, i8** %tool_preset_path, align 8
  call void @g_free(i8* %69)
  %70 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call51 = call i8* @g_value_dup_string(%struct._GValue* %70)
  %71 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %tool_preset_path52 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %71, i32 0, i32 18
  store i8* %call51, i8** %tool_preset_path52, align 8
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry
  %72 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %tool_preset_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %72, i32 0, i32 19
  %73 = load i8*, i8** %tool_preset_path_writable, align 8
  call void @g_free(i8* %73)
  %74 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call54 = call i8* @g_value_dup_string(%struct._GValue* %74)
  %75 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %tool_preset_path_writable55 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %75, i32 0, i32 19
  store i8* %call54, i8** %tool_preset_path_writable55, align 8
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  %76 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %font_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %76, i32 0, i32 20
  %77 = load i8*, i8** %font_path, align 8
  call void @g_free(i8* %77)
  %78 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call57 = call i8* @g_value_dup_string(%struct._GValue* %78)
  %79 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %font_path58 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %79, i32 0, i32 20
  store i8* %call57, i8** %font_path58, align 8
  br label %sw.epilog

sw.bb.59:                                         ; preds = %entry
  %80 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %font_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %80, i32 0, i32 21
  %81 = load i8*, i8** %font_path_writable, align 8
  call void @g_free(i8* %81)
  %82 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call60 = call i8* @g_value_dup_string(%struct._GValue* %82)
  %83 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %font_path_writable61 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %83, i32 0, i32 21
  store i8* %call60, i8** %font_path_writable61, align 8
  br label %sw.epilog

sw.bb.62:                                         ; preds = %entry
  %84 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_brush = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %84, i32 0, i32 22
  %85 = load i8*, i8** %default_brush, align 8
  call void @g_free(i8* %85)
  %86 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call63 = call i8* @g_value_dup_string(%struct._GValue* %86)
  %87 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_brush64 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %87, i32 0, i32 22
  store i8* %call63, i8** %default_brush64, align 8
  br label %sw.epilog

sw.bb.65:                                         ; preds = %entry
  %88 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_dynamics = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %88, i32 0, i32 23
  %89 = load i8*, i8** %default_dynamics, align 8
  call void @g_free(i8* %89)
  %90 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call66 = call i8* @g_value_dup_string(%struct._GValue* %90)
  %91 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_dynamics67 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %91, i32 0, i32 23
  store i8* %call66, i8** %default_dynamics67, align 8
  br label %sw.epilog

sw.bb.68:                                         ; preds = %entry
  %92 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_pattern = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %92, i32 0, i32 24
  %93 = load i8*, i8** %default_pattern, align 8
  call void @g_free(i8* %93)
  %94 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call69 = call i8* @g_value_dup_string(%struct._GValue* %94)
  %95 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_pattern70 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %95, i32 0, i32 24
  store i8* %call69, i8** %default_pattern70, align 8
  br label %sw.epilog

sw.bb.71:                                         ; preds = %entry
  %96 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_palette = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %96, i32 0, i32 25
  %97 = load i8*, i8** %default_palette, align 8
  call void @g_free(i8* %97)
  %98 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call72 = call i8* @g_value_dup_string(%struct._GValue* %98)
  %99 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_palette73 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %99, i32 0, i32 25
  store i8* %call72, i8** %default_palette73, align 8
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  %100 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_gradient = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %100, i32 0, i32 27
  %101 = load i8*, i8** %default_gradient, align 8
  call void @g_free(i8* %101)
  %102 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call75 = call i8* @g_value_dup_string(%struct._GValue* %102)
  %103 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_gradient76 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %103, i32 0, i32 27
  store i8* %call75, i8** %default_gradient76, align 8
  br label %sw.epilog

sw.bb.77:                                         ; preds = %entry
  %104 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_tool_preset = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %104, i32 0, i32 26
  %105 = load i8*, i8** %default_tool_preset, align 8
  call void @g_free(i8* %105)
  %106 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call78 = call i8* @g_value_dup_string(%struct._GValue* %106)
  %107 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_tool_preset79 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %107, i32 0, i32 26
  store i8* %call78, i8** %default_tool_preset79, align 8
  br label %sw.epilog

sw.bb.80:                                         ; preds = %entry
  %108 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_font = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %108, i32 0, i32 28
  %109 = load i8*, i8** %default_font, align 8
  call void @g_free(i8* %109)
  %110 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call81 = call i8* @g_value_dup_string(%struct._GValue* %110)
  %111 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_font82 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %111, i32 0, i32 28
  store i8* %call81, i8** %default_font82, align 8
  br label %sw.epilog

sw.bb.83:                                         ; preds = %entry
  %112 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call84 = call i32 @g_value_get_boolean(%struct._GValue* %112)
  %113 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_brush = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %113, i32 0, i32 29
  store i32 %call84, i32* %global_brush, align 4
  br label %sw.epilog

sw.bb.85:                                         ; preds = %entry
  %114 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call86 = call i32 @g_value_get_boolean(%struct._GValue* %114)
  %115 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_dynamics = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %115, i32 0, i32 30
  store i32 %call86, i32* %global_dynamics, align 4
  br label %sw.epilog

sw.bb.87:                                         ; preds = %entry
  %116 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call88 = call i32 @g_value_get_boolean(%struct._GValue* %116)
  %117 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_pattern = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %117, i32 0, i32 31
  store i32 %call88, i32* %global_pattern, align 4
  br label %sw.epilog

sw.bb.89:                                         ; preds = %entry
  %118 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call90 = call i32 @g_value_get_boolean(%struct._GValue* %118)
  %119 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_palette = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %119, i32 0, i32 32
  store i32 %call90, i32* %global_palette, align 4
  br label %sw.epilog

sw.bb.91:                                         ; preds = %entry
  %120 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call92 = call i32 @g_value_get_boolean(%struct._GValue* %120)
  %121 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_gradient = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %121, i32 0, i32 33
  store i32 %call92, i32* %global_gradient, align 4
  br label %sw.epilog

sw.bb.93:                                         ; preds = %entry
  %122 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call94 = call i32 @g_value_get_boolean(%struct._GValue* %122)
  %123 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_font = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %123, i32 0, i32 34
  store i32 %call94, i32* %global_font, align 4
  br label %sw.epilog

sw.bb.95:                                         ; preds = %entry
  %124 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call96 = call i8* @g_value_get_object(%struct._GValue* %124)
  %tobool = icmp ne i8* %call96, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.95
  %125 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call97 = call i8* @g_value_get_object(%struct._GValue* %125)
  %126 = bitcast i8* %call97 to %struct._GObject*
  %127 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %127, i32 0, i32 35
  %128 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %129 = bitcast %struct._GimpTemplate* %128 to %struct._GTypeInstance*
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %129, i64 80)
  %130 = bitcast %struct._GTypeInstance* %call98 to %struct._GObject*
  %call99 = call i32 @gimp_config_sync(%struct._GObject* %126, %struct._GObject* %130, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.95
  br label %sw.epilog

sw.bb.100:                                        ; preds = %entry
  %131 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call101 = call i8* @g_value_get_object(%struct._GValue* %131)
  %tobool102 = icmp ne i8* %call101, null
  br i1 %tobool102, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %sw.bb.100
  %132 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call104 = call i8* @g_value_get_object(%struct._GValue* %132)
  %133 = bitcast i8* %call104 to %struct._GObject*
  %134 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_grid = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %134, i32 0, i32 36
  %135 = load %struct._GimpGrid*, %struct._GimpGrid** %default_grid, align 8
  %136 = bitcast %struct._GimpGrid* %135 to %struct._GTypeInstance*
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 80)
  %137 = bitcast %struct._GTypeInstance* %call105 to %struct._GObject*
  %call106 = call i32 @gimp_config_sync(%struct._GObject* %133, %struct._GObject* %137, i32 0)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %sw.bb.100
  br label %sw.epilog

sw.bb.108:                                        ; preds = %entry
  %138 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call109 = call i32 @g_value_get_int(%struct._GValue* %138)
  %139 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_history_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %139, i32 0, i32 40
  store i32 %call109, i32* %plug_in_history_size, align 4
  br label %sw.epilog

sw.bb.110:                                        ; preds = %entry
  %140 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call111 = call i32 @g_value_get_int(%struct._GValue* %140)
  %141 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %levels_of_undo = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %141, i32 0, i32 37
  store i32 %call111, i32* %levels_of_undo, align 4
  br label %sw.epilog

sw.bb.112:                                        ; preds = %entry
  %142 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call113 = call i64 @g_value_get_uint64(%struct._GValue* %142)
  %143 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %undo_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %143, i32 0, i32 38
  store i64 %call113, i64* %undo_size, align 8
  br label %sw.epilog

sw.bb.114:                                        ; preds = %entry
  %144 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call115 = call i32 @g_value_get_enum(%struct._GValue* %144)
  %145 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %undo_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %145, i32 0, i32 39
  store i32 %call115, i32* %undo_preview_size, align 4
  br label %sw.epilog

sw.bb.116:                                        ; preds = %entry
  %146 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_rc_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %146, i32 0, i32 41
  %147 = load i8*, i8** %plug_in_rc_path, align 8
  call void @g_free(i8* %147)
  %148 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call117 = call i8* @g_value_dup_string(%struct._GValue* %148)
  %149 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_rc_path118 = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %149, i32 0, i32 41
  store i8* %call117, i8** %plug_in_rc_path118, align 8
  br label %sw.epilog

sw.bb.119:                                        ; preds = %entry
  %150 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call120 = call i32 @g_value_get_boolean(%struct._GValue* %150)
  %151 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %layer_previews = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %151, i32 0, i32 42
  store i32 %call120, i32* %layer_previews, align 4
  br label %sw.epilog

sw.bb.121:                                        ; preds = %entry
  %152 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call122 = call i32 @g_value_get_enum(%struct._GValue* %152)
  %153 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %layer_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %153, i32 0, i32 43
  store i32 %call122, i32* %layer_preview_size, align 4
  br label %sw.epilog

sw.bb.123:                                        ; preds = %entry
  %154 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call124 = call i32 @g_value_get_enum(%struct._GValue* %154)
  %155 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %thumbnail_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %155, i32 0, i32 44
  store i32 %call124, i32* %thumbnail_size, align 4
  br label %sw.epilog

sw.bb.125:                                        ; preds = %entry
  %156 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call126 = call i64 @g_value_get_uint64(%struct._GValue* %156)
  %157 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %thumbnail_filesize_limit = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %157, i32 0, i32 45
  store i64 %call126, i64* %thumbnail_filesize_limit, align 8
  br label %sw.epilog

sw.bb.127:                                        ; preds = %entry
  %158 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call128 = call i8* @g_value_get_object(%struct._GValue* %158)
  %tobool129 = icmp ne i8* %call128, null
  br i1 %tobool129, label %if.then.130, label %if.end.134

if.then.130:                                      ; preds = %sw.bb.127
  %159 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call131 = call i8* @g_value_get_object(%struct._GValue* %159)
  %160 = bitcast i8* %call131 to %struct._GObject*
  %161 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %161, i32 0, i32 46
  %162 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management, align 8
  %163 = bitcast %struct._GimpColorConfig* %162 to %struct._GTypeInstance*
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 80)
  %164 = bitcast %struct._GTypeInstance* %call132 to %struct._GObject*
  %call133 = call i32 @gimp_config_sync(%struct._GObject* %160, %struct._GObject* %164, i32 0)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.130, %sw.bb.127
  br label %sw.epilog

sw.bb.135:                                        ; preds = %entry
  %165 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call136 = call i32 @g_value_get_enum(%struct._GValue* %165)
  %166 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %color_profile_policy = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %166, i32 0, i32 47
  store i32 %call136, i32* %color_profile_policy, align 4
  br label %sw.epilog

sw.bb.137:                                        ; preds = %entry
  %167 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call138 = call i32 @g_value_get_boolean(%struct._GValue* %167)
  %168 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %save_document_history = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %168, i32 0, i32 48
  store i32 %call138, i32* %save_document_history, align 4
  br label %sw.epilog

sw.bb.139:                                        ; preds = %entry
  %169 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %170 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %quick_mask_color = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %170, i32 0, i32 49
  call void @gimp_value_get_rgb(%struct._GValue* %169, %struct._GimpRGB* %quick_mask_color)
  br label %sw.epilog

sw.bb.140:                                        ; preds = %entry
  %171 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call141 = call i32 @g_value_get_boolean(%struct._GValue* %171)
  %172 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %use_gegl = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %172, i32 0, i32 50
  store i32 %call141, i32* %use_gegl, align 4
  br label %sw.epilog

sw.bb.142:                                        ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %173 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %173, %struct._GObject** %_glib__object, align 8
  %174 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %174, %struct._GParamSpec** %_glib__pspec, align 8
  %175 = load i32, i32* %property_id.addr, align 4
  store i32 %175, i32* %_glib__property_id, align 4
  %176 = load i32, i32* %_glib__property_id, align 4
  %177 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %177, i32 0, i32 1
  %178 = load i8*, i8** %name, align 8
  %179 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %180 = bitcast %struct._GParamSpec* %179 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %180, i32 0, i32 0
  %181 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %181, i32 0, i32 0
  %182 = load i64, i64* %g_type, align 8
  %call143 = call i8* @g_type_name(i64 %182)
  %183 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %184 = bitcast %struct._GObject* %183 to %struct._GTypeInstance*
  %g_class144 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %184, i32 0, i32 0
  %185 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class144, align 8
  %g_type145 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %185, i32 0, i32 0
  %186 = load i64, i64* %g_type145, align 8
  %call146 = call i8* @g_type_name(i64 %186)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.116, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i32 0, i32 0), i32 %176, i8* %178, i8* %call143, i8* %call146)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.142, %sw.bb.140, %sw.bb.139, %sw.bb.137, %sw.bb.135, %if.end.134, %sw.bb.125, %sw.bb.123, %sw.bb.121, %sw.bb.119, %sw.bb.116, %sw.bb.114, %sw.bb.112, %sw.bb.110, %sw.bb.108, %if.end.107, %if.end, %sw.bb.93, %sw.bb.91, %sw.bb.89, %sw.bb.87, %sw.bb.85, %sw.bb.83, %sw.bb.80, %sw.bb.77, %sw.bb.74, %sw.bb.71, %sw.bb.68, %sw.bb.65, %sw.bb.62, %sw.bb.59, %sw.bb.56, %sw.bb.53, %sw.bb.50, %sw.bb.47, %sw.bb.44, %sw.bb.41, %sw.bb.38, %sw.bb.35, %sw.bb.32, %sw.bb.29, %sw.bb.26, %sw.bb.23, %sw.bb.20, %sw.bb.17, %sw.bb.14, %sw.bb.11, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_core_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %core_config = alloca %struct._GimpCoreConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_core_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCoreConfig*
  store %struct._GimpCoreConfig* %2, %struct._GimpCoreConfig** %core_config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
    i32 16, label %sw.bb.16
    i32 17, label %sw.bb.17
    i32 18, label %sw.bb.18
    i32 19, label %sw.bb.19
    i32 20, label %sw.bb.20
    i32 21, label %sw.bb.21
    i32 22, label %sw.bb.22
    i32 23, label %sw.bb.23
    i32 24, label %sw.bb.24
    i32 25, label %sw.bb.25
    i32 26, label %sw.bb.26
    i32 27, label %sw.bb.27
    i32 28, label %sw.bb.28
    i32 29, label %sw.bb.29
    i32 30, label %sw.bb.30
    i32 31, label %sw.bb.31
    i32 32, label %sw.bb.32
    i32 33, label %sw.bb.33
    i32 34, label %sw.bb.34
    i32 35, label %sw.bb.35
    i32 36, label %sw.bb.36
    i32 40, label %sw.bb.37
    i32 37, label %sw.bb.38
    i32 38, label %sw.bb.39
    i32 39, label %sw.bb.40
    i32 41, label %sw.bb.41
    i32 42, label %sw.bb.42
    i32 43, label %sw.bb.43
    i32 44, label %sw.bb.44
    i32 45, label %sw.bb.45
    i32 46, label %sw.bb.46
    i32 47, label %sw.bb.47
    i32 48, label %sw.bb.48
    i32 49, label %sw.bb.49
    i32 50, label %sw.bb.50
    i32 51, label %sw.bb.51
    i32 52, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %language = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %5, i32 0, i32 1
  %6 = load i8*, i8** %language, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %interpolation_type = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %8, i32 0, i32 2
  %9 = load i32, i32* %interpolation_type, align 4
  call void @g_value_set_enum(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_threshold = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %11, i32 0, i32 3
  %12 = load i32, i32* %default_threshold, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %14, i32 0, i32 4
  %15 = load i8*, i8** %plug_in_path, align 8
  call void @g_value_set_string(%struct._GValue* %13, i8* %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %module_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %17, i32 0, i32 5
  %18 = load i8*, i8** %module_path, align 8
  call void @g_value_set_string(%struct._GValue* %16, i8* %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %interpreter_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %20, i32 0, i32 6
  %21 = load i8*, i8** %interpreter_path, align 8
  call void @g_value_set_string(%struct._GValue* %19, i8* %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %environ_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %23, i32 0, i32 7
  %24 = load i8*, i8** %environ_path, align 8
  call void @g_value_set_string(%struct._GValue* %22, i8* %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %brush_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %26, i32 0, i32 8
  %27 = load i8*, i8** %brush_path, align 8
  call void @g_value_set_string(%struct._GValue* %25, i8* %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %brush_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %29, i32 0, i32 9
  %30 = load i8*, i8** %brush_path_writable, align 8
  call void @g_value_set_string(%struct._GValue* %28, i8* %30)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %dynamics_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %32, i32 0, i32 10
  %33 = load i8*, i8** %dynamics_path, align 8
  call void @g_value_set_string(%struct._GValue* %31, i8* %33)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %dynamics_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %35, i32 0, i32 11
  %36 = load i8*, i8** %dynamics_path_writable, align 8
  call void @g_value_set_string(%struct._GValue* %34, i8* %36)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %38 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %pattern_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %38, i32 0, i32 12
  %39 = load i8*, i8** %pattern_path, align 8
  call void @g_value_set_string(%struct._GValue* %37, i8* %39)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %pattern_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %41, i32 0, i32 13
  %42 = load i8*, i8** %pattern_path_writable, align 8
  call void @g_value_set_string(%struct._GValue* %40, i8* %42)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %44 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %palette_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %44, i32 0, i32 14
  %45 = load i8*, i8** %palette_path, align 8
  call void @g_value_set_string(%struct._GValue* %43, i8* %45)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %47 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %palette_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %47, i32 0, i32 15
  %48 = load i8*, i8** %palette_path_writable, align 8
  call void @g_value_set_string(%struct._GValue* %46, i8* %48)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %49 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %50 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %gradient_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %50, i32 0, i32 16
  %51 = load i8*, i8** %gradient_path, align 8
  call void @g_value_set_string(%struct._GValue* %49, i8* %51)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %52 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %53 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %gradient_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %53, i32 0, i32 17
  %54 = load i8*, i8** %gradient_path_writable, align 8
  call void @g_value_set_string(%struct._GValue* %52, i8* %54)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %56 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %tool_preset_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %56, i32 0, i32 18
  %57 = load i8*, i8** %tool_preset_path, align 8
  call void @g_value_set_string(%struct._GValue* %55, i8* %57)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %58 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %59 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %tool_preset_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %59, i32 0, i32 19
  %60 = load i8*, i8** %tool_preset_path_writable, align 8
  call void @g_value_set_string(%struct._GValue* %58, i8* %60)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %61 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %62 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %font_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %62, i32 0, i32 20
  %63 = load i8*, i8** %font_path, align 8
  call void @g_value_set_string(%struct._GValue* %61, i8* %63)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %64 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %65 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %font_path_writable = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %65, i32 0, i32 21
  %66 = load i8*, i8** %font_path_writable, align 8
  call void @g_value_set_string(%struct._GValue* %64, i8* %66)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %67 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %68 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_brush = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %68, i32 0, i32 22
  %69 = load i8*, i8** %default_brush, align 8
  call void @g_value_set_string(%struct._GValue* %67, i8* %69)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %70 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %71 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_dynamics = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %71, i32 0, i32 23
  %72 = load i8*, i8** %default_dynamics, align 8
  call void @g_value_set_string(%struct._GValue* %70, i8* %72)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %73 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %74 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_pattern = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %74, i32 0, i32 24
  %75 = load i8*, i8** %default_pattern, align 8
  call void @g_value_set_string(%struct._GValue* %73, i8* %75)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %76 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %77 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_palette = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %77, i32 0, i32 25
  %78 = load i8*, i8** %default_palette, align 8
  call void @g_value_set_string(%struct._GValue* %76, i8* %78)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %79 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %80 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_gradient = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %80, i32 0, i32 27
  %81 = load i8*, i8** %default_gradient, align 8
  call void @g_value_set_string(%struct._GValue* %79, i8* %81)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %82 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %83 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_tool_preset = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %83, i32 0, i32 26
  %84 = load i8*, i8** %default_tool_preset, align 8
  call void @g_value_set_string(%struct._GValue* %82, i8* %84)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %85 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %86 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_font = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %86, i32 0, i32 28
  %87 = load i8*, i8** %default_font, align 8
  call void @g_value_set_string(%struct._GValue* %85, i8* %87)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %88 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %89 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_brush = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %89, i32 0, i32 29
  %90 = load i32, i32* %global_brush, align 4
  call void @g_value_set_boolean(%struct._GValue* %88, i32 %90)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %91 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %92 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_dynamics = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %92, i32 0, i32 30
  %93 = load i32, i32* %global_dynamics, align 4
  call void @g_value_set_boolean(%struct._GValue* %91, i32 %93)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %94 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %95 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_pattern = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %95, i32 0, i32 31
  %96 = load i32, i32* %global_pattern, align 4
  call void @g_value_set_boolean(%struct._GValue* %94, i32 %96)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %97 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %98 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_palette = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %98, i32 0, i32 32
  %99 = load i32, i32* %global_palette, align 4
  call void @g_value_set_boolean(%struct._GValue* %97, i32 %99)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %100 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %101 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_gradient = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %101, i32 0, i32 33
  %102 = load i32, i32* %global_gradient, align 4
  call void @g_value_set_boolean(%struct._GValue* %100, i32 %102)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  %103 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %104 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %global_font = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %104, i32 0, i32 34
  %105 = load i32, i32* %global_font, align 4
  call void @g_value_set_boolean(%struct._GValue* %103, i32 %105)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %106 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %107 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_image = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %107, i32 0, i32 35
  %108 = load %struct._GimpTemplate*, %struct._GimpTemplate** %default_image, align 8
  %109 = bitcast %struct._GimpTemplate* %108 to i8*
  call void @g_value_set_object(%struct._GValue* %106, i8* %109)
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %110 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %111 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %default_grid = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %111, i32 0, i32 36
  %112 = load %struct._GimpGrid*, %struct._GimpGrid** %default_grid, align 8
  %113 = bitcast %struct._GimpGrid* %112 to i8*
  call void @g_value_set_object(%struct._GValue* %110, i8* %113)
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %114 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %115 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_history_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %115, i32 0, i32 40
  %116 = load i32, i32* %plug_in_history_size, align 4
  call void @g_value_set_int(%struct._GValue* %114, i32 %116)
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %117 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %118 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %levels_of_undo = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %118, i32 0, i32 37
  %119 = load i32, i32* %levels_of_undo, align 4
  call void @g_value_set_int(%struct._GValue* %117, i32 %119)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %120 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %121 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %undo_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %121, i32 0, i32 38
  %122 = load i64, i64* %undo_size, align 8
  call void @g_value_set_uint64(%struct._GValue* %120, i64 %122)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %entry
  %123 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %124 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %undo_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %124, i32 0, i32 39
  %125 = load i32, i32* %undo_preview_size, align 4
  call void @g_value_set_enum(%struct._GValue* %123, i32 %125)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %126 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %127 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %plug_in_rc_path = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %127, i32 0, i32 41
  %128 = load i8*, i8** %plug_in_rc_path, align 8
  call void @g_value_set_string(%struct._GValue* %126, i8* %128)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %129 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %130 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %layer_previews = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %130, i32 0, i32 42
  %131 = load i32, i32* %layer_previews, align 4
  call void @g_value_set_boolean(%struct._GValue* %129, i32 %131)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %132 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %133 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %layer_preview_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %133, i32 0, i32 43
  %134 = load i32, i32* %layer_preview_size, align 4
  call void @g_value_set_enum(%struct._GValue* %132, i32 %134)
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %135 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %136 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %thumbnail_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %136, i32 0, i32 44
  %137 = load i32, i32* %thumbnail_size, align 4
  call void @g_value_set_enum(%struct._GValue* %135, i32 %137)
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %138 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %139 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %thumbnail_filesize_limit = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %139, i32 0, i32 45
  %140 = load i64, i64* %thumbnail_filesize_limit, align 8
  call void @g_value_set_uint64(%struct._GValue* %138, i64 %140)
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %141 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %142 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %142, i32 0, i32 46
  %143 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management, align 8
  %144 = bitcast %struct._GimpColorConfig* %143 to i8*
  call void @g_value_set_object(%struct._GValue* %141, i8* %144)
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  %145 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %146 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %color_profile_policy = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %146, i32 0, i32 47
  %147 = load i32, i32* %color_profile_policy, align 4
  call void @g_value_set_enum(%struct._GValue* %145, i32 %147)
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %148 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %149 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %save_document_history = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %149, i32 0, i32 48
  %150 = load i32, i32* %save_document_history, align 4
  call void @g_value_set_boolean(%struct._GValue* %148, i32 %150)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %entry
  %151 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %152 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %quick_mask_color = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %152, i32 0, i32 49
  call void @gimp_value_set_rgb(%struct._GValue* %151, %struct._GimpRGB* %quick_mask_color)
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %153 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %154 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %core_config, align 8
  %use_gegl = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %154, i32 0, i32 50
  %155 = load i32, i32* %use_gegl, align 4
  call void @g_value_set_boolean(%struct._GValue* %153, i32 %155)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %156 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %156, %struct._GObject** %_glib__object, align 8
  %157 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %157, %struct._GParamSpec** %_glib__pspec, align 8
  %158 = load i32, i32* %property_id.addr, align 4
  store i32 %158, i32* %_glib__property_id, align 4
  %159 = load i32, i32* %_glib__property_id, align 4
  %160 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %160, i32 0, i32 1
  %161 = load i8*, i8** %name, align 8
  %162 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %163 = bitcast %struct._GParamSpec* %162 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %163, i32 0, i32 0
  %164 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %164, i32 0, i32 0
  %165 = load i64, i64* %g_type, align 8
  %call52 = call i8* @g_type_name(i64 %165)
  %166 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %167 = bitcast %struct._GObject* %166 to %struct._GTypeInstance*
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %167, i32 0, i32 0
  %168 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %168, i32 0, i32 0
  %169 = load i64, i64* %g_type54, align 8
  %call55 = call i8* @g_type_name(i64 %169)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.116, i32 0, i32 0), i32 904, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i32 0, i32 0), i32 %159, i8* %161, i8* %call52, i8* %call55)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.51, %sw.bb.50, %sw.bb.49, %sw.bb.48, %sw.bb.47, %sw.bb.46, %sw.bb.45, %sw.bb.44, %sw.bb.43, %sw.bb.42, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_interpolation_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare noalias i8* @gimp_config_build_plug_in_path(i8*) #1

declare %struct._GParamSpec* @gimp_param_spec_config_path(i8*, i8*, i8*, i32, i8*, i32) #1

declare void @g_free(i8*) #1

declare noalias i8* @gimp_config_build_data_path(i8*) #1

declare noalias i8* @gimp_config_build_writable_path(i8*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_template_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_grid_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_memsize(i8*, i8*, i8*, i64, i64, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_size_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_thumbnail_size_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_config_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_profile_policy_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare i64 @g_value_get_uint64(%struct._GValue*) #1

declare void @gimp_value_get_rgb(%struct._GValue*, %struct._GimpRGB*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @g_value_set_uint64(%struct._GValue*, i64) #1

declare void @gimp_value_set_rgb(%struct._GValue*, %struct._GimpRGB*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_core_config_default_image_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, i8* %data) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_core_config_default_grid_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, i8* %data) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_core_config_color_management_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, i8* %data) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.103, i32 0, i32 0))
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
