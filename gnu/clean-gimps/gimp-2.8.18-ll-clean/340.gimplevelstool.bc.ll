; ModuleID = './app/tools/gimplevelstool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpLevelsToolClass = type { %struct._GimpImageMapToolClass }
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
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type opaque
%struct._GimpToolOptions = type { %struct._GimpContext, %struct._GimpToolInfo* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpPaintInfo = type opaque
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
%struct._GimpLevelsTool = type { %struct._GimpImageMapTool, %struct._GimpLevelsConfig*, %struct._GimpLut*, %struct._GimpHistogram*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, i32 }
%struct._GimpLevelsConfig = type { %struct._GimpImageMapConfig, i32, [5 x double], [5 x double], [5 x double], [5 x double], [5 x double] }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpLut = type { i8**, i32 }
%struct._GimpHistogram = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpConfig = type opaque
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpHistogramView = type { %struct._GtkDrawingArea, %struct._GimpHistogram*, %struct._GimpHistogram*, i32, i32, i32, i32, i32, i32 }
%struct._GtkDrawingArea = type { %struct._GtkWidget, i8* }
%struct._Levels = type { [5 x double], [5 x i32], [5 x i32], [5 x i32], [5 x i32] }
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
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpHistogramOptions = type { %struct._GimpColorOptions, i32 }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GtkArg = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkEventScroll = type { i32, %struct._GdkDrawable*, i8, i32, double, double, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkEventMotion = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i16, %struct._GdkDevice*, double, double }
%struct._GdkEventExpose = type { i32, %struct._GdkDrawable*, i8, %struct._GdkRectangle, %struct._GdkRegion*, i32 }
%struct._GdkRegion = type opaque
%struct._GdkEventConfigure = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32 }
%struct._GdkEventFocus = type { i32, %struct._GdkDrawable*, i8, i16 }
%struct._GdkEventProperty = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i32, i32 }
%struct._GdkAtom = type opaque
%struct._GdkEventSelection = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i32 }
%struct._GdkEventProximity = type { i32, %struct._GdkDrawable*, i8, i32, %struct._GdkDevice* }
%struct._GdkEventVisibility = type { i32, %struct._GdkDrawable*, i8, i32 }
%struct._GdkEventClient = type { i32, %struct._GdkDrawable*, i8, %struct._GdkAtom*, i16, %union.anon.0 }
%union.anon.0 = type { [5 x i64] }
%struct._GdkEventAny = type { i32, %struct._GdkDrawable*, i8 }
%struct._GdkEventWindowState = type { i32, %struct._GdkDrawable*, i8, i32, i32 }
%struct._GtkSelectionData = type { %struct._GdkAtom*, %struct._GdkAtom*, %struct._GdkAtom*, i32, i8*, i32, %struct._GdkDisplay* }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GimpHandleBar = type { %struct._GtkEventBox, i32, [3 x %struct._GtkAdjustment*], double, double, [3 x i32], i32 }
%struct._GtkEventBox = type { %struct._GtkBin }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GimpColorBar = type { %struct._GtkEventBox, i32, [768 x i8] }
%struct._GimpSettingsBox = type opaque
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._GtkFileChooser = type opaque
%struct._GimpCurvesConfig = type opaque

@gimp_levels_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpLevelsTool\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gimp-levels-tool\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Levels\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Levels Tool: Adjust color levels\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"_Levels...\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gimp-tool-levels\00", align 1
@gimp_levels_tool_parent_class = internal global i8* null, align 8
@GimpLevelsTool_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Adjust Color Levels\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"levels\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Import Levels\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Export Levels\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Levels does not operate on indexed layers.\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"pick-value\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"gimp:levels\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"low-input\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"high-input\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"low-output\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"high-output\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"file-dialog-setup\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Cha_nnel:\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"gimp-channel\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"R_eset Channel\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"histogram-scale\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"gimp-histogram\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Input Levels\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"border-width\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Output Levels\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"All Channels\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"_Auto\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"Adjust levels automatically\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"gimp-tool-curves\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Edit these Settings as Curves\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"Use _old levels file format\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"gimp-color-picker-black\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"Pick black point\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"gimp-color-picker-gray\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"Pick gray point\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"gimp-color-picker-white\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"Pick white point\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"draw-indicator\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"gimp-curves-tool\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"Could not read header from '%s': %s\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"# GIMP Levels File\0A\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_levels_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_levels_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_levels_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 392, void (i8*, i8*)* bitcast (void (i8*)* @gimp_levels_tool_class_intern_init to void (i8*, i8*)*), i32 528, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLevelsTool*)* @gimp_levels_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_levels_tool_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_levels_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_levels_tool_parent_class, align 8
  %1 = load i32, i32* @GimpLevelsTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLevelsTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLevelsToolClass*
  call void @gimp_levels_tool_class_init(%struct._GimpLevelsToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_init(%struct._GimpLevelsTool* %tool) #3 {
entry:
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %im_tool = alloca %struct._GimpImageMapTool*, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpLevelsTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  store %struct._GimpImageMapTool* %2, %struct._GimpImageMapTool** %im_tool, align 8
  %call2 = call %struct._GimpLut* @gimp_lut_new()
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %lut = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 2
  store %struct._GimpLut* %call2, %struct._GimpLut** %lut, align 8
  %call3 = call %struct._GimpHistogram* @gimp_histogram_new()
  %4 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %4, i32 0, i32 3
  store %struct._GimpHistogram* %call3, %struct._GimpHistogram** %histogram, align 8
  %5 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %active_picker = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %5, i32 0, i32 16
  store %struct._GtkWidget* null, %struct._GtkWidget** %active_picker, align 8
  %6 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_func = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %6, i32 0, i32 5
  store void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)* bitcast (void (%struct._GimpLut*, %struct._PixelRegion*, %struct._PixelRegion*)* @gimp_lut_process to void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)*), void (i8*, %struct._PixelRegion*, %struct._PixelRegion*)** %apply_func, align 8
  %7 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %lut4 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %7, i32 0, i32 2
  %8 = load %struct._GimpLut*, %struct._GimpLut** %lut4, align 8
  %9 = bitcast %struct._GimpLut* %8 to i8*
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool, align 8
  %apply_data = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %10, i32 0, i32 6
  store i8* %9, i8** %apply_data, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_levels_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_levels_tool_get_type() #6
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
define internal void @gimp_levels_tool_class_init(%struct._GimpLevelsToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLevelsToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %color_tool_class = alloca %struct._GimpColorToolClass*, align 8
  %im_tool_class = alloca %struct._GimpImageMapToolClass*, align 8
  store %struct._GimpLevelsToolClass* %klass, %struct._GimpLevelsToolClass** %klass.addr, align 8
  %0 = load %struct._GimpLevelsToolClass*, %struct._GimpLevelsToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLevelsToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpLevelsToolClass*, %struct._GimpLevelsToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpLevelsToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpLevelsToolClass*, %struct._GimpLevelsToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpLevelsToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_color_tool_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpColorToolClass*
  store %struct._GimpColorToolClass* %8, %struct._GimpColorToolClass** %color_tool_class, align 8
  %9 = load %struct._GimpLevelsToolClass*, %struct._GimpLevelsToolClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpLevelsToolClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_image_map_tool_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpImageMapToolClass*
  store %struct._GimpImageMapToolClass* %11, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_levels_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 3
  store i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)* @gimp_levels_tool_initialize, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %14 = load %struct._GimpColorToolClass*, %struct._GimpColorToolClass** %color_tool_class, align 8
  %picked = getelementptr inbounds %struct._GimpColorToolClass, %struct._GimpColorToolClass* %14, i32 0, i32 2
  store void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)* @gimp_levels_tool_color_picked, void (%struct._GimpColorTool*, i32, i32, %struct._GimpRGB*, i32)** %picked, align 8
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #7
  %15 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog_desc = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %15, i32 0, i32 1
  store i8* %call7, i8** %dialog_desc, align 8
  %16 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_name = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %16, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8** %settings_name, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #7
  %17 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %import_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %17, i32 0, i32 3
  store i8* %call8, i8** %import_dialog_title, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0)) #7
  %18 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %export_dialog_title = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %18, i32 0, i32 4
  store i8* %call9, i8** %export_dialog_title, align 8
  %19 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %get_operation = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %19, i32 0, i32 6
  store %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)* @gimp_levels_tool_get_operation, %struct._GeglNode* (%struct._GimpImageMapTool*, %struct._GObject**)** %get_operation, align 8
  %20 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %map = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %20, i32 0, i32 7
  store void (%struct._GimpImageMapTool*)* @gimp_levels_tool_map, void (%struct._GimpImageMapTool*)** %map, align 8
  %21 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %21, i32 0, i32 8
  store void (%struct._GimpImageMapTool*)* @gimp_levels_tool_dialog, void (%struct._GimpImageMapTool*)** %dialog, align 8
  %22 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %reset = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %22, i32 0, i32 9
  store void (%struct._GimpImageMapTool*)* @gimp_levels_tool_reset, void (%struct._GimpImageMapTool*)** %reset, align 8
  %23 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_import = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %23, i32 0, i32 10
  store i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* @gimp_levels_tool_settings_import, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_import, align 8
  %24 = load %struct._GimpImageMapToolClass*, %struct._GimpImageMapToolClass** %im_tool_class, align 8
  %settings_export = getelementptr inbounds %struct._GimpImageMapToolClass, %struct._GimpImageMapToolClass* %24, i32 0, i32 11
  store i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)* @gimp_levels_tool_settings_export, i32 (%struct._GimpImageMapTool*, i8*, %struct._GError**)** %settings_export, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_tool_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tool = alloca %struct._GimpLevelsTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsTool*
  store %struct._GimpLevelsTool* %2, %struct._GimpLevelsTool** %tool, align 8
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %lut = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 2
  %4 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  call void @gimp_lut_free(%struct._GimpLut* %4)
  %5 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %histogram = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %5, i32 0, i32 3
  %6 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %tobool = icmp ne %struct._GimpHistogram* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %histogram2 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %7, i32 0, i32 3
  %8 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram2, align 8
  call void @gimp_histogram_unref(%struct._GimpHistogram* %8)
  %9 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %histogram3 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %9, i32 0, i32 3
  store %struct._GimpHistogram* null, %struct._GimpHistogram** %histogram3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** @gimp_levels_tool_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_levels_tool_initialize(%struct._GimpTool* %tool, %struct._GimpDisplay* %display, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %l_tool = alloca %struct._GimpLevelsTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsTool*
  store %struct._GimpLevelsTool* %2, %struct._GimpLevelsTool** %l_tool, align 8
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
  %8 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %l_tool, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %8, i32 0, i32 1
  %9 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %10 = bitcast %struct._GimpLevelsConfig* %9 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_config_interface_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call10)
  %11 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %11)
  %12 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %l_tool, align 8
  %active_picker = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %12, i32 0, i32 16
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %active_picker, align 8
  %tobool12 = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.9
  %14 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %l_tool, align 8
  %active_picker14 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %14, i32 0, i32 16
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %active_picker14, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_toggle_button_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %17, i32 0)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.9
  %18 = load i8*, i8** @gimp_levels_tool_parent_class, align 8
  %19 = bitcast i8* %18 to %struct._GTypeClass*
  %call18 = call i64 @gimp_tool_get_type() #6
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call18)
  %20 = bitcast %struct._GTypeClass* %call19 to %struct._GimpToolClass*
  %initialize = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %20, i32 0, i32 3
  %21 = load i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)*, i32 (%struct._GimpTool*, %struct._GimpDisplay*, %struct._GError**)** %initialize, align 8
  %22 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call20 = call i32 %21(%struct._GimpTool* %22, %struct._GimpDisplay* %23, %struct._GError** %24)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.17
  %25 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %l_tool, align 8
  %channel_menu = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %25, i32 0, i32 4
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_int_combo_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call24)
  %28 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpIntComboBox*
  %29 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %30 = bitcast %struct._GimpDrawable* %29 to i8*
  call void @gimp_int_combo_box_set_sensitivity(%struct._GimpIntComboBox* %28, i32 (i32, i8*)* @levels_menu_sensitivity, i8* %30, void (i8*)* null)
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %32 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %l_tool, align 8
  %histogram = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %32, i32 0, i32 3
  %33 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  call void @gimp_drawable_calculate_histogram(%struct._GimpDrawable* %31, %struct._GimpHistogram* %33)
  %34 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %l_tool, align 8
  %histogram_view = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %34, i32 0, i32 5
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %histogram_view, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_histogram_view_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call26)
  %37 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpHistogramView*
  %38 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %l_tool, align 8
  %histogram28 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %38, i32 0, i32 3
  %39 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram28, align 8
  call void @gimp_histogram_view_set_histogram(%struct._GimpHistogramView* %37, %struct._GimpHistogram* %39)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.6, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_color_picked(%struct._GimpColorTool* %color_tool, i32 %pick_state, i32 %sample_type, %struct._GimpRGB* %color, i32 %color_index) #3 {
