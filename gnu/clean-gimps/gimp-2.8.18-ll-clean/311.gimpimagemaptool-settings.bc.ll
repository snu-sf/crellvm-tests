; ModuleID = './app/tools/gimpimagemaptool-settings.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpImageMapTool = type { %struct._GimpColorTool, %struct._GimpDrawable*, %struct._GeglNode*, %struct._GObject*, %struct._GObject*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, i8*, %struct._GimpImageMap*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkSizeGroup* }
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpToolControl = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpDisplay = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpColorOptions = type opaque
%struct._GimpSamplePoint = type opaque
%struct._GimpDrawable = type opaque
%struct._GeglNode = type opaque
%struct._PixelRegion = type opaque
%struct._GimpImageMap = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GimpImageMapToolClass = type { %struct._GimpColorToolClass, i8*, i8*, i8*, i8*, %struct._GimpContainer*, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)*, void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* }
%struct._GimpColorToolClass = type { %struct._GimpDrawToolClass, i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)*, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)* }
%struct._GimpDrawToolClass = type { %struct._GimpToolClass, void (%struct._GimpDrawTool*)* }
%struct._GimpToolClass = type { %struct._GimpObjectClass, i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)*, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GimpUIManager = type opaque
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpSettingsBox = type { %struct._GtkBox }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpConfig = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Pre_sets:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".settings\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"GIMP %s tool settings\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"end of %s tool settings\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_image_map_tool_settings_import = private unnamed_addr constant [36 x i8] c"gimp_image_map_tool_settings_import\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"tool_class->settings_import != NULL\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@__func__.gimp_image_map_tool_settings_export = private unnamed_addr constant [36 x i8] c"gimp_image_map_tool_settings_export\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"tool_class->settings_export != NULL\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Settings saved to '%s'\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_map_tool_add_settings_gui(%struct._GimpImageMapTool* %image_map_tool) #0 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %klass = alloca %struct._GimpImageMapToolClass*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %settings_combo = alloca %struct._GtkWidget*, align 8
  %filename = alloca i8*, align 8
  %folder = alloca i8*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %3, %struct._GimpImageMapToolClass** %klass, align 8
  %4 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %5 = bitcast %struct._GimpImageMapTool* %4 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %tool_info2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 1
  %7 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info2, align 8
  store %struct._GimpToolInfo* %7, %struct._GimpToolInfo** %tool_info, align 8
  %call3 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %hbox, align 8
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %main_vbox = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %8, i32 0, i32 10
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %11, %struct._GtkWidget* %12, i32 0, i32 0, i32 0)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #5
  %call7 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call6)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %label, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_box_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkBox*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %16, %struct._GtkWidget* %17, i32 0, i32 0, i32 0)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %call10 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  %19 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %label_group = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %19, i32 0, i32 12
  store %struct._GtkSizeGroup* %call10, %struct._GtkSizeGroup** %label_group, align 8
  %20 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %label_group11 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %20, i32 0, i32 12
  %21 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group11, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %21, %struct._GtkWidget* %22)
  %23 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %label_group12 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %23, i32 0, i32 12
  %24 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group12, align 8
  %25 = bitcast %struct._GtkSizeGroup* %24 to i8*
  call void @g_object_unref(i8* %25)
  %26 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %call13 = call i8* @gimp_tool_info_build_options_filename(%struct._GimpToolInfo* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call13, i8** %filename, align 8
  %call14 = call i8* @gimp_directory() #4
  %27 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %27, i32 0, i32 2
  %28 = load i8*, i8** %settings_name, align 8
  %call15 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call14, i8* %28, i8* null)
  store i8* %call15, i8** %folder, align 8
  %29 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %31 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %31, i32 0, i32 3
  %32 = load %struct._GObject*, %struct._GObject** %config, align 8
  %33 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %recent_settings = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %33, i32 0, i32 5
  %34 = load %struct._GimpContainer*, %struct._GimpContainer** %recent_settings, align 8
  %35 = load i8*, i8** %filename, align 8
  %36 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %36, i32 0, i32 3
  %37 = load i8*, i8** %import_dialog_title, align 8
  %38 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %38, i32 0, i32 4
  %39 = load i8*, i8** %export_dialog_title, align 8
  %40 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %help_id = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %40, i32 0, i32 10
  %41 = load i8*, i8** %help_id, align 8
  %42 = load i8*, i8** %folder, align 8
  %call16 = call %struct._GtkWidget* @gimp_settings_box_new(%struct._Gimp* %30, %struct._GObject* %32, %struct._GimpContainer* %34, i8* %35, i8* %37, i8* %39, i8* %41, i8* %42, i8* null)
  %43 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %43, i32 0, i32 11
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %settings_box, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call17)
  %46 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %47 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box19 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %47, i32 0, i32 11
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_box19, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %46, %struct._GtkWidget* %48, i32 1, i32 1, i32 0)
  %49 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box20 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %49, i32 0, i32 11
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_box20, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %51)
  %52 = load i8*, i8** %folder, align 8
  call void @g_free(i8* %52)
  %53 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box21 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %53, i32 0, i32 11
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_box21, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_settings_box_get_type() #4
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call22)
  %56 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpSettingsBox*
  %call24 = call %struct._GtkWidget* @gimp_settings_box_get_combo(%struct._GimpSettingsBox* %56)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %settings_combo, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_label_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call25)
  %59 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkLabel*
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %59, %struct._GtkWidget* %60)
  %61 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box27 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %61, i32 0, i32 11
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_box27, align 8
  %63 = bitcast %struct._GtkWidget* %62 to i8*
  %64 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %65 = bitcast %struct._GimpImageMapTool* %64 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpSettingsBox*, i8*, %struct._GimpImageMapTool*)* @gimp_image_map_tool_settings_import to void ()*), i8* %65, void (i8*, %struct._GClosure*)* null, i32 0)
  %66 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box29 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %66, i32 0, i32 11
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_box29, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %70 = bitcast %struct._GimpImageMapTool* %69 to i8*
  %call30 = call i64 @g_signal_connect_data(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpSettingsBox*, i8*, %struct._GimpImageMapTool*)* @gimp_image_map_tool_settings_export to void ()*), i8* %70, void (i8*, %struct._GClosure*)* null, i32 0)
  ret i32 1
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare i8* @gimp_tool_info_build_options_filename(%struct._GimpToolInfo*, i8*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #2

declare %struct._GtkWidget* @gimp_settings_box_new(%struct._Gimp*, %struct._GObject*, %struct._GimpContainer*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare %struct._GtkWidget* @gimp_settings_box_get_combo(%struct._GimpSettingsBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_settings_box_get_type() #2

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_map_tool_settings_import(%struct._GimpSettingsBox* %box, i8* %filename, %struct._GimpImageMapTool* %tool) #0 {
entry:
  %retval = alloca i32, align 4
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %filename.addr = alloca i8*, align 8
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %3, %struct._GimpImageMapToolClass** %tool_class, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %tool_class, align 8
  %settings_import = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %4, i32 0, i32 10
  %5 = load i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_import, align 8
  %cmp = icmp ne i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_image_map_tool_settings_import, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %tool_class, align 8
  %settings_import1 = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %6, i32 0, i32 10
  %7 = load i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_import1, align 8
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %9 = load i8*, i8** %filename.addr, align 8
  %call = call i32 %7(%struct._GimpImageMapTool* %8, i8* %9, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.6, label %if.then.2

if.then.2:                                        ; preds = %do.end
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpImageMapTool* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %12, i32 0, i32 1
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %15 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %15, i32 0, i32 9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %19 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %19, i32 0, i32 2
  %20 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %14, %struct._GObject* %18, i32 2, i8* %20)
  call void @g_clear_error(%struct._GError** %error)
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %21 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %21)
  %22 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %23 = bitcast %struct._GimpImageMapTool* %22 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_tool_get_type() #4
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call7)
  %24 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpTool*
  %call9 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %24)
  %25 = bitcast %struct._GimpToolOptions* %call9 to i8*
  %26 = load i8*, i8** %filename.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* %26, i8* null)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.2, %if.else
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_map_tool_settings_export(%struct._GimpSettingsBox* %box, i8* %filename, %struct._GimpImageMapTool* %tool) #0 {
entry:
  %retval = alloca i32, align 4
  %box.addr = alloca %struct._GimpSettingsBox*, align 8
  %filename.addr = alloca i8*, align 8
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  %error = alloca %struct._GError*, align 8
  %display_name = alloca i8*, align 8
  store %struct._GimpSettingsBox* %box, %struct._GimpSettingsBox** %box.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %3, %struct._GimpImageMapToolClass** %tool_class, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %tool_class, align 8
  %settings_export = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %4, i32 0, i32 11
  %5 = load i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_export, align 8
  %cmp = icmp ne i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_image_map_tool_settings_export, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %tool_class, align 8
  %settings_export1 = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %6, i32 0, i32 11
  %7 = load i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_export1, align 8
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %9 = load i8*, i8** %filename.addr, align 8
  %call = call i32 %7(%struct._GimpImageMapTool* %8, i8* %9, %struct._GError** %error)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.6, label %if.then.2

