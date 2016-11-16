; ModuleID = './app/menus/menus.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpMenuFactoryPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpActionFactory = type { %struct._GimpObject, %struct._Gimp*, %struct._GList* }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GimpUIManager = type opaque
%struct._GError = type { i32, i32, i8* }

@global_menu_factory = global %struct._GimpMenuFactory* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Gimp-Menus\00", align 1
@__func__.menus_init = private unnamed_addr constant [11 x i8] c"menus_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"GIMP_IS_ACTION_FACTORY (action_factory)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"global_menu_factory == NULL\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"notify::can-change-accels\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<Image>\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"drawable\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"tools\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"dialogs\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"plug-in\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"quick-mask\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"/image-menubar\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"image-menu.xml\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"/dummy-menubar\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"/quick-mask-popup\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"quick-mask-menu.xml\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"<Toolbox>\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"<Dock>\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"dock\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"<Layers>\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"/layers-popup\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"layers-menu.xml\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"<Channels>\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"/channels-popup\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"channels-menu.xml\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"<Vectors>\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"/vectors-popup\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"vectors-menu.xml\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"<Colormap>\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"colormap\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"/colormap-popup\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"colormap-menu.xml\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"<Dockable>\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"dockable\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"/dockable-popup\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"dockable-menu.xml\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"<Brushes>\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"brushes\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"/brushes-popup\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"brushes-menu.xml\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"<Dynamics>\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"dynamics\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"/dynamics-popup\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"dynamics-menu.xml\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"<Patterns>\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"patterns\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"/patterns-popup\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"patterns-menu.xml\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"<Gradients>\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"gradients\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"/gradients-popup\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"gradients-menu.xml\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"<Palettes>\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"palettes\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"/palettes-popup\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"palettes-menu.xml\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"<ToolPresets>\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"tool-presets\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"/tool-presets-popup\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"tool-presets-menu.xml\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"<Fonts>\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"/fonts-popup\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"fonts-menu.xml\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"<Buffers>\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"buffers\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"/buffers-popup\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"buffers-menu.xml\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"<Documents>\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"documents\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"/documents-popup\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"documents-menu.xml\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"<Templates>\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"templates\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"/templates-popup\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"templates-menu.xml\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"<Images>\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"/images-popup\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"images-menu.xml\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"<BrushEditor>\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"brush-editor\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"/brush-editor-popup\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"brush-editor-menu.xml\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"<DynamicsEditor>\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"dynamics-editor\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"/dynamics-editor-popup\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"dynamics-editor-menu.xml\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"<GradientEditor>\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"gradient-editor\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"/gradient-editor-popup\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"gradient-editor-menu.xml\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"<PaletteEditor>\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"palette-editor\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"/palette-editor-popup\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"palette-editor-menu.xml\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"<ToolPresetEditor>\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"tool-preset-editor\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"/tool-preset-editor-popup\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"tool-preset-editor-menu.xml\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"<Selection>\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"/selection-popup\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"selection-menu.xml\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"<NavigationEditor>\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"<Undo>\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"/undo-popup\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"undo-menu.xml\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"<ErrorConsole>\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"error-console\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"/error-console-popup\00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"error-console-menu.xml\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"<ToolOptions>\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"tool-options\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"/tool-options-popup\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"tool-options-menu.xml\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"<TextEditor>\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"text-editor\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"/text-editor-toolbar\00", align 1
@.str.131 = private unnamed_addr constant [24 x i8] c"text-editor-toolbar.xml\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"<TextTool>\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"text-tool\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"/text-tool-popup\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"text-tool-menu.xml\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"<CursorInfo>\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"cursor-info\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"/cursor-info-popup\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"cursor-info-menu.xml\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"<SamplePoints>\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"sample-points\00", align 1
@.str.142 = private unnamed_addr constant [21 x i8] c"/sample-points-popup\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"sample-points-menu.xml\00", align 1
@__func__.menus_exit = private unnamed_addr constant [11 x i8] c"menus_exit\00", align 1
@.str.144 = private unnamed_addr constant [28 x i8] c"global_menu_factory != NULL\00", align 1
@__func__.menus_restore = private unnamed_addr constant [14 x i8] c"menus_restore\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"menurc\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@__func__.menus_save = private unnamed_addr constant [11 x i8] c"menus_save\00", align 1
@menurc_deleted = internal global i32 0, align 4
@.str.147 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@__func__.menus_clear = private unnamed_addr constant [12 x i8] c"menus_clear\00", align 1
@.str.148 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.149 = private unnamed_addr constant [25 x i8] c"Deleting \22%s\22 failed: %s\00", align 1
@__func__.menus_remove = private unnamed_addr constant [13 x i8] c"menus_remove\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"gtk-can-change-accels\00", align 1