entry:
  %color_tool.addr = alloca %struct._GimpColorTool*, align 8
  %pick_state.addr = alloca i32, align 4
  %sample_type.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32, align 4
  %tool = alloca %struct._GimpLevelsTool*, align 8
  %value = alloca i32, align 4
  %channel = alloca i32, align 4
  store %struct._GimpColorTool* %color_tool, %struct._GimpColorTool** %color_tool.addr, align 8
  store i32 %pick_state, i32* %pick_state.addr, align 4
  store i32 %sample_type, i32* %sample_type.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32 %color_index, i32* %color_index.addr, align 4
  %0 = load %struct._GimpColorTool*, %struct._GimpColorTool** %color_tool.addr, align 8
  %1 = bitcast %struct._GimpColorTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsTool*
  store %struct._GimpLevelsTool* %2, %struct._GimpLevelsTool** %tool, align 8
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %active_picker = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 16
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %active_picker, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %7 = ptrtoint i8* %call3 to i64
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %value, align 4
  %8 = load i32, i32* %value, align 4
  %and = and i32 %8, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %sample_type.addr, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i32, i32* %sample_type.addr, align 4
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %11 = load i32, i32* %value, align 4
  %and7 = and i32 %11, 15
  switch i32 %and7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
    i32 4, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.then
  %12 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %12, i32 0, i32 1
  %13 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %13, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  %14 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config9 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %14, i32 0, i32 1
  %15 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config9, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %15, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx10, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  %16 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config12 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %16, i32 0, i32 1
  %17 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config12, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %17, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx13, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.11, %sw.bb.8, %sw.bb
  store i32 1, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %18 = load i32, i32* %channel, align 4
  %cmp14 = icmp ule i32 %18, 3
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config16 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %19, i32 0, i32 1
  %20 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config16, align 8
  %21 = load i32, i32* %value, align 4
  %22 = load i32, i32* %channel, align 4
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @levels_input_adjust_by_color(%struct._GimpLevelsConfig* %20, i32 %21, i32 %22, %struct._GimpRGB* %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %channel, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %entry
  %25 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config17 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %25, i32 0, i32 1
  %26 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config17, align 8
  %27 = load i32, i32* %value, align 4
  %28 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config18 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %28, i32 0, i32 1
  %29 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config18, align 8
  %channel19 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %29, i32 0, i32 1
  %30 = load i32, i32* %channel19, align 4
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @levels_input_adjust_by_color(%struct._GimpLevelsConfig* %26, i32 %27, i32 %30, %struct._GimpRGB* %31)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GeglNode* @gimp_levels_tool_get_operation(%struct._GimpImageMapTool* %im_tool, %struct._GObject** %config) #3 {
entry:
  %im_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %config.addr = alloca %struct._GObject**, align 8
  %tool = alloca %struct._GimpLevelsTool*, align 8
  %node = alloca %struct._GeglNode*, align 8
  store %struct._GimpImageMapTool* %im_tool, %struct._GimpImageMapTool** %im_tool.addr, align 8
  store %struct._GObject** %config, %struct._GObject*** %config.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %im_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsTool*
  store %struct._GimpLevelsTool* %2, %struct._GimpLevelsTool** %tool, align 8
  %call2 = call i64 @gegl_node_get_type() #6
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* null)
  %3 = bitcast i8* %call3 to %struct._GeglNode*
  store %struct._GeglNode* %3, %struct._GeglNode** %node, align 8
  %call4 = call i64 @gimp_levels_config_get_type() #6
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* null)
  %4 = bitcast i8* %call5 to %struct._GimpLevelsConfig*
  %5 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config6 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %5, i32 0, i32 1
  store %struct._GimpLevelsConfig* %4, %struct._GimpLevelsConfig** %config6, align 8
  %6 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config7 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %6, i32 0, i32 1
  %7 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config7, align 8
  %8 = bitcast %struct._GimpLevelsConfig* %7 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %10 = load %struct._GObject**, %struct._GObject*** %config.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %10, align 8
  %11 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config9 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %11, i32 0, i32 1
  %12 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config9, align 8
  %13 = bitcast %struct._GimpLevelsConfig* %12 to i8*
  %14 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %15 = bitcast %struct._GimpLevelsTool* %14 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %17 = bitcast %struct._GObject* %16 to i8*
  %call11 = call i64 @g_signal_connect_object(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, %struct._GimpLevelsTool*)* @gimp_levels_tool_config_notify to void ()*), i8* %17, i32 0)
  %18 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %19 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config12 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %19, i32 0, i32 1
  %20 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config12, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._GimpLevelsConfig* %20, i8* null)
  %21 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  ret %struct._GeglNode* %21
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_map(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpLevelsTool*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %levels = alloca %struct._Levels, align 8
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsTool*
  store %struct._GimpLevelsTool* %2, %struct._GimpLevelsTool** %tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %drawable2 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %3, i32 0, i32 1
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %4, %struct._GimpDrawable** %drawable, align 8
  %5 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %5, i32 0, i32 1
  %6 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call3 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %7)
  call void @gimp_levels_config_to_cruft(%struct._GimpLevelsConfig* %6, %struct._Levels* %levels, i32 %call3)
  %8 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %lut = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %8, i32 0, i32 2
  %9 = load %struct._GimpLut*, %struct._GimpLut** %lut, align 8
  %10 = bitcast %struct._Levels* %levels to i8*
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call4 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %11)
  call void @gimp_lut_setup(%struct._GimpLut* %9, float (i8*, i32, i32, float)* bitcast (float (%struct._Levels*, i32, i32, float)* @levels_lut_func to float (i8*, i32, i32, float)*), i8* %10, i32 %call4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_dialog(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpLevelsTool*, align 8
  %tool_options = alloca %struct._GimpToolOptions*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %label_group = alloca %struct._GtkSizeGroup*, align 8
  %main_vbox = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %vbox3 = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %hbox2 = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %menu = alloca %struct._GtkWidget*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %hbbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %spinbutton = alloca %struct._GtkWidget*, align 8
  %bar = alloca %struct._GtkWidget*, align 8
  %data = alloca %struct._GtkObject*, align 8
  %border = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsTool*
  store %struct._GimpLevelsTool* %2, %struct._GimpLevelsTool** %tool, align 8
  %3 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %4 = bitcast %struct._GimpImageMapTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  store %struct._GimpToolOptions* %call4, %struct._GimpToolOptions** %tool_options, align 8
  %6 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config5 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %6, i32 0, i32 1
  %7 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config5, align 8
  store %struct._GimpLevelsConfig* %7, %struct._GimpLevelsConfig** %config, align 8
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %settings_box = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %8, i32 0, i32 11
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %settings_box, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %12 = bitcast %struct._GimpImageMapTool* %11 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GimpSettingsBox*, %struct._GtkFileChooserDialog*, i32, %struct._GimpLevelsTool*)* @gimp_levels_tool_export_setup to void ()*), i8* %12, void (i8*, %struct._GClosure*)* null, i32 0)
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
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)) #7
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
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %menu, align 8
  %30 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %31 = bitcast %struct._GtkListStore* %30 to i8*
  call void @g_object_unref(i8* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %33 = bitcast %struct._GtkWidget* %32 to i8*
  %34 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %35 = bitcast %struct._GimpLevelsTool* %34 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpLevelsTool*)* @levels_channel_callback to void ()*), i8* %35, void (i8*, %struct._GClosure*)* null, i32 0)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_enum_combo_box_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call22)
  %38 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpEnumComboBox*
  call void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0))
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_box_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call24)
  %41 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkBox*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %42, i32 0, i32 0, i32 0)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  %45 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %channel_menu = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %45, i32 0, i32 4
  store %struct._GtkWidget* %44, %struct._GtkWidget** %channel_menu, align 8
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_label_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call26)
  %48 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkLabel*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_label_set_mnemonic_widget(%struct._GtkLabel* %48, %struct._GtkWidget* %49)
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0)) #7
  %call29 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call28)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %button, align 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call30)
  %52 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %52, %struct._GtkWidget* %53, i32 0, i32 0, i32 0)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %58 = bitcast %struct._GimpLevelsTool* %57 to i8*
  %call32 = call i64 @g_signal_connect_data(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpLevelsTool*)* @levels_channel_reset_callback to void ()*), i8* %58, void (i8*, %struct._GClosure*)* null, i32 0)
  %59 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %60 = bitcast %struct._GimpToolOptions* %59 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 80)
  %61 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  %call34 = call %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 0)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %menu, align 8
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_box_get_type() #6
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call35)
  %64 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkBox*
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %64, %struct._GtkWidget* %65, i32 0, i32 0, i32 0)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %menu, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)) #7
  %call38 = call %struct._GtkWidget* @gimp_frame_new(i8* %call37)
  store %struct._GtkWidget* %call38, %struct._GtkWidget** %frame, align 8
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call39)
  %69 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %69, %struct._GtkWidget* %70, i32 1, i32 1, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %71)
  %call41 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 2)
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %vbox, align 8
  %72 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %73 = bitcast %struct._GtkWidget* %72 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_container_get_type() #6
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call42)
  %74 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkContainer*
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %74, %struct._GtkWidget* %75)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %call44 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call44, %struct._GtkWidget** %frame, align 8
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %78 = bitcast %struct._GtkWidget* %77 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_frame_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 %call45)
  %79 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %79, i32 1)
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call47 = call i64 @gtk_box_get_type() #6
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call47)
  %82 = bitcast %struct._GTypeInstance* %call48 to %struct._GtkBox*
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %82, %struct._GtkWidget* %83, i32 1, i32 1, i32 0)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %84)
  %call49 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call49, %struct._GtkWidget** %vbox2, align 8
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_container_get_type() #6
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call50)
  %87 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkContainer*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %87, %struct._GtkWidget* %88)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %call52 = call %struct._GtkWidget* @gimp_histogram_view_new(i32 0)
  %90 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %histogram_view = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %90, i32 0, i32 5
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %histogram_view, align 8
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #6
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call53)
  %93 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %94 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %histogram_view55 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %94, i32 0, i32 5
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %histogram_view55, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %93, %struct._GtkWidget* %95, i32 1, i32 1, i32 0)
  %96 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %histogram_view56 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %96, i32 0, i32 5
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %histogram_view56, align 8
  %98 = bitcast %struct._GtkWidget* %97 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_widget_get_type() #6
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call57)
  %99 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %99)
  %100 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %101 = bitcast %struct._GimpToolOptions* %100 to %struct._GTypeInstance*
  %call59 = call i64 @gimp_histogram_options_get_type() #6
  %call60 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %101, i64 %call59)
  %102 = bitcast %struct._GTypeInstance* %call60 to %struct._GimpHistogramOptions*
  %103 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %histogram_view61 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %103, i32 0, i32 5
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %histogram_view61, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call62 = call i64 @gimp_histogram_view_get_type() #6
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call62)
  %106 = bitcast %struct._GTypeInstance* %call63 to %struct._GimpHistogramView*
  call void @gimp_histogram_options_connect_view(%struct._GimpHistogramOptions* %102, %struct._GimpHistogramView* %106)
  %107 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %histogram_view64 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %107, i32 0, i32 5
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %histogram_view64, align 8
  %109 = bitcast %struct._GtkWidget* %108 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32* %border, i8* null)
  %call65 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call65, %struct._GtkWidget** %vbox3, align 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox3, align 8
  %111 = bitcast %struct._GtkWidget* %110 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_container_get_type() #6
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %111, i64 %call66)
  %112 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkContainer*
  %113 = load i32, i32* %border, align 4
  call void @gtk_container_set_border_width(%struct._GtkContainer* %112, i32 %113)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #6
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call68)
  %116 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %117 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox3, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %116, %struct._GtkWidget* %117, i32 0, i32 0, i32 0)
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox3, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %118)
  %call70 = call i64 @gimp_color_bar_get_type() #6
  %call71 = call i8* (i64, i8*, ...) @g_object_new(i64 %call70, i8* null)
  %119 = bitcast i8* %call71 to %struct._GtkWidget*
  %120 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_bar = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %120, i32 0, i32 6
  store %struct._GtkWidget* %119, %struct._GtkWidget** %input_bar, align 8
  %121 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_bar72 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %121, i32 0, i32 6
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %input_bar72, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %122, i32 -1, i32 6)
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox3, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_box_get_type() #6
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 %call73)
  %125 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkBox*
  %126 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_bar75 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %126, i32 0, i32 6
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %input_bar75, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %125, %struct._GtkWidget* %127, i32 0, i32 0, i32 0)
  %128 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_bar76 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %128, i32 0, i32 6
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %input_bar76, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %call77 = call i64 @gimp_color_bar_get_type() #6
  %call78 = call i8* (i64, i8*, ...) @g_object_new(i64 %call77, i8* null)
  %130 = bitcast i8* %call78 to %struct._GtkWidget*
  store %struct._GtkWidget* %130, %struct._GtkWidget** %bar, align 8
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %131, i32 -1, i32 6)
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox3, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_box_get_type() #6
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call79)
  %134 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkBox*
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %134, %struct._GtkWidget* %135, i32 0, i32 0, i32 0)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %136)
  %call81 = call i64 @gimp_handle_bar_get_type() #6
  %call82 = call i8* (i64, i8*, ...) @g_object_new(i64 %call81, i8* null)
  %137 = bitcast i8* %call82 to %struct._GtkWidget*
  %138 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %138, i32 0, i32 7
  store %struct._GtkWidget* %137, %struct._GtkWidget** %input_sliders, align 8
  %139 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders83 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %139, i32 0, i32 7
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders83, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %140, i32 -1, i32 10)
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox3, align 8
  %142 = bitcast %struct._GtkWidget* %141 to %struct._GTypeInstance*
  %call84 = call i64 @gtk_box_get_type() #6
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %142, i64 %call84)
  %143 = bitcast %struct._GTypeInstance* %call85 to %struct._GtkBox*
  %144 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders86 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %144, i32 0, i32 7
  %145 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders86, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %143, %struct._GtkWidget* %145, i32 0, i32 0, i32 0)
  %146 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders87 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %146, i32 0, i32 7
  %147 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders87, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %147)
  %148 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_bar88 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %148, i32 0, i32 6
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %input_bar88, align 8
  %150 = bitcast %struct._GtkWidget* %149 to i8*
  %151 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders89 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %151, i32 0, i32 7
  %152 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders89, align 8
  %153 = bitcast %struct._GtkWidget* %152 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %153, i32 0, i32 0
  %154 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %155 = bitcast %struct._GTypeClass* %154 to %struct._GtkWidgetClass*
  %button_press_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %155, i32 0, i32 25
  %156 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event, align 8
  %157 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %156 to void ()*
  %158 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders90 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %158, i32 0, i32 7
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders90, align 8
  %160 = bitcast %struct._GtkWidget* %159 to i8*
  %call91 = call i64 @g_signal_connect_data(i8* %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), void ()* %157, i8* %160, void (i8*, %struct._GClosure*)* null, i32 2)
  %161 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_bar92 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %161, i32 0, i32 6
  %162 = load %struct._GtkWidget*, %struct._GtkWidget** %input_bar92, align 8
  %163 = bitcast %struct._GtkWidget* %162 to i8*
  %164 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders93 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %164, i32 0, i32 7
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders93, align 8
  %166 = bitcast %struct._GtkWidget* %165 to %struct._GTypeInstance*
  %g_class94 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %166, i32 0, i32 0
  %167 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class94, align 8
  %168 = bitcast %struct._GTypeClass* %167 to %struct._GtkWidgetClass*
  %button_release_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %168, i32 0, i32 26
  %169 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event, align 8
  %170 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %169 to void ()*
  %171 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders95 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %171, i32 0, i32 7
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders95, align 8
  %173 = bitcast %struct._GtkWidget* %172 to i8*
  %call96 = call i64 @g_signal_connect_data(i8* %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), void ()* %170, i8* %173, void (i8*, %struct._GClosure*)* null, i32 2)
  %174 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_bar97 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %174, i32 0, i32 6
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %input_bar97, align 8
  %176 = bitcast %struct._GtkWidget* %175 to i8*
  %177 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders98 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %177, i32 0, i32 7
  %178 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders98, align 8
  %179 = bitcast %struct._GtkWidget* %178 to %struct._GTypeInstance*
  %g_class99 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %179, i32 0, i32 0
  %180 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class99, align 8
  %181 = bitcast %struct._GTypeClass* %180 to %struct._GtkWidgetClass*
  %motion_notify_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %181, i32 0, i32 28
  %182 = load i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event, align 8
  %183 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* %182 to void ()*
  %184 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders100 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %184, i32 0, i32 7
  %185 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders100, align 8
  %186 = bitcast %struct._GtkWidget* %185 to i8*
  %call101 = call i64 @g_signal_connect_data(i8* %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), void ()* %183, i8* %186, void (i8*, %struct._GClosure*)* null, i32 2)
  %187 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %188 = bitcast %struct._GtkWidget* %187 to i8*
  %189 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders102 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %189, i32 0, i32 7
  %190 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders102, align 8
  %191 = bitcast %struct._GtkWidget* %190 to %struct._GTypeInstance*
  %g_class103 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %191, i32 0, i32 0
  %192 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class103, align 8
  %193 = bitcast %struct._GTypeClass* %192 to %struct._GtkWidgetClass*
  %button_press_event104 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %193, i32 0, i32 25
  %194 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event104, align 8
  %195 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %194 to void ()*
  %196 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders105 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %196, i32 0, i32 7
  %197 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders105, align 8
  %198 = bitcast %struct._GtkWidget* %197 to i8*
  %call106 = call i64 @g_signal_connect_data(i8* %188, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), void ()* %195, i8* %198, void (i8*, %struct._GClosure*)* null, i32 2)
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %200 = bitcast %struct._GtkWidget* %199 to i8*
  %201 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders107 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %201, i32 0, i32 7
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders107, align 8
  %203 = bitcast %struct._GtkWidget* %202 to %struct._GTypeInstance*
  %g_class108 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %203, i32 0, i32 0
  %204 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class108, align 8
  %205 = bitcast %struct._GTypeClass* %204 to %struct._GtkWidgetClass*
  %button_release_event109 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %205, i32 0, i32 26
  %206 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event109, align 8
  %207 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %206 to void ()*
  %208 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders110 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %208, i32 0, i32 7
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders110, align 8
  %210 = bitcast %struct._GtkWidget* %209 to i8*
  %call111 = call i64 @g_signal_connect_data(i8* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), void ()* %207, i8* %210, void (i8*, %struct._GClosure*)* null, i32 2)
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %212 = bitcast %struct._GtkWidget* %211 to i8*
  %213 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders112 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %213, i32 0, i32 7
  %214 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders112, align 8
  %215 = bitcast %struct._GtkWidget* %214 to %struct._GTypeInstance*
  %g_class113 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %215, i32 0, i32 0
  %216 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class113, align 8
  %217 = bitcast %struct._GTypeClass* %216 to %struct._GtkWidgetClass*
  %motion_notify_event114 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %217, i32 0, i32 28
  %218 = load i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event114, align 8
  %219 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* %218 to void ()*
  %220 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders115 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %220, i32 0, i32 7
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders115, align 8
  %222 = bitcast %struct._GtkWidget* %221 to i8*
  %call116 = call i64 @g_signal_connect_data(i8* %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), void ()* %219, i8* %222, void (i8*, %struct._GClosure*)* null, i32 2)
  %call117 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call117, %struct._GtkWidget** %hbox, align 8
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %224 = bitcast %struct._GtkWidget* %223 to %struct._GTypeInstance*
  %call118 = call i64 @gtk_box_get_type() #6
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %224, i64 %call118)
  %225 = bitcast %struct._GTypeInstance* %call119 to %struct._GtkBox*
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %225, %struct._GtkWidget* %226, i32 0, i32 0, i32 0)
  %227 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %227)
  %call120 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call120, %struct._GtkWidget** %hbox2, align 8
  %228 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %229 = bitcast %struct._GtkWidget* %228 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_box_get_type() #6
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %229, i64 %call121)
  %230 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkBox*
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %230, %struct._GtkWidget* %231, i32 0, i32 0, i32 0)
  %232 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %232)
  %233 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %call123 = call %struct._GtkWidget* @gimp_levels_tool_color_picker_new(%struct._GimpLevelsTool* %233, i32 1)
  store %struct._GtkWidget* %call123, %struct._GtkWidget** %button, align 8
  %234 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %235 = bitcast %struct._GtkWidget* %234 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_box_get_type() #6
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %235, i64 %call124)
  %236 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkBox*
  %237 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %236, %struct._GtkWidget* %237, i32 0, i32 0, i32 0)
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %238)
  %239 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %239, i32 0, i32 1
  %240 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %240 to i64
  %241 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %241, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom
  %242 = load double, double* %arrayidx, align 8
  %mul = fmul double %242, 2.550000e+02
  %call126 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %data, double %mul, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 5.000000e-01, i32 0)
  store %struct._GtkWidget* %call126, %struct._GtkWidget** %spinbutton, align 8
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %244 = bitcast %struct._GtkWidget* %243 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_box_get_type() #6
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %244, i64 %call127)
  %245 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkBox*
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %245, %struct._GtkWidget* %246, i32 0, i32 0, i32 0)
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %247)
  %248 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %249 = bitcast %struct._GtkObject* %248 to %struct._GTypeInstance*
  %call129 = call i64 @gtk_adjustment_get_type() #6
  %call130 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %249, i64 %call129)
  %250 = bitcast %struct._GTypeInstance* %call130 to %struct._GtkAdjustment*
  %251 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %low_input131 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %251, i32 0, i32 8
  store %struct._GtkAdjustment* %250, %struct._GtkAdjustment** %low_input131, align 8
  %252 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %low_input132 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %252, i32 0, i32 8
  %253 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input132, align 8
  %254 = bitcast %struct._GtkAdjustment* %253 to i8*
  %255 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %256 = bitcast %struct._GimpLevelsTool* %255 to i8*
  %call133 = call i64 @g_signal_connect_data(i8* %254, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpLevelsTool*)* @levels_low_input_changed to void ()*), i8* %256, void (i8*, %struct._GClosure*)* null, i32 0)
  %257 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders134 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %257, i32 0, i32 7
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders134, align 8
  %259 = bitcast %struct._GtkWidget* %258 to %struct._GTypeInstance*
  %call135 = call i64 @gimp_handle_bar_get_type() #6
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %259, i64 %call135)
  %260 = bitcast %struct._GTypeInstance* %call136 to %struct._GimpHandleBar*
  %261 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %low_input137 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %261, i32 0, i32 8
  %262 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input137, align 8
  call void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar* %260, i32 0, %struct._GtkAdjustment* %262)
  %263 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel138 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %263, i32 0, i32 1
  %264 = load i32, i32* %channel138, align 4
  %idxprom139 = zext i32 %264 to i64
  %265 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %265, i32 0, i32 2
  %arrayidx140 = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom139
  %266 = load double, double* %arrayidx140, align 8
  %call141 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %data, double %266, double 1.000000e-01, double 1.000000e+01, double 1.000000e-02, double 1.000000e-01, double 0.000000e+00, double 5.000000e-01, i32 2)
  store %struct._GtkWidget* %call141, %struct._GtkWidget** %spinbutton, align 8
  %267 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %268 = bitcast %struct._GtkWidget* %267 to %struct._GTypeInstance*
  %call142 = call i64 @gtk_box_get_type() #6
  %call143 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %268, i64 %call142)
  %269 = bitcast %struct._GTypeInstance* %call143 to %struct._GtkBox*
  %270 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %269, %struct._GtkWidget* %270, i32 1, i32 0, i32 0)
  %271 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  %call144 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %271, i8* %call144, i8* null)
  %272 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %272)
  %273 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %274 = bitcast %struct._GtkObject* %273 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_adjustment_get_type() #6
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %274, i64 %call145)
  %275 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkAdjustment*
  %276 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %gamma147 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %276, i32 0, i32 9
  store %struct._GtkAdjustment* %275, %struct._GtkAdjustment** %gamma147, align 8
  %277 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %gamma148 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %277, i32 0, i32 9
  %278 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma148, align 8
  %279 = bitcast %struct._GtkAdjustment* %278 to i8*
  %280 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %281 = bitcast %struct._GimpLevelsTool* %280 to i8*
  %call149 = call i64 @g_signal_connect_data(i8* %279, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpLevelsTool*)* @levels_gamma_changed to void ()*), i8* %281, void (i8*, %struct._GClosure*)* null, i32 0)
  %call150 = call %struct._GtkObject* @gtk_adjustment_new(double 1.270000e+02, double 0.000000e+00, double 2.550000e+02, double 1.000000e-01, double 1.000000e+00, double 0.000000e+00)
  %282 = bitcast %struct._GtkObject* %call150 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_adjustment_get_type() #6
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %282, i64 %call151)
  %283 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkAdjustment*
  %284 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %gamma_linear = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %284, i32 0, i32 10
  store %struct._GtkAdjustment* %283, %struct._GtkAdjustment** %gamma_linear, align 8
  %285 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %gamma_linear153 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %285, i32 0, i32 10
  %286 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear153, align 8
  %287 = bitcast %struct._GtkAdjustment* %286 to i8*
  %288 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %289 = bitcast %struct._GimpLevelsTool* %288 to i8*
  %call154 = call i64 @g_signal_connect_data(i8* %287, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpLevelsTool*)* @levels_linear_gamma_changed to void ()*), i8* %289, void (i8*, %struct._GClosure*)* null, i32 0)
  %290 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders155 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %290, i32 0, i32 7
  %291 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders155, align 8
  %292 = bitcast %struct._GtkWidget* %291 to %struct._GTypeInstance*
  %call156 = call i64 @gimp_handle_bar_get_type() #6
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %292, i64 %call156)
  %293 = bitcast %struct._GTypeInstance* %call157 to %struct._GimpHandleBar*
  %294 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %gamma_linear158 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %294, i32 0, i32 10
  %295 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear158, align 8
  call void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar* %293, i32 1, %struct._GtkAdjustment* %295)
  %296 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %gamma_linear159 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %296, i32 0, i32 10
  %297 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear159, align 8
  %298 = bitcast %struct._GtkAdjustment* %297 to i8*
  call void @g_object_unref(i8* %298)
  %call160 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call160, %struct._GtkWidget** %hbox2, align 8
  %299 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %300 = bitcast %struct._GtkWidget* %299 to %struct._GTypeInstance*
  %call161 = call i64 @gtk_box_get_type() #6
  %call162 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %300, i64 %call161)
  %301 = bitcast %struct._GTypeInstance* %call162 to %struct._GtkBox*
  %302 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %301, %struct._GtkWidget* %302, i32 0, i32 0, i32 0)
  %303 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %303)
  %304 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %call163 = call %struct._GtkWidget* @gimp_levels_tool_color_picker_new(%struct._GimpLevelsTool* %304, i32 4)
  store %struct._GtkWidget* %call163, %struct._GtkWidget** %button, align 8
  %305 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %306 = bitcast %struct._GtkWidget* %305 to %struct._GTypeInstance*
  %call164 = call i64 @gtk_box_get_type() #6
  %call165 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %306, i64 %call164)
  %307 = bitcast %struct._GTypeInstance* %call165 to %struct._GtkBox*
  %308 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %307, %struct._GtkWidget* %308, i32 0, i32 0, i32 0)
  %309 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %309)
  %310 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel166 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %310, i32 0, i32 1
  %311 = load i32, i32* %channel166, align 4
  %idxprom167 = zext i32 %311 to i64
  %312 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %312, i32 0, i32 4
  %arrayidx168 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom167
  %313 = load double, double* %arrayidx168, align 8
  %mul169 = fmul double %313, 2.550000e+02
  %call170 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %data, double %mul169, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 5.000000e-01, i32 0)
  store %struct._GtkWidget* %call170, %struct._GtkWidget** %spinbutton, align 8
  %314 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox2, align 8
  %315 = bitcast %struct._GtkWidget* %314 to %struct._GTypeInstance*
  %call171 = call i64 @gtk_box_get_type() #6
  %call172 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %315, i64 %call171)
  %316 = bitcast %struct._GTypeInstance* %call172 to %struct._GtkBox*
  %317 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %316, %struct._GtkWidget* %317, i32 0, i32 0, i32 0)
  %318 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %318)
  %319 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %320 = bitcast %struct._GtkObject* %319 to %struct._GTypeInstance*
  %call173 = call i64 @gtk_adjustment_get_type() #6
  %call174 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %320, i64 %call173)
  %321 = bitcast %struct._GTypeInstance* %call174 to %struct._GtkAdjustment*
  %322 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %high_input175 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %322, i32 0, i32 11
  store %struct._GtkAdjustment* %321, %struct._GtkAdjustment** %high_input175, align 8
  %323 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %high_input176 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %323, i32 0, i32 11
  %324 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input176, align 8
  %325 = bitcast %struct._GtkAdjustment* %324 to i8*
  %326 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %327 = bitcast %struct._GimpLevelsTool* %326 to i8*
  %call177 = call i64 @g_signal_connect_data(i8* %325, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpLevelsTool*)* @levels_high_input_changed to void ()*), i8* %327, void (i8*, %struct._GClosure*)* null, i32 0)
  %328 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %input_sliders178 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %328, i32 0, i32 7
  %329 = load %struct._GtkWidget*, %struct._GtkWidget** %input_sliders178, align 8
  %330 = bitcast %struct._GtkWidget* %329 to %struct._GTypeInstance*
  %call179 = call i64 @gimp_handle_bar_get_type() #6
  %call180 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %330, i64 %call179)
  %331 = bitcast %struct._GTypeInstance* %call180 to %struct._GimpHandleBar*
  %332 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %high_input181 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %332, i32 0, i32 11
  %333 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input181, align 8
  call void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar* %331, i32 2, %struct._GtkAdjustment* %333)
  %call182 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)) #7
  %call183 = call %struct._GtkWidget* @gimp_frame_new(i8* %call182)
  store %struct._GtkWidget* %call183, %struct._GtkWidget** %frame, align 8
  %334 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %335 = bitcast %struct._GtkWidget* %334 to %struct._GTypeInstance*
  %call184 = call i64 @gtk_box_get_type() #6
  %call185 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %335, i64 %call184)
  %336 = bitcast %struct._GTypeInstance* %call185 to %struct._GtkBox*
  %337 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %336, %struct._GtkWidget* %337, i32 0, i32 0, i32 0)
  %338 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %338)
  %call186 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 4)
  store %struct._GtkWidget* %call186, %struct._GtkWidget** %vbox, align 8
  %339 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %340 = bitcast %struct._GtkWidget* %339 to %struct._GTypeInstance*
  %call187 = call i64 @gtk_container_get_type() #6
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %340, i64 %call187)
  %341 = bitcast %struct._GTypeInstance* %call188 to %struct._GtkContainer*
  %342 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %341, %struct._GtkWidget* %342)
  %343 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %343)
  %call189 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call189, %struct._GtkWidget** %frame, align 8
  %344 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %345 = bitcast %struct._GtkWidget* %344 to %struct._GTypeInstance*
  %call190 = call i64 @gtk_frame_get_type() #6
  %call191 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %345, i64 %call190)
  %346 = bitcast %struct._GTypeInstance* %call191 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %346, i32 1)
  %347 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %348 = bitcast %struct._GtkWidget* %347 to %struct._GTypeInstance*
  %call192 = call i64 @gtk_box_get_type() #6
  %call193 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %348, i64 %call192)
  %349 = bitcast %struct._GTypeInstance* %call193 to %struct._GtkBox*
  %350 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %349, %struct._GtkWidget* %350, i32 0, i32 0, i32 0)
  %351 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %351)
  %call194 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call194, %struct._GtkWidget** %vbox2, align 8
  %352 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %353 = bitcast %struct._GtkWidget* %352 to %struct._GTypeInstance*
  %call195 = call i64 @gtk_container_get_type() #6
  %call196 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %353, i64 %call195)
  %354 = bitcast %struct._GTypeInstance* %call196 to %struct._GtkContainer*
  %355 = load i32, i32* %border, align 4
  call void @gtk_container_set_border_width(%struct._GtkContainer* %354, i32 %355)
  %356 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %357 = bitcast %struct._GtkWidget* %356 to %struct._GTypeInstance*
  %call197 = call i64 @gtk_container_get_type() #6
  %call198 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %357, i64 %call197)
  %358 = bitcast %struct._GTypeInstance* %call198 to %struct._GtkContainer*
  %359 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_container_add(%struct._GtkContainer* %358, %struct._GtkWidget* %359)
  %360 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %360)
  %call199 = call i64 @gimp_color_bar_get_type() #6
  %call200 = call i8* (i64, i8*, ...) @g_object_new(i64 %call199, i8* null)
  %361 = bitcast i8* %call200 to %struct._GtkWidget*
  %362 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_bar = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %362, i32 0, i32 12
  store %struct._GtkWidget* %361, %struct._GtkWidget** %output_bar, align 8
  %363 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_bar201 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %363, i32 0, i32 12
  %364 = load %struct._GtkWidget*, %struct._GtkWidget** %output_bar201, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %364, i32 -1, i32 12)
  %365 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %366 = bitcast %struct._GtkWidget* %365 to %struct._GTypeInstance*
  %call202 = call i64 @gtk_box_get_type() #6
  %call203 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %366, i64 %call202)
  %367 = bitcast %struct._GTypeInstance* %call203 to %struct._GtkBox*
  %368 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_bar204 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %368, i32 0, i32 12
  %369 = load %struct._GtkWidget*, %struct._GtkWidget** %output_bar204, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %367, %struct._GtkWidget* %369, i32 0, i32 0, i32 0)
  %370 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_bar205 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %370, i32 0, i32 12
  %371 = load %struct._GtkWidget*, %struct._GtkWidget** %output_bar205, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %371)
  %call206 = call i64 @gimp_handle_bar_get_type() #6
  %call207 = call i8* (i64, i8*, ...) @g_object_new(i64 %call206, i8* null)
  %372 = bitcast i8* %call207 to %struct._GtkWidget*
  %373 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %373, i32 0, i32 13
  store %struct._GtkWidget* %372, %struct._GtkWidget** %output_sliders, align 8
  %374 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders208 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %374, i32 0, i32 13
  %375 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders208, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %375, i32 -1, i32 10)
  %376 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %377 = bitcast %struct._GtkWidget* %376 to %struct._GTypeInstance*
  %call209 = call i64 @gtk_box_get_type() #6
  %call210 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %377, i64 %call209)
  %378 = bitcast %struct._GTypeInstance* %call210 to %struct._GtkBox*
  %379 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders211 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %379, i32 0, i32 13
  %380 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders211, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %378, %struct._GtkWidget* %380, i32 0, i32 0, i32 0)
  %381 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders212 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %381, i32 0, i32 13
  %382 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders212, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %382)
  %383 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_bar213 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %383, i32 0, i32 12
  %384 = load %struct._GtkWidget*, %struct._GtkWidget** %output_bar213, align 8
  %385 = bitcast %struct._GtkWidget* %384 to i8*
  %386 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders214 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %386, i32 0, i32 13
  %387 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders214, align 8
  %388 = bitcast %struct._GtkWidget* %387 to %struct._GTypeInstance*
  %g_class215 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %388, i32 0, i32 0
  %389 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class215, align 8
  %390 = bitcast %struct._GTypeClass* %389 to %struct._GtkWidgetClass*
  %button_press_event216 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %390, i32 0, i32 25
  %391 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_press_event216, align 8
  %392 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %391 to void ()*
  %393 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders217 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %393, i32 0, i32 13
  %394 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders217, align 8
  %395 = bitcast %struct._GtkWidget* %394 to i8*
  %call218 = call i64 @g_signal_connect_data(i8* %385, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), void ()* %392, i8* %395, void (i8*, %struct._GClosure*)* null, i32 2)
  %396 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_bar219 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %396, i32 0, i32 12
  %397 = load %struct._GtkWidget*, %struct._GtkWidget** %output_bar219, align 8
  %398 = bitcast %struct._GtkWidget* %397 to i8*
  %399 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders220 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %399, i32 0, i32 13
  %400 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders220, align 8
  %401 = bitcast %struct._GtkWidget* %400 to %struct._GTypeInstance*
  %g_class221 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %401, i32 0, i32 0
  %402 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class221, align 8
  %403 = bitcast %struct._GTypeClass* %402 to %struct._GtkWidgetClass*
  %button_release_event222 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %403, i32 0, i32 26
  %404 = load i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)** %button_release_event222, align 8
  %405 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* %404 to void ()*
  %406 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders223 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %406, i32 0, i32 13
  %407 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders223, align 8
  %408 = bitcast %struct._GtkWidget* %407 to i8*
  %call224 = call i64 @g_signal_connect_data(i8* %398, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), void ()* %405, i8* %408, void (i8*, %struct._GClosure*)* null, i32 2)
  %409 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_bar225 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %409, i32 0, i32 12
  %410 = load %struct._GtkWidget*, %struct._GtkWidget** %output_bar225, align 8
  %411 = bitcast %struct._GtkWidget* %410 to i8*
  %412 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders226 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %412, i32 0, i32 13
  %413 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders226, align 8
  %414 = bitcast %struct._GtkWidget* %413 to %struct._GTypeInstance*
  %g_class227 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %414, i32 0, i32 0
  %415 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class227, align 8
  %416 = bitcast %struct._GTypeClass* %415 to %struct._GtkWidgetClass*
  %motion_notify_event228 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %416, i32 0, i32 28
  %417 = load i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)** %motion_notify_event228, align 8
  %418 = bitcast i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)* %417 to void ()*
  %419 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders229 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %419, i32 0, i32 13
  %420 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders229, align 8
  %421 = bitcast %struct._GtkWidget* %420 to i8*
  %call230 = call i64 @g_signal_connect_data(i8* %411, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), void ()* %418, i8* %421, void (i8*, %struct._GClosure*)* null, i32 2)
  %call231 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call231, %struct._GtkWidget** %hbox, align 8
  %422 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %423 = bitcast %struct._GtkWidget* %422 to %struct._GTypeInstance*
  %call232 = call i64 @gtk_box_get_type() #6
  %call233 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %423, i64 %call232)
  %424 = bitcast %struct._GTypeInstance* %call233 to %struct._GtkBox*
  %425 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %424, %struct._GtkWidget* %425, i32 0, i32 0, i32 0)
  %426 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %426)
  %427 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel234 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %427, i32 0, i32 1
  %428 = load i32, i32* %channel234, align 4
  %idxprom235 = zext i32 %428 to i64
  %429 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %429, i32 0, i32 5
  %arrayidx236 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom235
  %430 = load double, double* %arrayidx236, align 8
  %mul237 = fmul double %430, 2.550000e+02
  %call238 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %data, double %mul237, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 5.000000e-01, i32 0)
  store %struct._GtkWidget* %call238, %struct._GtkWidget** %spinbutton, align 8
  %431 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %432 = bitcast %struct._GtkWidget* %431 to %struct._GTypeInstance*
  %call239 = call i64 @gtk_box_get_type() #6
  %call240 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %432, i64 %call239)
  %433 = bitcast %struct._GTypeInstance* %call240 to %struct._GtkBox*
  %434 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %433, %struct._GtkWidget* %434, i32 0, i32 0, i32 0)
  %435 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %435)
  %436 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %437 = bitcast %struct._GtkObject* %436 to %struct._GTypeInstance*
  %call241 = call i64 @gtk_adjustment_get_type() #6
  %call242 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %437, i64 %call241)
  %438 = bitcast %struct._GTypeInstance* %call242 to %struct._GtkAdjustment*
  %439 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %low_output243 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %439, i32 0, i32 14
  store %struct._GtkAdjustment* %438, %struct._GtkAdjustment** %low_output243, align 8
  %440 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %low_output244 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %440, i32 0, i32 14
  %441 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_output244, align 8
  %442 = bitcast %struct._GtkAdjustment* %441 to i8*
  %443 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %444 = bitcast %struct._GimpLevelsTool* %443 to i8*
  %call245 = call i64 @g_signal_connect_data(i8* %442, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpLevelsTool*)* @levels_low_output_changed to void ()*), i8* %444, void (i8*, %struct._GClosure*)* null, i32 0)
  %445 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders246 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %445, i32 0, i32 13
  %446 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders246, align 8
  %447 = bitcast %struct._GtkWidget* %446 to %struct._GTypeInstance*
  %call247 = call i64 @gimp_handle_bar_get_type() #6
  %call248 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %447, i64 %call247)
  %448 = bitcast %struct._GTypeInstance* %call248 to %struct._GimpHandleBar*
  %449 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %low_output249 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %449, i32 0, i32 14
  %450 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_output249, align 8
  call void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar* %448, i32 0, %struct._GtkAdjustment* %450)
  %451 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel250 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %451, i32 0, i32 1
  %452 = load i32, i32* %channel250, align 4
  %idxprom251 = zext i32 %452 to i64
  %453 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %453, i32 0, i32 6
  %arrayidx252 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom251
  %454 = load double, double* %arrayidx252, align 8
  %mul253 = fmul double %454, 2.550000e+02
  %call254 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %data, double %mul253, double 0.000000e+00, double 2.550000e+02, double 1.000000e+00, double 1.000000e+01, double 0.000000e+00, double 5.000000e-01, i32 0)
  store %struct._GtkWidget* %call254, %struct._GtkWidget** %spinbutton, align 8
  %455 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %456 = bitcast %struct._GtkWidget* %455 to %struct._GTypeInstance*
  %call255 = call i64 @gtk_box_get_type() #6
  %call256 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %456, i64 %call255)
  %457 = bitcast %struct._GTypeInstance* %call256 to %struct._GtkBox*
  %458 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %457, %struct._GtkWidget* %458, i32 0, i32 0, i32 0)
  %459 = load %struct._GtkWidget*, %struct._GtkWidget** %spinbutton, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %459)
  %460 = load %struct._GtkObject*, %struct._GtkObject** %data, align 8
  %461 = bitcast %struct._GtkObject* %460 to %struct._GTypeInstance*
  %call257 = call i64 @gtk_adjustment_get_type() #6
  %call258 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %461, i64 %call257)
  %462 = bitcast %struct._GTypeInstance* %call258 to %struct._GtkAdjustment*
  %463 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %high_output259 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %463, i32 0, i32 15
  store %struct._GtkAdjustment* %462, %struct._GtkAdjustment** %high_output259, align 8
  %464 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %high_output260 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %464, i32 0, i32 15
  %465 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_output260, align 8
  %466 = bitcast %struct._GtkAdjustment* %465 to i8*
  %467 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %468 = bitcast %struct._GimpLevelsTool* %467 to i8*
  %call261 = call i64 @g_signal_connect_data(i8* %466, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpLevelsTool*)* @levels_high_output_changed to void ()*), i8* %468, void (i8*, %struct._GClosure*)* null, i32 0)
  %469 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %output_sliders262 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %469, i32 0, i32 13
  %470 = load %struct._GtkWidget*, %struct._GtkWidget** %output_sliders262, align 8
  %471 = bitcast %struct._GtkWidget* %470 to %struct._GTypeInstance*
  %call263 = call i64 @gimp_handle_bar_get_type() #6
  %call264 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %471, i64 %call263)
  %472 = bitcast %struct._GTypeInstance* %call264 to %struct._GimpHandleBar*
  %473 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %high_output265 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %473, i32 0, i32 15
  %474 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_output265, align 8
  call void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar* %472, i32 2, %struct._GtkAdjustment* %474)
  %call266 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0)) #7
  %call267 = call %struct._GtkWidget* @gimp_frame_new(i8* %call266)
  store %struct._GtkWidget* %call267, %struct._GtkWidget** %frame, align 8
  %475 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %476 = bitcast %struct._GtkWidget* %475 to %struct._GTypeInstance*
  %call268 = call i64 @gtk_box_get_type() #6
  %call269 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %476, i64 %call268)
  %477 = bitcast %struct._GTypeInstance* %call269 to %struct._GtkBox*
  %478 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %477, %struct._GtkWidget* %478, i32 0, i32 0, i32 0)
  %479 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %479)
  %call270 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call270, %struct._GtkWidget** %hbox, align 8
  %480 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %481 = bitcast %struct._GtkWidget* %480 to %struct._GTypeInstance*
  %call271 = call i64 @gtk_container_get_type() #6
  %call272 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %481, i64 %call271)
  %482 = bitcast %struct._GTypeInstance* %call272 to %struct._GtkContainer*
  %483 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %482, %struct._GtkWidget* %483)
  %484 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %484)
  %call273 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call273, %struct._GtkWidget** %hbbox, align 8
  %485 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %486 = bitcast %struct._GtkWidget* %485 to %struct._GTypeInstance*
  %call274 = call i64 @gtk_box_get_type() #6
  %call275 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %486, i64 %call274)
  %487 = bitcast %struct._GTypeInstance* %call275 to %struct._GtkBox*
  %488 = load %struct._GtkWidget*, %struct._GtkWidget** %hbbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %487, %struct._GtkWidget* %488, i32 0, i32 0, i32 0)
  %489 = load %struct._GtkWidget*, %struct._GtkWidget** %hbbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %489)
  %call276 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #7
  %call277 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call276)
  store %struct._GtkWidget* %call277, %struct._GtkWidget** %button, align 8
  %490 = load %struct._GtkWidget*, %struct._GtkWidget** %hbbox, align 8
  %491 = bitcast %struct._GtkWidget* %490 to %struct._GTypeInstance*
  %call278 = call i64 @gtk_box_get_type() #6
  %call279 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %491, i64 %call278)
  %492 = bitcast %struct._GTypeInstance* %call279 to %struct._GtkBox*
  %493 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %492, %struct._GtkWidget* %493, i32 0, i32 0, i32 0)
  %494 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %call280 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %494, i8* %call280, i8* null)
  %495 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %495)
  %496 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %497 = bitcast %struct._GtkWidget* %496 to i8*
  %498 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %499 = bitcast %struct._GimpLevelsTool* %498 to i8*
  %call281 = call i64 @g_signal_connect_data(i8* %497, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpLevelsTool*)* @levels_stretch_callback to void ()*), i8* %499, void (i8*, %struct._GClosure*)* null, i32 0)
  %500 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %call282 = call %struct._GtkWidget* @gimp_levels_tool_color_picker_new(%struct._GimpLevelsTool* %500, i32 257)
  store %struct._GtkWidget* %call282, %struct._GtkWidget** %button, align 8
  %501 = load %struct._GtkWidget*, %struct._GtkWidget** %hbbox, align 8
  %502 = bitcast %struct._GtkWidget* %501 to %struct._GTypeInstance*
  %call283 = call i64 @gtk_box_get_type() #6
  %call284 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %502, i64 %call283)
  %503 = bitcast %struct._GTypeInstance* %call284 to %struct._GtkBox*
  %504 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %503, %struct._GtkWidget* %504, i32 0, i32 0, i32 0)
  %505 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %505)
  %506 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %call285 = call %struct._GtkWidget* @gimp_levels_tool_color_picker_new(%struct._GimpLevelsTool* %506, i32 258)
  store %struct._GtkWidget* %call285, %struct._GtkWidget** %button, align 8
  %507 = load %struct._GtkWidget*, %struct._GtkWidget** %hbbox, align 8
  %508 = bitcast %struct._GtkWidget* %507 to %struct._GTypeInstance*
  %call286 = call i64 @gtk_box_get_type() #6
  %call287 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %508, i64 %call286)
  %509 = bitcast %struct._GTypeInstance* %call287 to %struct._GtkBox*
  %510 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %509, %struct._GtkWidget* %510, i32 0, i32 0, i32 0)
  %511 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %511)
  %512 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %call288 = call %struct._GtkWidget* @gimp_levels_tool_color_picker_new(%struct._GimpLevelsTool* %512, i32 260)
  store %struct._GtkWidget* %call288, %struct._GtkWidget** %button, align 8
  %513 = load %struct._GtkWidget*, %struct._GtkWidget** %hbbox, align 8
  %514 = bitcast %struct._GtkWidget* %513 to %struct._GTypeInstance*
  %call289 = call i64 @gtk_box_get_type() #6
  %call290 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %514, i64 %call289)
  %515 = bitcast %struct._GTypeInstance* %call290 to %struct._GtkBox*
  %516 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %515, %struct._GtkWidget* %516, i32 0, i32 0, i32 0)
  %517 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %517)
  %518 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %dialog = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %518, i32 0, i32 9
  %519 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %520 = bitcast %struct._GtkWidget* %519 to i8*
  %521 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %522 = bitcast %struct._GimpLevelsTool* %521 to i8*
  %call291 = call i64 @g_signal_connect_data(i8* %520, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpLevelsTool*)* @gimp_levels_tool_dialog_unmap to void ()*), i8* %522, void (i8*, %struct._GClosure*)* null, i32 0)
  %call292 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0)) #7
  %call293 = call %struct._GtkWidget* @gimp_stock_button_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i8* %call292)
  store %struct._GtkWidget* %call293, %struct._GtkWidget** %button, align 8
  %523 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  %524 = bitcast %struct._GtkWidget* %523 to %struct._GTypeInstance*
  %call294 = call i64 @gtk_box_get_type() #6
  %call295 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %524, i64 %call294)
  %525 = bitcast %struct._GTypeInstance* %call295 to %struct._GtkBox*
  %526 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %525, %struct._GtkWidget* %526, i32 0, i32 0, i32 0)
  %527 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %527)
  %528 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %529 = bitcast %struct._GtkWidget* %528 to i8*
  %530 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %531 = bitcast %struct._GimpLevelsTool* %530 to i8*
  %call296 = call i64 @g_signal_connect_data(i8* %529, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpLevelsTool*)* @levels_to_curves_callback to void ()*), i8* %531, void (i8*, %struct._GClosure*)* null, i32 0)
  %532 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %channel_menu297 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %532, i32 0, i32 4
  %533 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu297, align 8
  %534 = bitcast %struct._GtkWidget* %533 to %struct._GTypeInstance*
  %call298 = call i64 @gimp_int_combo_box_get_type() #6
  %call299 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %534, i64 %call298)
  %535 = bitcast %struct._GTypeInstance* %call299 to %struct._GimpIntComboBox*
  %536 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel300 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %536, i32 0, i32 1
  %537 = load i32, i32* %channel300, align 4
  %call301 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %535, i32 %537)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_reset(%struct._GimpImageMapTool* %image_map_tool) #3 {
