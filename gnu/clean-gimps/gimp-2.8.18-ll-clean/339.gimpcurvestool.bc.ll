; ModuleID = './app/tools/gimpcurvestool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpCurvesToolClass = type { %struct._GimpImageMapToolClass }
%struct._GimpImageMapToolClass = type { %struct._GimpColorToolClass, i8*, i8*, i8*, i8*, %struct._GimpContainer*, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)*, void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)*, void (%struct._GimpImageMapTool*)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* }
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
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolInfo = type opaque
%struct._GimpToolControl = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpColorTool = type { %struct._GimpDrawTool, i32, i32, i32, i32, %struct._GimpColorOptions*, %struct._GimpSamplePoint*, i32, i32, i32 }
%struct._GimpColorOptions = type { %struct._GimpImageMapOptions, i32, i32, double }
%struct._GimpImageMapOptions = type { %struct._GimpToolOptions, i32, i8* }
%struct._GimpSamplePoint = type opaque
%struct._GimpContainer = type opaque
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
%struct._GimpCurvesTool = type { %struct._GimpImageMapTool, %struct._GimpCurvesConfig*, %struct._GimpLut*, [5 x double], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GimpCurvesConfig = type { %struct._GimpImageMapConfig, i32, [5 x %struct._GimpCurve*] }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
%struct._GimpLut = type { i8**, i32 }
%struct._GimpHistogram = type opaque
%struct._GimpConfig = type opaque
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpHistogramView = type { %struct._GtkDrawingArea, %struct._GimpHistogram*, %struct._GimpHistogram*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._GimpCurveView = type { %struct._GimpHistogramView, %struct._Gimp*, %struct._GimpCurve*, %struct._GimpRGB*, %struct._GList*, i32, i32, i32, i32, double, double, double, double, i32, i32, double, %struct._PangoLayout*, double, double, double, double, double, double, %struct._PangoLayout*, %struct._PangoRectangle, i8*, i8* }
%struct._PangoLayout = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._Curves = type { [5 x [256 x i8]] }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEnumStore = type { %struct._GimpIntStore, %struct._GEnumClass* }
%struct._GimpIntStore = type { %struct._GtkListStore, %struct._GtkTreeIter* }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpEnumComboBox = type { %struct._GimpIntComboBox }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpHistogramOptions = type { %struct._GimpColorOptions, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpColorBar = type { %struct._GtkEventBox, i32, [768 x i8] }
%struct._GtkEventBox = type { %struct._GtkBin }
%struct._GimpSettingsBox = type opaque
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkFileChooser = type opaque

@gimp_curves_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpCurvesTool\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gimp-curves-tool\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Curves\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Curves Tool: Adjust color curves\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"_Curves...\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gimp-tool-curves\00", align 1
@gimp_curves_tool_parent_class = internal global i8* null, align 8
@GimpCurvesTool_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Adjust Color Curves\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Import Curves\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Export Curves\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Curves does not operate on indexed layers.\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Click to add a control point\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Click to add control points to all channels\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Click to locate on curve (try Shift, Ctrl)\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"gimp:curves\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@curves_get_channel_color.channel_colors = internal constant [5 x %struct._GimpRGB] [%struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e+00 }, %struct._GimpRGB { double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double 1.000000e+00 }], align 16
@.str.21 = private unnamed_addr constant [18 x i8] c"file-dialog-setup\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Cha_nnel:\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"gimp-channel\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"R_eset Channel\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"histogram-scale\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"gimp-histogram\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"border-width\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"subdivisions\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Curve _type:\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"gimp-curve\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Use _old curves file format\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"curve-type\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"Could not read header from '%s': %s\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"# GIMP Curves File\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_curves_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_curves_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_curves_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_map_tool_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 392, void (i8*, i8*)* bitcast (void (i8*)* @gimp_curves_tool_class_intern_init to void (i8*, i8*)*), i32 496, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpCurvesTool*)* @gimp_curves_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_curves_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_curves_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_curves_tool_parent_class, align 8
  %1 = load i32, i32* @GimpCurvesTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpCurvesTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpCurvesToolClass*
  call void @gimp_curves_tool_class_init(%struct._GimpCurvesToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_init(%struct._GimpCurvesTool* %tool) #3 {
entry:
  %tool.addr = alloca %struct._GimpCurvesTool*, align 8
  %im_tool = alloca %struct._GimpImageMapTool*, align 8
  %i = alloca i32, align 4
  store %struct._GimpCurvesTool* %tool, %struct._GimpCurvesTool** %tool.addr, align 8
  %0 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpCurvesTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %im_tool, align 8
  %call2 = call %struct._GimpLut* @gimp_lut_new()
  %3 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %lut = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %3, i32 0, i32 2
  store %struct._GimpLut* %call2, %struct._GimpLut** %lut, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %picked_color = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %6, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %picked_color, i32 0, i64 %idxprom
  store double -1.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %8, i32 0, i32 5
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* bitcast (void (%struct._GimpLut*, %struct._PixelRegion*, %struct._PixelRegion*)* @gimp_lut_process to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*), void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %9 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %lut4 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %9, i32 0, i32 2
  %10 = load %struct._GimpLut*, %struct._GimpLut** %lut4, align 8
  %11 = bitcast %struct._GimpLut* %10 to i8*
  %12 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %12, i32 0, i32 6
  store i8* %11, i8** %apply_data, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_curves_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call i64 @gimp_histogram_options_get_type() #6
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #7
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)) #7
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_color_options_gui, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_options_get_type() #2

declare %struct._GtkWidget* @gimp_color_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_class_init(%struct._GimpCurvesToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpCurvesToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %color_tool_class = alloca %struct._GimpColorToolClass*, align 8
  %im_tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GimpCurvesToolClass* %klass, %struct._GimpCurvesToolClass** %klass.addr, align 8
  %0 = load %struct._GimpCurvesToolClass*, %struct._GimpCurvesToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpCurvesToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpCurvesToolClass*, %struct._GimpCurvesToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpCurvesToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpCurvesToolClass*, %struct._GimpCurvesToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpCurvesToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_color_tool_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpColorToolClass*
  store %struct._GimpColorToolClass* %8, %struct._GimpColorToolClass** %color_tool_class, align 8
  %9 = load %struct._GimpCurvesToolClass*, %struct._GimpCurvesToolClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpCurvesToolClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_image_map_tool_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %11, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_curves_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_curves_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_curves_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_curves_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_curves_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_curves_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %18 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %color_tool_class, align 8
  %picked = getelementptr inbounds %struct._GimpColorToolClass, %struct._GimpColorToolClass* %18, i32 0, i32 2
  store void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)* @gimp_curves_tool_color_picked, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)** %picked, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #7
  %19 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %19, i32 0, i32 1
  store i8* %call7, i8** %dialog_desc, align 8
  %20 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8** %settings_name, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #7
  %21 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %21, i32 0, i32 3
  store i8* %call8, i8** %import_dialog_title, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #7
  %22 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %22, i32 0, i32 4
  store i8* %call9, i8** %export_dialog_title, align 8
  %23 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %23, i32 0, i32 6
  store %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* @gimp_curves_tool_get_operation, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %24 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %24, i32 0, i32 7
  store void (%struct._GimpImageMapTool*)* @gimp_curves_tool_map, void (%struct._GimpImageMapTool*)** %map, align 8
  %25 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %25, i32 0, i32 8
  store void (%struct._GimpImageMapTool*)* @gimp_curves_tool_dialog, void (%struct._GimpImageMapTool*)** %dialog, align 8
  %26 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %reset = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %26, i32 0, i32 9
  store void (%struct._GimpImageMapTool*)* @gimp_curves_tool_reset, void (%struct._GimpImageMapTool*)** %reset, align 8
  %27 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_import = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %27, i32 0, i32 10
  store i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* @gimp_curves_tool_settings_import, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_import, align 8
  %28 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_export = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %28, i32 0, i32 11
  store i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* @gimp_curves_tool_settings_export, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_export, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load i8*, i8** @gimp_curves_tool_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %2, i32 0, i32 9
  %3 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %3(%struct._GObject* %4)
  %5 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %6 = bitcast %struct._GObject* %5 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_color_tool_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call1)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpColorTool*
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %9 = bitcast %struct._GObject* %8 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_tool_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call3)
  %10 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpTool*
  %call5 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %10)
  %11 = bitcast %struct._GimpToolOptions* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_color_options_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpColorOptions*
  call void @gimp_color_tool_enable(%struct._GimpColorTool* %7, %struct._GimpColorOptions* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpCurvesTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %tool, align 8
  %3 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %lut = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %3, i32 0, i32 2
  %4 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  call void @gimp_lut_free(%struct._GimpLut* %4)
  %5 = load i8*, i8** @gimp_curves_tool_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 80)
  %7 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  %8 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %8(%struct._GObject* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curves_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %c_tool = alloca %struct._GimpCurvesTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %histogram = alloca %struct._GimpHistogram*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %c_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %4)
  store %struct._GimpDrawable* %call3, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call4 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call7 = call i32 @gimp_error_quark() #6
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0)) #7
  call void @g_set_error_literal(%struct._GError** %7, i32 %call7, i32 0, i8* %call8)
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %config = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %8, i32 0, i32 1
  %9 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %10 = bitcast %struct._GimpCurvesConfig* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %11)
  %12 = load i8*, i8** @gimp_curves_tool_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call12 = call i64 @gimp_tool_get_type() #6
  %call13 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 %call12)
  %14 = bitcast %struct._GTypeClass* %call13 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 3
  %15 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %16 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 %15(%struct._GimpTool* %16, %struct._GimpDisplay* %17, %struct._GError** %18)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.9
  %19 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %channel_menu = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %19, i32 0, i32 4
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_int_combo_box_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpIntComboBox*
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %24 = bitcast %struct._GimpDrawable* %23 to i8*
  call void @gimp_int_combo_box_set_sensitivity(%struct._GimpIntComboBox* %22, i32 (i32, i8*)* @curves_menu_sensitivity, i8* %24, void (i8*)* null)
  %call20 = call %struct._GimpHistogram* @gimp_histogram_new()
  store %struct._GimpHistogram* %call20, %struct._GimpHistogram** %histogram, align 8
  %25 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %26 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  call void @gimp_drawable_calculate_histogram(%struct._GimpDrawable* %25, %struct._GimpHistogram* %26)
  %27 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %graph = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %27, i32 0, i32 7
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %graph, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_histogram_view_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call21)
  %30 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpHistogramView*
  %31 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  call void @gimp_histogram_view_set_background(%struct._GimpHistogramView* %30, %struct._GimpHistogram* %31)
  %32 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %32)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.6, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %c_tool = alloca %struct._GimpCurvesTool*, align 8
  %config = alloca %struct._GimpCurvesConfig*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %value = alloca double, align 8
  %closest = alloca i32, align 4
  %channel15 = alloca i32, align 4
  %curve16 = alloca %struct._GimpCurve*, align 8
  %value20 = alloca double, align 8
  %closest24 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %c_tool, align 8
  %3 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %config2 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %3, i32 0, i32 1
  %4 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config2, align 8
  store %struct._GimpCurvesConfig* %4, %struct._GimpCurvesConfig** %config, align 8
  %5 = load i32, i32* %state.addr, align 4
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %6, i32 0, i32 1
  %7 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve3 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve3, i32 0, i64 %idxprom
  %9 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  store %struct._GimpCurve* %9, %struct._GimpCurve** %curve, align 8
  %10 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel4 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %10, i32 0, i32 1
  %11 = load i32, i32* %channel4, align 4
  %idxprom5 = zext i32 %11 to i64
  %12 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %picked_color = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %12, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [5 x double], [5 x double]* %picked_color, i32 0, i64 %idxprom5
  %13 = load double, double* %arrayidx6, align 8
  store double %13, double* %value, align 8
  %14 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %15 = load double, double* %value, align 8
  %call7 = call i32 @gimp_curve_get_closest_point(%struct._GimpCurve* %14, double %15)
  store i32 %call7, i32* %closest, align 4
  %16 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %graph = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %16, i32 0, i32 7
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %graph, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_curve_view_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpCurveView*
  %20 = load i32, i32* %closest, align 4
  call void @gimp_curve_view_set_selected(%struct._GimpCurveView* %19, i32 %20)
  %21 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %22 = load i32, i32* %closest, align 4
  %23 = load double, double* %value, align 8
  %24 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %25 = load double, double* %value, align 8
  %call10 = call double @gimp_curve_map_value(%struct._GimpCurve* %24, double %25)
  call void @gimp_curve_set_point(%struct._GimpCurve* %21, i32 %22, double %23, double %call10)
  br label %if.end.33

