; ModuleID = './app/tools/gimpimagemaptool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpColorToolClass = type { %struct._GimpDrawToolClass, i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)*, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)* }
%struct._GimpDrawToolClass = type { %struct._GimpToolClass, void (%struct._GimpDrawTool*)* }
%struct._GimpToolClass = type { %struct._GimpObjectClass, i32 (%struct._GimpTool*, %struct._GimpDisplay*)*, %struct._GimpDisplay* (%struct._GimpTool*, %struct._GimpImage*)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)*, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpColorOptions = type { %struct._GimpImageMapOptions, i32, i32, double }
%struct._GimpImageMapOptions = type { %struct._GimpToolOptions, i32, i8* }
%struct._GimpSamplePoint = type opaque
%struct._GimpImageMapToolClass = type { %struct._GimpColorToolClass, i8*, i8*, i8*, i8*, %struct._GimpContainer*, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)*, void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* }
%struct._GeglNode = type opaque
%struct._GimpImageMapTool = type { %struct._GimpColorTool, %struct._GimpDrawable*, %struct._GeglNode*, %struct._GObject*, %struct._GObject*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, i8*, %struct._GimpImageMap*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkSizeGroup* }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GeglRectangle = type { i32, i32, i32, i32 }
%struct._GimpConfig = type opaque
%struct._GimpOverlayBox = type { %struct._GtkContainer, %struct._GList* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpViewableDialog = type { %struct._GimpDialog, %struct._GimpContext*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpToolDialog = type { %struct._GimpViewableDialog }
%struct._GimpPickable = type opaque
%struct._GimpSettingsBox = type { %struct._GtkBox }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }

@gimp_image_map_tool_get_type.type = internal global i64 0, align 8
@gimp_image_map_tool_get_type.info = internal constant %struct._GTypeInfo { i16 392, void (i8*)* bitcast (void (%struct._GimpImageMapToolClass*)* @gimp_image_map_tool_base_init to void (i8*)*), void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GimpImageMapToolClass*)* @gimp_image_map_tool_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 392, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpImageMapTool*)* @gimp_image_map_tool_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpImageMapTool\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_image_map_tool_create_map = private unnamed_addr constant [31 x i8] c"gimp_image_map_tool_create_map\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_IMAGE_MAP_TOOL (tool)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gimpimagemaptool.c\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"tool->operation || tool->apply_func\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@__func__.gimp_image_map_tool_preview = private unnamed_addr constant [28 x i8] c"gimp_image_map_tool_preview\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"GIMP_IS_IMAGE_MAP_TOOL (image_map_tool)\00", align 1
@__func__.gimp_image_map_tool_edit_as = private unnamed_addr constant [28 x i8] c"gimp_image_map_tool_edit_as\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"GIMP_IS_IMAGE_MAP_TOOL (im_tool)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"new_tool_id\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"GIMP_IS_CONFIG (config)\00", align 1
@__func__.gimp_image_map_tool_dialog_get_vbox = private unnamed_addr constant [36 x i8] c"gimp_image_map_tool_dialog_get_vbox\00", align 1
@__func__.gimp_image_map_tool_dialog_get_label_group = private unnamed_addr constant [43 x i8] c"gimp_image_map_tool_dialog_get_label_group\00", align 1
@parent_class = internal global %struct._GimpColorToolClass* null, align 8
@.str.10 = private unnamed_addr constant [42 x i8] c"Cannot modify the pixels of layer groups.\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"The active layer's pixels are locked.\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"preview\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"_Preview\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"notify::use-gegl\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_map_tool_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_image_map_tool_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_color_tool_get_type() #7
  %call1 = call i64 @g_type_register_static(i64 %call, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_image_map_tool_get_type.info, i32 0)
  store i64 %call1, i64* @gimp_image_map_tool_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_image_map_tool_get_type.type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_base_init(%struct._GimpImageMapToolClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GimpImageMapToolClass* %klass, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %call = call i64 @gimp_image_map_config_get_type() #7
  %call1 = call %struct._GimpContainer* @gimp_list_new(i64 %call, i32 1)
  %0 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %recent_settings = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %0, i32 0, i32 5
  store %struct._GimpContainer* %call1, %struct._GimpContainer** %recent_settings, align 8
  %1 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %recent_settings2 = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %1, i32 0, i32 5
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %recent_settings2, align 8
  %3 = bitcast %struct._GimpContainer* %2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_list_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpList*
  call void @gimp_list_set_sort_func(%struct._GimpList* %4, i32 (i8*, i8*)* bitcast (i32 (%struct._GimpImageMapConfig*, %struct._GimpImageMapConfig*)* @gimp_image_map_config_compare to i32 (i8*, i8*)*))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_class_init(%struct._GimpImageMapToolClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpImageMapToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %color_tool_class = alloca %struct._GimpColorToolClass*, align 8
  store %struct._GimpImageMapToolClass* %klass, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %0 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpImageMapToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpImageMapToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpImageMapToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_color_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpColorToolClass*
  store %struct._GimpColorToolClass* %8, %struct._GimpColorToolClass** %color_tool_class, align 8
  %9 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpImageMapToolClass* %9 to i8*
  %call5 = call i8* @g_type_class_peek_parent(i8* %10)
  %11 = bitcast i8* %call5 to %struct._GimpColorToolClass*
  store %struct._GimpColorToolClass* %11, %struct._GimpColorToolClass** @parent_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_image_map_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_image_map_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_image_map_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_image_map_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_image_map_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %options_notify = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 15
  store void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)* @gimp_image_map_tool_options_notify, void (%struct._GimpTool*, %struct._GimpToolOptions*, %struct._GParamSpec*)** %options_notify, align 8
  %18 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %color_tool_class, align 8
  %pick = getelementptr inbounds %struct._GimpColorToolClass, %struct._GimpColorToolClass* %18, i32 0, i32 1
  store i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)* @gimp_image_map_tool_pick_color, i32 (%struct._GimpColorTool*, i32, i32, i32*, %struct._GimpRGB*, i32*)** %pick, align 8
  %19 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %19, i32 0, i32 1
  store i8* null, i8** %dialog_desc, align 8
  %20 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %20, i32 0, i32 2
  store i8* null, i8** %settings_name, align 8
  %21 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %21, i32 0, i32 3
  store i8* null, i8** %import_dialog_title, align 8
  %22 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %22, i32 0, i32 4
  store i8* null, i8** %export_dialog_title, align 8
  %23 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %23, i32 0, i32 6
  store %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* null, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %24 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %24, i32 0, i32 7
  store void (%struct._GimpImageMapTool*)* null, void (%struct._GimpImageMapTool*)** %map, align 8
  %25 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %25, i32 0, i32 8
  store void (%struct._GimpImageMapTool*)* null, void (%struct._GimpImageMapTool*)** %dialog, align 8
  %26 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %reset = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %26, i32 0, i32 9
  store void (%struct._GimpImageMapTool*)* null, void (%struct._GimpImageMapTool*)** %reset, align 8
  %27 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %settings_import = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %27, i32 0, i32 10
  store i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* @gimp_image_map_tool_real_settings_import, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_import, align 8
  %28 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass.addr, align 8
  %settings_export = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %28, i32 0, i32 11
  store i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* @gimp_image_map_tool_real_settings_export, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_export, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_init(%struct._GimpImageMapTool* %image_map_tool) #1 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 3
  %4 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %4, i32 1)
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %5, i32 0, i32 3
  %6 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control2, align 8
  call void @gimp_tool_control_set_preserve(%struct._GimpToolControl* %6, i32 0)
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control3 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control3, align 8
  call void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl* %8, i32 841)
  %9 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %9, i32 0, i32 1
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %operation = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %10, i32 0, i32 2
  store %struct._GeglNode* null, %struct._GeglNode** %operation, align 8
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %11, i32 0, i32 3
  store %struct._GObject* null, %struct._GObject** %config, align 8
  %12 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %default_config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %12, i32 0, i32 4
  store %struct._GObject* null, %struct._GObject** %default_config, align 8
  %13 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %13, i32 0, i32 7
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %image_map, align 8
  %14 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %14, i32 0, i32 9
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog, align 8
  %15 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %main_vbox = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %15, i32 0, i32 10
  store %struct._GtkWidget* null, %struct._GtkWidget** %main_vbox, align 8
  %16 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %16, i32 0, i32 11
  store %struct._GtkWidget* null, %struct._GtkWidget** %settings_box, align 8
  %17 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %label_group = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %17, i32 0, i32 12
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %label_group, align 8
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_tool_get_type() #3