entry:
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %tool = alloca %struct._GimpLevelsTool*, align 8
  %channel = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsTool*
  store %struct._GimpLevelsTool* %2, %struct._GimpLevelsTool** %tool, align 8
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 1
  %4 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel2 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %4, i32 0, i32 1
  %5 = load i32, i32* %channel2, align 4
  store i32 %5, i32* %channel, align 4
  %6 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config3 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %6, i32 0, i32 3
  %7 = load %struct._GObject*, %struct._GObject** %config3, align 8
  call void @g_object_freeze_notify(%struct._GObject* %7)
  %8 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %default_config = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %8, i32 0, i32 4
  %9 = load %struct._GObject*, %struct._GObject** %default_config, align 8
  %tobool = icmp ne %struct._GObject* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %default_config4 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %10, i32 0, i32 4
  %11 = load %struct._GObject*, %struct._GObject** %default_config4, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_config_interface_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpConfig*
  %14 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config7 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %14, i32 0, i32 3
  %15 = load %struct._GObject*, %struct._GObject** %config7, align 8
  %16 = bitcast %struct._GObject* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_config_interface_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpConfig*
  %call10 = call i32 @gimp_config_copy(%struct._GimpConfig* %13, %struct._GimpConfig* %17, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config11 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %18, i32 0, i32 3
  %19 = load %struct._GObject*, %struct._GObject** %config11, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_config_interface_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call12)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %21)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config14 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %22, i32 0, i32 1
  %23 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config14, align 8
  %24 = bitcast %struct._GimpLevelsConfig* %23 to i8*
  %25 = load i32, i32* %channel, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 %25, i8* null)
  %26 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %config15 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %26, i32 0, i32 3
  %27 = load %struct._GObject*, %struct._GObject** %config15, align 8
  call void @g_object_thaw_notify(%struct._GObject* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_levels_tool_settings_import(%struct._GimpImageMapTool* %image_map_tool, i8* %filename, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tool = alloca %struct._GimpLevelsTool*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %header = alloca [64 x i8], align 16
  %success = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsTool*
  store %struct._GimpLevelsTool* %2, %struct._GimpLevelsTool** %tool, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0))
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
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0)) #7
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
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i32 0, i32 0)) #7
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
  %call23 = call i32 @g_str_has_prefix(i8* %arraydecay22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0))
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.21
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  call void @rewind(%struct._IO_FILE* %15)
  %16 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %16, i32 0, i32 1
  %17 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %19 = bitcast %struct._IO_FILE* %18 to i8*
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call26 = call i32 @gimp_levels_config_load_cruft(%struct._GimpLevelsConfig* %17, i8* %19, %struct._GError** %20)
  store i32 %call26, i32* %success, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* %21)
  %22 = load i32, i32* %success, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %23)
  %24 = load i8*, i8** @gimp_levels_tool_parent_class, align 8
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
define internal i32 @gimp_levels_tool_settings_export(%struct._GimpImageMapTool* %image_map_tool, i8* %filename, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %image_map_tool.addr = alloca %struct._GimpImageMapTool*, align 8
  %filename.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %tool = alloca %struct._GimpLevelsTool*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %success = alloca i32, align 4
  store %struct._GimpImageMapTool* %image_map_tool, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpImageMapTool*, %struct._GimpImageMapTool** %image_map_tool.addr, align 8
  %1 = bitcast %struct._GimpImageMapTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsTool*
  store %struct._GimpLevelsTool* %2, %struct._GimpLevelsTool** %tool, align 8
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %export_old_format = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 17
  %4 = load i32, i32* %export_old_format, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %filename.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0))
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
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0)) #7
  %9 = load i8*, i8** %filename.addr, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call10 = call i32* @__errno_location() #6
  %10 = load i32, i32* %call10, align 4
  %call11 = call i8* @g_strerror(i32 %10) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %7, i32 %call5, i32 %call7, i8* %call8, i8* %call9, i8* %call11)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %11, i32 0, i32 1
  %12 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %14 = bitcast %struct._IO_FILE* %13 to i8*
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_levels_config_save_cruft(%struct._GimpLevelsConfig* %12, i8* %14, %struct._GError** %15)
  store i32 %call12, i32* %success, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* %16)
  %17 = load i32, i32* %success, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.14:                                        ; preds = %entry
  %18 = load i8*, i8** @gimp_levels_tool_parent_class, align 8
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

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_lut_free(%struct._GimpLut*) #1