; Function Attrs: nounwind uwtable
define void @menus_init(%struct._Gimp* %gimp, %struct._GimpActionFactory* %action_factory) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %action_factory.addr = alloca %struct._GimpActionFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpActionFactory* %action_factory, %struct._GimpActionFactory** %action_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.menus_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %action_factory.addr, align 8
  %14 = bitcast %struct._GimpActionFactory* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_action_factory_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.menus_init, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %cmp40 = icmp eq %struct._GimpMenuFactory* %26, null
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.39
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.menus_init, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %call45 = call i64 @gtk_menu_get_type() #5
  %call46 = call i8* @g_type_class_ref(i64 %call45)
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 1
  %28 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %29 = bitcast %struct._GimpCoreConfig* %28 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_gui_config_get_type() #5
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call47)
  %30 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpGuiConfig*
  call void @menus_can_change_accels(%struct._GimpGuiConfig* %30)
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config49 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %31, i32 0, i32 1
  %32 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config49, align 8
  %33 = bitcast %struct._GimpCoreConfig* %32 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*)* @menus_can_change_accels to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %35 = load %struct._GimpActionFactory*, %struct._GimpActionFactory** %action_factory.addr, align 8
  %call51 = call %struct._GimpMenuFactory* @gimp_menu_factory_new(%struct._Gimp* %34, %struct._GimpActionFactory* %35)
  store %struct._GimpMenuFactory* %call51, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %36 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @image_menu_setup, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @image_menu_setup, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* null)
  %37 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* null)
  %38 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* null)
  %39 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %40 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %41 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %42 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %43 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @dockable_menu_setup, i8* null)
  %44 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %45 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %46 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %47 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %48 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %49 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.72, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %50 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %51 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.80, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @plug_in_menus_setup, i8* null)
  %52 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i32 0, i32 0), i8* null, i8* null)
  %53 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i32 0, i32 0), i8* null, i8* null)
  %54 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* null)
  %55 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i32 0, i32 0), i8* null, i8* null)
  %56 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* null)
  %57 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.104, i32 0, i32 0), i8* null, i8* null)
  %58 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.106, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i32 0, i32 0), i8* null, i8* null)
  %59 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.110, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.112, i32 0, i32 0), i8* null, i8* null)
  %60 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0), i8* null, i8* null)
  %61 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null)
  %62 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), i8* null, i8* null)
  %63 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.121, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.123, i32 0, i32 0), i8* null, i8* null)
  %64 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.127, i32 0, i32 0), void (%struct._GimpUIManager*, i8*)* @tool_options_menu_setup, i8* null)
  %65 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.131, i32 0, i32 0), i8* null, i8* null)
  %66 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.135, i32 0, i32 0), i8* null, i8* null)
  %67 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.139, i32 0, i32 0), i8* null, i8* null)
  %68 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  call void (%struct._GimpMenuFactory*, i8*, i8*, ...) @gimp_menu_factory_manager_register(%struct._GimpMenuFactory* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.141, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.143, i32 0, i32 0), i8* null, i8* null)
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_action_factory_get_type() #1