; Function Attrs: nounwind uwtable
define void @gimp_image_map_tool_create_map(%struct._GimpImageMapTool* %tool) #1 {
entry:
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %use_gegl = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_map_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_map_tool_create_map, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %14 = bitcast %struct._GimpImageMapTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 1
  %16 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp13 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp13, align 8
  store %struct._Gimp* %17, %struct._Gimp** %gimp, align 8
  %18 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %18, i32 0, i32 7
  %19 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool14 = icmp ne %struct._GimpImageMap* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %20 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %image_map16 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %20, i32 0, i32 7
  %21 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map16, align 8
  call void @gimp_image_map_clear(%struct._GimpImageMap* %21)
  %22 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %image_map17 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %22, i32 0, i32 7
  %23 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map17, align 8
  %24 = bitcast %struct._GimpImageMap* %23 to i8*
  call void @g_object_unref(i8* %24)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %do.end
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.18
  %25 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %operation = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %25, i32 0, i32 2
  %26 = load %struct._GeglNode*, %struct._GeglNode** %operation, align 8
  %tobool20 = icmp ne %struct._GeglNode* %26, null
  br i1 %tobool20, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.19
  %27 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %27, i32 0, i32 5
  %28 = load void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %tobool21 = icmp ne void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* %28, null
  br i1 %tobool21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %lor.lhs.false, %do.body.19
  br label %if.end.24

if.else.23:                                       ; preds = %lor.lhs.false
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 624, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_map_tool_create_map, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #9
  unreachable

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call26 = call i32 @gimp_use_gegl(%struct._Gimp* %29)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.end.25
  %30 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %apply_func28 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %30, i32 0, i32 5
  %31 = load void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func28, align 8
  %tobool29 = icmp ne void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* %31, null
  %lnot = xor i1 %tobool29, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end.25
  %32 = phi i1 [ true, %do.end.25 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %32 to i32
  store i32 %lor.ext, i32* %use_gegl, align 4
  %33 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %33, i32 0, i32 1
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %36 = bitcast %struct._GimpImageMapTool* %35 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_tool_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call30)
  %37 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpTool*
  %tool_info32 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 1
  %38 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info32, align 8
  %blurb = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %38, i32 0, i32 5
  %39 = load i8*, i8** %blurb, align 8
  %40 = load i32, i32* %use_gegl, align 4
  %tobool33 = icmp ne i32 %40, 0
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  %41 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %operation34 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %41, i32 0, i32 2
  %42 = load %struct._GeglNode*, %struct._GeglNode** %operation34, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GeglNode* [ %42, %cond.true ], [ null, %cond.false ]
  %43 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %apply_func35 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %43, i32 0, i32 5
  %44 = load void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func35, align 8
  %45 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %45, i32 0, i32 6
  %46 = load i8*, i8** %apply_data, align 8
  %call36 = call %struct._GimpImageMap* @gimp_image_map_new(%struct._GimpDrawable* %34, i8* %39, %struct._GeglNode* %cond, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* %44, i8* %46)
  %47 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %image_map37 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %47, i32 0, i32 7
  store %struct._GimpImageMap* %call36, %struct._GimpImageMap** %image_map37, align 8
  %48 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %image_map38 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %48, i32 0, i32 7
  %49 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map38, align 8
  %50 = bitcast %struct._GimpImageMap* %49 to i8*
  %51 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %52 = bitcast %struct._GimpImageMapTool* %51 to i8*
  %call39 = call i64 @g_signal_connect_data(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImageMap*, %struct._GimpImageMapTool*)* @gimp_image_map_tool_flush to void ()*), i8* %52, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %return

return:                                           ; preds = %cond.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #3

declare void @gimp_image_map_clear(%struct._GimpImageMap*) #2

declare void @g_object_unref(i8*) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i32 @gimp_use_gegl(%struct._Gimp*) #2

declare %struct._GimpImageMap* @gimp_image_map_new(%struct._GimpDrawable*, i8*, %struct._GeglNode*, void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*, i8*) #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_flush(%struct._GimpImageMap* %image_map, %struct._GimpImageMapTool* %image_map_tool) #1 {
entry:
  %image_map.addr = alloca %struct._GimpImageMap*, align 8
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpImageMap* %image_map, %struct._GimpImageMap** %image_map.addr, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %5)
  call void @gimp_projection_flush_now(%struct._GimpProjection* %call3)
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  call void @gimp_display_flush_now(%struct._GimpDisplay* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %image_map_tool) #1 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpImageMapOptions*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_map_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_map_tool_preview, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.23

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %14 = bitcast %struct._GimpImageMapTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  store %struct._GimpTool* %15, %struct._GimpTool** %tool, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %17 = bitcast %struct._GimpTool* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_tool_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpTool*
  %call15 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %18)
  %19 = bitcast %struct._GimpToolOptions* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_image_map_options_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpImageMapOptions*
  store %struct._GimpImageMapOptions* %20, %struct._GimpImageMapOptions** %options, align 8
  %21 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %21, i32 0, i32 7
  %22 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool18 = icmp ne %struct._GimpImageMap* %22, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.23