declare void @gimp_histogram_unref(%struct._GimpHistogram*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #2

declare void @gimp_config_reset(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare void @gimp_int_combo_box_set_sensitivity(%struct._GimpIntComboBox*, i32 (i32, i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @levels_menu_sensitivity(i32 %value, i8* %data) #3 {
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

declare void @gimp_drawable_calculate_histogram(%struct._GimpDrawable*, %struct._GimpHistogram*) #1

declare void @gimp_histogram_view_set_histogram(%struct._GimpHistogramView*, %struct._GimpHistogram*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_has_alpha(%struct._GimpDrawable*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @levels_input_adjust_by_color(%struct._GimpLevelsConfig* %config, i32 %value, i32 %channel, %struct._GimpRGB* %color) #3 {
entry:
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %value.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load i32, i32* %value.addr, align 4
  %and = and i32 %0, 15
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %2 = load i32, i32* %channel.addr, align 4
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_levels_config_adjust_by_colors(%struct._GimpLevelsConfig* %1, i32 %2, %struct._GimpRGB* %3, %struct._GimpRGB* null, %struct._GimpRGB* null)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %5 = load i32, i32* %channel.addr, align 4
  %6 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_levels_config_adjust_by_colors(%struct._GimpLevelsConfig* %4, i32 %5, %struct._GimpRGB* null, %struct._GimpRGB* %6, %struct._GimpRGB* null)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %8 = load i32, i32* %channel.addr, align 4
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_levels_config_adjust_by_colors(%struct._GimpLevelsConfig* %7, i32 %8, %struct._GimpRGB* null, %struct._GimpRGB* null, %struct._GimpRGB* %9)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

declare void @gimp_levels_config_adjust_by_colors(%struct._GimpLevelsConfig*, i32, %struct._GimpRGB*, %struct._GimpRGB*, %struct._GimpRGB*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_levels_config_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_config_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %2, %struct._GimpLevelsConfig** %config, align 8
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 8
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input, align 8
  %tobool = icmp ne %struct._GtkAdjustment* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)) #8
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %histogram_view = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %7, i32 0, i32 5
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %histogram_view, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_histogram_view_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpHistogramView*
  %11 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %11, i32 0, i32 1
  %12 = load i32, i32* %channel, align 4
  call void @gimp_histogram_view_set_channel(%struct._GimpHistogramView* %10, i32 %12)
  %13 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %output_bar = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %13, i32 0, i32 12
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %output_bar, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_color_bar_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpColorBar*
  %17 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel9 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %17, i32 0, i32 1
  %18 = load i32, i32* %channel9, align 4
  call void @gimp_color_bar_set_channel(%struct._GimpColorBar* %16, i32 %18)
  %19 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %channel_menu = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %19, i32 0, i32 4
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %channel_menu, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_int_combo_box_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call10)
  %22 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpIntComboBox*
  %23 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel12 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %23, i32 0, i32 1
  %24 = load i32, i32* %channel12, align 4
  %call13 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %22, i32 %24)
  br label %if.end.87

if.else:                                          ; preds = %if.end
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name14 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %25, i32 0, i32 1
  %26 = load i8*, i8** %name14, align 8
  %call15 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #8
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false, label %if.then.24

lor.lhs.false:                                    ; preds = %if.else
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name17 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 1
  %28 = load i8*, i8** %name17, align 8
  %call18 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #8
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %lor.lhs.false.20, label %if.then.24

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name21 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name21, align 8
  %call22 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #8
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else.64, label %if.then.24

if.then.24:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false, %if.else
  %31 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input25 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %31, i32 0, i32 8
  %32 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input25, align 8
  %33 = bitcast %struct._GtkAdjustment* %32 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %34)
  %35 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %35, i32 0, i32 11
  %36 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input, align 8
  %37 = bitcast %struct._GtkAdjustment* %36 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %38)
  %39 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma_linear = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %39, i32 0, i32 10
  %40 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear, align 8
  %41 = bitcast %struct._GtkAdjustment* %40 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 80)
  %42 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %42)
  %43 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input29 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %43, i32 0, i32 8
  %44 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input29, align 8
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %44, double 2.550000e+02)
  %45 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input30 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %45, i32 0, i32 11
  %46 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input30, align 8
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %46, double 0.000000e+00)
  %47 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma_linear31 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %47, i32 0, i32 10
  %48 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear31, align 8
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %48, double 0.000000e+00)
  %49 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma_linear32 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %49, i32 0, i32 10
  %50 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear32, align 8
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %50, double 2.550000e+02)
  %51 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input33 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %51, i32 0, i32 8
  %52 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input33, align 8
  %53 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel34 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %53, i32 0, i32 1
  %54 = load i32, i32* %channel34, align 4
  %idxprom = zext i32 %54 to i64
  %55 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_input35 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %55, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %low_input35, i32 0, i64 %idxprom
  %56 = load double, double* %arrayidx, align 8
  %mul = fmul double %56, 2.550000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %52, double %mul)
  %57 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %57, i32 0, i32 9
  %58 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma, align 8
  %59 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel36 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %59, i32 0, i32 1
  %60 = load i32, i32* %channel36, align 4
  %idxprom37 = zext i32 %60 to i64
  %61 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %gamma38 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %61, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %gamma38, i32 0, i64 %idxprom37
  %62 = load double, double* %arrayidx39, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %58, double %62)
  %63 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input40 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %63, i32 0, i32 11
  %64 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input40, align 8
  %65 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel41 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %65, i32 0, i32 1
  %66 = load i32, i32* %channel41, align 4
  %idxprom42 = zext i32 %66 to i64
  %67 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_input43 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %67, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [5 x double], [5 x double]* %high_input43, i32 0, i64 %idxprom42
  %68 = load double, double* %arrayidx44, align 8
  %mul45 = fmul double %68, 2.550000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %64, double %mul45)
  %69 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input46 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %69, i32 0, i32 8
  %70 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input46, align 8
  %71 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input47 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %71, i32 0, i32 11
  %72 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input47, align 8
  %call48 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %72)
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %70, double %call48)
  %73 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input49 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %73, i32 0, i32 11
  %74 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input49, align 8
  %75 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input50 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %75, i32 0, i32 8
  %76 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input50, align 8
  %call51 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %76)
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %74, double %call51)
  %77 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma_linear52 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %77, i32 0, i32 10
  %78 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear52, align 8
  %79 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input53 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %79, i32 0, i32 8
  %80 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input53, align 8
  %call54 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %80)
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %78, double %call54)
  %81 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma_linear55 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %81, i32 0, i32 10
  %82 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear55, align 8
  %83 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input56 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %83, i32 0, i32 11
  %84 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input56, align 8
  %call57 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %84)
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %82, double %call57)
  %85 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input58 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %85, i32 0, i32 8
  %86 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input58, align 8
  %87 = bitcast %struct._GtkAdjustment* %86 to %struct._GTypeInstance*
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 80)
  %88 = bitcast %struct._GTypeInstance* %call59 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %88)
  %89 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input60 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %89, i32 0, i32 11
  %90 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input60, align 8
  %91 = bitcast %struct._GtkAdjustment* %90 to %struct._GTypeInstance*
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 80)
  %92 = bitcast %struct._GTypeInstance* %call61 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %92)
  %93 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma_linear62 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %93, i32 0, i32 10
  %94 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear62, align 8
  %95 = bitcast %struct._GtkAdjustment* %94 to %struct._GTypeInstance*
  %call63 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 80)
  %96 = bitcast %struct._GTypeInstance* %call63 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %96)
  %97 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  call void @levels_update_input_bar(%struct._GimpLevelsTool* %97)
  br label %if.end.86