if.else:                                          ; preds = %entry
  %26 = load i32, i32* %state.addr, align 4
  %call11 = call i32 @gimp_get_toggle_behavior_mask()
  %and12 = and i32 %26, %call11
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.32

if.then.14:                                       ; preds = %if.else
  store i32 0, i32* %channel15, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %27 = load i32, i32* %channel15, align 4
  %cmp = icmp ule i32 %27, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %channel15, align 4
  %idxprom17 = zext i32 %28 to i64
  %29 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve18 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %29, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve18, i32 0, i64 %idxprom17
  %30 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx19, align 8
  store %struct._GimpCurve* %30, %struct._GimpCurve** %curve16, align 8
  %31 = load i32, i32* %channel15, align 4
  %idxprom21 = zext i32 %31 to i64
  %32 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %picked_color22 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %32, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %picked_color22, i32 0, i64 %idxprom21
  %33 = load double, double* %arrayidx23, align 8
  store double %33, double* %value20, align 8
  %34 = load double, double* %value20, align 8
  %cmp25 = fcmp une double %34, -1.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %for.body
  %35 = load %struct._GimpCurve*, %struct._GimpCurve** %curve16, align 8
  %36 = load double, double* %value20, align 8
  %call27 = call i32 @gimp_curve_get_closest_point(%struct._GimpCurve* %35, double %36)
  store i32 %call27, i32* %closest24, align 4
  %37 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %graph28 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %37, i32 0, i32 7
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %graph28, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_curve_view_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call29)
  %40 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpCurveView*
  %41 = load i32, i32* %closest24, align 4
  call void @gimp_curve_view_set_selected(%struct._GimpCurveView* %40, i32 %41)
  %42 = load %struct._GimpCurve*, %struct._GimpCurve** %curve16, align 8
  %43 = load i32, i32* %closest24, align 4
  %44 = load double, double* %value20, align 8
  %45 = load %struct._GimpCurve*, %struct._GimpCurve** %curve16, align 8
  %46 = load double, double* %value20, align 8
  %call31 = call double @gimp_curve_map_value(%struct._GimpCurve* %45, double %46)
  call void @gimp_curve_set_point(%struct._GimpCurve* %42, i32 %43, double %44, double %call31)
  br label %if.end