land.lhs.true.19:                                 ; preds = %do.end
  %23 = load %struct._GimpImageMapOptions*, %struct._GimpImageMapOptions** %options, align 8
  %preview = getelementptr inbounds %struct._GimpImageMapOptions, %struct._GimpImageMapOptions* %23, i32 0, i32 1
  %24 = load i32, i32* %preview, align 4
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true.19
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %25, i32 0, i32 3
  %26 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %26, i32 1)
  %27 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  call void @gimp_image_map_tool_map(%struct._GimpImageMapTool* %27)
  %28 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control22 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %28, i32 0, i32 3
  %29 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control22, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %29)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.9, %if.then.21, %land.lhs.true.19, %do.end
  ret void
}

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_options_get_type() #3

declare void @gimp_tool_control_push_preserve(%struct._GimpToolControl*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_map(%struct._GimpImageMapTool* %tool) #1 {
entry:
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %visible = alloca %struct._GeglRectangle, align 4
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %2, i32 0, i32 4
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %4, i32 0, i32 1
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %6 = bitcast %struct._GimpDrawable* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  store %struct._GimpItem* %7, %struct._GimpItem** %item, align 8
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %9 = bitcast %struct._GimpImageMapTool* %8 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %11 = bitcast %struct._GTypeClass* %10 to %struct._GimpImageMapToolClass*
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %11, i32 0, i32 7
  %12 = load void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)** %map, align 8
  %13 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  call void %12(%struct._GimpImageMapTool* %13)
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %14, i32* %x, i32* %y, i32* %w, i32* %h)
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %15, i32* %off_x, i32* %off_y)
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %w, align 4
  %19 = load i32, i32* %h, align 4
  %20 = load i32, i32* %off_x, align 4
  %21 = load i32, i32* %off_y, align 4
  %22 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call5 = call i32 @gimp_item_get_width(%struct._GimpItem* %22)
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call6 = call i32 @gimp_item_get_height(%struct._GimpItem* %23)
  %x7 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 0
  %y8 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 1
  %width = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 2
  %height = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 3
  %call9 = call i32 @gimp_rectangle_intersect(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %call5, i32 %call6, i32* %x7, i32* %y8, i32* %width, i32* %height)
  %24 = load i32, i32* %off_x, align 4
  %x10 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 0
  %25 = load i32, i32* %x10, align 4
  %sub = sub nsw i32 %25, %24
  store i32 %sub, i32* %x10, align 4
  %26 = load i32, i32* %off_y, align 4
  %y11 = getelementptr inbounds %struct._GeglRectangle, %struct._GeglRectangle* %visible, i32 0, i32 1
  %27 = load i32, i32* %y11, align 4
  %sub12 = sub nsw i32 %27, %26
  store i32 %sub12, i32* %y11, align 4
  %28 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %28, i32 0, i32 7
  %29 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  call void @gimp_image_map_apply(%struct._GimpImageMap* %29, %struct._GeglRectangle* %visible)
  ret void
}

declare void @gimp_tool_control_pop_preserve(%struct._GimpToolControl*) #2

; Function Attrs: nounwind uwtable
define void @gimp_image_map_tool_edit_as(%struct._GimpImageMapTool* %im_tool, i8* %new_tool_id, %struct._GimpConfig* %config) #1 {
entry:
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %new_tool_id.addr = alloca i8*, align 8
  %config.addr = alloca %struct._GimpConfig*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %user_context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %new_tool = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  store i8* %new_tool_id, i8** %new_tool_id.addr, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_map_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_map_tool_edit_as, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %new_tool_id.addr, align 8
  %tobool12 = icmp ne i8* %13, null
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_map_tool_edit_as, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpConfig* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_config_interface_get_type() #7
  store i64 %call22, i64* %__t21, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type32, align 8
  %22 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %21, %22
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %24 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %25 = load i32, i32* %__r24, align 4
  store i32 %25, i32* %tmp39
  %26 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_map_tool_edit_as, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %28 = bitcast %struct._GimpImageMapTool* %27 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_tool_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call45)
  %29 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpTool*
  %display47 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 4
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display47, align 8
  store %struct._GimpDisplay* %30, %struct._GimpDisplay** %display, align 8
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %31, i32 0, i32 1
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call48 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %32)
  store %struct._GimpContext* %call48, %struct._GimpContext** %user_context, align 8
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp49 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %33, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp49, align 8
  %tool_info_list = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 45
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %tool_info_list, align 8
  %36 = load i8*, i8** %new_tool_id.addr, align 8
  %call50 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %35, i8* %36)
  %37 = bitcast %struct._GimpObject* %call50 to %struct._GimpToolInfo*
  store %struct._GimpToolInfo* %37, %struct._GimpToolInfo** %tool_info, align 8
  %38 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %39 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  call void @gimp_context_set_tool(%struct._GimpContext* %38, %struct._GimpToolInfo* %39)
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp51 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %40, i32 0, i32 1
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp51, align 8
  %42 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call52 = call i32 @tool_manager_initialize_active(%struct._Gimp* %41, %struct._GimpDisplay* %42)
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp53 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %43, i32 0, i32 1
  %44 = load %struct._Gimp*, %struct._Gimp** %gimp53, align 8
  %call54 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %44)
  store %struct._GimpTool* %call54, %struct._GimpTool** %new_tool, align 8
  %45 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %46 = bitcast %struct._GimpConfig* %45 to i8*
  %call55 = call i8* @g_object_ref(i8* %46)
  %47 = bitcast i8* %call55 to %struct._GObject*
  %48 = load %struct._GimpTool*, %struct._GimpTool** %new_tool, align 8
  %49 = bitcast %struct._GimpTool* %48 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_image_map_tool_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call56)
  %50 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpImageMapTool*
  %default_config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %50, i32 0, i32 4
  store %struct._GObject* %47, %struct._GObject** %default_config, align 8
  %51 = load %struct._GimpTool*, %struct._GimpTool** %new_tool, align 8
  %52 = bitcast %struct._GimpTool* %51 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_image_map_tool_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call58)
  %53 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_reset(%struct._GimpImageMapTool* %53)
  br label %return

return:                                           ; preds = %do.end.44, %if.else.42, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #2

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #2

declare void @gimp_context_set_tool(%struct._GimpContext*, %struct._GimpToolInfo*) #2

declare i32 @tool_manager_initialize_active(%struct._Gimp*, %struct._GimpDisplay*) #2

declare %struct._GimpTool* @tool_manager_get_active(%struct._Gimp*) #2

declare i8* @g_object_ref(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_reset(%struct._GimpImageMapTool* %tool) #1 {
entry:
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpImageMapToolClass*
  %reset = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %3, i32 0, i32 9
  %4 = load void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)** %reset, align 8
  %tobool = icmp ne void (%struct._GimpImageMapTool*)* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %6 = bitcast %struct._GimpImageMapTool* %5 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %8 = bitcast %struct._GTypeClass* %7 to %struct._GimpImageMapToolClass*
  %reset2 = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %8, i32 0, i32 9
  %9 = load void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)** %reset2, align 8
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  call void %9(%struct._GimpImageMapTool* %10)
  br label %if.end.18