if.else.64:                                       ; preds = %lor.lhs.false.20
  %98 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name65 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %98, i32 0, i32 1
  %99 = load i8*, i8** %name65, align 8
  %call66 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0)) #8
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.else.74, label %if.then.68

if.then.68:                                       ; preds = %if.else.64
  %100 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %100, i32 0, i32 14
  %101 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_output, align 8
  %102 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel69 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %102, i32 0, i32 1
  %103 = load i32, i32* %channel69, align 4
  %idxprom70 = zext i32 %103 to i64
  %104 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_output71 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %104, i32 0, i32 5
  %arrayidx72 = getelementptr inbounds [5 x double], [5 x double]* %low_output71, i32 0, i64 %idxprom70
  %105 = load double, double* %arrayidx72, align 8
  %mul73 = fmul double %105, 2.550000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %101, double %mul73)
  br label %if.end.85

if.else.74:                                       ; preds = %if.else.64
  %106 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name75 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %106, i32 0, i32 1
  %107 = load i8*, i8** %name75, align 8
  %call76 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0)) #8
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.84, label %if.then.78

if.then.78:                                       ; preds = %if.else.74
  %108 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %108, i32 0, i32 15
  %109 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_output, align 8
  %110 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel79 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %110, i32 0, i32 1
  %111 = load i32, i32* %channel79, align 4
  %idxprom80 = zext i32 %111 to i64
  %112 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_output81 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %112, i32 0, i32 6
  %arrayidx82 = getelementptr inbounds [5 x double], [5 x double]* %high_output81, i32 0, i64 %idxprom80
  %113 = load double, double* %arrayidx82, align 8
  %mul83 = fmul double %113, 2.550000e+02
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %109, double %mul83)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.78, %if.else.74
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.68
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.24
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.4
  %114 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %115 = bitcast %struct._GimpLevelsTool* %114 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_image_map_tool_get_type() #6
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call88)
  %116 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpImageMapTool*
  call void @gimp_image_map_tool_preview(%struct._GimpImageMapTool* %116)
  br label %return