if.end:                                           ; preds = %if.then.26, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %47 = load i32, i32* %channel15, align 4
  %inc = add i32 %47, 1
  store i32 %inc, i32* %channel15, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  %48 = load i8*, i8** @gimp_curves_tool_parent_class, align 8
  %49 = bitcast i8* %48 to %struct._GTypeClass*
  %call34 = call i64 @gimp_tool_get_type() #6
  %call35 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %49, i64 %call34)
  %50 = bitcast %struct._GTypeClass* %call35 to %struct._GimpToolClass*
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %50, i32 0, i32 6
  %51 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %52 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %53 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %54 = load i32, i32* %time.addr, align 4
  %55 = load i32, i32* %state.addr, align 4
  %56 = load i32, i32* %release_type.addr, align 4
  %57 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %51(%struct._GimpTool* %52, %struct._GimpCoords* %53, i32 %54, i32 %55, i32 %56, %struct._GimpDisplay* %57)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curves_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %c_tool = alloca %struct._GimpCurvesTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %c_tool, align 8
  %3 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %graph = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %3, i32 0, i32 7
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %graph, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %c_tool, align 8
  %graph2 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %5, i32 0, i32 7
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %graph2, align 8
  %7 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %8 = bitcast %struct._GdkEventKey* %7 to %union._GdkEvent*
  %call3 = call i32 @gtk_widget_event(%struct._GtkWidget* %6, %union._GdkEvent* %8)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load i8*, i8** @gimp_curves_tool_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_tool_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpToolClass*
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 8
  %12 = load i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)*, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call7 = call i32 %12(%struct._GimpTool* %13, %struct._GdkEventKey* %14, %struct._GimpDisplay* %15)
  store i32 %call7, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %mode = alloca i32, align 4
  %status = alloca i8*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load i8*, i8** @gimp_curves_tool_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_tool_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpToolClass*
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %2, i32 0, i32 12
  %3 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %6 = load i32, i32* %state.addr, align 4
  %7 = load i32, i32* %proximity.addr, align 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %3(%struct._GimpTool* %4, %struct._GimpCoords* %5, i32 %6, i32 %7, %struct._GimpDisplay* %8)
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_pop_status(%struct._GimpTool* %9, %struct._GimpDisplay* %10)
  %11 = load i32, i32* %state.addr, align 4
  %and = and i32 %11, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* %mode, align 4
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0)) #7
  store i8* %call2, i8** %status, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %12 = load i32, i32* %state.addr, align 4
  %call3 = call i32 @gimp_get_toggle_behavior_mask()
  %and4 = and i32 %12, %call3
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  store i32 3, i32* %mode, align 4
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0)) #7
  store i8* %call7, i8** %status, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.else
  store i32 0, i32* %mode, align 4
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0)) #7
  store i8* %call9, i8** %status, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %13 = load i32, i32* %mode, align 4
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %15 = bitcast %struct._GimpTool* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_color_tool_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpColorTool*
  %pick_mode = getelementptr inbounds %struct._GimpColorTool, %struct._GimpColorTool* %16, i32 0, i32 4
  store i32 %13, i32* %pick_mode, align 4
  %17 = load i32, i32* %proximity.addr, align 4
  %tobool13 = icmp ne i32 %17, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %18 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %20 = load i8*, i8** %status, align 8
  call void (%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) @gimp_tool_push_status(%struct._GimpTool* %18, %struct._GimpDisplay* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_color_picked(%struct._GimpColorTool* %color_tool, i32 %pick_state, i32 %sample_type, %struct._GimpRGB* %color, i32 %color_index) #3 {
entry:
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  %pick_state.addr = alloca i32, align 4
  %sample_type.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32, align 4
  %tool = alloca %struct._GimpCurvesTool*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  store i32 %pick_state, i32* %pick_state.addr, align 4
  store i32 %sample_type, i32* %sample_type.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %color_index, i32* %color_index.addr, align 4
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %tool, align 8
  %3 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %4 = bitcast %struct._GimpCurvesTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_map_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpImageMapTool*
  %drawable4 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %5, i32 0, i32 1
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable4, align 8
  store %struct._GimpDrawable* %6, %struct._GimpDrawable** %drawable, align 8
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %7, i32 0, i32 0
  %8 = load double, double* %r, align 8
  %9 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %picked_color = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %9, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %picked_color, i32 0, i64 1
  store double %8, double* %arrayidx, align 8
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 1
  %11 = load double, double* %g, align 8
  %12 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %picked_color5 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %12, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [5 x double], [5 x double]* %picked_color5, i32 0, i64 2
  store double %11, double* %arrayidx6, align 8
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %13, i32 0, i32 2
  %14 = load double, double* %b, align 8
  %15 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %picked_color7 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %15, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [5 x double], [5 x double]* %picked_color7, i32 0, i64 3
  store double %14, double* %arrayidx8, align 8
  %16 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call9 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %16)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i32 0, i32 3
  %18 = load double, double* %a, align 8
  %19 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %picked_color10 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %19, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [5 x double], [5 x double]* %picked_color10, i32 0, i64 4
  store double %18, double* %arrayidx11, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %picked_color12 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %20, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [5 x double], [5 x double]* %picked_color12, i32 0, i64 4
  store double -1.000000e+00, double* %arrayidx13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r14 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %21, i32 0, i32 0
  %22 = load double, double* %r14, align 8
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %23, i32 0, i32 1
  %24 = load double, double* %g15, align 8
  %cmp = fcmp ogt double %22, %24
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r16 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %25, i32 0, i32 0
  %26 = load double, double* %r16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %27 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g17 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %27, i32 0, i32 1
  %28 = load double, double* %g17, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %26, %cond.true ], [ %28, %cond.false ]
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b18 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %29, i32 0, i32 2
  %30 = load double, double* %b18, align 8
  %cmp19 = fcmp ogt double %cond, %30
  br i1 %cmp19, label %cond.true.20, label %cond.false.30

cond.true.20:                                     ; preds = %cond.end
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r21 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %31, i32 0, i32 0
  %32 = load double, double* %r21, align 8
  %33 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g22 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %33, i32 0, i32 1
  %34 = load double, double* %g22, align 8
  %cmp23 = fcmp ogt double %32, %34
  br i1 %cmp23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.true.20
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r25 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %35, i32 0, i32 0
  %36 = load double, double* %r25, align 8
  br label %cond.end.28

cond.false.26:                                    ; preds = %cond.true.20
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g27 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %37, i32 0, i32 1
  %38 = load double, double* %g27, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.26, %cond.true.24
  %cond29 = phi double [ %36, %cond.true.24 ], [ %38, %cond.false.26 ]
  br label %cond.end.32