declare i8* @g_type_class_ref(i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @menus_can_change_accels(%struct._GimpGuiConfig* %config) #0 {
entry:
  %config.addr = alloca %struct._GimpGuiConfig*, align 8
  store %struct._GimpGuiConfig* %config, %struct._GimpGuiConfig** %config.addr, align 8
  %call = call %struct._GdkScreen* @gdk_screen_get_default()
  %call1 = call %struct._GtkSettings* @gtk_settings_get_for_screen(%struct._GdkScreen* %call)
  %0 = bitcast %struct._GtkSettings* %call1 to i8*
  %1 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %can_change_accels = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %1, i32 0, i32 10
  %2 = load i32, i32* %can_change_accels, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.150, i32 0, i32 0), i32 %2, i8* null)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

declare %struct._GimpMenuFactory* @gimp_menu_factory_new(%struct._Gimp*, %struct._GimpActionFactory*) #3

declare void @gimp_menu_factory_manager_register(%struct._GimpMenuFactory*, i8*, i8*, ...) #3

declare void @image_menu_setup(%struct._GimpUIManager*, i8*) #3

declare void @plug_in_menus_setup(%struct._GimpUIManager*, i8*) #3

declare void @dockable_menu_setup(%struct._GimpUIManager*, i8*) #3

declare void @tool_options_menu_setup(%struct._GimpUIManager*, i8*) #3

; Function Attrs: nounwind uwtable
define void @menus_exit(%struct._Gimp* %gimp) #0 {
entry:
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
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.menus_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %cmp12 = icmp ne %struct._GimpMenuFactory* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.menus_exit, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.144, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %15 = bitcast %struct._GimpMenuFactory* %14 to i8*
  call void @g_object_unref(i8* %15)
  store %struct._GimpMenuFactory* null, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 1
  %17 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %18 = bitcast %struct._GimpCoreConfig* %17 to i8*
  %call17 = call i32 @g_signal_handlers_disconnect_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGuiConfig*)* @menus_can_change_accels to i8*), i8* null)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @g_object_unref(i8*) #3

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define void @menus_restore(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename = alloca i8*, align 8
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
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.menus_restore, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0))
  store i8* %call11, i8** %filename, align 8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 4
  %14 = load i32, i32* %be_verbose, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %15 = load i8*, i8** %filename, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %15)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), i8* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %do.end
  %16 = load i8*, i8** %filename, align 8
  call void @gtk_accel_map_load(i8* %16)
  %17 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %17)
  br label %return

return:                                           ; preds = %if.end.15, %if.else.9
  ret void
}

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare void @gtk_accel_map_load(i8*) #3

declare void @g_free(i8*) #3

; Function Attrs: nounwind uwtable
define void @menus_save(%struct._Gimp* %gimp, i32 %always_save) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %always_save.addr = alloca i32, align 4
  %filename = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %always_save, i32* %always_save.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.menus_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* @menurc_deleted, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %do.end
  %14 = load i32, i32* %always_save.addr, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.12
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.12, %do.end
  %call16 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0))
  store i8* %call16, i8** %filename, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 4
  %16 = load i32, i32* %be_verbose, align 4
  %tobool17 = icmp ne i32 %16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %17 = load i8*, i8** %filename, align 8
  %call19 = call i8* @gimp_filename_to_utf8(i8* %17)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i32 0, i32 0), i8* %call19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %18 = load i8*, i8** %filename, align 8
  call void @gtk_accel_map_save(i8* %18)
  %19 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %19)
  store i32 0, i32* @menurc_deleted, align 4
  br label %return

return:                                           ; preds = %if.end.20, %if.then.14, %if.else.9
  ret void
}