if.else:                                          ; preds = %entry
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %11, i32 0, i32 3
  %12 = load %struct._GObject*, %struct._GObject** %config, align 8
  %tobool3 = icmp ne %struct._GObject* %12, null
  br i1 %tobool3, label %if.then.4, label %if.end.17

if.then.4:                                        ; preds = %if.else
  %13 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %default_config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %13, i32 0, i32 4
  %14 = load %struct._GObject*, %struct._GObject** %default_config, align 8
  %tobool5 = icmp ne %struct._GObject* %14, null
  br i1 %tobool5, label %if.then.6, label %if.else.13

if.then.6:                                        ; preds = %if.then.4
  %15 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %default_config7 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %15, i32 0, i32 4
  %16 = load %struct._GObject*, %struct._GObject** %default_config7, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %call = call i64 @gimp_config_interface_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call)
  %18 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpConfig*
  %19 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %config9 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %19, i32 0, i32 3
  %20 = load %struct._GObject*, %struct._GObject** %config9, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call10)
  %22 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  %call12 = call i32 @gimp_config_copy(%struct._GimpConfig* %18, %struct._GimpConfig* %22, i32 0)
  br label %if.end

if.else.13:                                       ; preds = %if.then.4
  %23 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %config14 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %23, i32 0, i32 3
  %24 = load %struct._GObject*, %struct._GObject** %config14, align 8
  %25 = bitcast %struct._GObject* %24 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_config_interface_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call15)
  %26 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %26)
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.6
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool* %tool) #1 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_map_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_image_map_tool_dialog_get_vbox, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %main_vbox = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %13, i32 0, i32 10
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind uwtable
define %struct._GtkSizeGroup* @gimp_image_map_tool_dialog_get_label_group(%struct._GimpImageMapTool* %tool) #1 {
entry:
  %retval = alloca %struct._GtkSizeGroup*, align 8
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_map_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_image_map_tool_dialog_get_label_group, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %label_group = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %13, i32 0, i32 12
  %14 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  store %struct._GtkSizeGroup* %14, %struct._GtkSizeGroup** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %retval
  ret %struct._GtkSizeGroup* %15
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

declare i8* @g_type_class_peek_parent(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_constructed(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %image_map_tool = alloca %struct._GimpImageMapTool*, align 8
  %klass = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %image_map_tool, align 8
  %3 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** @parent_class, align 8
  %4 = bitcast %struct._GimpColorToolClass* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** @parent_class, align 8
  %8 = bitcast %struct._GimpColorToolClass* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %13 = bitcast %struct._GimpImageMapTool* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %15 = bitcast %struct._GTypeClass* %14 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %15, %struct._GimpImageMapToolClass** %klass, align 8
  %16 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %16, i32 0, i32 6
  %17 = load %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)*, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %tobool5 = icmp ne %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* %17, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %18 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %get_operation7 = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %18, i32 0, i32 6
  %19 = load %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)*, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation7, align 8
  %20 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %21 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %21, i32 0, i32 3
  %call8 = call %struct._GeglNode* %19(%struct._GimpImageMapTool* %20, %struct._GObject** %config)
  %22 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %operation = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %22, i32 0, i32 2
  store %struct._GeglNode* %call8, %struct._GeglNode** %operation, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_finalize(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %image_map_tool = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %image_map_tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %operation = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %3, i32 0, i32 2
  %4 = load %struct._GeglNode*, %struct._GeglNode** %operation, align 8
  %tobool = icmp ne %struct._GeglNode* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %operation2 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %5, i32 0, i32 2
  %6 = load %struct._GeglNode*, %struct._GeglNode** %operation2, align 8
  %7 = bitcast %struct._GeglNode* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %operation3 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %8, i32 0, i32 2
  store %struct._GeglNode* null, %struct._GeglNode** %operation3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %9, i32 0, i32 3
  %10 = load %struct._GObject*, %struct._GObject** %config, align 8
  %tobool4 = icmp ne %struct._GObject* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %config6 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %11, i32 0, i32 3
  %12 = load %struct._GObject*, %struct._GObject** %config6, align 8
  %13 = bitcast %struct._GObject* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %config7 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %14, i32 0, i32 3
  store %struct._GObject* null, %struct._GObject** %config7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %default_config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %15, i32 0, i32 4
  %16 = load %struct._GObject*, %struct._GObject** %default_config, align 8
  %tobool9 = icmp ne %struct._GObject* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %default_config11 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %17, i32 0, i32 4
  %18 = load %struct._GObject*, %struct._GObject** %default_config11, align 8
  %19 = bitcast %struct._GObject* %18 to i8*
  call void @g_object_unref(i8* %19)
  %20 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %default_config12 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %20, i32 0, i32 4
  store %struct._GObject* null, %struct._GObject** %default_config12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %if.end.8
  %21 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %21, i32 0, i32 9
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool14 = icmp ne %struct._GtkWidget* %22, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %23 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  call void @gimp_image_map_tool_dialog_destroy(%struct._GimpImageMapTool* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %24 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** @parent_class, align 8
  %25 = bitcast %struct._GimpColorToolClass* %24 to %struct._GTypeClass*
  %call17 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %25, i64 80)
  %26 = bitcast %struct._GTypeClass* %call17 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %26, i32 0, i32 6
  %27 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %27(%struct._GObject* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_map_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #1 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %image_map_tool = alloca %struct._GimpImageMapTool*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %display_shell = alloca %struct._GimpDisplayShell*, align 8
  %klass = alloca %struct._GimpImageMapToolClass*, align 8
  %dialog22 = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %toggle = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %image_map_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %tool_info2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 1
  %4 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info2, align 8
  store %struct._GimpToolInfo* %4, %struct._GimpToolInfo** %tool_info, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call4 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %6)
  store %struct._GimpDrawable* %call4, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call5 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %7)
  store %struct._GimpDisplayShell* %call5, %struct._GimpDisplayShell** %display_shell, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %9 = bitcast %struct._GimpDrawable* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_viewable_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpViewable*
  %call8 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %10)
  %tobool = icmp ne %struct._GimpContainer* %call8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call9 = call i32 @gimp_error_quark() #7
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0)) #10
  call void @g_set_error_literal(%struct._GError** %11, i32 %call9, i32 0, i8* %call10)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %13 = bitcast %struct._GimpDrawable* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_item_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpItem*
  %call13 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %14)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call16 = call i32 @gimp_error_quark() #7
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0)) #10
  call void @g_set_error_literal(%struct._GError** %15, i32 %call16, i32 0, i8* %call17)
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display19 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 4
  store %struct._GimpDisplay* %16, %struct._GimpDisplay** %display19, align 8
  %18 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %18, i32 0, i32 9
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool20 = icmp ne %struct._GtkWidget* %19, null
  br i1 %tobool20, label %if.else.69, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  %20 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %21 = bitcast %struct._GimpImageMapTool* %20 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %23 = bitcast %struct._GTypeClass* %22 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %23, %struct._GimpImageMapToolClass** %klass, align 8
  %24 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %overlay = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %24, i32 0, i32 8
  store i32 0, i32* %overlay, align 4
  %25 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %overlay23 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %25, i32 0, i32 8
  %26 = load i32, i32* %overlay23, align 4
  %tobool24 = icmp ne i32 %26, 0
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.21
  %27 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %28 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %28, i32 0, i32 1
  %29 = load i8*, i8** %dialog_desc, align 8
  %call26 = call %struct._GtkWidget* (%struct._GimpToolInfo*, i8*, ...) @gimp_overlay_dialog_new(%struct._GimpToolInfo* %27, i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %dialog22, align 8
  %30 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog27 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %30, i32 0, i32 9
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %dialog27, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog22, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_container_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call28)
  %33 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %33, i32 6)
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %display_shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 33
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_overlay_box_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call30)
  %37 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpOverlayBox*
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog22, align 8
  call void @gimp_overlay_box_add_child(%struct._GimpOverlayBox* %37, %struct._GtkWidget* %38, double 1.000000e+00, double 1.000000e+00)
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %display_shell, align 8
  %canvas32 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 33
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas32, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_overlay_box_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call33)
  %42 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpOverlayBox*
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog22, align 8
  call void @gimp_overlay_box_set_child_angle(%struct._GimpOverlayBox* %42, %struct._GtkWidget* %43, double 0.000000e+00)
  %call35 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %vbox, align 8
  %44 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %main_vbox = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %44, i32 0, i32 10
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %main_vbox, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog22, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_container_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call36)
  %47 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkContainer*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %47, %struct._GtkWidget* %48)
  br label %if.end.52