cond.false.30:                                    ; preds = %cond.end
  %39 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b31 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %39, i32 0, i32 2
  %40 = load double, double* %b31, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.end.28
  %cond33 = phi double [ %cond29, %cond.end.28 ], [ %40, %cond.false.30 ]
  %41 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %picked_color34 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %41, i32 0, i32 3
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %picked_color34, i32 0, i64 0
  store double %cond33, double* %arrayidx35, align 8
  %42 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %graph = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %42, i32 0, i32 7
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %graph, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_curve_view_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call36)
  %45 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpCurveView*
  %46 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %46, i32 0, i32 1
  %47 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %47, i32 0, i32 1
  %48 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %48 to i64
  %49 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %picked_color38 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %49, i32 0, i32 3
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %picked_color38, i32 0, i64 %idxprom
  %50 = load double, double* %arrayidx39, align 8
  call void @gimp_curve_view_set_xpos(%struct._GimpCurveView* %45, double %50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_curves_tool_get_operation(%struct._GimpImageMapTool* %image_map_tool, %struct._GObject** %config) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %config.addr = alloca %struct._GObject**, align 8
  %tool = alloca %struct._GimpCurvesTool*, align 8
  %node = alloca %struct._GeglNode*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  store %struct._GObject** %config, %struct._GObject*** %config.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %tool, align 8
  %call2 = call i64 @gegl_node_get_type() #6
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* null)
  %3 = bitcast i8* %call3 to %struct._GeglNode*
  store %struct._GeglNode* %3, %struct._GeglNode** %node, align 8
  %call4 = call i64 @gimp_curves_config_get_type() #6
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* null)
  %4 = bitcast i8* %call5 to %struct._GimpCurvesConfig*
  %5 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config6 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %5, i32 0, i32 1
  store %struct._GimpCurvesConfig* %4, %struct._GimpCurvesConfig** %config6, align 8
  %6 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config7 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %6, i32 0, i32 1
  %7 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config7, align 8
  %8 = bitcast %struct._GimpCurvesConfig* %7 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %10 = load %struct._GObject**, %struct._GObject*** %config.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %10, align 8
  %11 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config9 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %11, i32 0, i32 1
  %12 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config9, align 8
  %13 = bitcast %struct._GimpCurvesConfig* %12 to i8*
  %14 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %15 = bitcast %struct._GimpCurvesTool* %14 to i8*
  %call10 = call i64 @g_signal_connect_object(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpCurvesTool*)* @gimp_curves_tool_config_notify to void ()*), i8* %15, i32 0)
  %16 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %17 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config11 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %17, i32 0, i32 1
  %18 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config11, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), %struct._GimpCurvesConfig* %18, i8* null)
  %19 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %19
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_map(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpCurvesTool*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %curves = alloca %struct._Curves, align 1
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %drawable2 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %4, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %5, i32 0, i32 1
  %6 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call3 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %7)
  call void @gimp_curves_config_to_cruft(%struct._GimpCurvesConfig* %6, %struct._Curves* %curves, i32 %call3)
  %8 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %lut = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %8, i32 0, i32 2
  %9 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %10 = bitcast %struct._Curves* %curves to i8*
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call4 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %11)
  call void @gimp_lut_setup(%struct._GimpLut* %9, float (i8*, i32, i32, float)* bitcast (float (%struct._Curves*, i32, i32, float)* @curves_lut_func to float (i8*, i32, i32, float)*), i8* %10, i32 %call4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_dialog(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpCurvesTool*, align 8
  %tool_options = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GimpCurvesConfig*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %label_group = alloca %struct._GtkSizeGroup*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %hbox2 = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %bar = alloca %struct._GtkWidget*, align 8
  %combo = alloca %struct._GtkWidget*, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %4 = bitcast %struct._GimpImageMapTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  store %struct._GimpToolOptions* %call4, %struct._GimpToolOptions** %tool_options, align 8
  %6 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config5 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %6, i32 0, i32 1
  %7 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config5, align 8
  store %struct._GimpCurvesConfig* %7, %struct._GimpCurvesConfig** %config, align 8
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %8, i32 0, i32 11
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_box, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %12 = bitcast %struct._GimpImageMapTool* %11 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSettingsBox*, %struct._GtkFileChooserDialog*, i32, %struct._GimpCurvesTool*)* @gimp_curves_tool_export_setup to void ()*), i8* %12, void (i8*, %struct._GClosure*)* null, i32 0)
  %13 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %call7 = call %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool* %13)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %main_vbox, align 8
  %14 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %call8 = call %struct._GtkSizeGroup* @gimp_image_map_tool_dialog_get_label_group(%struct._GimpImageMapTool* %14)
  store %struct._GtkSizeGroup* %call8, %struct._GtkSizeGroup** %label_group, align 8
  %call9 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %hbox, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_box_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkBox*
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %17, %struct._GtkWidget* %18, i32 0, i32 0, i32 0)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0)) #7
  %call13 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call12)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %label, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_box_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkBox*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %23, i32 0, i32 0, i32 0)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %24)
  %25 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %label_group, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %25, %struct._GtkWidget* %26)
  %call16 = call i64 @gimp_histogram_channel_get_type() #6
  %call17 = call %struct._GtkListStore* @gimp_enum_store_new_with_range(i64 %call16, i32 0, i32 4)
  store %struct._GtkListStore* %call17, %struct._GtkListStore** %store, align 8
  %27 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %28 = bitcast %struct._GtkListStore* %27 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_enum_store_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call18)
  %29 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpEnumStore*
  %call20 = call %struct._GtkWidget* @gimp_enum_combo_box_new_with_model(%struct._GimpEnumStore* %29)
  %30 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %channel_menu = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %30, i32 0, i32 4
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %channel_menu, align 8
  %31 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %32 = bitcast %struct._GtkListStore* %31 to i8*
  call void @g_object_unref(i8* %32)
  %33 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %channel_menu21 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %33, i32 0, i32 4
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu21, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_int_combo_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call22)
  %36 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpIntComboBox*
  %37 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %37, i32 0, i32 1
  %38 = load i32, i32* %channel, align 4
  %call24 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %36, i32 %38)
  %39 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %channel_menu25 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %39, i32 0, i32 4
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu25, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_enum_combo_box_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call26)
  %42 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpEnumComboBox*
  call void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0))
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_box_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call28)
  %45 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkBox*
  %46 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %channel_menu30 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %46, i32 0, i32 4
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu30, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %47, i32 0, i32 0, i32 0)
  %48 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %channel_menu31 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %48, i32 0, i32 4
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu31, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %49)
  %50 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %channel_menu32 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %50, i32 0, i32 4
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu32, align 8
  %52 = bitcast %struct._GtkWidget* %51 to i8*
  %53 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %54 = bitcast %struct._GimpCurvesTool* %53 to i8*
  %call33 = call i64 @g_signal_connect_data(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpCurvesTool*)* @curves_channel_callback to void ()*), i8* %54, void (i8*, %struct._GClosure*)* null, i32 0)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_label_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call34)
  %57 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkLabel*
  %58 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %channel_menu36 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %58, i32 0, i32 4
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu36, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %57, %struct._GtkWidget* %59)
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #7
  %call38 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call37)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %button, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call39)
  %62 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %62, %struct._GtkWidget* %63, i32 0, i32 0, i32 0)
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %66 = bitcast %struct._GtkWidget* %65 to i8*
  %67 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %68 = bitcast %struct._GimpCurvesTool* %67 to i8*
  %call41 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpCurvesTool*)* @curves_channel_reset_callback to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 0)
  %69 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %70 = bitcast %struct._GimpToolOptions* %69 to %struct._GTypeInstance*
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 80)
  %71 = bitcast %struct._GTypeInstance* %call42 to %struct._GObject*
  %call43 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %hbox2, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_box_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call44)
  %74 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBox*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %74, %struct._GtkWidget* %75, i32 0, i32 0, i32 0)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %call46 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %table, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_table_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call47)
  %79 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %79, i32 2)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_table_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call49)
  %82 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %82, i32 2)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_box_get_type() #6
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call51)
  %85 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkBox*
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %85, %struct._GtkWidget* %86, i32 1, i32 1, i32 0)
  %call53 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call53, %struct._GtkWidget** %vbox, align 8
  %87 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %88 = bitcast %struct._GtkWidget* %87 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #6
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call54)
  %89 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_table_attach(%struct._GtkTable* %89, %struct._GtkWidget* %90, i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 0, i32 0)
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %91)
  %call56 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call56, %struct._GtkWidget** %frame, align 8
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %93 = bitcast %struct._GtkWidget* %92 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_frame_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call57)
  %94 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %94, i32 1)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %96 = bitcast %struct._GtkWidget* %95 to %struct._GTypeInstance*
  %call59 = call i64 @gtk_box_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call59)
  %97 = bitcast %struct._GTypeInstance* %call60 to %struct._GtkBox*
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %97, %struct._GtkWidget* %98, i32 1, i32 1, i32 4)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %call61 = call %struct._GtkWidget* @gimp_color_bar_new(i32 1)
  %100 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %yrange = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %100, i32 0, i32 6
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %yrange, align 8
  %101 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %yrange62 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %101, i32 0, i32 6
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %yrange62, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %102, i32 12, i32 -1)
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_container_get_type() #6
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call63)
  %105 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkContainer*
  %106 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %yrange65 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %106, i32 0, i32 6
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %yrange65, align 8
  call void @gtk_container_add(%struct._GtkContainer* %105, %struct._GtkWidget* %107)
  %108 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %yrange66 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %108, i32 0, i32 6
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %yrange66, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %call67 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %frame, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_frame_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call68)
  %112 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %112, i32 1)
  %113 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %114 = bitcast %struct._GtkWidget* %113 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_table_get_type() #6
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %114, i64 %call70)
  %115 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkTable*
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_table_attach(%struct._GtkTable* %115, %struct._GtkWidget* %116, i32 1, i32 2, i32 0, i32 1, i32 5, i32 5, i32 0, i32 0)
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %117)
  %call72 = call %struct._GtkWidget* @gimp_curve_view_new()
  %118 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %graph = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %118, i32 0, i32 7
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %graph, align 8
  %119 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %graph73 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %119, i32 0, i32 7
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %graph73, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_curve_view_get_type() #6
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call74)
  %122 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpCurveView*
  call void @gimp_curve_view_set_range_x(%struct._GimpCurveView* %122, double 0.000000e+00, double 2.550000e+02)
  %123 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %graph76 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %123, i32 0, i32 7
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %graph76, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call77 = call i64 @gimp_curve_view_get_type() #6
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call77)
  %126 = bitcast %struct._GTypeInstance* %call78 to %struct._GimpCurveView*
  call void @gimp_curve_view_set_range_y(%struct._GimpCurveView* %126, double 0.000000e+00, double 2.550000e+02)
  %127 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %graph79 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %127, i32 0, i32 7
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %graph79, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %128, i32 264, i32 264)
  %129 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %graph80 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %129, i32 0, i32 7
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %graph80, align 8
  %131 = bitcast %struct._GtkWidget* %130 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 1, i8* null)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_container_get_type() #6
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call81)
  %134 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkContainer*
  %135 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %graph83 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %135, i32 0, i32 7
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %graph83, align 8
  call void @gtk_container_add(%struct._GtkContainer* %134, %struct._GtkWidget* %136)
  %137 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %graph84 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %137, i32 0, i32 7
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %graph84, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  %139 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %140 = bitcast %struct._GimpToolOptions* %139 to %struct._GTypeInstance*
  %call85 = call i64 @gimp_histogram_options_get_type() #6
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call85)
  %141 = bitcast %struct._GTypeInstance* %call86 to %struct._GimpHistogramOptions*
  %142 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %graph87 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %142, i32 0, i32 7
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %graph87, align 8
  %144 = bitcast %struct._GtkWidget* %143 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_histogram_view_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %144, i64 %call88)
  %145 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpHistogramView*
  call void @gimp_histogram_options_connect_view(%struct._GimpHistogramOptions* %141, %struct._GimpHistogramView* %145)
  %call90 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %hbox2, align 8
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_table_get_type() #6
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call91)
  %148 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkTable*
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_table_attach(%struct._GtkTable* %148, %struct._GtkWidget* %149, i32 1, i32 2, i32 1, i32 2, i32 5, i32 4, i32 0, i32 0)
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %150)
  %call93 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %frame, align 8
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_frame_get_type() #6
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 %call94)
  %153 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %153, i32 1)
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %155 = bitcast %struct._GtkWidget* %154 to %struct._GTypeInstance*
  %call96 = call i64 @gtk_box_get_type() #6
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %155, i64 %call96)
  %156 = bitcast %struct._GTypeInstance* %call97 to %struct._GtkBox*
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %156, %struct._GtkWidget* %157, i32 1, i32 1, i32 4)
  %158 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %158)
  %call98 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %vbox, align 8
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %160 = bitcast %struct._GtkWidget* %159 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_box_get_type() #6
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call99)
  %161 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %161, i32 1)
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %163 = bitcast %struct._GtkWidget* %162 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_container_get_type() #6
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call101)
  %164 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkContainer*
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %164, %struct._GtkWidget* %165)
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %166)
  %call103 = call %struct._GtkWidget* @gimp_color_bar_new(i32 0)
  %167 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %xrange = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %167, i32 0, i32 5
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %xrange, align 8
  %168 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %xrange104 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %168, i32 0, i32 5
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %xrange104, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %169, i32 -1, i32 6)
  %170 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %171 = bitcast %struct._GtkWidget* %170 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_box_get_type() #6
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %171, i64 %call105)
  %172 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkBox*
  %173 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %xrange107 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %173, i32 0, i32 5
  %174 = load %struct._GtkWidget*, %struct._GtkWidget** %xrange107, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %172, %struct._GtkWidget* %174, i32 1, i32 1, i32 0)
  %175 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %xrange108 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %175, i32 0, i32 5
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %xrange108, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %176)
  %call109 = call %struct._GtkWidget* @gimp_color_bar_new(i32 0)
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %bar, align 8
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_box_get_type() #6
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call110)
  %179 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkBox*
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %179, %struct._GtkWidget* %180, i32 1, i32 1, i32 0)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %181)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %182)
  %call112 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call112, %struct._GtkWidget** %hbox, align 8
  %183 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %184 = bitcast %struct._GtkWidget* %183 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_box_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 %call113)
  %185 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkBox*
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %185, %struct._GtkWidget* %186, i32 0, i32 0, i32 0)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %187)
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #7
  %call116 = call %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8* %call115)
  store %struct._GtkWidget* %call116, %struct._GtkWidget** %label, align 8
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %189 = bitcast %struct._GtkWidget* %188 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_box_get_type() #6
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 %call117)
  %190 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkBox*
  %191 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %190, %struct._GtkWidget* %191, i32 0, i32 0, i32 0)
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %192)
  %call119 = call i64 @gimp_curve_type_get_type() #6
  %call120 = call %struct._GtkWidget* @gimp_enum_combo_box_new(i64 %call119)
  store %struct._GtkWidget* %call120, %struct._GtkWidget** %combo, align 8
  %193 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %193, i32 0, i32 8
  store %struct._GtkWidget* %call120, %struct._GtkWidget** %curve_type, align 8
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %195 = bitcast %struct._GtkWidget* %194 to %struct._GTypeInstance*
  %call121 = call i64 @gimp_enum_combo_box_get_type() #6
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %195, i64 %call121)
  %196 = bitcast %struct._GTypeInstance* %call122 to %struct._GimpEnumComboBox*
  call void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox* %196, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0))
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  %198 = bitcast %struct._GtkWidget* %197 to %struct._GTypeInstance*
  %call123 = call i64 @gimp_int_combo_box_get_type() #6
  %call124 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %198, i64 %call123)
  %199 = bitcast %struct._GTypeInstance* %call124 to %struct._GimpIntComboBox*
  %200 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %201 = bitcast %struct._GimpCurvesTool* %200 to i8*
  %call125 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %199, i32 0, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpCurvesTool*)* @curves_curve_type_callback to void ()*), i8* %201)
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %203 = bitcast %struct._GtkWidget* %202 to %struct._GTypeInstance*
  %call126 = call i64 @gtk_box_get_type() #6
  %call127 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 %call126)
  %204 = bitcast %struct._GTypeInstance* %call127 to %struct._GtkBox*
  %205 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %204, %struct._GtkWidget* %205, i32 1, i32 1, i32 0)
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %206)
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %208 = bitcast %struct._GtkWidget* %207 to %struct._GTypeInstance*
  %call128 = call i64 @gtk_label_get_type() #6
  %call129 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %208, i64 %call128)
  %209 = bitcast %struct._GTypeInstance* %call129 to %struct._GtkLabel*
  %210 = load %struct._GtkWidget*, %struct._GtkWidget** %combo, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %209, %struct._GtkWidget* %210)
  %211 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  call void @gimp_curves_tool_update_channel(%struct._GimpCurvesTool* %211)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_reset(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpCurvesTool*, align 8
  %default_config = alloca %struct._GimpCurvesConfig*, align 8
  %channel = alloca i32, align 4
  %curve_type = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %default_config2 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %3, i32 0, i32 4
  %4 = load %struct._GObject*, %struct._GObject** %default_config2, align 8
  %5 = bitcast %struct._GObject* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_curves_config_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %6, %struct._GimpCurvesConfig** %default_config, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %7, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %default_config, align 8
  %tobool = icmp ne %struct._GimpCurvesConfig* %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %10, i32 0, i32 1
  %11 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %11, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %12 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  %curve_type5 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %12, i32 0, i32 1
  %13 = load i32, i32* %curve_type5, align 4
  store i32 %13, i32* %curve_type, align 4
  %14 = load i32, i32* %channel, align 4
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config7 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %15, i32 0, i32 1
  %16 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config7, align 8
  %curve8 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %16, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve8, i32 0, i64 %idxprom6
  %17 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx9, align 8
  %18 = bitcast %struct._GimpCurve* %17 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %19)
  %20 = load i32, i32* %channel, align 4
  %idxprom11 = zext i32 %20 to i64
  %21 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %default_config, align 8
  %curve12 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %21, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve12, i32 0, i64 %idxprom11
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx13, align 8
  %23 = bitcast %struct._GimpCurve* %22 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_config_interface_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpConfig*
  %25 = load i32, i32* %channel, align 4
  %idxprom16 = zext i32 %25 to i64
  %26 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config17 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %26, i32 0, i32 1
  %27 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config17, align 8
  %curve18 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %27, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve18, i32 0, i64 %idxprom16
  %28 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx19, align 8
  %29 = bitcast %struct._GimpCurve* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_config_interface_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpConfig*
  %call22 = call i32 @gimp_config_copy(%struct._GimpConfig* %24, %struct._GimpConfig* %30, i32 0)
  %31 = load i32, i32* %channel, align 4
  %idxprom23 = zext i32 %31 to i64
  %32 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config24 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %32, i32 0, i32 1
  %33 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config24, align 8
  %curve25 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %33, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve25, i32 0, i64 %idxprom23
  %34 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx26, align 8
  %35 = bitcast %struct._GimpCurve* %34 to i8*
  %36 = load i32, i32* %curve_type, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 %36, i8* null)
  %37 = load i32, i32* %channel, align 4
  %idxprom27 = zext i32 %37 to i64
  %38 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config28 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %38, i32 0, i32 1
  %39 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config28, align 8
  %curve29 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %39, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve29, i32 0, i64 %idxprom27
  %40 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx30, align 8
  %41 = bitcast %struct._GimpCurve* %40 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %42)
  br label %if.end