if.then.2:                                        ; preds = %do.end
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %11 = bitcast %struct._GimpImageMapTool* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %12, i32 0, i32 1
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %15 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %15, i32 0, i32 9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %19 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %19, i32 0, i32 2
  %20 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %14, %struct._GObject* %18, i32 2, i8* %20)
  call void @g_clear_error(%struct._GError** %error)
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %21 = load i8*, i8** %filename.addr, align 8
  %call7 = call noalias i8* @g_filename_display_name(i8* %21)
  store i8* %call7, i8** %display_name, align 8
  %22 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %23 = bitcast %struct._GimpImageMapTool* %22 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_tool_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call8)
  %24 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpTool*
  %tool_info10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %24, i32 0, i32 1
  %25 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info10, align 8
  %gimp11 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp11, align 8
  %27 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %28 = bitcast %struct._GimpImageMapTool* %27 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_tool_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call12)
  %29 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 4
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %31 = bitcast %struct._GimpDisplay* %30 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)) #5
  %33 = load i8*, i8** %display_name, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %26, %struct._GObject* %32, i32 0, i8* %call15, i8* %33)
  %34 = load i8*, i8** %display_name, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %36 = bitcast %struct._GimpImageMapTool* %35 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_tool_get_type() #4
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call16)
  %37 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpTool*
  %call18 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %37)
  %38 = bitcast %struct._GimpToolOptions* %call18 to i8*
  %39 = load i8*, i8** %filename.addr, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* %39, i8* null)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.2, %if.else
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_map_tool_real_settings_import(%struct._GimpImageMapTool* %tool, i8* %filename, %struct._GError** %error) #0 {
entry:
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %2, i32 0, i32 1
  %3 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 4
  %5 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %filename.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %6)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %7, i32 0, i32 3
  %8 = load %struct._GObject*, %struct._GObject** %config, align 8
  %9 = bitcast %struct._GObject* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  %11 = load i8*, i8** %filename.addr, align 8
  %12 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %10, i8* %11, i8* null, %struct._GError** %12)
  store i32 %call5, i32* %success, align 4
  %13 = load i32, i32* %success, align 4
  ret i32 %13
}