if.else:                                          ; preds = %if.then.21
  %49 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %display_shell, align 8
  %51 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %dialog_desc38 = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %51, i32 0, i32 1
  %52 = load i8*, i8** %dialog_desc38, align 8
  %call39 = call %struct._GtkWidget* (%struct._GimpToolInfo*, %struct._GimpDisplayShell*, i8*, ...) @gimp_tool_dialog_new(%struct._GimpToolInfo* %49, %struct._GimpDisplayShell* %50, i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %dialog22, align 8
  %53 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog40 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %53, i32 0, i32 9
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %dialog40, align 8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog22, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_dialog_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call41)
  %56 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %56, i32 1, i32 -5, i32 -6, i32 -1)
  %call43 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %vbox, align 8
  %57 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %main_vbox44 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %57, i32 0, i32 10
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %main_vbox44, align 8
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_container_get_type() #7
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call45)
  %60 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %60, i32 6)
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog22, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_dialog_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call47)
  %63 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkDialog*
  %call49 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %63)
  %64 = bitcast %struct._GtkWidget* %call49 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call50)
  %65 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %65, %struct._GtkWidget* %66, i32 1, i32 1, i32 0)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.25
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog22, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %70 = bitcast %struct._GimpImageMapTool* %69 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 80)
  %71 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  %72 = bitcast %struct._GObject* %71 to i8*
  %call54 = call i64 @g_signal_connect_object(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpImageMapTool*)* @gimp_image_map_tool_response to void ()*), i8* %72, i32 0)
  %73 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %klass, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %73, i32 0, i32 2
  %74 = load i8*, i8** %settings_name, align 8
  %tobool55 = icmp ne i8* %74, null
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.52
  %75 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %call57 = call i32 @gimp_image_map_tool_add_settings_gui(%struct._GimpImageMapTool* %75)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.52
  %76 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %76, i32 0, i32 12
  %77 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %78 = bitcast %struct._GimpToolOptions* %77 to %struct._GTypeInstance*
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 80)
  %79 = bitcast %struct._GTypeInstance* %call59 to %struct._GObject*
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #10
  %call61 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* %call60)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %toggle, align 8
  %80 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %main_vbox62 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %80, i32 0, i32 10
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox62, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call63)
  %83 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %83, %struct._GtkWidget* %84, i32 0, i32 0, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %toggle, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %86 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  call void @gimp_image_map_tool_dialog(%struct._GimpImageMapTool* %86)
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %87)
  %88 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %operation = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %88, i32 0, i32 2
  %89 = load %struct._GeglNode*, %struct._GeglNode** %operation, align 8
  %tobool65 = icmp ne %struct._GeglNode* %89, null
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.58
  %90 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %90, i32 0, i32 1
  %91 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %91, i32 0, i32 1
  %92 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %93 = bitcast %struct._GimpCoreConfig* %92 to i8*
  %94 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %95 = bitcast %struct._GimpImageMapTool* %94 to i8*
  %call67 = call i64 @g_signal_connect_object(i8* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpImageMapTool*)* @gimp_image_map_tool_gegl_notify to void ()*), i8* %95, i32 0)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.58
  br label %if.end.95

if.else.69:                                       ; preds = %if.end.18
  %96 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog70 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %96, i32 0, i32 9
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog70, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %98, %struct._GTypeInstance** %__inst, align 8
  %call71 = call i64 @gimp_overlay_dialog_get_type() #7
  store i64 %call71, i64* %__t, align 8
  %99 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool72 = icmp ne %struct._GTypeInstance* %99, null
  br i1 %tobool72, label %if.else.74, label %if.then.73

if.then.73:                                       ; preds = %if.else.69
  store i32 0, i32* %__r, align 4
  br label %if.end.82

if.else.74:                                       ; preds = %if.else.69
  %100 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class75 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %100, i32 0, i32 0
  %101 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class75, align 8
  %tobool76 = icmp ne %struct._GTypeClass* %101, null
  br i1 %tobool76, label %land.lhs.true, label %if.else.79

land.lhs.true:                                    ; preds = %if.else.74
  %102 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class77 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %102, i32 0, i32 0
  %103 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class77, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %103, i32 0, i32 0
  %104 = load i64, i64* %g_type, align 8
  %105 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %104, %105
  br i1 %cmp, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.81

if.else.79:                                       ; preds = %land.lhs.true, %if.else.74
  %106 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %107 = load i64, i64* %__t, align 8
  %call80 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %106, i64 %107) #8
  store i32 %call80, i32* %__r, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.79, %if.then.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.73
  %108 = load i32, i32* %__r, align 4
  store i32 %108, i32* %tmp
  %109 = load i32, i32* %tmp
  %tobool83 = icmp ne i32 %109, 0
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.94