if.else:                                          ; preds = %for.body
  %43 = load i32, i32* %channel, align 4
  %idxprom32 = zext i32 %43 to i64
  %44 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config33 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %44, i32 0, i32 1
  %45 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config33, align 8
  %curve34 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %45, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve34, i32 0, i64 %idxprom32
  %46 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx35, align 8
  call void @gimp_curve_reset(%struct._GimpCurve* %46, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %47 = load i32, i32* %channel, align 4
  %inc = add i32 %47, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curves_tool_settings_import(%struct._GimpImageMapTool* %image_map_tool, i8* %filename, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tool = alloca %struct._GimpCurvesTool*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %header = alloca [64 x i8], align 16
  %success = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %tool, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %file, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call3 = call i32 @g_file_error_quark()
  %call4 = call i32* @__errno_location() #6
  %6 = load i32, i32* %call4, align 4
  %call5 = call i32 @g_file_error_from_errno(i32 %6)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0)) #7
  %7 = load i8*, i8** %filename.addr, align 8
  %call7 = call i8* @gimp_filename_to_utf8(i8* %7)
  %call8 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call8, align 4
  %call9 = call i8* @g_strerror(i32 %8) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %5, i32 %call3, i32 %call5, i8* %call6, i8* %call7, i8* %call9)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %header, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call10 = call i8* @fgets(i8* %arraydecay, i32 64, %struct._IO_FILE* %9)
  %tobool11 = icmp ne i8* %call10, null
  br i1 %tobool11, label %if.end.21, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %10 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call i32 @g_file_error_quark()
  %call14 = call i32* @__errno_location() #6
  %11 = load i32, i32* %call14, align 4
  %call15 = call i32 @g_file_error_from_errno(i32 %11)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0)) #7
  %12 = load i8*, i8** %filename.addr, align 8
  %call17 = call i8* @gimp_filename_to_utf8(i8* %12)
  %call18 = call i32* @__errno_location() #6
  %13 = load i32, i32* %call18, align 4
  %call19 = call i8* @g_strerror(i32 %13) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %10, i32 %call13, i32 %call15, i8* %call16, i8* %call17, i8* %call19)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call20 = call i32 @fclose(%struct._IO_FILE* %14)
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end
  %arraydecay22 = getelementptr inbounds [64 x i8], [64 x i8]* %header, i32 0, i32 0
  %call23 = call i32 @g_str_has_prefix(i8* %arraydecay22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0))
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.21
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @rewind(%struct._IO_FILE* %15)
  %16 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %16, i32 0, i32 1
  %17 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %19 = bitcast %struct._IO_FILE* %18 to i8*
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call26 = call i32 @gimp_curves_config_load_cruft(%struct._GimpCurvesConfig* %17, i8* %19, %struct._GError** %20)
  store i32 %call26, i32* %success, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* %21)
  %22 = load i32, i32* %success, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %23)
  %24 = load i8*, i8** @gimp_curves_tool_parent_class, align 8
  %25 = bitcast i8* %24 to %struct._GTypeClass*
  %call30 = call i64 @gimp_image_map_tool_get_type() #6
  %call31 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %25, i64 %call30)
  %26 = bitcast %struct._GTypeClass* %call31 to %struct._GimpImageMapToolClass*
  %settings_import = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %26, i32 0, i32 10
  %27 = load i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_import, align 8
  %28 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %29 = load i8*, i8** %filename.addr, align 8
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call32 = call i32 %27(%struct._GimpImageMapTool* %28, i8* %29, %struct._GError** %30)
  store i32 %call32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.25, %if.then.12, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_curves_tool_settings_export(%struct._GimpImageMapTool* %image_map_tool, i8* %filename, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tool = alloca %struct._GimpCurvesTool*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %success = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  store %struct._GimpCurvesTool* %2, %struct._GimpCurvesTool** %tool, align 8
  %3 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %export_old_format = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %3, i32 0, i32 9
  %4 = load i32, i32* %export_old_format, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %filename.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %file, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call5 = call i32 @g_file_error_quark()
  %call6 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call6, align 4
  %call7 = call i32 @g_file_error_from_errno(i32 %8)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0)) #7
  %9 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call10 = call i32* @__errno_location() #6
  %10 = load i32, i32* %call10, align 4
  %call11 = call i8* @g_strerror(i32 %10) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call5, i32 %call7, i8* %call8, i8* %call9, i8* %call11)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %11, i32 0, i32 1
  %12 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %14 = bitcast %struct._IO_FILE* %13 to i8*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_curves_config_save_cruft(%struct._GimpCurvesConfig* %12, i8* %14, %struct._GError** %15)
  store i32 %call12, i32* %success, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* %16)
  %17 = load i32, i32* %success, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.14:                                        ; preds = %entry
  %18 = load i8*, i8** @gimp_curves_tool_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call15 = call i64 @gimp_image_map_tool_get_type() #6
  %call16 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call15)
  %20 = bitcast %struct._GTypeClass* %call16 to %struct._GimpImageMapToolClass*
  %settings_export = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %20, i32 0, i32 11
  %21 = load i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)*, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_export, align 8
  %22 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %23 = load i8*, i8** %filename.addr, align 8
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call17 = call i32 %21(%struct._GimpImageMapTool* %22, i8* %23, %struct._GError** %24)
  store i32 %call17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.end, %if.then.4
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare void @gimp_color_tool_enable(%struct._GimpColorTool*, %struct._GimpColorOptions*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_options_get_type() #2

declare void @gimp_lut_free(%struct._GimpLut*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare void @gimp_config_reset(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @gimp_int_combo_box_set_sensitivity(%struct._GimpIntComboBox*, i32 (i32, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @curves_menu_sensitivity(i32 %value, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %channel = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %2, %struct._GimpDrawable** %drawable, align 8
  %3 = load i32, i32* %value.addr, align 4
  store i32 %3, i32* %channel, align 4
  %4 = load i32, i32* %channel, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry, %entry
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call3 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %5)
  store i32 %call3, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call5 = call i32 @gimp_drawable_has_alpha(%struct._GimpDrawable* %6)
  store i32 %call5, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare %struct._GimpHistogram* @gimp_histogram_new() #1

declare void @gimp_drawable_calculate_histogram(%struct._GimpDrawable*, %struct._GimpHistogram*) #1

declare void @gimp_histogram_view_set_background(%struct._GimpHistogramView*, %struct._GimpHistogram*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_view_get_type() #2

declare void @gimp_histogram_unref(%struct._GimpHistogram*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare i32 @gimp_curve_get_closest_point(%struct._GimpCurve*, double) #1

declare void @gimp_curve_view_set_selected(%struct._GimpCurveView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_view_get_type() #2

declare void @gimp_curve_set_point(%struct._GimpCurve*, i32, double, double) #1

declare double @gimp_curve_map_value(%struct._GimpCurve*, double) #1

declare i32 @gimp_get_toggle_behavior_mask() #1

declare i32 @gtk_widget_event(%struct._GtkWidget*, %union._GdkEvent*) #1

declare void @gimp_tool_pop_status(%struct._GimpTool*, %struct._GimpDisplay*) #1

declare void @gimp_tool_push_status(%struct._GimpTool*, %struct._GimpDisplay*, i8*, ...) #1

declare void @gimp_curve_view_set_xpos(%struct._GimpCurveView*, double) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_curves_config_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_config_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpCurvesTool* %tool) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool.addr = alloca %struct._GimpCurvesTool*, align 8
  %config = alloca %struct._GimpCurvesConfig*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpCurvesTool* %tool, %struct._GimpCurvesTool** %tool.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %2, %struct._GimpCurvesConfig** %config, align 8
  %3 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %3, i32 0, i32 1
  %4 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve2 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve2, i32 0, i64 %idxprom
  %6 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  store %struct._GimpCurve* %6, %struct._GimpCurve** %curve, align 8
  %7 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %xrange = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %7, i32 0, i32 5
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %xrange, align 8
  %tobool = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %9, i32 0, i32 1
  %10 = load i8*, i8** %name, align 8
  %call3 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %12 = bitcast %struct._GimpCurvesTool* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_curves_tool_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpCurvesTool*
  call void @gimp_curves_tool_update_channel(%struct._GimpCurvesTool* %13)
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name8, align 8
  %call9 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.16, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %16 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %16, i32 0, i32 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_type, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_int_combo_box_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpIntComboBox*
  %20 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %curve_type14 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %20, i32 0, i32 1
  %21 = load i32, i32* %curve_type14, align 4
  %call15 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %19, i32 %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.5
  %22 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %23 = bitcast %struct._GimpCurvesTool* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_image_map_tool_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %24)
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  ret void
}

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_update_channel(%struct._GimpCurvesTool* %tool) #3 {
entry:
  %tool.addr = alloca %struct._GimpCurvesTool*, align 8
  %config = alloca %struct._GimpCurvesConfig*, align 8
  %curve = alloca %struct._GimpCurve*, align 8
  %channel4 = alloca i32, align 4
  %r = alloca [256 x i8], align 16
  %g = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  store %struct._GimpCurvesTool* %tool, %struct._GimpCurvesTool** %tool.addr, align 8
  %0 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpCurvesTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_curves_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpCurvesTool*
  %config2 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %2, i32 0, i32 1
  %3 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config2, align 8
  store %struct._GimpCurvesConfig* %3, %struct._GimpCurvesConfig** %config, align 8
  %4 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %4, i32 0, i32 1
  %5 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve3 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve3, i32 0, i64 %idxprom
  %7 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  store %struct._GimpCurve* %7, %struct._GimpCurve** %curve, align 8
  %8 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %channel_menu = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %8, i32 0, i32 4
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_int_combo_box_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpIntComboBox*
  %12 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel7 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %12, i32 0, i32 1
  %13 = load i32, i32* %channel7, align 4
  %call8 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %11, i32 %13)
  %14 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel9 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %14, i32 0, i32 1
  %15 = load i32, i32* %channel9, align 4
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb.15
    i32 2, label %sw.bb.15
    i32 3, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %16 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %r, i32 0, i32 0
  call void @gimp_curve_get_uchar(%struct._GimpCurve* %16, i32 256, i8* %arraydecay)
  %17 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %xrange = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %17, i32 0, i32 5
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %xrange, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_color_bar_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call10)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpColorBar*
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %r, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %r, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %r, i32 0, i32 0
  call void @gimp_color_bar_set_buffers(%struct._GimpColorBar* %20, i8* %arraydecay12, i8* %arraydecay13, i8* %arraydecay14)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry, %entry, %entry
  %21 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve16 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %21, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve16, i32 0, i64 1
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx17, align 8
  %arraydecay18 = getelementptr inbounds [256 x i8], [256 x i8]* %r, i32 0, i32 0
  call void @gimp_curve_get_uchar(%struct._GimpCurve* %22, i32 256, i8* %arraydecay18)
  %23 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve19 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %23, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve19, i32 0, i64 2
  %24 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx20, align 8
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %g, i32 0, i32 0
  call void @gimp_curve_get_uchar(%struct._GimpCurve* %24, i32 256, i8* %arraydecay21)
  %25 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve22 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %25, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve22, i32 0, i64 3
  %26 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx23, align 8
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  call void @gimp_curve_get_uchar(%struct._GimpCurve* %26, i32 256, i8* %arraydecay24)
  %27 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %xrange25 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %27, i32 0, i32 5
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %xrange25, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_color_bar_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call26)
  %30 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpColorBar*
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %r, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %g, i32 0, i32 0
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  call void @gimp_color_bar_set_buffers(%struct._GimpColorBar* %30, i8* %arraydecay28, i8* %arraydecay29, i8* %arraydecay30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.15, %sw.bb
  %31 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %graph = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %31, i32 0, i32 7
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %graph, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_histogram_view_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call31)
  %34 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpHistogramView*
  %35 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel33 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %35, i32 0, i32 1
  %36 = load i32, i32* %channel33, align 4
  call void @gimp_histogram_view_set_channel(%struct._GimpHistogramView* %34, i32 %36)
  %37 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %graph34 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %37, i32 0, i32 7
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %graph34, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_curve_view_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call35)
  %40 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpCurveView*
  %41 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel37 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %41, i32 0, i32 1
  %42 = load i32, i32* %channel37, align 4
  %idxprom38 = zext i32 %42 to i64
  %43 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %picked_color = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %43, i32 0, i32 3
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %picked_color, i32 0, i64 %idxprom38
  %44 = load double, double* %arrayidx39, align 8
  call void @gimp_curve_view_set_xpos(%struct._GimpCurveView* %40, double %44)
  %45 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %yrange = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %45, i32 0, i32 6
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %yrange, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_color_bar_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call40)
  %48 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpColorBar*
  %49 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel42 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %49, i32 0, i32 1
  %50 = load i32, i32* %channel42, align 4
  call void @gimp_color_bar_set_channel(%struct._GimpColorBar* %48, i32 %50)
  %51 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %graph43 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %51, i32 0, i32 7
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %graph43, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call44 = call i64 @gimp_curve_view_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call44)
  %54 = bitcast %struct._GTypeInstance* %call45 to %struct._GimpCurveView*
  call void @gimp_curve_view_remove_all_backgrounds(%struct._GimpCurveView* %54)
  store i32 0, i32* %channel4, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %55 = load i32, i32* %channel4, align 4
  %cmp = icmp ule i32 %55, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %channel4, align 4
  %57 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel46 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %57, i32 0, i32 1
  %58 = load i32, i32* %channel46, align 4
  %cmp47 = icmp eq i32 %56, %58
  br i1 %cmp47, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %59 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %graph48 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %59, i32 0, i32 7
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %graph48, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_curve_view_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call49)
  %62 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpCurveView*
  %63 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %64 = load i32, i32* %channel4, align 4
  %call51 = call %struct._GimpRGB* @curves_get_channel_color(i32 %64)
  call void @gimp_curve_view_set_curve(%struct._GimpCurveView* %62, %struct._GimpCurve* %63, %struct._GimpRGB* %call51)
  br label %if.end