declare void @g_print(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_image_map_tool_real_settings_export(%struct._GimpImageMapTool* %tool, i8* %filename, %struct._GError** %error) #0 {
entry:
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %klass = alloca %struct._GimpImageMapToolClass*, align 8
  %header = alloca i8*, align 8
  %footer = alloca i8*, align 8
  %success = alloca i32, align 4
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %3, %struct._GimpImageMapToolClass** %klass, align 8
  %4 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %4, i32 0, i32 2
  %5 = load i8*, i8** %settings_name, align 8
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* %5)
  store i8* %call, i8** %header, align 8
  %6 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %settings_name1 = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %6, i32 0, i32 2
  %7 = load i8*, i8** %settings_name1, align 8
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* %7)
  store i8* %call2, i8** %footer, align 8
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %9 = bitcast %struct._GimpImageMapTool* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %10, i32 0, i32 1
  %11 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 4
  %13 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i8*, i8** %filename.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %14)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %15, i32 0, i32 3
  %16 = load %struct._GObject*, %struct._GObject** %config, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_config_interface_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call6)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpConfig*
  %19 = load i8*, i8** %filename.addr, align 8
  %20 = load i8*, i8** %header, align 8
  %21 = load i8*, i8** %footer, align 8
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call8 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %18, i8* %19, i8* %20, i8* %21, i8* null, %struct._GError** %22)
  store i32 %call8, i32* %success, align 4
  %23 = load i8*, i8** %header, align 8
  call void @g_free(i8* %23)
  %24 = load i8*, i8** %footer, align 8
  call void @g_free(i8* %24)
  %25 = load i32, i32* %success, align 4
  ret i32 %25
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gimp_image_map_tool_preview(%struct._GimpImageMapTool*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare noalias i8* @g_filename_display_name(i8*) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