land.lhs.true.84:                                 ; preds = %if.end.82
  %110 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog85 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %110, i32 0, i32 9
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog85, align 8
  %call86 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %111)
  %tobool87 = icmp ne %struct._GtkWidget* %call86, null
  br i1 %tobool87, label %if.end.94, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.84
  %112 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %display_shell, align 8
  %canvas89 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %112, i32 0, i32 33
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas89, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_overlay_box_get_type() #7
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call90)
  %115 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpOverlayBox*
  %116 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog92 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %116, i32 0, i32 9
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog92, align 8
  call void @gimp_overlay_box_add_child(%struct._GimpOverlayBox* %115, %struct._GtkWidget* %117, double 1.000000e+00, double 1.000000e+00)
  %118 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog93 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %118, i32 0, i32 9
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog93, align 8
  %120 = bitcast %struct._GtkWidget* %119 to i8*
  call void @g_object_unref(i8* %120)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.88, %land.lhs.true.84, %if.end.82
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.68
  %121 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %overlay96 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %121, i32 0, i32 8
  %122 = load i32, i32* %overlay96, align 4
  %tobool97 = icmp ne i32 %122, 0
  br i1 %tobool97, label %if.end.110, label %if.then.98

if.then.98:                                       ; preds = %if.end.95
  %123 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog99 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %123, i32 0, i32 9
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog99, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call100 = call i64 @gimp_viewable_dialog_get_type() #7
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call100)
  %126 = bitcast %struct._GTypeInstance* %call101 to %struct._GimpViewableDialog*
  %127 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %128 = bitcast %struct._GimpDrawable* %127 to %struct._GTypeInstance*
  %call102 = call i64 @gimp_viewable_get_type() #7
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call102)
  %129 = bitcast %struct._GTypeInstance* %call103 to %struct._GimpViewable*
  %130 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options104 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %130, i32 0, i32 12
  %131 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options104, align 8
  %132 = bitcast %struct._GimpToolOptions* %131 to %struct._GTypeInstance*
  %call105 = call i64 @gimp_context_get_type() #7
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call105)
  %133 = bitcast %struct._GTypeInstance* %call106 to %struct._GimpContext*
  call void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog* %126, %struct._GimpViewable* %129, %struct._GimpContext* %133)
  %134 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog107 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %134, i32 0, i32 9
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog107, align 8
  %136 = bitcast %struct._GtkWidget* %135 to %struct._GTypeInstance*
  %call108 = call i64 @gimp_tool_dialog_get_type() #7
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %136, i64 %call108)
  %137 = bitcast %struct._GTypeInstance* %call109 to %struct._GimpToolDialog*
  %138 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %display_shell, align 8
  call void @gimp_tool_dialog_set_shell(%struct._GimpToolDialog* %137, %struct._GimpDisplayShell* %138)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.98, %if.end.95
  %139 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog111 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %139, i32 0, i32 9
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog111, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %140)
  %141 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %142 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %drawable112 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %142, i32 0, i32 1
  store %struct._GimpDrawable* %141, %struct._GimpDrawable** %drawable112, align 8
  %143 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  call void @gimp_image_map_tool_create_map(%struct._GimpImageMapTool* %143)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.110, %if.then.15, %if.then
  %144 = load i32, i32* %retval
  ret i32 %144
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #1 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %image_map_tool = alloca %struct._GimpImageMapTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %image_map_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  call void @gimp_image_map_tool_dialog_hide(%struct._GimpImageMapTool* %4)
  %5 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %5, i32 0, i32 7
  %6 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool = icmp ne %struct._GimpImageMap* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %7, i32 0, i32 3
  %8 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %8, i32 1)
  %9 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %image_map3 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %9, i32 0, i32 7
  %10 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map3, align 8
  call void @gimp_image_map_abort(%struct._GimpImageMap* %10)
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %image_map4 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %11, i32 0, i32 7
  %12 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map4, align 8
  %13 = bitcast %struct._GimpImageMap* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %image_map5 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %14, i32 0, i32 7
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %image_map5, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control6 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 3
  %16 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control6, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %16)
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 4
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display7, align 8
  %call8 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %18)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %19)
  call void @gimp_projection_flush_now(%struct._GimpProjection* %call9)
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 4
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display10, align 8
  call void @gimp_display_flush_now(%struct._GimpDisplay* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.2
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %22, i32 0, i32 5
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb
  %23 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** @parent_class, align 8
  %24 = bitcast %struct._GimpColorToolClass* %23 to %struct._GTypeClass*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 %call11)
  %25 = bitcast %struct._GTypeClass* %call12 to %struct._GimpToolClass*
  %control13 = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %25, i32 0, i32 4
  %26 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control13, align 8
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %28 = load i32, i32* %action.addr, align 4
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %26(%struct._GimpTool* %27, i32 %28, %struct._GimpDisplay* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_map_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #1 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %image_map_tool = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %image_map_tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %3, i32 0, i32 9
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %cmp = icmp eq %struct._GimpDisplay* %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %8, i32 0, i32 5
  %9 = load i32, i32* %keyval, align 4
  switch i32 %9, label %sw.epilog [
    i32 65293, label %sw.bb
    i32 65421, label %sw.bb
    i32 65076, label %sw.bb
    i32 65288, label %sw.bb.4
    i32 65307, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog3 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %10, i32 0, i32 9
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog3, align 8
  %12 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  call void @gimp_image_map_tool_response(%struct._GtkWidget* %11, i32 -5, %struct._GimpImageMapTool* %12)
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.then
  %13 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog5 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %13, i32 0, i32 9
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog5, align 8
  %15 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  call void @gimp_image_map_tool_response(%struct._GtkWidget* %14, i32 1, %struct._GimpImageMapTool* %15)
  store i32 1, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %if.then
  %16 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %dialog7 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %16, i32 0, i32 9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog7, align 8
  %18 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  call void @gimp_image_map_tool_response(%struct._GtkWidget* %17, i32 -6, %struct._GimpImageMapTool* %18)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %sw.bb.6, %sw.bb.4, %sw.bb
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_options_notify(%struct._GimpTool* %tool, %struct._GimpToolOptions* %options, %struct._GParamSpec* %pspec) #1 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %options.addr = alloca %struct._GimpToolOptions*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %image_map_tool = alloca %struct._GimpImageMapTool*, align 8
  %im_options = alloca %struct._GimpImageMapOptions*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpToolOptions* %options, %struct._GimpToolOptions** %options.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %image_map_tool, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end.13, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %5, i32 0, i32 7
  %6 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool3 = icmp ne %struct._GimpImageMap* %6, null
  br i1 %tobool3, label %if.then, label %if.end.13

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %options.addr, align 8
  %8 = bitcast %struct._GimpToolOptions* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_image_map_options_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpImageMapOptions*
  store %struct._GimpImageMapOptions* %9, %struct._GimpImageMapOptions** %im_options, align 8
  %10 = load %struct._GimpImageMapOptions*, %struct._GimpImageMapOptions** %im_options, align 8
  %preview = getelementptr inbounds %struct._GimpImageMapOptions, %struct._GimpImageMapOptions* %10, i32 0, i32 1
  %11 = load i32, i32* %preview, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %12, i32 0, i32 3
  %13 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %13, i32 1)
  %14 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  call void @gimp_image_map_tool_map(%struct._GimpImageMapTool* %14)
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 3
  %16 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control8, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %16)
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 3
  %18 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control9, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %18, i32 1)
  %19 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %image_map10 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %19, i32 0, i32 7
  %20 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map10, align 8
  call void @gimp_image_map_clear(%struct._GimpImageMap* %20)
  %21 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %21, i32 0, i32 3
  %22 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control11, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %22)
  %23 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  %image_map12 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %23, i32 0, i32 7
  %24 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map12, align 8
  %25 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool, align 8
  call void @gimp_image_map_tool_flush(%struct._GimpImageMap* %24, %struct._GimpImageMapTool* %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_map_tool_pick_color(%struct._GimpColorTool* %color_tool, i32 %x, i32 %y, i32* %sample_type, %struct._GimpRGB* %color, i32* %color_index) #1 {
entry:
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sample_type.addr = alloca i32*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32*, align 8
  %tool = alloca %struct._GimpImageMapTool*, align 8
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32* %sample_type, i32** %sample_type.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32* %color_index, i32** %color_index.addr, align 8
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %5 = bitcast %struct._GimpDrawable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %6, i32* %off_x, i32* %off_y)
  %7 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool, align 8
  %drawable4 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %7, i32 0, i32 1
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable4, align 8
  %call5 = call i32 @gimp_drawable_type(%struct._GimpDrawable* %8)
  %9 = load i32*, i32** %sample_type.addr, align 8
  store i32 %call5, i32* %9, align 4
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool, align 8
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %10, i32 0, i32 7
  %11 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %12 = bitcast %struct._GimpImageMap* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_pickable_interface_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpPickable*
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %off_x, align 4
  %sub = sub nsw i32 %14, %15
  %16 = load i32, i32* %y.addr, align 4
  %17 = load i32, i32* %off_y, align 4
  %sub8 = sub nsw i32 %16, %17
  %18 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %18, i32 0, i32 5
  %19 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options, align 8
  %sample_average = getelementptr inbounds %struct._GimpColorOptions, %struct._GimpColorOptions* %19, i32 0, i32 2
  %20 = load i32, i32* %sample_average, align 4
  %21 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %options9 = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %21, i32 0, i32 5
  %22 = load %struct._GimpColorOptions*, %struct._GimpColorOptions** %options9, align 8
  %average_radius = getelementptr inbounds %struct._GimpColorOptions, %struct._GimpColorOptions* %22, i32 0, i32 3
  %23 = load double, double* %average_radius, align 8
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %25 = load i32*, i32** %color_index.addr, align 8
  %call10 = call i32 @gimp_pickable_pick_color(%struct._GimpPickable* %13, i32 %sub, i32 %sub8, i32 %20, double %23, %struct._GimpRGB* %24, i32* %25)
  ret i32 %call10
}