if.else:                                          ; preds = %for.body
  %65 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %graph52 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %65, i32 0, i32 7
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %graph52, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_curve_view_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call53)
  %68 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpCurveView*
  %69 = load i32, i32* %channel4, align 4
  %idxprom55 = zext i32 %69 to i64
  %70 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve56 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %70, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve56, i32 0, i64 %idxprom55
  %71 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx57, align 8
  %72 = load i32, i32* %channel4, align 4
  %call58 = call %struct._GimpRGB* @curves_get_channel_color(i32 %72)
  call void @gimp_curve_view_add_background(%struct._GimpCurveView* %68, %struct._GimpCurve* %71, %struct._GimpRGB* %call58)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %73 = load i32, i32* %channel4, align 4
  %inc = add i32 %73, 1
  store i32 %inc, i32* %channel4, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %curve_type = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %74, i32 0, i32 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %curve_type, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_int_combo_box_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call59)
  %77 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpIntComboBox*
  %78 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %curve_type61 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %78, i32 0, i32 1
  %79 = load i32, i32* %curve_type61, align 4
  %call62 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %77, i32 %79)
  ret void
}

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

declare void @gimp_image_map_tool_preview(%struct._GimpImageMapTool*) #1

declare void @gimp_curve_get_uchar(%struct._GimpCurve*, i32, i8*) #1