declare void @gtk_accel_map_save(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @menus_clear(%struct._Gimp* %gimp, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %filename = alloca i8*, align 8
  %source = alloca i8*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.menus_clear, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp12 = icmp eq %struct._GError** %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %15 = load %struct._GError*, %struct._GError** %14, align 8
  %cmp13 = icmp eq %struct._GError* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.menus_clear, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.148, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %call18 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0))
  store i8* %call18, i8** %filename, align 8
  %call19 = call i8* @gimp_sysconf_directory() #5
  %call20 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.145, i32 0, i32 0), i8* null)
  store i8* %call20, i8** %source, align 8
  %16 = load i8*, i8** %source, align 8
  %17 = load i8*, i8** %filename, align 8
  %call21 = call i32 @gimp_config_file_copy(i8* %16, i8* %17, %struct._GError** null)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.end.17
  store i32 1, i32* @menurc_deleted, align 4
  br label %if.end.40

if.else.24:                                       ; preds = %do.end.17
  %18 = load i8*, i8** %filename, align 8
  %call25 = call i32 @g_unlink(i8* %18)
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %land.lhs.true.27, label %if.else.38

land.lhs.true.27:                                 ; preds = %if.else.24
  %call28 = call i32* @__errno_location() #5
  %19 = load i32, i32* %call28, align 4
  %cmp29 = icmp ne i32 %19, 2
  br i1 %cmp29, label %if.then.30, label %if.else.38

if.then.30:                                       ; preds = %land.lhs.true.27
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call31 = call i32 @g_file_error_quark()
  %call32 = call i32* @__errno_location() #5
  %21 = load i32, i32* %call32, align 4
  %call33 = call i32 @g_file_error_from_errno(i32 %21)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.149, i32 0, i32 0)) #7
  %22 = load i8*, i8** %filename, align 8
  %call35 = call i8* @gimp_filename_to_utf8(i8* %22)
  %call36 = call i32* @__errno_location() #5
  %23 = load i32, i32* %call36, align 4
  %call37 = call i8* @g_strerror(i32 %23) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %20, i32 %call31, i32 %call33, i8* %call34, i8* %call35, i8* %call37)
  store i32 0, i32* %success, align 4
  br label %if.end.39

if.else.38:                                       ; preds = %land.lhs.true.27, %if.else.24
  store i32 1, i32* @menurc_deleted, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.30
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.23
  %24 = load i8*, i8** %source, align 8
  call void @g_free(i8* %24)
  %25 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %25)
  %26 = load i32, i32* %success, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.else.15, %if.else.9
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #1

declare i32 @gimp_config_file_copy(i8*, i8*, %struct._GError**) #3

declare i32 @g_unlink(i8*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #3

declare i32 @g_file_error_quark() #3

declare i32 @g_file_error_from_errno(i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #1

; Function Attrs: nounwind uwtable
define void @menus_remove(%struct._Gimp* %gimp) #0 {
entry:
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
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.menus_remove, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = bitcast %struct._Gimp* %13 to i8*
  call void @gtk_accel_map_foreach(i8* %14, void (i8*, i8*, i32, i32, i32)* @menus_remove_accels)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_accel_map_foreach(i8*, void (i8*, i8*, i32, i32, i32)*) #3

; Function Attrs: nounwind uwtable
define internal void @menus_remove_accels(i8* %data, i8* %accel_path, i32 %accel_key, i32 %accel_mods, i32 %changed) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %accel_path.addr = alloca i8*, align 8
  %accel_key.addr = alloca i32, align 4
  %accel_mods.addr = alloca i32, align 4
  %changed.addr = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i8* %accel_path, i8** %accel_path.addr, align 8
  store i32 %accel_key, i32* %accel_key.addr, align 4
  store i32 %accel_mods, i32* %accel_mods.addr, align 4
  store i32 %changed, i32* %changed.addr, align 4
  %0 = load i8*, i8** %accel_path.addr, align 8
  %call = call i32 @gtk_accel_map_change_entry(i8* %0, i32 0, i32 0, i32 1)
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #3

declare %struct._GtkSettings* @gtk_settings_get_for_screen(%struct._GdkScreen*) #3

declare %struct._GdkScreen* @gdk_screen_get_default() #3

declare i32 @gtk_accel_map_change_entry(i8*, i32, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