return:                                           ; preds = %if.end.87, %if.then
  ret void
}

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @gimp_histogram_view_set_channel(%struct._GimpHistogramView*, i32) #1

declare void @gimp_color_bar_set_channel(%struct._GimpColorBar*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_bar_get_type() #2

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare void @gtk_adjustment_set_upper(%struct._GtkAdjustment*, double) #1

declare void @gtk_adjustment_set_lower(%struct._GtkAdjustment*, double) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

; Function Attrs: nounwind uwtable
define internal void @levels_update_input_bar(%struct._GimpLevelsTool* %tool) #3 {
entry:
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %v = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %r = alloca [256 x i8], align 16
  %g = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %i9 = alloca i32, align 4
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 1
  %1 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config1, align 8
  store %struct._GimpLevelsConfig* %1, %struct._GimpLevelsConfig** %config, align 8
  %2 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %2, i32 0, i32 1
  %3 = load i32, i32* %channel, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 1, label %sw.bb.8
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %6 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel2 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %6, i32 0, i32 1
  %7 = load i32, i32* %channel2, align 4
  %8 = load i32, i32* %i, align 4
  %conv = sitofp i32 %8 to double
  %div = fdiv double %conv, 2.550000e+02
  %call = call double @gimp_operation_levels_map_input(%struct._GimpLevelsConfig* %5, i32 %7, double %div)
  %mul = fmul double %call, 2.559990e+02
  %conv3 = fptoui double %mul to i8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %v, i32 0, i64 %idxprom
  store i8 %conv3, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %input_bar = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %11, i32 0, i32 6
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %input_bar, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_color_bar_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call4)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpColorBar*
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %v, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %v, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %v, i32 0, i32 0
  call void @gimp_color_bar_set_buffers(%struct._GimpColorBar* %14, i8* %arraydecay, i8* %arraydecay6, i8* %arraydecay7)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry, %entry, %entry
  store i32 0, i32* %i9, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.35, %sw.bb.8
  %15 = load i32, i32* %i9, align 4
  %cmp11 = icmp slt i32 %15, 256
  br i1 %cmp11, label %for.body.13, label %for.end.37