declare i32 @gimp_image_map_tool_real_settings_import(%struct._GimpImageMapTool*, i8*, %struct._GError**) #2

declare i32 @gimp_image_map_tool_real_settings_export(%struct._GimpImageMapTool*, i8*, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_dialog_destroy(%struct._GimpImageMapTool* %image_map_tool) #1 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %0, i32 0, i32 9
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_dialog_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %14 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %dialog8 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %14, i32 0, i32 9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog8, align 8
  %call9 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %15)
  %tobool10 = icmp ne %struct._GtkWidget* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.6
  %16 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %dialog12 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %16, i32 0, i32 9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog12, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %17)
  br label %if.end.15

if.else.13:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %dialog14 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %18, i32 0, i32 9
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog14, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.11
  %21 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %dialog16 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %21, i32 0, i32 9
  store %struct._GtkWidget* null, %struct._GtkWidget** %dialog16, align 8
  %22 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %main_vbox = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %22, i32 0, i32 10
  store %struct._GtkWidget* null, %struct._GtkWidget** %main_vbox, align 8
  %23 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %23, i32 0, i32 11
  store %struct._GtkWidget* null, %struct._GtkWidget** %settings_box, align 8
  %24 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %label_group = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %24, i32 0, i32 12
  store %struct._GtkSizeGroup* null, %struct._GtkSizeGroup** %label_group, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #2

declare void @gtk_widget_destroy(%struct._GtkWidget*) #2

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #2

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #2

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #3

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #2

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #3

declare %struct._GtkWidget* @gimp_overlay_dialog_new(%struct._GimpToolInfo*, i8*, ...) #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gimp_overlay_box_add_child(%struct._GimpOverlayBox*, %struct._GtkWidget*, double, double) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_overlay_box_get_type() #3

declare void @gimp_overlay_box_set_child_angle(%struct._GimpOverlayBox*, %struct._GtkWidget*, double) #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #2

declare %struct._GtkWidget* @gimp_tool_dialog_new(%struct._GimpToolInfo*, %struct._GimpDisplayShell*, i8*, ...) #2

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GimpImageMapTool* %image_map_tool) #1 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpImageMapOptions*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load i32, i32* %response_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  call void @gimp_image_map_tool_reset(%struct._GimpImageMapTool* %4)
  %5 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %5)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  call void @gimp_image_map_tool_dialog_hide(%struct._GimpImageMapTool* %6)
  %7 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %7, i32 0, i32 7
  %8 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool = icmp ne %struct._GimpImageMap* %8, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %sw.bb.2
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %10 = bitcast %struct._GimpTool* %9 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call3)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %call5 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %11)
  %12 = bitcast %struct._GimpToolOptions* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_image_map_options_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpImageMapOptions*
  store %struct._GimpImageMapOptions* %13, %struct._GimpImageMapOptions** %options, align 8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 3
  %15 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %15, i32 1)
  %16 = load %struct._GimpImageMapOptions*, %struct._GimpImageMapOptions** %options, align 8
  %preview = getelementptr inbounds %struct._GimpImageMapOptions, %struct._GimpImageMapOptions* %16, i32 0, i32 1
  %17 = load i32, i32* %preview, align 4
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %18 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  call void @gimp_image_map_tool_map(%struct._GimpImageMapTool* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %19 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %image_map10 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %19, i32 0, i32 7
  %20 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map10, align 8
  call void @gimp_image_map_commit(%struct._GimpImageMap* %20)
  %21 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %image_map11 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %21, i32 0, i32 7
  %22 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map11, align 8
  %23 = bitcast %struct._GimpImageMap* %22 to i8*
  call void @g_object_unref(i8* %23)
  %24 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %image_map12 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %24, i32 0, i32 7
  store %struct._GimpImageMap* null, %struct._GimpImageMap** %image_map12, align 8
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %25, i32 0, i32 3
  %26 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control13, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %26)
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 4
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call14 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %28)
  call void @gimp_image_flush(%struct._GimpImage* %call14)
  %29 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %29, i32 0, i32 3
  %30 = load %struct._GObject*, %struct._GObject** %config, align 8
  %tobool15 = icmp ne %struct._GObject* %30, null
  br i1 %tobool15, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end
  %31 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %31, i32 0, i32 11
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_box, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %32, null
  br i1 %tobool16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %land.lhs.true
  %33 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box18 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %33, i32 0, i32 11
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_box18, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_settings_box_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call19)
  %36 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpSettingsBox*
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 1
  %38 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %38, i32 0, i32 1
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 1
  %40 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config21, align 8
  %41 = bitcast %struct._GimpCoreConfig* %40 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_gui_config_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call22)
  %42 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpGuiConfig*
  %image_map_tool_max_recent = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %42, i32 0, i32 2
  %43 = load i32, i32* %image_map_tool_max_recent, align 4
  call void @gimp_settings_box_add_current(%struct._GimpSettingsBox* %36, i32 %43)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.17, %land.lhs.true, %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %sw.bb.2
  %44 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display26 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %44, i32 0, i32 4
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display26, align 8
  %45 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %45, i32 0, i32 5
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %46 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %47 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display27 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %47, i32 0, i32 4
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display27, align 8
  call void @gimp_tool_control(%struct._GimpTool* %46, i32 2, %struct._GimpDisplay* %48)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.25, %sw.bb
  ret void
}