declare void @gimp_color_bar_set_buffers(%struct._GimpColorBar*, i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_bar_get_type() #2

declare void @gimp_histogram_view_set_channel(%struct._GimpHistogramView*, i32) #1

declare void @gimp_color_bar_set_channel(%struct._GimpColorBar*, i32) #1

declare void @gimp_curve_view_remove_all_backgrounds(%struct._GimpCurveView*) #1

declare void @gimp_curve_view_set_curve(%struct._GimpCurveView*, %struct._GimpCurve*, %struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpRGB* @curves_get_channel_color(i32 %channel) #3 {
entry:
  %retval = alloca %struct._GimpRGB*, align 8
  %channel.addr = alloca i32, align 4
  store i32 %channel, i32* %channel.addr, align 4
  %0 = load i32, i32* %channel.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._GimpRGB* null, %struct._GimpRGB** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %channel.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %struct._GimpRGB], [5 x %struct._GimpRGB]* @curves_get_channel_color.channel_colors, i32 0, i64 %idxprom
  store %struct._GimpRGB* %arrayidx, %struct._GimpRGB** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %retval
  ret %struct._GimpRGB* %2
}

declare void @gimp_curve_view_add_background(%struct._GimpCurveView*, %struct._GimpCurve*, %struct._GimpRGB*) #1