for.body.13:                                      ; preds = %for.cond.10
  %16 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %17 = load i32, i32* %i9, align 4
  %conv14 = sitofp i32 %17 to double
  %div15 = fdiv double %conv14, 2.550000e+02
  %call16 = call double @gimp_operation_levels_map_input(%struct._GimpLevelsConfig* %16, i32 1, double %div15)
  %mul17 = fmul double %call16, 2.559990e+02
  %conv18 = fptoui double %mul17 to i8
  %18 = load i32, i32* %i9, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* %r, i32 0, i64 %idxprom19
  store i8 %conv18, i8* %arrayidx20, align 1
  %19 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %20 = load i32, i32* %i9, align 4
  %conv21 = sitofp i32 %20 to double
  %div22 = fdiv double %conv21, 2.550000e+02
  %call23 = call double @gimp_operation_levels_map_input(%struct._GimpLevelsConfig* %19, i32 2, double %div22)
  %mul24 = fmul double %call23, 2.559990e+02
  %conv25 = fptoui double %mul24 to i8
  %21 = load i32, i32* %i9, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [256 x i8], [256 x i8]* %g, i32 0, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1
  %22 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %23 = load i32, i32* %i9, align 4
  %conv28 = sitofp i32 %23 to double
  %div29 = fdiv double %conv28, 2.550000e+02
  %call30 = call double @gimp_operation_levels_map_input(%struct._GimpLevelsConfig* %22, i32 3, double %div29)
  %mul31 = fmul double %call30, 2.559990e+02
  %conv32 = fptoui double %mul31 to i8
  %24 = load i32, i32* %i9, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i64 %idxprom33
  store i8 %conv32, i8* %arrayidx34, align 1
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.13
  %25 = load i32, i32* %i9, align 4
  %inc36 = add nsw i32 %25, 1
  store i32 %inc36, i32* %i9, align 4
  br label %for.cond.10

for.end.37:                                       ; preds = %for.cond.10
  %26 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %input_bar38 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %26, i32 0, i32 6
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %input_bar38, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_color_bar_get_type() #6
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call39)
  %29 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpColorBar*
  %arraydecay41 = getelementptr inbounds [256 x i8], [256 x i8]* %r, i32 0, i32 0
  %arraydecay42 = getelementptr inbounds [256 x i8], [256 x i8]* %g, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %b, i32 0, i32 0
  call void @gimp_color_bar_set_buffers(%struct._GimpColorBar* %29, i8* %arraydecay41, i8* %arraydecay42, i8* %arraydecay43)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.37, %for.end
  ret void
}

declare void @gimp_image_map_tool_preview(%struct._GimpImageMapTool*) #1

declare double @gimp_operation_levels_map_input(%struct._GimpLevelsConfig*, i32, double) #1

declare void @gimp_color_bar_set_buffers(%struct._GimpColorBar*, i8*, i8*, i8*) #1

declare void @gimp_levels_config_to_cruft(%struct._GimpLevelsConfig*, %struct._Levels*, i32) #1

declare void @gimp_lut_setup(%struct._GimpLut*, float (i8*, i32, i32, float)*, i8*, i32) #1

declare float @levels_lut_func(%struct._Levels*, i32, i32, float) #1

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_export_setup(%struct._GimpSettingsBox* %settings_box, %struct._GtkFileChooserDialog* %dialog, i32 %export, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %settings_box.addr = alloca %struct._GimpSettingsBox*, align 8
  %dialog.addr = alloca %struct._GtkFileChooserDialog*, align 8
  %export.addr = alloca i32, align 4
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  store %struct._GimpSettingsBox* %settings_box, %struct._GimpSettingsBox** %settings_box.addr, align 8
  store %struct._GtkFileChooserDialog* %dialog, %struct._GtkFileChooserDialog** %dialog.addr, align 8
  store i32 %export, i32* %export.addr, align 4
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load i32, i32* %export.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0)) #7
  %call1 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %button, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_toggle_button_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkToggleButton*
  %4 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %export_old_format = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %4, i32 0, i32 17
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
  %13 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %export_old_format6 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %13, i32 0, i32 17
  %14 = bitcast i32* %export_old_format6 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %14, void (i8*, %struct._GClosure*)* null, i32 0)
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

; Function Attrs: nounwind uwtable
define internal void @levels_channel_callback(%struct._GtkWidget* %widget, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %value = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_int_combo_box_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpIntComboBox*
  %call2 = call i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox* %2, i32* %value)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 1
  %4 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %4, i32 0, i32 1
  %5 = load i32, i32* %channel, align 4
  %6 = load i32, i32* %value, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config3 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %7, i32 0, i32 1
  %8 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config3, align 8
  %9 = bitcast %struct._GimpLevelsConfig* %8 to i8*
  %10 = load i32, i32* %value, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 %10, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @gimp_enum_combo_box_set_stock_prefix(%struct._GimpEnumComboBox*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_enum_combo_box_get_type() #2

declare void @gtk_label_set_mnemonic_widget(%struct._GtkLabel*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @levels_channel_reset_callback(%struct._GtkWidget* %widget, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 1
  %1 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  call void @gimp_levels_config_reset_channel(%struct._GimpLevelsConfig* %1)
  ret void
}

declare %struct._GtkWidget* @gimp_prop_enum_stock_box_new(%struct._GObject*, i8*, i8*, i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare %struct._GtkWidget* @gimp_histogram_view_new(i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gimp_histogram_options_connect_view(%struct._GimpHistogramOptions*, %struct._GimpHistogramView*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_handle_bar_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_levels_tool_color_picker_new(%struct._GimpLevelsTool* %tool, i32 %value) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %value.addr = alloca i32, align 4
  %button = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %stock_id = alloca i8*, align 8
  %help = alloca i8*, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %and = and i32 %0, 15
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0), i8** %stock_id, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0)) #7
  store i8* %call, i8** %help, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8** %stock_id, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0)) #7
  store i8* %call2, i8** %help, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0), i8** %stock_id, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0)) #7
  store i8* %call4, i8** %help, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.3, %sw.bb.1, %sw.bb
  %call5 = call i64 @gtk_toggle_button_get_type() #6
  %call6 = call i8* (i64, i8*, ...) @g_object_new(i64 %call5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i32 0, i8* null)
  %1 = bitcast i8* %call6 to %struct._GtkWidget*
  store %struct._GtkWidget* %1, %struct._GtkWidget** %button, align 8
  %2 = load i8*, i8** %stock_id, align 8
  %call7 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %2, i32 4)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %image, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_misc_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call8)
  %5 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %5, i32 2, i32 2)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_container_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call10)
  %8 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkContainer*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %8, %struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %12 = load i8*, i8** %help, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %11, i8* %12, i8* null)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %16 = load i32, i32* %value.addr, align 4
  %conv = zext i32 %16 to i64
  %17 = inttoptr i64 %conv to i8*
  call void @g_object_set_data(%struct._GObject* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %21 = bitcast %struct._GimpLevelsTool* %20 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpLevelsTool*)* @levels_input_picker_toggled to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  store %struct._GtkWidget* %22, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %23
}

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @levels_low_input_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 1
  %1 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config1, align 8
  store %struct._GimpLevelsConfig* %1, %struct._GimpLevelsConfig** %config, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %add = fadd double %call, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %value, align 4
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 11
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input, align 8
  %5 = load i32, i32* %value, align 4
  %conv2 = sitofp i32 %5 to double
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %4, double %conv2)
  %6 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma_linear = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %6, i32 0, i32 10
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear, align 8
  %8 = load i32, i32* %value, align 4
  %conv3 = sitofp i32 %8 to double
  call void @gtk_adjustment_set_lower(%struct._GtkAdjustment* %7, double %conv3)
  %9 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %9, i32 0, i32 1
  %10 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %11, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom
  %12 = load double, double* %arrayidx, align 8
  %13 = load i32, i32* %value, align 4
  %conv4 = sitofp i32 %13 to double
  %div = fdiv double %conv4, 2.550000e+02
  %cmp = fcmp une double %12, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %15 = bitcast %struct._GimpLevelsConfig* %14 to i8*
  %16 = load i32, i32* %value, align 4
  %conv6 = sitofp i32 %16 to double
  %div7 = fdiv double %conv6, 2.550000e+02
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), double %div7, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  call void @levels_linear_gamma_update(%struct._GimpLevelsTool* %17)
  ret void
}