declare i32 @gimp_image_map_tool_add_settings_gui(%struct._GimpImageMapTool*) #2

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #2

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

declare void @gtk_widget_show(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_dialog(%struct._GimpImageMapTool* %tool) #1 {
entry:
  %tool.addr = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpImageMapTool* %tool, %struct._GimpImageMapTool** %tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpImageMapToolClass*
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %3, i32 0, i32 8
  %4 = load void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)** %dialog, align 8
  %5 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %tool.addr, align 8
  call void %4(%struct._GimpImageMapTool* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_gegl_notify(%struct._GObject* %config, %struct._GParamSpec* %pspec, %struct._GimpImageMapTool* %im_tool) #1 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %image_map = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %0, i32 0, i32 7
  %1 = load %struct._GimpImageMap*, %struct._GimpImageMap** %image_map, align 8
  %tobool = icmp ne %struct._GimpImageMap* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %3 = bitcast %struct._GimpImageMapTool* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 3
  %5 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_push_preserve(%struct._GimpToolControl* %5, i32 1)
  %6 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  call void @gimp_image_map_tool_create_map(%struct._GimpImageMapTool* %6)
  %7 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %8 = bitcast %struct._GimpImageMapTool* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %control4 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 3
  %10 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control4, align 8
  call void @gimp_tool_control_pop_preserve(%struct._GimpToolControl* %10)
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_overlay_dialog_get_type() #3

declare void @gimp_viewable_dialog_set_viewable(%struct._GimpViewableDialog*, %struct._GimpViewable*, %struct._GimpContext*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_dialog_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #3

declare void @gimp_tool_dialog_set_shell(%struct._GimpToolDialog*, %struct._GimpDisplayShell*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_dialog_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_tool_dialog_hide(%struct._GimpImageMapTool* %image_map_tool) #1 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst12 = alloca %struct._GTypeInstance*, align 8
  %__t14 = alloca i64, align 8
  %__r17 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %dialog1 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %0, i32 0, i32 9
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog1, align 8
  store %struct._GtkWidget* %1, %struct._GtkWidget** %dialog, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_dialog_get_type() #7
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gimp_dialog_factory_hide_dialog(%struct._GtkWidget* %15)
  br label %if.end.40

if.else.10:                                       ; preds = %if.end.7
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst12, align 8
  %call15 = call i64 @gimp_overlay_dialog_get_type() #7
  store i64 %call15, i64* %__t14, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %tobool18 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool18, label %if.else.20, label %if.then.19

if.then.19:                                       ; preds = %if.else.10
  store i32 0, i32* %__r17, align 4
  br label %if.end.31

if.else.20:                                       ; preds = %if.else.10
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %tobool22 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.else.28

land.lhs.true.23:                                 ; preds = %if.else.20
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %g_type25 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type25, align 8
  %24 = load i64, i64* %__t14, align 8
  %cmp26 = icmp eq i64 %23, %24
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.23
  store i32 1, i32* %__r17, align 4
  br label %if.end.30

if.else.28:                                       ; preds = %land.lhs.true.23, %if.else.20
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %26 = load i64, i64* %__t14, align 8
  %call29 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call29, i32* %__r17, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.19
  %27 = load i32, i32* %__r17, align 4
  store i32 %27, i32* %tmp32
  %28 = load i32, i32* %tmp32
  %tobool33 = icmp ne i32 %28, 0
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.31
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %call35 = call i8* @g_object_ref(i8* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %call36 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %31)
  %32 = bitcast %struct._GtkWidget* %call36 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_container_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call37)
  %33 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkContainer*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %33, %struct._GtkWidget* %34)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.end.31
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.9
  ret void
}

declare void @gimp_image_map_commit(%struct._GimpImageMap*) #2

declare void @gimp_image_flush(%struct._GimpImage*) #2

declare void @gimp_settings_box_add_current(%struct._GimpSettingsBox*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_settings_box_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #3

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #2

declare void @gimp_dialog_factory_hide_dialog(%struct._GtkWidget*) #2

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #2

declare void @gimp_image_map_abort(%struct._GimpImageMap*) #2

declare void @gimp_projection_flush_now(%struct._GimpProjection*) #2

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #2

declare void @gimp_display_flush_now(%struct._GimpDisplay*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #2

declare i32 @gimp_drawable_type(%struct._GimpDrawable*) #2

declare i32 @gimp_pickable_pick_color(%struct._GimpPickable*, i32, i32, i32, double, %struct._GimpRGB*, i32*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #3

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_config_get_type() #3

declare void @gimp_list_set_sort_func(%struct._GimpList*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #3

declare i32 @gimp_image_map_config_compare(%struct._GimpImageMapConfig*, %struct._GimpImageMapConfig*) #2

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #2

declare void @gimp_tool_control_set_preserve(%struct._GimpToolControl*, i32) #2

declare void @gimp_tool_control_set_dirty_mask(%struct._GimpToolControl*, i32) #2

declare void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #2

declare i32 @gimp_rectangle_intersect(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #2

declare i32 @gimp_item_get_width(%struct._GimpItem*) #2

declare i32 @gimp_item_get_height(%struct._GimpItem*) #2

declare void @gimp_image_map_apply(%struct._GimpImageMap*, %struct._GeglRectangle*) #2

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #2

declare void @gimp_config_reset(%struct._GimpConfig*) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