declare void @gimp_curves_config_to_cruft(%struct._GimpCurvesConfig*, %struct._Curves*, i32) #1

declare void @gimp_lut_setup(%struct._GimpLut*, float (i8*, i32, i32, float)*, i8*, i32) #1

declare float @curves_lut_func(%struct._Curves*, i32, i32, float) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_curves_tool_export_setup(%struct._GimpSettingsBox* %settings_box, %struct._GtkFileChooserDialog* %dialog, i32 %export, %struct._GimpCurvesTool* %tool) #3 {
entry:
  %settings_box.addr = alloca %struct._GimpSettingsBox*, align 8
  %dialog.addr = alloca %struct._GtkFileChooserDialog*, align 8
  %export.addr = alloca i32, align 4
  %tool.addr = alloca %struct._GimpCurvesTool*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpSettingsBox* %settings_box, %struct._GimpSettingsBox** %settings_box.addr, align 8
  store %struct._GtkFileChooserDialog* %dialog, %struct._GtkFileChooserDialog** %dialog.addr, align 8
  store i32 %export, i32* %export.addr, align 4
  store %struct._GimpCurvesTool* %tool, %struct._GimpCurvesTool** %tool.addr, align 8
  %0 = load i32, i32* %export.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %button, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %4 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %export_old_format = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %4, i32 0, i32 9
  %5 = load i32, i32* %export_old_format, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %3, i32 %5)
  %6 = load %struct._GtkFileChooserDialog*, %struct._GtkFileChooserDialog** %dialog.addr, align 8
  %7 = bitcast %struct._GtkFileChooserDialog* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_file_chooser_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkFileChooser*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_file_chooser_set_extra_widget(%struct._GtkFileChooser* %8, %struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %12 = bitcast %struct._GtkWidget* %11 to i8*
  %13 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %export_old_format6 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %13, i32 0, i32 9
  %14 = bitcast i32* %export_old_format6 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_image_map_tool_dialog_get_vbox(%struct._GimpImageMapTool*) #1

declare %struct._GtkSizeGroup* @gimp_image_map_tool_dialog_get_label_group(%struct._GimpImageMapTool*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new_with_mnemonic(i8*) #1

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #1

declare %struct._GtkListStore* @gimp_enum_store_new_with_range(i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_channel_get_type() #2

declare %struct._GtkWidget* @gimp_enum_combo_box_new_with_model(%struct._GimpEnumStore*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_store_get_type() #2

declare void @g_object_unref(i8*) #1

declare void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @curves_channel_callback(%struct._GtkWidget* %widget, %struct._GimpCurvesTool* %tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpCurvesTool*, align 8
  %config = alloca %struct._GimpCurvesConfig*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpCurvesTool* %tool, %struct._GimpCurvesTool** %tool.addr, align 8
  %0 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %0, i32 0, i32 1
  %1 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config1, align 8
  store %struct._GimpCurvesConfig* %1, %struct._GimpCurvesConfig** %config, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpIntComboBox*
  %call3 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %4, i32* %value)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %channel, align 4
  %7 = load i32, i32* %value, align 4
  %cmp = icmp ne i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %9 = bitcast %struct._GimpCurvesConfig* %8 to i8*
  %10 = load i32, i32* %value, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 %10, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @curves_channel_reset_callback(%struct._GtkWidget* %widget, %struct._GimpCurvesTool* %tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpCurvesTool*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpCurvesTool* %tool, %struct._GimpCurvesTool** %tool.addr, align 8
  %0 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %0, i32 0, i32 1
  %1 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %1, i32 0, i32 1
  %2 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %3, i32 0, i32 1
  %4 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config1, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %5 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  call void @gimp_curve_reset(%struct._GimpCurve* %5, i32 0)
  ret void
}

declare %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject*, i8*, i8*, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gimp_color_bar_new(i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_curve_view_new() #1

declare void @gimp_curve_view_set_range_x(%struct._GimpCurveView*, double, double) #1

declare void @gimp_curve_view_set_range_y(%struct._GimpCurveView*, double, double) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_histogram_options_connect_view(%struct._GimpHistogramOptions*, %struct._GimpHistogramView*) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gimp_enum_combo_box_new(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curve_type_get_type() #2

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @curves_curve_type_callback(%struct._GtkWidget* %widget, %struct._GimpCurvesTool* %tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpCurvesTool*, align 8
  %value = alloca i32, align 4
  %config = alloca %struct._GimpCurvesConfig*, align 8
  %curve_type = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpCurvesTool* %tool, %struct._GimpCurvesTool** %tool.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %value)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpCurvesTool*, %struct._GimpCurvesTool** %tool.addr, align 8
  %config3 = getelementptr inbounds %struct._GimpCurvesTool, %struct._GimpCurvesTool* %3, i32 0, i32 1
  %4 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config3, align 8
  store %struct._GimpCurvesConfig* %4, %struct._GimpCurvesConfig** %config, align 8
  %5 = load i32, i32* %value, align 4
  store i32 %5, i32* %curve_type, align 4
  %6 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %6, i32 0, i32 1
  %7 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve, i32 0, i64 %idxprom
  %9 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  %curve_type4 = getelementptr inbounds %struct._GimpCurve, %struct._GimpCurve* %9, i32 0, i32 1
  %10 = load i32, i32* %curve_type4, align 4
  %11 = load i32, i32* %curve_type, align 4
  %cmp = icmp ne i32 %10, %11
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %12 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %channel6 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %12, i32 0, i32 1
  %13 = load i32, i32* %channel6, align 4
  %idxprom7 = zext i32 %13 to i64
  %14 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %config, align 8
  %curve8 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %14, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve8, i32 0, i64 %idxprom7
  %15 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx9, align 8
  %16 = load i32, i32* %curve_type, align 4
  call void @gimp_curve_set_curve_type(%struct._GimpCurve* %15, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @gtk_file_chooser_set_extra_widget(%struct._GtkFileChooser*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @gimp_curve_reset(%struct._GimpCurve*, i32) #1

declare void @gimp_curve_set_curve_type(%struct._GimpCurve*, i32) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @gimp_curves_config_load_cruft(%struct._GimpCurvesConfig*, i8*, %struct._GError**) #1

declare i32 @gimp_curves_config_save_cruft(%struct._GimpCurvesConfig*, i8*, %struct._GError**) #1

declare %struct._GimpLut* @gimp_lut_new() #1

declare void @gimp_lut_process(%struct._GimpLut*, %struct._PixelRegion*, %struct._PixelRegion*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