declare void @gimp_handle_bar_set_adjustment(%struct._GimpHandleBar*, i32, %struct._GtkAdjustment*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @levels_gamma_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 1
  %1 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config1, align 8
  store %struct._GimpLevelsConfig* %1, %struct._GimpLevelsConfig** %config, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  store double %call, double* %value, align 8
  %3 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %3, i32 0, i32 1
  %4 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %value, align 8
  %cmp = fcmp une double %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %9 = bitcast %struct._GimpLevelsConfig* %8 to i8*
  %10 = load double, double* %value, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), double %10, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  call void @levels_linear_gamma_update(%struct._GimpLevelsTool* %11)
  ret void
}

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @levels_linear_gamma_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %low_input = alloca double, align 8
  %high_input = alloca double, align 8
  %delta = alloca double, align 8
  %mid = alloca double, align 8
  %tmp = alloca double, align 8
  %value = alloca double, align 8
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input1 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 8
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input1, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  store double %call, double* %low_input, align 8
  %2 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input2 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %2, i32 0, i32 11
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input2, align 8
  %call3 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  store double %call3, double* %high_input, align 8
  %4 = load double, double* %high_input, align 8
  %5 = load double, double* %low_input, align 8
  %sub = fsub double %4, %5
  %div = fdiv double %sub, 2.000000e+00
  store double %div, double* %delta, align 8
  %6 = load double, double* %delta, align 8
  %cmp = fcmp oge double %6, 5.000000e-01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load double, double* %low_input, align 8
  %8 = load double, double* %delta, align 8
  %add = fadd double %7, %8
  store double %add, double* %mid, align 8
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call5 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %9)
  %10 = load double, double* %mid, align 8
  %sub6 = fsub double %call5, %10
  %11 = load double, double* %delta, align 8
  %div7 = fdiv double %sub6, %11
  store double %div7, double* %tmp, align 8
  %12 = load double, double* %tmp, align 8
  %call8 = call double @pow(double 1.000000e+01, double %12) #7
  %div9 = fdiv double 1.000000e+00, %call8
  store double %div9, double* %value, align 8
  %13 = load double, double* %value, align 8
  %mul = fmul double %13, 1.000000e+02
  %add10 = fadd double %mul, 5.000000e-01
  %call11 = call double @floor(double %add10) #6
  %div12 = fdiv double %call11, 1.000000e+02
  store double %div12, double* %value, align 8
  %14 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %14, i32 0, i32 9
  %15 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma, align 8
  %16 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %15, double %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @levels_high_input_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 1
  %1 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config1, align 8
  store %struct._GimpLevelsConfig* %1, %struct._GimpLevelsConfig** %config, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %add = fadd double %call, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %value, align 4
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 8
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input, align 8
  %5 = load i32, i32* %value, align 4
  %conv2 = sitofp i32 %5 to double
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %4, double %conv2)
  %6 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma_linear = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %6, i32 0, i32 10
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear, align 8
  %8 = load i32, i32* %value, align 4
  %conv3 = sitofp i32 %8 to double
  call void @gtk_adjustment_set_upper(%struct._GtkAdjustment* %7, double %conv3)
  %9 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %9, i32 0, i32 1
  %10 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %11, i32 0, i32 4
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom
  %12 = load double, double* %arrayidx, align 8
  %13 = load i32, i32* %value, align 4
  %conv4 = sitofp i32 %13 to double
  %div = fdiv double %conv4, 2.550000e+02
  %cmp = fcmp une double %12, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %15 = bitcast %struct._GimpLevelsConfig* %14 to i8*
  %16 = load i32, i32* %value, align 4
  %conv6 = sitofp i32 %16 to double
  %div7 = fdiv double %conv6, 2.550000e+02
  call void (i8*, i8*, ...) @g_object_set(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), double %div7, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  call void @levels_linear_gamma_update(%struct._GimpLevelsTool* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @levels_low_output_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 1
  %1 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config1, align 8
  store %struct._GimpLevelsConfig* %1, %struct._GimpLevelsConfig** %config, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %add = fadd double %call, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %value, align 4
  %3 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %3, i32 0, i32 1
  %4 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %5, i32 0, i32 5
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load i32, i32* %value, align 4
  %conv2 = sitofp i32 %7 to double
  %div = fdiv double %conv2, 2.550000e+02
  %cmp = fcmp une double %6, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %9 = bitcast %struct._GimpLevelsConfig* %8 to i8*
  %10 = load i32, i32* %value, align 4
  %conv4 = sitofp i32 %10 to double
  %div5 = fdiv double %conv4, 2.550000e+02
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), double %div5, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @levels_high_output_changed(%struct._GtkAdjustment* %adjustment, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %adjustment.addr = alloca %struct._GtkAdjustment*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %config = alloca %struct._GimpLevelsConfig*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAdjustment* %adjustment, %struct._GtkAdjustment** %adjustment.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config1 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 1
  %1 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config1, align 8
  store %struct._GimpLevelsConfig* %1, %struct._GimpLevelsConfig** %config, align 8
  %2 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adjustment.addr, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %2)
  %add = fadd double %call, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* %value, align 4
  %3 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %3, i32 0, i32 1
  %4 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load i32, i32* %value, align 4
  %conv2 = sitofp i32 %7 to double
  %div = fdiv double %conv2, 2.550000e+02
  %cmp = fcmp une double %6, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %9 = bitcast %struct._GimpLevelsConfig* %8 to i8*
  %10 = load i32, i32* %value, align 4
  %conv4 = sitofp i32 %10 to double
  %div5 = fdiv double %conv4, 2.550000e+02
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), double %div5, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @levels_stretch_callback(%struct._GtkWidget* %widget, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpLevelsTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_tool_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapTool*
  %drawable2 = getelementptr inbounds %struct._GimpImageMapTool, %struct._GimpImageMapTool* %2, i32 0, i32 1
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  store %struct._GimpDrawable* %3, %struct._GimpDrawable** %drawable, align 8
  %4 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %4, i32 0, i32 1
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %6 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %histogram = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %6, i32 0, i32 3
  %7 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call3 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %8)
  call void @gimp_levels_config_stretch(%struct._GimpLevelsConfig* %5, %struct._GimpHistogram* %7, i32 %call3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_tool_dialog_unmap(%struct._GtkWidget* %dialog, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %active_picker = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 16
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %active_picker, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %active_picker1 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %2, i32 0, i32 16
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %active_picker1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %5, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_stock_button_new(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @levels_to_curves_callback(%struct._GtkWidget* %widget, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %curves = alloca %struct._GimpCurvesConfig*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 1
  %1 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %call = call %struct._GimpCurvesConfig* @gimp_levels_config_to_curves_config(%struct._GimpLevelsConfig* %1)
  store %struct._GimpCurvesConfig* %call, %struct._GimpCurvesConfig** %curves, align 8
  %2 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %3 = bitcast %struct._GimpLevelsTool* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_image_map_tool_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpImageMapTool*
  %5 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %curves, align 8
  %6 = bitcast %struct._GimpCurvesConfig* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  call void @gimp_image_map_tool_edit_as(%struct._GimpImageMapTool* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), %struct._GimpConfig* %7)
  %8 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %curves, align 8
  %9 = bitcast %struct._GimpCurvesConfig* %8 to i8*
  call void @g_object_unref(i8* %9)
  ret void
}

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #1

declare void @gtk_file_chooser_set_extra_widget(%struct._GtkFileChooser*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_levels_config_reset_channel(%struct._GimpLevelsConfig*) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @levels_input_picker_toggled(%struct._GtkWidget* %widget, %struct._GimpLevelsTool* %tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %active_picker = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %3, i32 0, i32 16
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %active_picker, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %4, %5
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %if.end.26

if.end:                                           ; preds = %if.then
  %6 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %active_picker4 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %6, i32 0, i32 16
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %active_picker4, align 8
  %tobool5 = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %8 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %active_picker7 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %8, i32 0, i32 16
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %active_picker7, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_toggle_button_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %11, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %active_picker11 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %13, i32 0, i32 16
  store %struct._GtkWidget* %12, %struct._GtkWidget** %active_picker11, align 8
  %14 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %15 = bitcast %struct._GimpLevelsTool* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_color_tool_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpColorTool*
  %17 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %18 = bitcast %struct._GimpLevelsTool* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_tool_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpTool*
  %call16 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %19)
  %20 = bitcast %struct._GimpToolOptions* %call16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_color_options_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call17)
  %21 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpColorOptions*
  call void @gimp_color_tool_enable(%struct._GimpColorTool* %16, %struct._GimpColorOptions* %21)
  br label %if.end.26

if.else:                                          ; preds = %entry
  %22 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %active_picker19 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %22, i32 0, i32 16
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %active_picker19, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp20 = icmp eq %struct._GtkWidget* %23, %24
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.else
  %25 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %active_picker22 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %25, i32 0, i32 16
  store %struct._GtkWidget* null, %struct._GtkWidget** %active_picker22, align 8
  %26 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %27 = bitcast %struct._GimpLevelsTool* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_color_tool_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpColorTool*
  call void @gimp_color_tool_disable(%struct._GimpColorTool* %28)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.3, %if.end.25, %if.end.10
  ret void
}

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

declare void @gimp_color_tool_enable(%struct._GimpColorTool*, %struct._GimpColorOptions*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_options_get_type() #2

declare void @gimp_color_tool_disable(%struct._GimpColorTool*) #1

; Function Attrs: nounwind uwtable
define internal void @levels_linear_gamma_update(%struct._GimpLevelsTool* %tool) #3 {
entry:
  %tool.addr = alloca %struct._GimpLevelsTool*, align 8
  %low_input = alloca double, align 8
  %high_input = alloca double, align 8
  %delta = alloca double, align 8
  %mid = alloca double, align 8
  %tmp = alloca double, align 8
  %value = alloca double, align 8
  store %struct._GimpLevelsTool* %tool, %struct._GimpLevelsTool** %tool.addr, align 8
  %0 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %low_input1 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %0, i32 0, i32 8
  %1 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %low_input1, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %1)
  store double %call, double* %low_input, align 8
  %2 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %high_input2 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %2, i32 0, i32 11
  %3 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %high_input2, align 8
  %call3 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %3)
  store double %call3, double* %high_input, align 8
  %4 = load double, double* %high_input, align 8
  %5 = load double, double* %low_input, align 8
  %sub = fsub double %4, %5
  %div = fdiv double %sub, 2.000000e+00
  store double %div, double* %delta, align 8
  %6 = load double, double* %low_input, align 8
  %7 = load double, double* %delta, align 8
  %add = fadd double %6, %7
  store double %add, double* %mid, align 8
  %8 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %8, i32 0, i32 1
  %9 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %9, i32 0, i32 1
  %10 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %config5 = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %11, i32 0, i32 1
  %12 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config5, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8
  %div6 = fdiv double 1.000000e+00, %13
  %call7 = call double @log10(double %div6) #7
  store double %call7, double* %tmp, align 8
  %14 = load double, double* %mid, align 8
  %15 = load double, double* %delta, align 8
  %16 = load double, double* %tmp, align 8
  %mul = fmul double %15, %16
  %add8 = fadd double %14, %mul
  store double %add8, double* %value, align 8
  %17 = load %struct._GimpLevelsTool*, %struct._GimpLevelsTool** %tool.addr, align 8
  %gamma_linear = getelementptr inbounds %struct._GimpLevelsTool, %struct._GimpLevelsTool* %17, i32 0, i32 10
  %18 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %gamma_linear, align 8
  %19 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %18, double %19)
  ret void
}

; Function Attrs: nounwind
declare double @log10(double) #4

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind readnone
declare double @floor(double) #2

declare void @gimp_levels_config_stretch(%struct._GimpLevelsConfig*, %struct._GimpHistogram*, i32) #1

declare %struct._GimpCurvesConfig* @gimp_levels_config_to_curves_config(%struct._GimpLevelsConfig*) #1

declare void @gimp_image_map_tool_edit_as(%struct._GimpImageMapTool*, i8*, %struct._GimpConfig*) #1

declare i32 @gimp_config_copy(%struct._GimpConfig*, %struct._GimpConfig*, i32) #1

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

declare i32 @gimp_levels_config_load_cruft(%struct._GimpLevelsConfig*, i8*, %struct._GError**) #1

declare i32 @gimp_levels_config_save_cruft(%struct._GimpLevelsConfig*, i8*, %struct._GError**) #1

declare %struct._GimpLut* @gimp_lut_new() #1

declare %struct._GimpHistogram* @gimp_histogram_new() #1

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
