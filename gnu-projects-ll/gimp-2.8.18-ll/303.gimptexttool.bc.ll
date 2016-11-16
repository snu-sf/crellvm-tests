; ModuleID = './app/tools/gimptexttool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTextToolClass = type { %struct._GimpDrawToolClass }
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GimpContainer = type opaque
%struct._GimpToolControl = type { %struct._GimpObject, i32, i32, i32, %struct._GSList*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpTextTool = type { %struct._GimpDrawTool, %struct._GimpText*, %struct._GList*, i32, i32, %struct._GimpTextBuffer*, %struct._GimpText*, %struct._GimpTextLayer*, %struct._GimpImage*, %struct._GtkWidget*, %struct._GimpUIManager*, i32, i32, %struct._GimpTextLayout*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkTextIter, i32, i32, %struct._GtkIMContext*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpTextBuffer = type { %struct._GtkTextBuffer, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, i32, %struct._GList*, %struct._GList*, %struct._GdkAtom* }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._PangoFontDescription = type opaque
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GdkAtom = type opaque
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpTextLayout = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpRectangleToolInterface = type { %struct._GTypeInterface, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)*, void (%struct._GimpRectangleTool*)*, i32 (%struct._GimpRectangleTool*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpRectangleTool = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpDisplayOptions = type opaque
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
%struct._GtkClipboard = type opaque
%struct._GimpVectors = type opaque
%struct._GimpTextOptions = type { %struct._GimpToolOptions, i32, double, i32, i32, i8*, i32, i32, double, double, double, i32, i32, i32, i32, %struct._GtkWidget* }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GtkMenuItem = type { %struct._GtkItem, %struct._GtkWidget*, %struct._GdkDrawable*, i16, i16, i8*, i8, i32 }
%struct._GtkItem = type { %struct._GtkBin }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkIMMulticontext = type { %struct._GtkIMContext, %struct._GtkIMContext*, %struct._GtkIMMulticontextPrivate*, i8* }
%struct._GtkIMMulticontextPrivate = type opaque
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._GimpCanvasGroup = type { %struct._GimpCanvasItem }
%struct._GimpUndo = type { %struct._GimpViewable, %struct._GimpImage*, i32, i32, i32, %struct._TempBuf*, i32 }
%struct._TempBuf = type opaque
%struct._GimpTextUndo = type { %struct._GimpItemUndo, %struct._GimpText*, %struct._GParamSpec*, %struct._GValue*, i32 }
%struct._GimpItemUndo = type { %struct._GimpUndo, %struct._GimpItem* }
%struct._GimpSizeEntry = type { %struct._GtkTable, %struct._GSList*, i32, %struct._GtkWidget*, i32, i32, i32, i32, i32 }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._PangoLayout = type opaque
%struct._PangoLayoutIter = type opaque
%struct._PangoGlyphItem = type { %struct._PangoItem*, %struct._PangoGlyphString* }
%struct._PangoItem = type { i32, i32, i32, %struct._PangoAnalysis }
%struct._PangoAnalysis = type { %struct._PangoEngineShape*, %struct._PangoEngineLang*, %struct._PangoFont*, i8, i8, i8, i8, %struct._PangoLanguage*, %struct._GSList* }
%struct._PangoEngineShape = type opaque
%struct._PangoEngineLang = type opaque
%struct._PangoFont = type opaque
%struct._PangoGlyphString = type { i32, %struct._PangoGlyphInfo*, i32*, i32 }
%struct._PangoGlyphInfo = type { i32, %struct._PangoGlyphGeometry, %struct._PangoGlyphVisAttr }
%struct._PangoGlyphGeometry = type { i32, i32, i32 }
%struct._PangoGlyphVisAttr = type { i8, [3 x i8] }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpConfig = type opaque

@gimp_text_tool_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpTextTool\00", align 1
@gimp_text_tool_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpRectangleToolInterface*)* @gimp_text_tool_rectangle_tool_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp-text-tool\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Text Tool: Create or edit text layers\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Te_xt\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gimp-tool-text\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Gimp-Tools\00", align 1
@__func__.gimp_text_tool_set_layer = private unnamed_addr constant [25 x i8] c"gimp_text_tool_set_layer\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"GIMP_IS_TEXT_TOOL (text_tool)\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"layer == NULL || GIMP_IS_LAYER (layer)\00", align 1
@__func__.gimp_text_tool_cut_clipboard = private unnamed_addr constant [29 x i8] c"gimp_text_tool_cut_clipboard\00", align 1
@__func__.gimp_text_tool_copy_clipboard = private unnamed_addr constant [30 x i8] c"gimp_text_tool_copy_clipboard\00", align 1
@__func__.gimp_text_tool_paste_clipboard = private unnamed_addr constant [31 x i8] c"gimp_text_tool_paste_clipboard\00", align 1
@__func__.gimp_text_tool_create_vectors = private unnamed_addr constant [30 x i8] c"gimp_text_tool_create_vectors\00", align 1
@__func__.gimp_text_tool_create_vectors_warped = private unnamed_addr constant [37 x i8] c"gimp_text_tool_create_vectors_warped\00", align 1
@gimp_text_tool_parent_class = internal global i8* null, align 8
@GimpTextTool_private_offset = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"highlight\00", align 1
@__func__.gimp_text_tool_apply = private unnamed_addr constant [21 x i8] c"gimp_text_tool_apply\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"text_tool->text != NULL\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"text_tool->layer != NULL\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"layer->text == text_tool->text\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"modified\00", align 1
@__func__.gimp_text_tool_text_notify = private unnamed_addr constant [27 x i8] c"gimp_text_tool_text_notify\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"text == text_tool->text\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"markup\00", align 1
@__func__.gimp_text_tool_unblock_drawing = private unnamed_addr constant [31 x i8] c"gimp_text_tool_unblock_drawing\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"text_tool->drawing_blocked == TRUE\00", align 1
@__func__.gimp_text_tool_connect = private unnamed_addr constant [23 x i8] c"gimp_text_tool_connect\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"text == NULL || (layer != NULL && layer->text == text)\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"y2\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"box-mode\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"<TextTool>\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"/text-tool-popup/text-tool-input-methods-menu\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"/text-tool-popup\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"narrow-mode\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"box-width\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"box-height\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"reshape-text-layer\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Reshape Text Layer\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"begin-user-action\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"end-user-action\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"context/context-font-select-set\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"active-layer-changed\00", align 1
@__func__.gimp_text_tool_confirm_dialog = private unnamed_addr constant [30 x i8] c"gimp_text_tool_confirm_dialog\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"Confirm Text Editing\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"gimp-text-tool-confirm\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"gimp-text-layer\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Create _New Layer\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.46 = private unnamed_addr constant [231 x i8] c"The layer you selected is a text layer but it has been modified using other tools. Editing the layer with the text tool will discard these modifications.\0A\0AYou can edit the layer or create a new text layer from its text attributes.\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Add Text Layer\00", align 1
@__func__.gimp_text_tool_frame_item = private unnamed_addr constant [26 x i8] c"gimp_text_tool_frame_item\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"GIMP_IS_LAYER (text_tool->layer)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_tool_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_tool_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_tool_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_draw_tool_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 288, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_tool_class_intern_init to void (i8*, i8*)*), i32 536, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTextTool*)* @gimp_text_tool_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_text_tool_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_tool_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_text_tool_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_draw_tool_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_tool_parent_class, align 8
  %1 = load i32, i32* @GimpTextTool_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTextTool_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTextToolClass*
  call void @gimp_text_tool_class_init(%struct._GimpTextToolClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_init(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 1
  store %struct._GimpText* null, %struct._GimpText** %proxy, align 8
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %pending = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %4, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %pending, align 8
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 3
  store i32 0, i32* %idle_id, align 4
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %6, i32 0, i32 6
  store %struct._GimpText* null, %struct._GimpText** %text, align 8
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 7
  store %struct._GimpTextLayer* null, %struct._GimpTextLayer** %layer, align 8
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %8, i32 0, i32 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 13
  store %struct._GimpTextLayout* null, %struct._GimpTextLayout** %layout, align 8
  %call2 = call %struct._GimpTextBuffer* @gimp_text_buffer_new()
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %10, i32 0, i32 5
  store %struct._GimpTextBuffer* %call2, %struct._GimpTextBuffer** %buffer, align 8
  %11 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer3 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %11, i32 0, i32 5
  %12 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer3, align 8
  %13 = bitcast %struct._GimpTextBuffer* %12 to i8*
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %15 = bitcast %struct._GimpTextTool* %14 to i8*
  %call4 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_begin_edit to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 5
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer5, align 8
  %18 = bitcast %struct._GimpTextBuffer* %17 to i8*
  %19 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %20 = bitcast %struct._GimpTextTool* %19 to i8*
  %call6 = call i64 @g_signal_connect_data(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_end_edit to void ()*), i8* %20, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %handle_rectangle_change_complete = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 11
  store i32 1, i32* %handle_rectangle_change_complete, align 4
  %22 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_init(%struct._GimpTextTool* %22)
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %23, i32 0, i32 3
  %24 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl* %24, i32 1)
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control7 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %25, i32 0, i32 3
  %26 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control7, align 8
  call void @gimp_tool_control_set_handle_empty_image(%struct._GimpToolControl* %26, i32 1)
  %27 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %27, i32 0, i32 3
  %28 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control8, align 8
  call void @gimp_tool_control_set_wants_click(%struct._GimpToolControl* %28, i32 1)
  %29 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %29, i32 0, i32 3
  %30 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control9, align 8
  call void @gimp_tool_control_set_wants_double_click(%struct._GimpToolControl* %30, i32 1)
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 3
  %32 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control10, align 8
  call void @gimp_tool_control_set_wants_triple_click(%struct._GimpToolControl* %32, i32 1)
  %33 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %33, i32 0, i32 3
  %34 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control11, align 8
  call void @gimp_tool_control_set_wants_all_key_events(%struct._GimpToolControl* %34, i32 1)
  %35 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control12 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %35, i32 0, i32 3
  %36 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control12, align 8
  call void @gimp_tool_control_set_precision(%struct._GimpToolControl* %36, i32 1)
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control13 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 3
  %38 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control13, align 8
  call void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl* %38, i32 20)
  %39 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %control14 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %39, i32 0, i32 3
  %40 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control14, align 8
  call void @gimp_tool_control_set_action_object_1(%struct._GimpToolControl* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_rectangle_tool_iface_init(%struct._GimpRectangleToolInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpRectangleToolInterface*, align 8
  store %struct._GimpRectangleToolInterface* %iface, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %0 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %execute = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)* null, i32 (%struct._GimpRectangleTool*, i32, i32, i32, i32)** %execute, align 8
  %1 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %cancel = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %1, i32 0, i32 2
  store void (%struct._GimpRectangleTool*)* null, void (%struct._GimpRectangleTool*)** %cancel, align 8
  %2 = load %struct._GimpRectangleToolInterface*, %struct._GimpRectangleToolInterface** %iface.addr, align 8
  %rectangle_change_complete = getelementptr inbounds %struct._GimpRectangleToolInterface, %struct._GimpRectangleToolInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpRectangleTool*)* @gimp_text_tool_rectangle_change_complete, i32 (%struct._GimpRectangleTool*)** %rectangle_change_complete, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_rectangle_tool_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_register(void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, i8* %data) #3 {
entry:
  %callback.addr = alloca void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* %callback, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)*, void (i64, i64, %struct._GtkWidget* (%struct._GimpToolOptions*)*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)** %callback.addr, align 8
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call i64 @gimp_text_options_get_type() #7
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #6
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0)) #6
  %1 = load i8*, i8** %data.addr, align 8
  call void %0(i64 %call, i64 %call1, %struct._GtkWidget* (%struct._GimpToolOptions*)* @gimp_text_options_gui, i32 81984, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* %call2, i8* %call3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_options_get_type() #2

declare %struct._GtkWidget* @gimp_text_options_gui(%struct._GimpToolOptions*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_clear_layout(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 13
  %1 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %tobool = icmp ne %struct._GimpTextLayout* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 13
  %3 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout1, align 8
  %4 = bitcast %struct._GimpTextLayout* %3 to i8*
  call void @g_object_unref(i8* %4)
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 13
  store %struct._GimpTextLayout* null, %struct._GimpTextLayout** %layout2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_tool_ensure_layout(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 13
  %1 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %tobool = icmp ne %struct._GimpTextLayout* %1, null
  br i1 %tobool, label %if.end.10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 6
  %3 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool1 = icmp ne %struct._GimpText* %3, null
  br i1 %tobool1, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %4, i32 0, i32 7
  %5 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %6 = bitcast %struct._GimpTextLayer* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpItem*
  %call3 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %7)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %8, double* %xres, double* %yres)
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer4 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 7
  %10 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer4, align 8
  %text5 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %10, i32 0, i32 1
  %11 = load %struct._GimpText*, %struct._GimpText** %text5, align 8
  %12 = load double, double* %xres, align 8
  %13 = load double, double* %yres, align 8
  %call6 = call %struct._GimpTextLayout* @gimp_text_layout_new(%struct._GimpText* %11, double %12, double %13, %struct._GError** %error)
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout7 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 13
  store %struct._GimpTextLayout* %call6, %struct._GimpTextLayout** %layout7, align 8
  %15 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool8 = icmp ne %struct._GError* %15, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %18 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %18, i32 0, i32 2
  %19 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %17, %struct._GObject* null, i32 2, i8* %19)
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %20)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %land.lhs.true, %entry
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layout11 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 13
  %22 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout11, align 8
  %cmp = icmp ne %struct._GimpTextLayout* %22, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare %struct._GimpTextLayout* @gimp_text_layout_new(%struct._GimpText*, double, double, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_error_free(%struct._GError*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_set_layer(%struct._GimpTextTool* %text_tool, %struct._GimpLayer* %layer) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %layer.addr = alloca %struct._GimpLayer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %tool = alloca %struct._GimpTool*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %list = alloca %struct._GList*, align 8
  %draw_tool = alloca %struct._GimpDrawTool*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store %struct._GimpLayer* %layer, %struct._GimpLayer** %layer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_text_tool_set_layer, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.87

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %cmp12 = icmp eq %struct._GimpLayer* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %15 = bitcast %struct._GimpLayer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_layer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_text_tool_set_layer, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.87

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %28 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %29 = bitcast %struct._GimpLayer* %28 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_drawable_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call40)
  %30 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDrawable*
  %call42 = call i32 @gimp_text_tool_set_drawable(%struct._GimpTextTool* %27, %struct._GimpDrawable* %30, i32 1)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.87

if.then.44:                                       ; preds = %do.end.39
  %31 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %32 = bitcast %struct._GimpTextTool* %31 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_tool_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call46)
  %33 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpTool*
  store %struct._GimpTool* %33, %struct._GimpTool** %tool, align 8
  %34 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %35 = bitcast %struct._GimpLayer* %34 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_item_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call49)
  %36 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpItem*
  store %struct._GimpItem* %36, %struct._GimpItem** %item, align 8
  %37 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %37, i32 0, i32 1
  %38 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %38, i32 0, i32 1
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call53 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %39)
  store %struct._GimpContext* %call53, %struct._GimpContext** %context, align 8
  %40 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call54 = call i8* @gimp_context_get_display(%struct._GimpContext* %40)
  %41 = bitcast i8* %call54 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %41, %struct._GimpDisplay** %display, align 8
  %42 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool55 = icmp ne %struct._GimpDisplay* %42, null
  br i1 %tobool55, label %lor.lhs.false.56, label %if.then.60

lor.lhs.false.56:                                 ; preds = %if.then.44
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call57 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %43)
  %44 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call58 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %44)
  %cmp59 = icmp ne %struct._GimpImage* %call57, %call58
  br i1 %cmp59, label %if.then.60, label %if.end.72

if.then.60:                                       ; preds = %lor.lhs.false.56, %if.then.44
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  %45 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %tool_info62 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %45, i32 0, i32 1
  %46 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info62, align 8
  %gimp63 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %46, i32 0, i32 1
  %47 = load %struct._Gimp*, %struct._Gimp** %gimp63, align 8
  %call64 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %47)
  store %struct._GList* %call64, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.60
  %48 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool65 = icmp ne %struct._GList* %48, null
  br i1 %tobool65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %49, i32 0, i32 0
  %50 = load i8*, i8** %data, align 8
  %51 = bitcast i8* %50 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %51, %struct._GimpDisplay** %display, align 8
  %52 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call66 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %52)
  %53 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call67 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %53)
  %cmp68 = icmp eq %struct._GimpImage* %call66, %call67
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body
  %54 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %55 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %56 = bitcast %struct._GimpDisplay* %55 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %54, i8* %56)
  br label %for.end

if.end.70:                                        ; preds = %for.body
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool71 = icmp ne %struct._GList* %57, null
  br i1 %tobool71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %58 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %59, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.69, %for.cond
  br label %if.end.72

if.end.72:                                        ; preds = %for.end, %lor.lhs.false.56
  %60 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %61 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display73 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %61, i32 0, i32 4
  store %struct._GimpDisplay* %60, %struct._GimpDisplay** %display73, align 8
  %62 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display74 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %62, i32 0, i32 4
  %63 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display74, align 8
  %tobool75 = icmp ne %struct._GimpDisplay* %63, null
  br i1 %tobool75, label %if.then.76, label %if.end.86

if.then.76:                                       ; preds = %if.end.72
  %64 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %65 = bitcast %struct._GimpTool* %64 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_draw_tool_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call78)
  %66 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpDrawTool*
  store %struct._GimpDrawTool* %66, %struct._GimpDrawTool** %draw_tool, align 8
  %67 = load %struct._GimpLayer*, %struct._GimpLayer** %layer.addr, align 8
  %68 = bitcast %struct._GimpLayer* %67 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_drawable_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call80)
  %69 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpDrawable*
  %70 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %drawable = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %70, i32 0, i32 5
  store %struct._GimpDrawable* %69, %struct._GimpDrawable** %drawable, align 8
  %71 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %call82 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %71)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.76
  %72 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %72)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.then.76
  %73 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool, align 8
  %74 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %73, %struct._GimpDisplay* %74)
  %75 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_frame_item(%struct._GimpTextTool* %75)
  %76 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_start(%struct._GimpTextTool* %76)
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.72
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.9, %if.else.37, %if.end.86, %do.end.39
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_tool_set_drawable(%struct._GimpTextTool* %text_tool, %struct._GimpDrawable* %drawable, i32 %confirm) #3 {
entry:
  %retval = alloca i32, align 4
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %confirm.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %layer = alloca %struct._GimpTextLayer*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %confirm, i32* %confirm.addr, align 4
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %confirm_dialog = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 9
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %confirm_dialog1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 9
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm_dialog1, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %6 = bitcast %struct._GimpDrawable* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  %call5 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %7)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_text_tool_set_image(%struct._GimpTextTool* %8, %struct._GimpImage* %9)
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %11 = bitcast %struct._GimpDrawable* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_text_layer_get_type() #7
  store i64 %call7, i64* %__t, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.end.6
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %18 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %17, %18
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #8
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %21 = load i32, i32* %__r, align 4
  store i32 %21, i32* %tmp
  %22 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.42

land.lhs.true.18:                                 ; preds = %if.end.16
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %24 = bitcast %struct._GimpDrawable* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_text_layer_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpTextLayer*
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %25, i32 0, i32 1
  %26 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool21 = icmp ne %struct._GimpText* %26, null
  br i1 %tobool21, label %if.then.22, label %if.end.42

if.then.22:                                       ; preds = %land.lhs.true.18
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_text_layer_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpTextLayer*
  store %struct._GimpTextLayer* %29, %struct._GimpTextLayer** %layer, align 8
  %30 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %31 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer26 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %31, i32 0, i32 7
  %32 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer26, align 8
  %cmp27 = icmp eq %struct._GimpTextLayer* %30, %32
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.33

land.lhs.true.28:                                 ; preds = %if.then.22
  %33 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text29 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %33, i32 0, i32 1
  %34 = load %struct._GimpText*, %struct._GimpText** %text29, align 8
  %35 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text30 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %35, i32 0, i32 6
  %36 = load %struct._GimpText*, %struct._GimpText** %text30, align 8
  %cmp31 = icmp eq %struct._GimpText* %34, %36
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.28
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.28, %if.then.22
  %37 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %37, i32 0, i32 4
  %38 = load i32, i32* %modified, align 4
  %tobool34 = icmp ne i32 %38, 0
  br i1 %tobool34, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %if.end.33
  %39 = load i32, i32* %confirm.addr, align 4
  %tobool36 = icmp ne i32 %39, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.35
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %41 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  call void @gimp_text_tool_connect(%struct._GimpTextTool* %40, %struct._GimpTextLayer* %41, %struct._GimpText* null)
  %42 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_confirm_dialog(%struct._GimpTextTool* %42)
  store i32 1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.35
  br label %if.end.41

if.else.39:                                       ; preds = %if.end.33
  %43 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %44 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %45 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text40 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %45, i32 0, i32 1
  %46 = load %struct._GimpText*, %struct._GimpText** %text40, align 8
  call void @gimp_text_tool_connect(%struct._GimpTextTool* %43, %struct._GimpTextLayer* %44, %struct._GimpText* %46)
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true.18, %if.end.16
  %47 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_connect(%struct._GimpTextTool* %47, %struct._GimpTextLayer* null, %struct._GimpText* null)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.else.39, %if.then.37, %if.then.32
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #1

declare void @gimp_context_set_display(%struct._GimpContext*, i8*) #1

declare i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_stop(%struct._GimpDrawTool*) #1

declare void @gimp_draw_tool_start(%struct._GimpDrawTool*, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_frame_item(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 7
  %1 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %2 = bitcast %struct._GimpTextLayer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_layer_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
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
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_tool_frame_item, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %handle_rectangle_change_complete = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 11
  store i32 0, i32* %handle_rectangle_change_complete, align 4
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %16 = bitcast %struct._GimpTextTool* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpRectangleTool*
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer13 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 7
  %19 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer13, align 8
  %20 = bitcast %struct._GimpTextLayer* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  call void @gimp_rectangle_tool_frame_item(%struct._GimpRectangleTool* %17, %struct._GimpItem* %21)
  %22 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %handle_rectangle_change_complete16 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %22, i32 0, i32 11
  store i32 1, i32* %handle_rectangle_change_complete16, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gimp_text_tool_editor_start(%struct._GimpTextTool*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_tool_get_has_text_selection(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %4)
  ret i32 %call3
}

; Function Attrs: nounwind readnone
declare i64 @gtk_text_buffer_get_type() #2

declare i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_delete_selection(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 5
  %1 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer1, align 8
  %2 = bitcast %struct._GimpTextBuffer* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_buffer_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %3, %struct._GtkTextBuffer** %buffer, align 8
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call3 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call4 = call i32 @gtk_text_buffer_delete_selection(%struct._GtkTextBuffer* %5, i32 1, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_text_buffer_delete_selection(%struct._GtkTextBuffer*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_cut_clipboard(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_tool_cut_clipboard, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %14 = bitcast %struct._GimpTextTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %16)
  store %struct._GimpDisplayShell* %call13, %struct._GimpDisplayShell** %shell, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %18 = bitcast %struct._GimpDisplayShell* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget* %19, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call16, %struct._GtkClipboard** %clipboard, align 8
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %20, i32 0, i32 5
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %22 = bitcast %struct._GimpTextBuffer* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_text_buffer_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTextBuffer*
  %24 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  call void @gtk_text_buffer_cut_clipboard(%struct._GtkTextBuffer* %23, %struct._GtkClipboard* %24, i32 1)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget*, %struct._GdkAtom*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_text_buffer_cut_clipboard(%struct._GtkTextBuffer*, %struct._GtkClipboard*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_copy_clipboard(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_tool_copy_clipboard, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %14 = bitcast %struct._GimpTextTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %16)
  store %struct._GimpDisplayShell* %call13, %struct._GimpDisplayShell** %shell, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %18 = bitcast %struct._GimpDisplayShell* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget* %19, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call16, %struct._GtkClipboard** %clipboard, align 8
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %20, i32 0, i32 5
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %22 = bitcast %struct._GimpTextBuffer* %21 to i8*
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %24 = bitcast %struct._GimpTextTool* %23 to i8*
  %call17 = call i32 @g_signal_handlers_block_matched(i8* %22, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_begin_edit to i8*), i8* %24)
  %25 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer18 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %25, i32 0, i32 5
  %26 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer18, align 8
  %27 = bitcast %struct._GimpTextBuffer* %26 to i8*
  %28 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %29 = bitcast %struct._GimpTextTool* %28 to i8*
  %call19 = call i32 @g_signal_handlers_block_matched(i8* %27, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_end_edit to i8*), i8* %29)
  %30 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer20 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %30, i32 0, i32 5
  %31 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer20, align 8
  %32 = bitcast %struct._GimpTextBuffer* %31 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_text_buffer_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call21)
  %33 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTextBuffer*
  %34 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  call void @gtk_text_buffer_copy_clipboard(%struct._GtkTextBuffer* %33, %struct._GtkClipboard* %34)
  %35 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer23 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %35, i32 0, i32 5
  %36 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer23, align 8
  %37 = bitcast %struct._GimpTextBuffer* %36 to i8*
  %38 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %39 = bitcast %struct._GimpTextTool* %38 to i8*
  %call24 = call i32 @g_signal_handlers_unblock_matched(i8* %37, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_end_edit to i8*), i8* %39)
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer25 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %40, i32 0, i32 5
  %41 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer25, align 8
  %42 = bitcast %struct._GimpTextBuffer* %41 to i8*
  %43 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %44 = bitcast %struct._GimpTextTool* %43 to i8*
  %call26 = call i32 @g_signal_handlers_unblock_matched(i8* %42, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_begin_edit to i8*), i8* %44)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_buffer_begin_edit(%struct._GimpTextBuffer* %buffer, %struct._GimpTextTool* %text_tool) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_block_drawing(%struct._GimpTextTool* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_buffer_end_edit(%struct._GimpTextBuffer* %buffer, %struct._GimpTextTool* %text_tool) #3 {
entry:
  %buffer.addr = alloca %struct._GimpTextBuffer*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %string = alloca i8*, align 8
  store %struct._GimpTextBuffer* %buffer, %struct._GimpTextBuffer** %buffer.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 6
  %1 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool = icmp ne %struct._GimpText* %1, null
  br i1 %tobool, label %if.then, label %if.else.6

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call = call i32 @gimp_text_buffer_has_markup(%struct._GimpTextBuffer* %2)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call3 = call i8* @gimp_text_buffer_get_markup(%struct._GimpTextBuffer* %3)
  store i8* %call3, i8** %string, align 8
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %4, i32 0, i32 1
  %5 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %6 = bitcast %struct._GimpText* %5 to i8*
  %7 = load i8*, i8** %string, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %7, i8* null)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer.addr, align 8
  %call4 = call i8* @gimp_text_buffer_get_text(%struct._GimpTextBuffer* %8)
  store i8* %call4, i8** %string, align 8
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 1
  %10 = load %struct._GimpText*, %struct._GimpText** %proxy5, align 8
  %11 = bitcast %struct._GimpText* %10 to i8*
  %12 = load i8*, i8** %string, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* %12, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %13 = load i8*, i8** %string, align 8
  call void @g_free(i8* %13)
  br label %if.end.7

if.else.6:                                        ; preds = %entry
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_create_layer(%struct._GimpTextTool* %14, %struct._GimpText* null)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %if.end
  ret void
}

declare void @gtk_text_buffer_copy_clipboard(%struct._GtkTextBuffer*, %struct._GtkClipboard*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_paste_clipboard(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %clipboard = alloca %struct._GtkClipboard*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_tool_paste_clipboard, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %14 = bitcast %struct._GimpTextTool* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_tool_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %16)
  store %struct._GimpDisplayShell* %call13, %struct._GimpDisplayShell** %shell, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %18 = bitcast %struct._GimpDisplayShell* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call %struct._GtkClipboard* @gtk_widget_get_clipboard(%struct._GtkWidget* %19, %struct._GdkAtom* inttoptr (i64 69 to %struct._GdkAtom*))
  store %struct._GtkClipboard* %call16, %struct._GtkClipboard** %clipboard, align 8
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %20, i32 0, i32 5
  %21 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %22 = bitcast %struct._GimpTextBuffer* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_text_buffer_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkTextBuffer*
  %24 = load %struct._GtkClipboard*, %struct._GtkClipboard** %clipboard, align 8
  call void @gtk_text_buffer_paste_clipboard(%struct._GtkTextBuffer* %23, %struct._GtkClipboard* %24, %struct._GtkTextIter* null, i32 1)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_text_buffer_paste_clipboard(%struct._GtkTextBuffer*, %struct._GtkClipboard*, %struct._GtkTextIter*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_create_vectors(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_tool_create_vectors, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %13, i32 0, i32 6
  %14 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool11 = icmp ne %struct._GimpText* %14, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then.13

lor.lhs.false:                                    ; preds = %do.end
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %15, i32 0, i32 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool12 = icmp ne %struct._GimpImage* %16, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false, %do.end
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %17 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image15 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %17, i32 0, i32 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image15, align 8
  %19 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text16 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %19, i32 0, i32 6
  %20 = load %struct._GimpText*, %struct._GimpText** %text16, align 8
  %call17 = call %struct._GimpVectors* @gimp_text_vectors_new(%struct._GimpImage* %18, %struct._GimpText* %20)
  store %struct._GimpVectors* %call17, %struct._GimpVectors** %vectors, align 8
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 7
  %22 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %tobool18 = icmp ne %struct._GimpTextLayer* %22, null
  br i1 %tobool18, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.end.14
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer22 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %23, i32 0, i32 7
  %24 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer22, align 8
  %25 = bitcast %struct._GimpTextLayer* %24 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_item_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call23)
  %26 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %26, i32* %x, i32* %y)
  %27 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %28 = bitcast %struct._GimpVectors* %27 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #7
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call25)
  %29 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %y, align 4
  call void @gimp_item_translate(%struct._GimpItem* %29, i32 %30, i32 %31, i32 0)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.19, %if.end.14
  %32 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image28 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %32, i32 0, i32 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image28, align 8
  %34 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call29 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %33, %struct._GimpVectors* %34, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, i32 1)
  %35 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image30 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %35, i32 0, i32 8
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image30, align 8
  call void @gimp_image_flush(%struct._GimpImage* %36)
  br label %return

return:                                           ; preds = %if.end.27, %if.then.13, %if.else.9
  ret void
}

declare %struct._GimpVectors* @gimp_text_vectors_new(%struct._GimpImage*, %struct._GimpText*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #1

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_tool_create_vectors_warped(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %vectors0 = alloca %struct._GimpVectors*, align 8
  %vectors = alloca %struct._GimpVectors*, align 8
  %box_height = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_tool_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_text_tool_create_vectors_warped, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %13, i32 0, i32 6
  %14 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool11 = icmp ne %struct._GimpText* %14, null
  br i1 %tobool11, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %do.end
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %15, i32 0, i32 8
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool12 = icmp ne %struct._GimpImage* %16, null
  br i1 %tobool12, label %lor.lhs.false.13, label %if.then.15

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %17 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %17, i32 0, i32 7
  %18 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %tobool14 = icmp ne %struct._GimpTextLayer* %18, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %do.end
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false.13
  %19 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer17 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %19, i32 0, i32 7
  %20 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer17, align 8
  %21 = bitcast %struct._GimpTextLayer* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_item_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpItem*
  %call20 = call i32 @gimp_item_get_height(%struct._GimpItem* %22)
  %conv = sitofp i32 %call20 to double
  store double %conv, double* %box_height, align 8
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image21 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %23, i32 0, i32 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image21, align 8
  %call22 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %24)
  store %struct._GimpVectors* %call22, %struct._GimpVectors** %vectors0, align 8
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors0, align 8
  %tobool23 = icmp ne %struct._GimpVectors* %25, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.16
  br label %return

if.end.25:                                        ; preds = %if.end.16
  %26 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image26 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %26, i32 0, i32 8
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image26, align 8
  %28 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text27 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %28, i32 0, i32 6
  %29 = load %struct._GimpText*, %struct._GimpText** %text27, align 8
  %call28 = call %struct._GimpVectors* @gimp_text_vectors_new(%struct._GimpImage* %27, %struct._GimpText* %29)
  store %struct._GimpVectors* %call28, %struct._GimpVectors** %vectors, align 8
  %30 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors0, align 8
  %31 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %32 = load double, double* %box_height, align 8
  %mul = fmul double 5.000000e-01, %32
  call void @gimp_vectors_warp_vectors(%struct._GimpVectors* %30, %struct._GimpVectors* %31, double %mul)
  %33 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %34 = bitcast %struct._GimpVectors* %33 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_item_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call29)
  %35 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpItem*
  call void @gimp_item_set_visible(%struct._GimpItem* %35, i32 1, i32 0)
  %36 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image31 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %36, i32 0, i32 8
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image31, align 8
  %38 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call32 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %37, %struct._GimpVectors* %38, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, i32 1)
  %39 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image33 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %39, i32 0, i32 8
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image33, align 8
  call void @gimp_image_flush(%struct._GimpImage* %40)
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.15, %if.else.9
  ret void
}

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare void @gimp_vectors_warp_vectors(%struct._GimpVectors*, %struct._GimpVectors*, double) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_class_init(%struct._GimpTextToolClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTextToolClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tool_class = alloca %struct._GimpToolClass*, align 8
  %draw_tool_class = alloca %struct._GimpDrawToolClass*, align 8
  store %struct._GimpTextToolClass* %klass, %struct._GimpTextToolClass** %klass.addr, align 8
  %0 = load %struct._GimpTextToolClass*, %struct._GimpTextToolClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTextToolClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTextToolClass*, %struct._GimpTextToolClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTextToolClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_tool_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpToolClass*
  store %struct._GimpToolClass* %5, %struct._GimpToolClass** %tool_class, align 8
  %6 = load %struct._GimpTextToolClass*, %struct._GimpTextToolClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpTextToolClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_draw_tool_get_type() #7
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpDrawToolClass*
  store %struct._GimpDrawToolClass* %8, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_text_tool_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_text_tool_finalize, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_rectangle_tool_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_rectangle_tool_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %13 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %13, i32 0, i32 4
  store void (%struct._GimpTool*, i32, %struct._GimpDisplay*)* @gimp_text_tool_control, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %14 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %14, i32 0, i32 5
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_text_tool_button_press, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_press, align 8
  %15 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %motion = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %15, i32 0, i32 7
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_text_tool_motion, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %motion, align 8
  %16 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %button_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %16, i32 0, i32 6
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)* @gimp_text_tool_button_release, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*)** %button_release, align 8
  %17 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_press = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %17, i32 0, i32 8
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_text_tool_key_press, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_press, align 8
  %18 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %key_release = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %18, i32 0, i32 9
  store i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)* @gimp_text_tool_key_release, i32 (%struct._GimpTool*, %struct._GdkEventKey*, %struct._GimpDisplay*)** %key_release, align 8
  %19 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %oper_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %19, i32 0, i32 12
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)* @gimp_text_tool_oper_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*)** %oper_update, align 8
  %20 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %20, i32 0, i32 13
  store void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)* @gimp_text_tool_cursor_update, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %21 = load %struct._GimpToolClass*, %struct._GimpToolClass** %tool_class, align 8
  %get_popup = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %21, i32 0, i32 14
  store %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)* @gimp_text_tool_get_popup, %struct._GimpUIManager* (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*, i8**)** %get_popup, align 8
  %22 = load %struct._GimpDrawToolClass*, %struct._GimpDrawToolClass** %draw_tool_class, align 8
  %draw = getelementptr inbounds %struct._GimpDrawToolClass, %struct._GimpDrawToolClass* %22, i32 0, i32 1
  store void (%struct._GimpDrawTool*)* @gimp_text_tool_draw, void (%struct._GimpDrawTool*)** %draw, align 8
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  call void @gimp_rectangle_tool_install_properties(%struct._GObjectClass* %23)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %4 = bitcast %struct._GimpTextTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  %call4 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %5)
  %6 = bitcast %struct._GimpToolOptions* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_text_options_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %7, %struct._GimpTextOptions** %options, align 8
  %8 = load i8*, i8** @gimp_text_tool_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 9
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i8*, i8** @gimp_text_tool_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call8 to %struct._GObjectClass*
  %constructed9 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 9
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed9, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @gimp_rectangle_tool_constructor(%struct._GObject* %17)
  %call10 = call i64 @gimp_text_get_type() #7
  %call11 = call i8* (i64, i8*, ...) @g_object_new(i64 %call10, i8* null)
  %18 = bitcast i8* %call11 to %struct._GimpText*
  %19 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %19, i32 0, i32 1
  store %struct._GimpText* %18, %struct._GimpText** %proxy, align 8
  %20 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy12 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 1
  %22 = load %struct._GimpText*, %struct._GimpText** %proxy12, align 8
  call void @gimp_text_options_connect_text(%struct._GimpTextOptions* %20, %struct._GimpText* %22)
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy13 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %23, i32 0, i32 1
  %24 = load %struct._GimpText*, %struct._GimpText** %proxy13, align 8
  %25 = bitcast %struct._GimpText* %24 to i8*
  %26 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %27 = bitcast %struct._GimpTextTool* %26 to i8*
  %call14 = call i64 @g_signal_connect_object(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_proxy_notify to void ()*), i8* %27, i32 0)
  %28 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %29 = bitcast %struct._GimpTextOptions* %28 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 0, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 1
  %4 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %tobool = icmp ne %struct._GimpText* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 1
  %6 = load %struct._GimpText*, %struct._GimpText** %proxy2, align 8
  %7 = bitcast %struct._GimpText* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy3 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %8, i32 0, i32 1
  store %struct._GimpText* null, %struct._GimpText** %proxy3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 5
  %10 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %tobool4 = icmp ne %struct._GimpTextBuffer* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer6 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %11, i32 0, i32 5
  %12 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer6, align 8
  %13 = bitcast %struct._GimpTextBuffer* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer7 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 5
  store %struct._GimpTextBuffer* null, %struct._GimpTextBuffer** %buffer7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_editor_finalize(%struct._GimpTextTool* %15)
  %16 = load i8*, i8** @gimp_text_tool_parent_class, align 8
  %17 = bitcast i8* %16 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %17, i64 80)
  %18 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 6
  %19 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %19(%struct._GObject* %20)
  ret void
}

declare void @gimp_rectangle_tool_set_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

declare void @gimp_rectangle_tool_get_property(%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_control(%struct._GimpTool* %tool, i32 %action, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %action.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load i32, i32* %action.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_editor_halt(%struct._GimpTextTool* %4)
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %call3 = call i32 @gimp_text_tool_set_drawable(%struct._GimpTextTool* %5, %struct._GimpDrawable* null, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = load i32, i32* %action.addr, align 4
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_control(%struct._GimpTool* %6, i32 %7, %struct._GimpDisplay* %8)
  %9 = load i8*, i8** @gimp_text_tool_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call i64 @gimp_tool_get_type() #7
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call4)
  %11 = bitcast %struct._GTypeClass* %call5 to %struct._GimpToolClass*
  %control = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %11, i32 0, i32 4
  %12 = load void (%struct._GimpTool*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, i32, %struct._GimpDisplay*)** %control, align 8
  %13 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %14 = load i32, i32* %action.addr, align 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %12(%struct._GimpTool* %13, i32 %14, %struct._GimpDisplay* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_button_press(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %press_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %press_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %text = alloca %struct._GimpText*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x26 = alloca double, align 8
  %y29 = alloca double, align 8
  %text_layer = alloca %struct._GimpTextLayer*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %item97 = alloca %struct._GimpItem*, align 8
  %x100 = alloca double, align 8
  %y105 = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %press_type, i32* %press_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %5, %struct._GimpRectangleTool** %rect_tool, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call4 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %6)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %text5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 6
  %8 = load %struct._GimpText*, %struct._GimpText** %text5, align 8
  store %struct._GimpText* %8, %struct._GimpText** %text, align 8
  %9 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %10 = bitcast %struct._GimpTool* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_draw_tool_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %11)
  %12 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %12, i32 0, i32 4
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display8, align 8
  %tobool = icmp ne %struct._GimpDisplay* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display9 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %14, i32 0, i32 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp ne %struct._GimpDisplay* %15, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_tool_control(%struct._GimpTool* %17, i32 2, %struct._GimpDisplay* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %19 = load i32, i32* %press_type.addr, align 4
  %cmp10 = icmp eq i32 %19, 0
  br i1 %cmp10, label %if.then.11, label %if.end.92

if.then.11:                                       ; preds = %if.end
  %20 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %20, i32 0, i32 3
  %21 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_activate(%struct._GimpToolControl* %21)
  %22 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_reset_im_context(%struct._GimpTextTool* %22)
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %selecting = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %23, i32 0, i32 17
  store i32 0, i32* %selecting, align 4
  %24 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %25, i32 0, i32 0
  %26 = load double, double* %x, align 8
  %27 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %27, i32 0, i32 1
  %28 = load double, double* %y, align 8
  %call12 = call i32 @gimp_rectangle_tool_point_in_rectangle(%struct._GimpRectangleTool* %24, double %26, double %28)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %if.then.11
  %29 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %moving = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %29, i32 0, i32 4
  %30 = load i32, i32* %moving, align 4
  %tobool15 = icmp ne i32 %30, 0
  br i1 %tobool15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.14
  %31 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %31, i32 1)
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true.14, %if.then.11
  %32 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %33 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %34 = load i32, i32* %time.addr, align 4
  %35 = load i32, i32* %state.addr, align 4
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_button_press(%struct._GimpTool* %32, %struct._GimpCoords* %33, i32 %34, i32 %35, %struct._GimpDisplay* %36)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %37 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call18 = call i32 @gimp_rectangle_tool_get_function(%struct._GimpRectangleTool* %37)
  %cmp19 = icmp ne i32 %call18, 2
  br i1 %cmp19, label %if.then.20, label %if.end.56

if.then.20:                                       ; preds = %if.end.17
  %38 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %38, i32 0, i32 7
  %39 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %tobool21 = icmp ne %struct._GimpTextLayer* %39, null
  br i1 %tobool21, label %if.then.22, label %if.else.52

if.then.22:                                       ; preds = %if.then.20
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layer23 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %40, i32 0, i32 7
  %41 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer23, align 8
  %42 = bitcast %struct._GimpTextLayer* %41 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_item_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call24)
  %43 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpItem*
  store %struct._GimpItem* %43, %struct._GimpItem** %item, align 8
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x27 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %44, i32 0, i32 0
  %45 = load double, double* %x27, align 8
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call28 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %46)
  %conv = sitofp i32 %call28 to double
  %sub = fsub double %45, %conv
  store double %sub, double* %x26, align 8
  %47 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y30 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %47, i32 0, i32 1
  %48 = load double, double* %y30, align 8
  %49 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call31 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %49)
  %conv32 = sitofp i32 %call31 to double
  %sub33 = fsub double %48, %conv32
  store double %sub33, double* %y29, align 8
  %50 = load double, double* %x26, align 8
  %cmp34 = fcmp olt double %50, 0.000000e+00
  br i1 %cmp34, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.22
  %51 = load double, double* %x26, align 8
  %52 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call36 = call i32 @gimp_item_get_width(%struct._GimpItem* %52)
  %conv37 = sitofp i32 %call36 to double
  %cmp38 = fcmp oge double %51, %conv37
  br i1 %cmp38, label %if.then.48, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %53 = load double, double* %y29, align 8
  %cmp41 = fcmp olt double %53, 0.000000e+00
  br i1 %cmp41, label %if.then.48, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.40
  %54 = load double, double* %y29, align 8
  %55 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call44 = call i32 @gimp_item_get_height(%struct._GimpItem* %55)
  %conv45 = sitofp i32 %call44 to double
  %cmp46 = fcmp oge double %54, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.40, %lor.lhs.false, %if.then.22
  %56 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %57 = bitcast %struct._GimpTool* %56 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_draw_tool_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call49)
  %58 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %58)
  br label %return

if.end.51:                                        ; preds = %lor.lhs.false.43
  br label %if.end.55

if.else.52:                                       ; preds = %if.then.20
  %59 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %60 = bitcast %struct._GimpTool* %59 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_draw_tool_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call53)
  %61 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %61)
  br label %return

if.end.55:                                        ; preds = %if.end.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.17
  %62 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %moving57 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %62, i32 0, i32 4
  %63 = load i32, i32* %moving57, align 4
  %tobool58 = icmp ne i32 %63, 0
  br i1 %tobool58, label %if.end.91, label %land.lhs.true.59

land.lhs.true.59:                                 ; preds = %if.end.56
  %64 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call60 = call i32 @gimp_rectangle_tool_get_function(%struct._GimpRectangleTool* %64)
  %cmp61 = icmp eq i32 %call60, 2
  br i1 %cmp61, label %if.then.63, label %if.end.91

if.then.63:                                       ; preds = %land.lhs.true.59
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %66 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x64 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %66, i32 0, i32 0
  %67 = load double, double* %x64, align 8
  %conv65 = fptosi double %67 to i32
  %68 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y66 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %68, i32 0, i32 1
  %69 = load double, double* %y66, align 8
  %conv67 = fptosi double %69 to i32
  %call68 = call %struct._GimpTextLayer* @gimp_image_pick_text_layer(%struct._GimpImage* %65, i32 %conv65, i32 %conv67)
  store %struct._GimpTextLayer* %call68, %struct._GimpTextLayer** %text_layer, align 8
  %70 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %tobool69 = icmp ne %struct._GimpTextLayer* %70, null
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.90

land.lhs.true.70:                                 ; preds = %if.then.63
  %71 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %72 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layer71 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %72, i32 0, i32 7
  %73 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer71, align 8
  %cmp72 = icmp ne %struct._GimpTextLayer* %71, %73
  br i1 %cmp72, label %if.then.74, label %if.end.90

if.then.74:                                       ; preds = %land.lhs.true.70
  %74 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %image75 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %74, i32 0, i32 8
  %75 = load %struct._GimpImage*, %struct._GimpImage** %image75, align 8
  %76 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp76 = icmp eq %struct._GimpImage* %75, %76
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.74
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %78 = bitcast %struct._GimpImage* %77 to i8*
  %79 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %80 = bitcast %struct._GimpTextTool* %79 to i8*
  %call79 = call i32 @g_signal_handlers_block_matched(i8* %78, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpTextTool*)* @gimp_text_tool_layer_changed to i8*), i8* %80)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.74
  %81 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %82 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %text_layer, align 8
  %83 = bitcast %struct._GimpTextLayer* %82 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_layer_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call81)
  %84 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpLayer*
  %call83 = call %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage* %81, %struct._GimpLayer* %84)
  %85 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %image84 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %85, i32 0, i32 8
  %86 = load %struct._GimpImage*, %struct._GimpImage** %image84, align 8
  %87 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp85 = icmp eq %struct._GimpImage* %86, %87
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.end.80
  %88 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %89 = bitcast %struct._GimpImage* %88 to i8*
  %90 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %91 = bitcast %struct._GimpTextTool* %90 to i8*
  %call88 = call i32 @g_signal_handlers_unblock_matched(i8* %89, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpTextTool*)* @gimp_text_tool_layer_changed to i8*), i8* %91)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %if.end.80
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %land.lhs.true.70, %if.then.63
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %land.lhs.true.59, %if.end.56
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end
  %92 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %93 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call93 = call i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage* %92, %struct._GimpCoords* %93, i32 0, i32 0)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.143

if.then.95:                                       ; preds = %if.end.92
  %94 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call96 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %94)
  store %struct._GimpDrawable* %call96, %struct._GimpDrawable** %drawable, align 8
  %95 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %96 = bitcast %struct._GimpDrawable* %95 to %struct._GTypeInstance*
  %call98 = call i64 @gimp_item_get_type() #7
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call98)
  %97 = bitcast %struct._GTypeInstance* %call99 to %struct._GimpItem*
  store %struct._GimpItem* %97, %struct._GimpItem** %item97, align 8
  %98 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x101 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %98, i32 0, i32 0
  %99 = load double, double* %x101, align 8
  %100 = load %struct._GimpItem*, %struct._GimpItem** %item97, align 8
  %call102 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %100)
  %conv103 = sitofp i32 %call102 to double
  %sub104 = fsub double %99, %conv103
  store double %sub104, double* %x100, align 8
  %101 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y106 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %101, i32 0, i32 1
  %102 = load double, double* %y106, align 8
  %103 = load %struct._GimpItem*, %struct._GimpItem** %item97, align 8
  %call107 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %103)
  %conv108 = sitofp i32 %call107 to double
  %sub109 = fsub double %102, %conv108
  store double %sub109, double* %y105, align 8
  %104 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %105 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %call110 = call i32 @gimp_text_tool_set_drawable(%struct._GimpTextTool* %104, %struct._GimpDrawable* %105, i32 1)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.112, label %if.end.142

if.then.112:                                      ; preds = %if.then.95
  %106 = load i32, i32* %press_type.addr, align 4
  %cmp113 = icmp eq i32 %106, 0
  br i1 %cmp113, label %if.then.115, label %if.end.129

if.then.115:                                      ; preds = %if.then.112
  %107 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call116 = call i32 @gimp_rectangle_tool_get_function(%struct._GimpRectangleTool* %107)
  %cmp117 = icmp eq i32 %call116, 2
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.then.115
  %108 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  call void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool* %108, i32 1)
  %109 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_frame_item(%struct._GimpTextTool* %109)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.then.115
  %110 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %text121 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %110, i32 0, i32 6
  %111 = load %struct._GimpText*, %struct._GimpText** %text121, align 8
  %tobool122 = icmp ne %struct._GimpText* %111, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.end.128

land.lhs.true.123:                                ; preds = %if.end.120
  %112 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %text124 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %112, i32 0, i32 6
  %113 = load %struct._GimpText*, %struct._GimpText** %text124, align 8
  %114 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %cmp125 = icmp ne %struct._GimpText* %113, %114
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %land.lhs.true.123
  %115 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_editor_start(%struct._GimpTextTool* %115)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true.123, %if.end.120
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.112
  %116 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %text130 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %116, i32 0, i32 6
  %117 = load %struct._GimpText*, %struct._GimpText** %text130, align 8
  %tobool131 = icmp ne %struct._GimpText* %117, null
  br i1 %tobool131, label %land.lhs.true.132, label %if.else.137

land.lhs.true.132:                                ; preds = %if.end.129
  %118 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %moving133 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %118, i32 0, i32 4
  %119 = load i32, i32* %moving133, align 4
  %tobool134 = icmp ne i32 %119, 0
  br i1 %tobool134, label %if.else.137, label %if.then.135

if.then.135:                                      ; preds = %land.lhs.true.132
  %120 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %selecting136 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %120, i32 0, i32 17
  store i32 1, i32* %selecting136, align 4
  %121 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %122 = load double, double* %x100, align 8
  %123 = load double, double* %y105, align 8
  %124 = load i32, i32* %press_type.addr, align 4
  call void @gimp_text_tool_editor_button_press(%struct._GimpTextTool* %121, double %122, double %123, i32 %124)
  br label %if.end.139

if.else.137:                                      ; preds = %land.lhs.true.132, %if.end.129
  %125 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %selecting138 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %125, i32 0, i32 17
  store i32 0, i32* %selecting138, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.137, %if.then.135
  %126 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %127 = bitcast %struct._GimpTool* %126 to %struct._GTypeInstance*
  %call140 = call i64 @gimp_draw_tool_get_type() #7
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call140)
  %128 = bitcast %struct._GTypeInstance* %call141 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %128)
  br label %return

if.end.142:                                       ; preds = %if.then.95
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.end.92
  %129 = load i32, i32* %press_type.addr, align 4
  %cmp144 = icmp eq i32 %129, 0
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.143
  %130 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %text_box_fixed = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %130, i32 0, i32 12
  store i32 0, i32* %text_box_fixed, align 4
  %131 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_connect(%struct._GimpTextTool* %131, %struct._GimpTextLayer* null, %struct._GimpText* null)
  %132 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_editor_start(%struct._GimpTextTool* %132)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.end.143
  %133 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %134 = bitcast %struct._GimpTool* %133 to %struct._GTypeInstance*
  %call148 = call i64 @gimp_draw_tool_get_type() #7
  %call149 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call148)
  %135 = bitcast %struct._GTypeInstance* %call149 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %135)
  br label %return

return:                                           ; preds = %if.end.147, %if.end.139, %if.else.52, %if.then.48
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_motion(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %selecting = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 17
  %4 = load i32, i32* %selecting, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %7 = load i32, i32* %time.addr, align 4
  %8 = load i32, i32* %state.addr, align 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_motion(%struct._GimpTool* %5, %struct._GimpCoords* %6, i32 %7, i32 %8, %struct._GimpDisplay* %9)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %10, i32 0, i32 7
  %11 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %12 = bitcast %struct._GimpTextLayer* %11 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call2)
  %13 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %13, %struct._GimpItem** %item, align 8
  %14 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %14, i32 0, i32 0
  %15 = load double, double* %x4, align 8
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call5 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %16)
  %conv = sitofp i32 %call5 to double
  %sub = fsub double %15, %conv
  store double %sub, double* %x, align 8
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %17, i32 0, i32 1
  %18 = load double, double* %y6, align 8
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call7 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %19)
  %conv8 = sitofp i32 %call7 to double
  %sub9 = fsub double %18, %conv8
  store double %sub9, double* %y, align 8
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %21 = load double, double* %x, align 8
  %22 = load double, double* %y, align 8
  call void @gimp_text_tool_editor_motion(%struct._GimpTextTool* %20, double %21, double %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_button_release(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %time, i32 %state, i32 %release_type, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %release_type.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 %release_type, i32* %release_type.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %2, %struct._GimpRectangleTool** %rect_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_text_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %5, %struct._GimpTextTool** %text_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 3
  %7 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_halt(%struct._GimpToolControl* %7)
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %selecting = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %8, i32 0, i32 17
  %9 = load i32, i32* %selecting, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %10, i32 0, i32 5
  %11 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %12 = bitcast %struct._GimpTextBuffer* %11 to i8*
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %14 = bitcast %struct._GimpTextTool* %13 to i8*
  %call4 = call i32 @g_signal_handlers_block_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_begin_edit to i8*), i8* %14)
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %15, i32 0, i32 5
  %16 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer5, align 8
  %17 = bitcast %struct._GimpTextBuffer* %16 to i8*
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %19 = bitcast %struct._GimpTextTool* %18 to i8*
  %call6 = call i32 @g_signal_handlers_block_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_end_edit to i8*), i8* %19)
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_editor_button_release(%struct._GimpTextTool* %20)
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer7 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 5
  %22 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer7, align 8
  %23 = bitcast %struct._GimpTextBuffer* %22 to i8*
  %24 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %25 = bitcast %struct._GimpTextTool* %24 to i8*
  %call8 = call i32 @g_signal_handlers_unblock_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_end_edit to i8*), i8* %25)
  %26 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer9 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %26, i32 0, i32 5
  %27 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer9, align 8
  %28 = bitcast %struct._GimpTextBuffer* %27 to i8*
  %29 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %30 = bitcast %struct._GimpTextTool* %29 to i8*
  %call10 = call i32 @g_signal_handlers_unblock_matched(i8* %28, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_begin_edit to i8*), i8* %30)
  %31 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %selecting11 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %31, i32 0, i32 17
  store i32 0, i32* %selecting11, align 4
  %32 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %handle_rectangle_change_complete = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %32, i32 0, i32 11
  store i32 0, i32* %handle_rectangle_change_complete, align 4
  %33 = load i32, i32* %release_type.addr, align 4
  %cmp = icmp eq i32 %33, 1
  br i1 %cmp, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  store i32 0, i32* %release_type.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  br label %if.end.36

if.else:                                          ; preds = %entry
  %34 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %moving = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %34, i32 0, i32 4
  %35 = load i32, i32* %moving, align 4
  %tobool13 = icmp ne i32 %35, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  br label %if.end.35

if.else.15:                                       ; preds = %if.else
  %36 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call16 = call i32 @gimp_rectangle_tool_get_function(%struct._GimpRectangleTool* %36)
  %cmp17 = icmp eq i32 %call16, 1
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.15
  %37 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %handle_rectangle_change_complete19 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %37, i32 0, i32 11
  store i32 0, i32* %handle_rectangle_change_complete19, align 4
  br label %if.end.34

if.else.20:                                       ; preds = %if.else.15
  %38 = load i32, i32* %release_type.addr, align 4
  %cmp21 = icmp eq i32 %38, 1
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else.20
  %39 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_editor_halt(%struct._GimpTextTool* %39)
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %handle_rectangle_change_complete23 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %40, i32 0, i32 11
  store i32 0, i32* %handle_rectangle_change_complete23, align 4
  br label %if.end.33

if.else.24:                                       ; preds = %if.else.20
  %41 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %42 = bitcast %struct._GimpTextTool* %41 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32* %x1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32* %y1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32* %x2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %y2, i8* null)
  %43 = load i32, i32* %release_type.addr, align 4
  %cmp25 = icmp eq i32 %43, 2
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.24
  %44 = load i32, i32* %x2, align 4
  %45 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %44, %45
  %cmp26 = icmp slt i32 %sub, 3
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %46 = load i32, i32* %y2, align 4
  %47 = load i32, i32* %y1, align 4
  %sub28 = sub nsw i32 %46, %47
  %cmp29 = icmp slt i32 %sub28, 3
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %lor.lhs.false.27, %lor.lhs.false, %if.else.24
  %48 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %48, i32 0, i32 1
  %49 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %50 = bitcast %struct._GimpText* %49 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 0, i8* null)
  %51 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %handle_rectangle_change_complete31 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %51, i32 0, i32 11
  store i32 0, i32* %handle_rectangle_change_complete31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %lor.lhs.false.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.22
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.18
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.14
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  %52 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %53 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %54 = load i32, i32* %time.addr, align 4
  %55 = load i32, i32* %state.addr, align 4
  %56 = load i32, i32* %release_type.addr, align 4
  %57 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_button_release(%struct._GimpTool* %52, %struct._GimpCoords* %53, i32 %54, i32 %55, i32 %56, %struct._GimpDisplay* %57)
  %58 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %handle_rectangle_change_complete37 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %58, i32 0, i32 11
  store i32 1, i32* %handle_rectangle_change_complete37, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_tool_key_press(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %cmp = icmp eq %struct._GimpDisplay* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %7 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %call3 = call i32 @gimp_text_tool_editor_key_press(%struct._GimpTextTool* %6, %struct._GdkEventKey* %7)
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_tool_key_release(%struct._GimpTool* %tool, %struct._GdkEventKey* %kevent, %struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTool*, align 8
  %kevent.addr = alloca %struct._GdkEventKey*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GdkEventKey* %kevent, %struct._GdkEventKey** %kevent.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %4 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %4, i32 0, i32 4
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %cmp = icmp eq %struct._GimpDisplay* %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %7 = load %struct._GdkEventKey*, %struct._GdkEventKey** %kevent.addr, align 8
  %call3 = call i32 @gimp_text_tool_editor_key_release(%struct._GimpTextTool* %6, %struct._GdkEventKey* %7)
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_oper_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, i32 %proximity, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %5, %struct._GimpRectangleTool** %rect_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %8 = load i32, i32* %state.addr, align 4
  %9 = load i32, i32* %proximity.addr, align 4
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_oper_update(%struct._GimpTool* %6, %struct._GimpCoords* %7, i32 %8, i32 %9, %struct._GimpDisplay* %10)
  %11 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %call4 = call i32 @gimp_rectangle_tool_get_function(%struct._GimpRectangleTool* %11)
  %cmp = icmp eq i32 %call4, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %12 = load i32, i32* %state.addr, align 4
  %and = and i32 %12, 8
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %13 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %moving = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 4
  store i32 %land.ext, i32* %moving, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_cursor_update(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display) #3 {
entry:
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %0, i32 0, i32 4
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp = icmp eq %struct._GimpDisplay* %1, %2
  br i1 %cmp, label %if.then, label %if.else.9

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %4 = bitcast %struct._GimpTool* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %5, %struct._GimpTextTool** %text_tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %7 = bitcast %struct._GimpTool* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpRectangleTool*
  %9 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %9, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %11 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %call5 = call i32 @gimp_rectangle_tool_point_in_rectangle(%struct._GimpRectangleTool* %8, double %10, double %12)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %moving = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %13, i32 0, i32 4
  %14 = load i32, i32* %moving, align 4
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 3
  %16 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control, align 8
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %16, i32 152)
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control8 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 3
  %18 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control8, align 8
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %18, i32 0)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %19 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %21 = load i32, i32* %state.addr, align 4
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_rectangle_tool_cursor_update(%struct._GimpTool* %19, %struct._GimpCoords* %20, i32 %21, %struct._GimpDisplay* %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %if.end.12

if.else.9:                                        ; preds = %entry
  %23 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control10 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %23, i32 0, i32 3
  %24 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control10, align 8
  call void @gimp_tool_control_set_cursor(%struct._GimpToolControl* %24, i32 152)
  %25 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %control11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %25, i32 0, i32 3
  %26 = load %struct._GimpToolControl*, %struct._GimpToolControl** %control11, align 8
  call void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl* %26, i32 0)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.9, %if.end
  %27 = load i8*, i8** @gimp_text_tool_parent_class, align 8
  %28 = bitcast i8* %27 to %struct._GTypeClass*
  %call13 = call i64 @gimp_tool_get_type() #7
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %28, i64 %call13)
  %29 = bitcast %struct._GTypeClass* %call14 to %struct._GimpToolClass*
  %cursor_update = getelementptr inbounds %struct._GimpToolClass, %struct._GimpToolClass* %29, i32 0, i32 13
  %30 = load void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)*, void (%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*)** %cursor_update, align 8
  %31 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %32 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %33 = load i32, i32* %state.addr, align 4
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void %30(%struct._GimpTool* %31, %struct._GimpCoords* %32, i32 %33, %struct._GimpDisplay* %34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpUIManager* @gimp_text_tool_get_popup(%struct._GimpTool* %tool, %struct._GimpCoords* %coords, i32 %state, %struct._GimpDisplay* %display, i8** %ui_path) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %tool.addr = alloca %struct._GimpTool*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %state.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %ui_path.addr = alloca i8**, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %dialog_factory = alloca %struct._GimpDialogFactory*, align 8
  %im_menu = alloca %struct._GtkWidget*, align 8
  %children = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTool* %tool, %struct._GimpTool** %tool.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i8** %ui_path, i8*** %ui_path.addr, align 8
  %0 = load %struct._GimpTool*, %struct._GimpTool** %tool.addr, align 8
  %1 = bitcast %struct._GimpTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %4 = bitcast %struct._GimpTextTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpRectangleTool*
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 0
  %7 = load double, double* %x, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 1
  %9 = load double, double* %y, align 8
  %call4 = call i32 @gimp_rectangle_tool_point_in_rectangle(%struct._GimpRectangleTool* %5, double %7, double %9)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end.43

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %ui_manager = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %10, i32 0, i32 10
  %11 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool5 = icmp ne %struct._GimpUIManager* %11, null
  br i1 %tobool5, label %if.end.40, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %call7 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  store %struct._GimpDialogFactory* %call7, %struct._GimpDialogFactory** %dialog_factory, align 8
  %12 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %call8 = call %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory* %12)
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %14 = bitcast %struct._GimpTextTool* %13 to i8*
  %call9 = call %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory* %call8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* %14, i32 0)
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %ui_manager10 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %15, i32 0, i32 10
  store %struct._GimpUIManager* %call9, %struct._GimpUIManager** %ui_manager10, align 8
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %ui_manager11 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 10
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager11, align 8
  %18 = bitcast %struct._GimpUIManager* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_ui_manager_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkUIManager*
  %call14 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0))
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %im_menu, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %im_menu, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %21, %struct._GTypeInstance** %__inst, align 8
  %call15 = call i64 @gtk_menu_item_get_type() #7
  store i64 %call15, i64* %__t, align 8
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool16 = icmp ne %struct._GTypeInstance* %22, null
  br i1 %tobool16, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %if.then.6
  store i32 0, i32* %__r, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.then.6
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool18 = icmp ne %struct._GTypeClass* %24, null
  br i1 %tobool18, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.else
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %26, i32 0, i32 0
  %27 = load i64, i64* %g_type, align 8
  %28 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %27, %28
  br i1 %cmp, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.21:                                       ; preds = %land.lhs.true, %if.else
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %30 = load i64, i64* %__t, align 8
  %call22 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %29, i64 %30) #8
  store i32 %call22, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.17
  %31 = load i32, i32* %__r, align 4
  store i32 %31, i32* %tmp
  %32 = load i32, i32* %tmp
  %tobool24 = icmp ne i32 %32, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.23
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %im_menu, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_menu_item_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkMenuItem*
  %call28 = call %struct._GtkWidget* @gtk_menu_item_get_submenu(%struct._GtkMenuItem* %35)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %im_menu, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.end.23
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %im_menu, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_container_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call30)
  %38 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkContainer*
  %call32 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %38)
  store %struct._GList* %call32, %struct._GList** %children, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.29
  %39 = load %struct._GList*, %struct._GList** %children, align 8
  %tobool33 = icmp ne %struct._GList* %39, null
  br i1 %tobool33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load %struct._GList*, %struct._GList** %children, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 0
  %41 = load i8*, i8** %data, align 8
  %42 = bitcast i8* %41 to %struct._GtkWidget*
  call void @gtk_widget_hide(%struct._GtkWidget* %42)
  %43 = load %struct._GList*, %struct._GList** %children, align 8
  %44 = load %struct._GList*, %struct._GList** %children, align 8
  %data34 = getelementptr inbounds %struct._GList, %struct._GList* %44, i32 0, i32 0
  %45 = load i8*, i8** %data34, align 8
  %call35 = call %struct._GList* @g_list_remove(%struct._GList* %43, i8* %45)
  store %struct._GList* %call35, %struct._GList** %children, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %im_context = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %46, i32 0, i32 21
  %47 = load %struct._GtkIMContext*, %struct._GtkIMContext** %im_context, align 8
  %48 = bitcast %struct._GtkIMContext* %47 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_im_multicontext_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call36)
  %49 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkIMMulticontext*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %im_menu, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_menu_shell_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call38)
  %52 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkMenuShell*
  call void @gtk_im_multicontext_append_menuitems(%struct._GtkIMMulticontext* %49, %struct._GtkMenuShell* %52)
  br label %if.end.40

if.end.40:                                        ; preds = %while.end, %if.then
  %53 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %ui_manager41 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %53, i32 0, i32 10
  %54 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager41, align 8
  %55 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %56 = bitcast %struct._GimpTextTool* %55 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %54, i8* %56)
  %57 = load i8**, i8*** %ui_path.addr, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8** %57, align 8
  %58 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %ui_manager42 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %58, i32 0, i32 10
  %59 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager42, align 8
  store %struct._GimpUIManager* %59, %struct._GimpUIManager** %retval
  br label %return

if.end.43:                                        ; preds = %entry
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.end.40
  %60 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %60
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_draw(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %item = alloca %struct._GimpCanvasItem*, align 8
  %cursor_rect = alloca %struct._PangoRectangle, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %overwrite = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %4 = bitcast %struct._GimpTextTool* %3 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 1, i8* null)
  %5 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_rectangle_tool_draw(%struct._GimpDrawTool* %5, %struct._GimpCanvasGroup* null)
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %text = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %6, i32 0, i32 6
  %7 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool = icmp ne %struct._GimpText* %7, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %8, i32 0, i32 7
  %9 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %tobool2 = icmp ne %struct._GimpTextLayer* %9, null
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layer4 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %10, i32 0, i32 7
  %11 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer4, align 8
  %text5 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %11, i32 0, i32 1
  %12 = load %struct._GimpText*, %struct._GimpText** %text5, align 8
  %tobool6 = icmp ne %struct._GimpText* %12, null
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_editor_update_im_rect(%struct._GimpTextTool* %13)
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %call7 = call i32 @gimp_text_tool_ensure_layout(%struct._GimpTextTool* %14)
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %15, i32 0, i32 5
  %16 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %17 = bitcast %struct._GimpTextBuffer* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_text_buffer_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTextBuffer*
  %call10 = call i32 @gtk_text_buffer_get_has_selection(%struct._GtkTextBuffer* %18)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %19 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_text_tool_draw_selection(%struct._GimpDrawTool* %19)
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %overwrite_mode = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 27
  %22 = load i32, i32* %overwrite_mode, align 4
  call void @gimp_text_tool_editor_get_cursor_rect(%struct._GimpTextTool* %20, i32 %22, %struct._PangoRectangle* %cursor_rect)
  %23 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layer13 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %23, i32 0, i32 7
  %24 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer13, align 8
  %25 = bitcast %struct._GimpTextLayer* %24 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_item_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call14)
  %26 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %26, i32* %off_x, i32* %off_y)
  %27 = load i32, i32* %off_x, align 4
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %cursor_rect, i32 0, i32 0
  %28 = load i32, i32* %x, align 4
  %add = add nsw i32 %28, %27
  store i32 %add, i32* %x, align 4
  %29 = load i32, i32* %off_y, align 4
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %cursor_rect, i32 0, i32 1
  %30 = load i32, i32* %y, align 4
  %add16 = add nsw i32 %30, %29
  store i32 %add16, i32* %y, align 4
  %31 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %overwrite_mode17 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %31, i32 0, i32 27
  %32 = load i32, i32* %overwrite_mode17, align 4
  %tobool18 = icmp ne i32 %32, 0
  br i1 %tobool18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %cursor_rect, i32 0, i32 2
  %33 = load i32, i32* %width, align 4
  %cmp = icmp ne i32 %33, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %34 = phi i1 [ false, %if.else ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  store i32 %land.ext, i32* %overwrite, align 4
  %35 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %36 = load i32, i32* %overwrite, align 4
  %call19 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_text_cursor(%struct._GimpDrawTool* %35, %struct._PangoRectangle* %cursor_rect, i32 %36)
  store %struct._GimpCanvasItem* %call19, %struct._GimpCanvasItem** %item, align 8
  %37 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %item, align 8
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %37, i32 1)
  br label %if.end.20

if.end.20:                                        ; preds = %land.end, %if.then.12
  %38 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_editor_update_im_rect(%struct._GimpTextTool* %38)
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  ret void
}

declare void @gimp_rectangle_tool_install_properties(%struct._GObjectClass*) #1

declare %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool*) #1

declare void @gimp_rectangle_tool_constructor(%struct._GObject*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #2

declare void @gimp_text_options_connect_text(%struct._GimpTextOptions*, %struct._GimpText*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_proxy_notify(%struct._GimpText* %text, %struct._GParamSpec* %pspec, %struct._GimpTextTool* %text_tool) #3 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 6
  %1 = load %struct._GimpText*, %struct._GimpText** %text1, align 8
  %tobool = icmp ne %struct._GimpText* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.13

if.end:                                           ; preds = %entry
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %2, i32 0, i32 2
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 3
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 4
  %5 = load i64, i64* %owner_type, align 8
  %call = call i64 @gimp_text_get_type() #7
  %cmp2 = icmp eq i64 %5, %call
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_block_drawing(%struct._GimpTextTool* %6)
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %pending = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 2
  %8 = load %struct._GList*, %struct._GList** %pending, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %10 = bitcast %struct._GParamSpec* %9 to i8*
  %call4 = call %struct._GList* @g_list_append(%struct._GList* %8, i8* %10)
  %11 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %pending5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %11, i32 0, i32 2
  store %struct._GList* %call4, %struct._GList** %pending5, align 8
  %12 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %12, i32 0, i32 3
  %13 = load i32, i32* %idle_id, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.3
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %idle_id8 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 3
  %15 = load i32, i32* %idle_id8, align 4
  %call9 = call i32 @g_source_remove(i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.then.3
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %17 = bitcast %struct._GimpTextTool* %16 to i8*
  %call11 = call i32 @g_idle_add_full(i32 300, i32 (i8*)* @gimp_text_tool_apply_idle, i8* %17, void (i8*)* null)
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %idle_id12 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 3
  store i32 %call11, i32* %idle_id12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.end.10, %land.lhs.true, %if.end
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_block_drawing(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %drawing_blocked = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 14
  %1 = load i32, i32* %drawing_blocked, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %3 = bitcast %struct._GimpTextTool* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %4)
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_clear_layout(%struct._GimpTextTool* %5)
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %drawing_blocked2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %6, i32 0, i32 14
  store i32 1, i32* %drawing_blocked2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare i32 @g_source_remove(i32) #1

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_tool_apply_idle(i8* %text_tool) #3 {
entry:
  %text_tool.addr = alloca i8*, align 8
  store i8* %text_tool, i8** %text_tool.addr, align 8
  %0 = load i8*, i8** %text_tool.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpTextTool*
  %call = call i32 @gimp_text_tool_apply(%struct._GimpTextTool* %1, i32 1)
  ret i32 %call
}

declare void @gimp_draw_tool_pause(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_tool_apply(%struct._GimpTextTool* %text_tool, i32 %push_undo) #3 {
entry:
  %retval = alloca i32, align 4
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %push_undo.addr = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpTextLayer*, align 8
  %src = alloca %struct._GObject*, align 8
  %dest = alloca %struct._GObject*, align 8
  %list = alloca %struct._GList*, align 8
  %undo_group = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  %text_undo = alloca %struct._GimpTextUndo*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %value = alloca %struct._GValue, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store i32 %push_undo, i32* %push_undo.addr, align 4
  store %struct._GParamSpec* null, %struct._GParamSpec** %pspec, align 8
  store i32 0, i32* %undo_group, align 4
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %idle_id = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 3
  %1 = load i32, i32* %idle_id, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %idle_id1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 3
  %3 = load i32, i32* %idle_id1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %idle_id2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %4, i32 0, i32 3
  store i32 0, i32* %idle_id2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 6
  %6 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %cmp = icmp ne %struct._GimpText* %6, null
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_tool_apply, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer6 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 7
  %8 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer6, align 8
  %cmp7 = icmp ne %struct._GimpTextLayer* %8, null
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.5
  br label %if.end.10

if.else.9:                                        ; preds = %do.body.5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_tool_apply, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer12 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 7
  %10 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer12, align 8
  store %struct._GimpTextLayer* %10, %struct._GimpTextLayer** %layer, align 8
  %11 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %12 = bitcast %struct._GimpTextLayer* %11 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call13)
  %13 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %13)
  store %struct._GimpImage* %call15, %struct._GimpImage** %image, align 8
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.11
  %14 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text17 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %14, i32 0, i32 1
  %15 = load %struct._GimpText*, %struct._GimpText** %text17, align 8
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text18 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 6
  %17 = load %struct._GimpText*, %struct._GimpText** %text18, align 8
  %cmp19 = icmp eq %struct._GimpText* %15, %17
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.16
  br label %if.end.22

if.else.21:                                       ; preds = %do.body.16
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_tool_apply, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %pending = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 2
  %19 = load %struct._GList*, %struct._GList** %pending, align 8
  store %struct._GList* %19, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.23
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool24 = icmp ne %struct._GList* %20, null
  br i1 %tobool24, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool25 = icmp ne %struct._GList* %22, null
  br i1 %tobool25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %next26 = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next26, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %data27 = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 0
  %27 = load i8*, i8** %data27, align 8
  %cmp28 = icmp eq i8* %25, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %28 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp28, %land.rhs ]
  br i1 %28, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next29 = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next29, align 8
  store %struct._GList* %30, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %call30 = call i32 @g_list_length(%struct._GList* %31)
  %cmp31 = icmp eq i32 %call30, 1
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.end
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %data33 = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 0
  %33 = load i8*, i8** %data33, align 8
  %34 = bitcast i8* %33 to %struct._GParamSpec*
  store %struct._GParamSpec* %34, %struct._GParamSpec** %pspec, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %for.end
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool35 = icmp ne %struct._GParamSpec* %35, null
  br i1 %tobool35, label %if.then.36, label %if.end.63

if.then.36:                                       ; preds = %if.end.34
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call37 = call i64 @gimp_text_undo_get_type() #7
  %call38 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %36, i64 %call37, i32 61)
  store %struct._GimpUndo* %call38, %struct._GimpUndo** %undo, align 8
  %37 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool39 = icmp ne %struct._GimpUndo* %37, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.62

land.lhs.true.40:                                 ; preds = %if.then.36
  %38 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %39 = bitcast %struct._GimpUndo* %38 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_undo_get_type() #7
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call41)
  %40 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItemUndo*
  %item = getelementptr inbounds %struct._GimpItemUndo, %struct._GimpItemUndo* %40, i32 0, i32 1
  %41 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %42 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %43 = bitcast %struct._GimpTextLayer* %42 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call43)
  %44 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  %cmp45 = icmp eq %struct._GimpItem* %41, %44
  br i1 %cmp45, label %if.then.46, label %if.end.62

if.then.46:                                       ; preds = %land.lhs.true.40
  %45 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %46 = bitcast %struct._GimpUndo* %45 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_text_undo_get_type() #7
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call47)
  %47 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpTextUndo*
  store %struct._GimpTextUndo* %47, %struct._GimpTextUndo** %text_undo, align 8
  %48 = load %struct._GimpTextUndo*, %struct._GimpTextUndo** %text_undo, align 8
  %pspec49 = getelementptr inbounds %struct._GimpTextUndo, %struct._GimpTextUndo* %48, i32 0, i32 2
  %49 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec49, align 8
  %50 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %cmp50 = icmp eq %struct._GParamSpec* %49, %50
  br i1 %cmp50, label %if.then.51, label %if.end.61

if.then.51:                                       ; preds = %if.then.46
  %51 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %call52 = call i32 @gimp_undo_get_age(%struct._GimpUndo* %51)
  %cmp53 = icmp slt i32 %call52, 3
  br i1 %cmp53, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %if.then.51
  %52 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %53 = bitcast %struct._GimpTextTool* %52 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_tool_get_type() #7
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call55)
  %54 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpTool*
  store %struct._GimpTool* %54, %struct._GimpTool** %tool, align 8
  %55 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call57 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %55)
  %56 = bitcast %struct._GimpToolOptions* %call57 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_context_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call58)
  %57 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpContext*
  store %struct._GimpContext* %57, %struct._GimpContext** %context, align 8
  store i32 0, i32* %push_undo.addr, align 4
  %58 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  call void @gimp_undo_reset_age(%struct._GimpUndo* %58)
  %59 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %60 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_undo_refresh_preview(%struct._GimpUndo* %59, %struct._GimpContext* %60)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.54, %if.then.51
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.46
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true.40, %if.then.36
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.34
  %61 = load i32, i32* %push_undo.addr, align 4
  %tobool64 = icmp ne i32 %61, 0
  br i1 %tobool64, label %if.then.65, label %if.end.75

if.then.65:                                       ; preds = %if.end.63
  %62 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %62, i32 0, i32 4
  %63 = load i32, i32* %modified, align 4
  %tobool66 = icmp ne i32 %63, 0
  br i1 %tobool66, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %if.then.65
  store i32 1, i32* %undo_group, align 4
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call68 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %64, i32 31, i8* null)
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %66 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %call69 = call %struct._GimpUndo* @gimp_image_undo_push_text_layer_modified(%struct._GimpImage* %65, i8* null, %struct._GimpTextLayer* %66)
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %68 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %69 = bitcast %struct._GimpTextLayer* %68 to %struct._GTypeInstance*
  %call70 = call i64 @gimp_drawable_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call70)
  %70 = bitcast %struct._GTypeInstance* %call71 to %struct._GimpDrawable*
  %call72 = call %struct._GimpUndo* @gimp_image_undo_push_drawable_mod(%struct._GimpImage* %67, i8* null, %struct._GimpDrawable* %70, i32 1)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.67, %if.then.65
  %71 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %72 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %73 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call74 = call %struct._GimpUndo* @gimp_image_undo_push_text_layer(%struct._GimpImage* %71, i8* null, %struct._GimpTextLayer* %72, %struct._GParamSpec* %73)
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.73, %if.end.63
  %74 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %74, i32 0, i32 1
  %75 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %76 = bitcast %struct._GimpText* %75 to %struct._GTypeInstance*
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 80)
  %77 = bitcast %struct._GTypeInstance* %call76 to %struct._GObject*
  store %struct._GObject* %77, %struct._GObject** %src, align 8
  %78 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text77 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %78, i32 0, i32 6
  %79 = load %struct._GimpText*, %struct._GimpText** %text77, align 8
  %80 = bitcast %struct._GimpText* %79 to %struct._GTypeInstance*
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 80)
  %81 = bitcast %struct._GTypeInstance* %call78 to %struct._GObject*
  store %struct._GObject* %81, %struct._GObject** %dest, align 8
  %82 = load %struct._GObject*, %struct._GObject** %dest, align 8
  %83 = bitcast %struct._GObject* %82 to i8*
  %84 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %85 = bitcast %struct._GimpTextTool* %84 to i8*
  %call79 = call i32 @g_signal_handlers_block_matched(i8* %83, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_text_notify to i8*), i8* %85)
  %86 = load %struct._GObject*, %struct._GObject** %dest, align 8
  %87 = bitcast %struct._GObject* %86 to i8*
  %88 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %89 = bitcast %struct._GimpTextTool* %88 to i8*
  %call80 = call i32 @g_signal_handlers_block_matched(i8* %87, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GimpTextTool*)* @gimp_text_tool_text_changed to i8*), i8* %89)
  %90 = load %struct._GObject*, %struct._GObject** %dest, align 8
  call void @g_object_freeze_notify(%struct._GObject* %90)
  br label %for.cond.81

for.cond.81:                                      ; preds = %cond.end, %if.end.75
  %91 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool82 = icmp ne %struct._GList* %91, null
  br i1 %tobool82, label %for.body.83, label %for.end.99

for.body.83:                                      ; preds = %for.cond.81
  %92 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %92, i8 0, i64 24, i32 8, i1 false)
  %93 = load %struct._GList*, %struct._GList** %list, align 8
  %next84 = getelementptr inbounds %struct._GList, %struct._GList* %93, i32 0, i32 1
  %94 = load %struct._GList*, %struct._GList** %next84, align 8
  %tobool85 = icmp ne %struct._GList* %94, null
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.92

land.lhs.true.86:                                 ; preds = %for.body.83
  %95 = load %struct._GList*, %struct._GList** %list, align 8
  %next87 = getelementptr inbounds %struct._GList, %struct._GList* %95, i32 0, i32 1
  %96 = load %struct._GList*, %struct._GList** %next87, align 8
  %data88 = getelementptr inbounds %struct._GList, %struct._GList* %96, i32 0, i32 0
  %97 = load i8*, i8** %data88, align 8
  %98 = load %struct._GList*, %struct._GList** %list, align 8
  %data89 = getelementptr inbounds %struct._GList, %struct._GList* %98, i32 0, i32 0
  %99 = load i8*, i8** %data89, align 8
  %cmp90 = icmp eq i8* %97, %99
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %land.lhs.true.86
  br label %for.inc.96

if.end.92:                                        ; preds = %land.lhs.true.86, %for.body.83
  %100 = load %struct._GList*, %struct._GList** %list, align 8
  %data93 = getelementptr inbounds %struct._GList, %struct._GList* %100, i32 0, i32 0
  %101 = load i8*, i8** %data93, align 8
  %102 = bitcast i8* %101 to %struct._GParamSpec*
  store %struct._GParamSpec* %102, %struct._GParamSpec** %pspec, align 8
  %103 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %103, i32 0, i32 3
  %104 = load i64, i64* %value_type, align 8
  %call94 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %104)
  %105 = load %struct._GObject*, %struct._GObject** %src, align 8
  %106 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %106, i32 0, i32 1
  %107 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %105, i8* %107, %struct._GValue* %value)
  %108 = load %struct._GObject*, %struct._GObject** %dest, align 8
  %109 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name95 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %109, i32 0, i32 1
  %110 = load i8*, i8** %name95, align 8
  call void @g_object_set_property(%struct._GObject* %108, i8* %110, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.92, %if.then.91
  %111 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool97 = icmp ne %struct._GList* %111, null
  br i1 %tobool97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.96
  %112 = load %struct._GList*, %struct._GList** %list, align 8
  %next98 = getelementptr inbounds %struct._GList, %struct._GList* %112, i32 0, i32 1
  %113 = load %struct._GList*, %struct._GList** %next98, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.96
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %113, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond.81

for.end.99:                                       ; preds = %for.cond.81
  %114 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %pending100 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %114, i32 0, i32 2
  %115 = load %struct._GList*, %struct._GList** %pending100, align 8
  call void @g_list_free(%struct._GList* %115)
  %116 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %pending101 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %116, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %pending101, align 8
  %117 = load %struct._GObject*, %struct._GObject** %dest, align 8
  call void @g_object_thaw_notify(%struct._GObject* %117)
  %118 = load %struct._GObject*, %struct._GObject** %dest, align 8
  %119 = bitcast %struct._GObject* %118 to i8*
  %120 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %121 = bitcast %struct._GimpTextTool* %120 to i8*
  %call102 = call i32 @g_signal_handlers_unblock_matched(i8* %119, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_text_notify to i8*), i8* %121)
  %122 = load %struct._GObject*, %struct._GObject** %dest, align 8
  %123 = bitcast %struct._GObject* %122 to i8*
  %124 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %125 = bitcast %struct._GimpTextTool* %124 to i8*
  %call103 = call i32 @g_signal_handlers_unblock_matched(i8* %123, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GimpTextTool*)* @gimp_text_tool_text_changed to i8*), i8* %125)
  %126 = load i32, i32* %push_undo.addr, align 4
  %tobool104 = icmp ne i32 %126, 0
  br i1 %tobool104, label %if.then.105, label %if.end.110

if.then.105:                                      ; preds = %for.end.99
  %127 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %128 = bitcast %struct._GimpTextLayer* %127 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* null)
  %129 = load i32, i32* %undo_group, align 4
  %tobool106 = icmp ne i32 %129, 0
  br i1 %tobool106, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.then.105
  %130 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call108 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %130)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.then.105
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %for.end.99
  %131 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_frame_item(%struct._GimpTextTool* %131)
  %132 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %132)
  %133 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_unblock_drawing(%struct._GimpTextTool* %133)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.110, %if.else.21, %if.else.9, %if.else
  %134 = load i32, i32* %retval
  ret i32 %134
}

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_undo_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_item_undo_get_type() #2

declare i32 @gimp_undo_get_age(%struct._GimpUndo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare void @gimp_undo_reset_age(%struct._GimpUndo*) #1

declare void @gimp_undo_refresh_preview(%struct._GimpUndo*, %struct._GimpContext*) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_text_layer_modified(%struct._GimpImage*, i8*, %struct._GimpTextLayer*) #1

declare %struct._GimpUndo* @gimp_image_undo_push_drawable_mod(%struct._GimpImage*, i8*, %struct._GimpDrawable*, i32) #1

declare %struct._GimpUndo* @gimp_image_undo_push_text_layer(%struct._GimpImage*, i8*, %struct._GimpTextLayer*, %struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_text_notify(%struct._GimpText* %text, %struct._GParamSpec* %pspec, %struct._GimpTextTool* %text_tool) #3 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %value = alloca %struct._GValue, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %1 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %1, i32 0, i32 6
  %2 = load %struct._GimpText*, %struct._GimpText** %text1, align 8
  %cmp = icmp eq %struct._GimpText* %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_text_tool_text_notify, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.33

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_block_drawing(%struct._GimpTextTool* %3)
  %4 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %4, i32 0, i32 2
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 3
  %cmp2 = icmp eq i32 %and, 3
  br i1 %cmp2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %do.end
  %6 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 24, i32 8, i1 false)
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %7, i32 0, i32 3
  %8 = load i64, i64* %value_type, align 8
  %call = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %8)
  %9 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %10 = bitcast %struct._GimpText* %9 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %11, i8* %13, %struct._GValue* %value)
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 1
  %15 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %16 = bitcast %struct._GimpText* %15 to i8*
  %17 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %18 = bitcast %struct._GimpTextTool* %17 to i8*
  %call5 = call i32 @g_signal_handlers_block_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_proxy_notify to i8*), i8* %18)
  %19 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy6 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %19, i32 0, i32 1
  %20 = load %struct._GimpText*, %struct._GimpText** %proxy6, align 8
  %21 = bitcast %struct._GimpText* %20 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name8, align 8
  call void @g_object_set_property(%struct._GObject* %22, i8* %24, %struct._GValue* %value)
  %25 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy9 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %25, i32 0, i32 1
  %26 = load %struct._GimpText*, %struct._GimpText** %proxy9, align 8
  %27 = bitcast %struct._GimpText* %26 to i8*
  %28 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %29 = bitcast %struct._GimpTextTool* %28 to i8*
  %call10 = call i32 @g_signal_handlers_unblock_matched(i8* %27, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_proxy_notify to i8*), i8* %29)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.3, %do.end
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name12 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 1
  %31 = load i8*, i8** %name12, align 8
  %call13 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #8
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name15 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %32, i32 0, i32 1
  %33 = load i8*, i8** %name15, align 8
  %call16 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #8
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.11
  %34 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %34, i32 0, i32 5
  %35 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %36 = bitcast %struct._GimpTextBuffer* %35 to i8*
  %37 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %38 = bitcast %struct._GimpTextTool* %37 to i8*
  %call19 = call i32 @g_signal_handlers_block_matched(i8* %36, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_begin_edit to i8*), i8* %38)
  %39 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer20 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %39, i32 0, i32 5
  %40 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer20, align 8
  %41 = bitcast %struct._GimpTextBuffer* %40 to i8*
  %42 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %43 = bitcast %struct._GimpTextTool* %42 to i8*
  %call21 = call i32 @g_signal_handlers_block_matched(i8* %41, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_end_edit to i8*), i8* %43)
  %44 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %markup = getelementptr inbounds %struct._GimpText, %struct._GimpText* %44, i32 0, i32 2
  %45 = load i8*, i8** %markup, align 8
  %tobool = icmp ne i8* %45, null
  br i1 %tobool, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.then.18
  %46 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer23 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %46, i32 0, i32 5
  %47 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer23, align 8
  %48 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %markup24 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %48, i32 0, i32 2
  %49 = load i8*, i8** %markup24, align 8
  call void @gimp_text_buffer_set_markup(%struct._GimpTextBuffer* %47, i8* %49)
  br label %if.end.28

if.else.25:                                       ; preds = %if.then.18
  %50 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer26 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %50, i32 0, i32 5
  %51 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer26, align 8
  %52 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %text27 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %52, i32 0, i32 1
  %53 = load i8*, i8** %text27, align 8
  call void @gimp_text_buffer_set_text(%struct._GimpTextBuffer* %51, i8* %53)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.22
  %54 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer29 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %54, i32 0, i32 5
  %55 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer29, align 8
  %56 = bitcast %struct._GimpTextBuffer* %55 to i8*
  %57 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %58 = bitcast %struct._GimpTextTool* %57 to i8*
  %call30 = call i32 @g_signal_handlers_unblock_matched(i8* %56, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_end_edit to i8*), i8* %58)
  %59 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer31 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %59, i32 0, i32 5
  %60 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer31, align 8
  %61 = bitcast %struct._GimpTextBuffer* %60 to i8*
  %62 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %63 = bitcast %struct._GimpTextTool* %62 to i8*
  %call32 = call i32 @g_signal_handlers_unblock_matched(i8* %61, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_begin_edit to i8*), i8* %63)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end.28, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_text_changed(%struct._GimpText* %text, %struct._GimpTextTool* %text_tool) #3 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_frame_item(%struct._GimpTextTool* %0)
  %1 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_unblock_drawing(%struct._GimpTextTool* %1)
  ret void
}

declare void @g_object_freeze_notify(%struct._GObject*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_unblock_drawing(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %drawing_blocked = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 14
  %1 = load i32, i32* %drawing_blocked, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_tool_unblock_drawing, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %drawing_blocked1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 14
  store i32 0, i32* %drawing_blocked1, align 4
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %4 = bitcast %struct._GimpTextTool* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_draw_tool_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %5)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @gimp_text_buffer_set_markup(%struct._GimpTextBuffer*, i8*) #1

declare void @gimp_text_buffer_set_text(%struct._GimpTextBuffer*, i8*) #1

declare void @gimp_draw_tool_resume(%struct._GimpDrawTool*) #1

declare void @gimp_text_tool_editor_finalize(%struct._GimpTextTool*) #1

declare void @gimp_text_tool_editor_halt(%struct._GimpTextTool*) #1

declare void @gimp_rectangle_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare void @gimp_tool_control(%struct._GimpTool*, i32, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_activate(%struct._GimpToolControl*) #1

declare void @gimp_text_tool_reset_im_context(%struct._GimpTextTool*) #1

declare i32 @gimp_rectangle_tool_point_in_rectangle(%struct._GimpRectangleTool*, double, double) #1

declare void @gimp_rectangle_tool_set_function(%struct._GimpRectangleTool*, i32) #1

declare void @gimp_rectangle_tool_button_press(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

declare i32 @gimp_rectangle_tool_get_function(%struct._GimpRectangleTool*) #1

declare i32 @gimp_item_get_offset_x(%struct._GimpItem*) #1

declare i32 @gimp_item_get_offset_y(%struct._GimpItem*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare %struct._GimpTextLayer* @gimp_image_pick_text_layer(%struct._GimpImage*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_layer_changed(%struct._GimpImage* %image, %struct._GimpTextTool* %text_tool) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %0)
  store %struct._GimpLayer* %call, %struct._GimpLayer** %layer, align 8
  %1 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %2 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %2, i32 0, i32 7
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer1, align 8
  %4 = bitcast %struct._GimpTextLayer* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_layer_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLayer*
  %cmp = icmp eq %struct._GimpLayer* %1, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %7 = bitcast %struct._GimpTextTool* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_draw_tool_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_pause(%struct._GimpDrawTool* %8)
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_halt(%struct._GimpTextTool* %9)
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_clear_layout(%struct._GimpTextTool* %10)
  %11 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %12 = bitcast %struct._GimpTextTool* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_draw_tool_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDrawTool*
  %call8 = call i32 @gimp_draw_tool_is_active(%struct._GimpDrawTool* %13)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %15 = bitcast %struct._GimpTextTool* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_draw_tool_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_stop(%struct._GimpDrawTool* %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  %17 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %18 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %19 = bitcast %struct._GimpLayer* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_drawable_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDrawable*
  %call15 = call i32 @gimp_text_tool_set_drawable(%struct._GimpTextTool* %17, %struct._GimpDrawable* %20, i32 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.12
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer17 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 7
  %22 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer17, align 8
  %23 = bitcast %struct._GimpTextLayer* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_layer_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpLayer*
  %25 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %cmp20 = icmp eq %struct._GimpLayer* %24, %25
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true
  %26 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %27 = bitcast %struct._GimpTextTool* %26 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_draw_tool_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call22)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpDrawTool*
  %29 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %30 = bitcast %struct._GimpTextTool* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_tool_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %31, i32 0, i32 4
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_draw_tool_start(%struct._GimpDrawTool* %28, %struct._GimpDisplay* %32)
  %33 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_frame_item(%struct._GimpTextTool* %33)
  %34 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_start(%struct._GimpTextTool* %34)
  %35 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_position(%struct._GimpTextTool* %35)
  br label %if.end.31

if.else:                                          ; preds = %land.lhs.true, %if.end.12
  %36 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %37 = bitcast %struct._GimpTextTool* %36 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_tool_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call26)
  %38 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpTool*
  %39 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %40 = bitcast %struct._GimpTextTool* %39 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_tool_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call28)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpTool*
  %display30 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %41, i32 0, i32 4
  %42 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display30, align 8
  call void @gimp_tool_control(%struct._GimpTool* %38, i32 2, %struct._GimpDisplay* %42)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.21
  %43 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %44 = bitcast %struct._GimpTextTool* %43 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_draw_tool_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call32)
  %45 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpDrawTool*
  call void @gimp_draw_tool_resume(%struct._GimpDrawTool* %45)
  br label %return

return:                                           ; preds = %if.end.31, %if.then
  ret void
}

declare %struct._GimpLayer* @gimp_image_set_active_layer(%struct._GimpImage*, %struct._GimpLayer*) #1

declare i32 @gimp_image_coords_in_active_pickable(%struct._GimpImage*, %struct._GimpCoords*, i32, i32) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare void @gimp_text_tool_editor_button_press(%struct._GimpTextTool*, double, double, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_connect(%struct._GimpTextTool* %text_tool, %struct._GimpTextLayer* %layer, %struct._GimpText* %text) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %cmp = icmp eq %struct._GimpText* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %4 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %cmp2 = icmp ne %struct._GimpTextLayer* %4, null
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text3 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %5, i32 0, i32 1
  %6 = load %struct._GimpText*, %struct._GimpText** %text3, align 8
  %7 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %cmp4 = icmp eq %struct._GimpText* %6, %7
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %do.body
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_text_tool_connect, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.82

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %8, i32 0, i32 6
  %9 = load %struct._GimpText*, %struct._GimpText** %text5, align 8
  %10 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %cmp6 = icmp ne %struct._GimpText* %9, %10
  br i1 %cmp6, label %if.then.7, label %if.end.65

if.then.7:                                        ; preds = %do.end
  %11 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %12 = bitcast %struct._GimpTool* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_tool_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpTool*
  %call10 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %13)
  %14 = bitcast %struct._GimpToolOptions* %call10 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_text_options_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %15, %struct._GimpTextOptions** %options, align 8
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 5
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %18 = bitcast %struct._GimpTextBuffer* %17 to i8*
  %19 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %20 = bitcast %struct._GimpTextTool* %19 to i8*
  %call13 = call i32 @g_signal_handlers_block_matched(i8* %18, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_begin_edit to i8*), i8* %20)
  %21 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer14 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %21, i32 0, i32 5
  %22 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer14, align 8
  %23 = bitcast %struct._GimpTextBuffer* %22 to i8*
  %24 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %25 = bitcast %struct._GimpTextTool* %24 to i8*
  %call15 = call i32 @g_signal_handlers_block_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_end_edit to i8*), i8* %25)
  %26 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text16 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %26, i32 0, i32 6
  %27 = load %struct._GimpText*, %struct._GimpText** %text16, align 8
  %tobool = icmp ne %struct._GimpText* %27, null
  br i1 %tobool, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %if.then.7
  %28 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text18 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %28, i32 0, i32 6
  %29 = load %struct._GimpText*, %struct._GimpText** %text18, align 8
  %30 = bitcast %struct._GimpText* %29 to i8*
  %31 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %32 = bitcast %struct._GimpTextTool* %31 to i8*
  %call19 = call i32 @g_signal_handlers_disconnect_matched(i8* %30, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_text_notify to i8*), i8* %32)
  %33 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text20 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %33, i32 0, i32 6
  %34 = load %struct._GimpText*, %struct._GimpText** %text20, align 8
  %35 = bitcast %struct._GimpText* %34 to i8*
  %36 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %37 = bitcast %struct._GimpTextTool* %36 to i8*
  %call21 = call i32 @g_signal_handlers_disconnect_matched(i8* %35, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpText*, %struct._GimpTextTool*)* @gimp_text_tool_text_changed to i8*), i8* %37)
  %38 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %pending = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %38, i32 0, i32 2
  %39 = load %struct._GList*, %struct._GList** %pending, align 8
  %tobool22 = icmp ne %struct._GList* %39, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.17
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %call24 = call i32 @gimp_text_tool_apply(%struct._GimpTextTool* %40, i32 1)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.17
  %41 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text26 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %41, i32 0, i32 6
  %42 = load %struct._GimpText*, %struct._GimpText** %text26, align 8
  %43 = bitcast %struct._GimpText* %42 to i8*
  call void @g_object_unref(i8* %43)
  %44 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text27 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %44, i32 0, i32 6
  store %struct._GimpText* null, %struct._GimpText** %text27, align 8
  %45 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %45, i32 0, i32 1
  %46 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %47 = bitcast %struct._GimpText* %46 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* null)
  %48 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer28 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %48, i32 0, i32 5
  %49 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer28, align 8
  call void @gimp_text_buffer_set_text(%struct._GimpTextBuffer* %49, i8* null)
  %50 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_clear_layout(%struct._GimpTextTool* %50)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.25, %if.then.7
  %51 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %52 = bitcast %struct._GimpTextOptions* %51 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_context_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call30)
  %53 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpContext*
  %54 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %cmp32 = icmp ne %struct._GimpText* %54, null
  %conv = zext i1 %cmp32 to i32
  call void @gimp_context_define_property(%struct._GimpContext* %53, i32 6, i32 %conv)
  %55 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %tobool33 = icmp ne %struct._GimpText* %55, null
  br i1 %tobool33, label %if.then.34, label %if.end.60

if.then.34:                                       ; preds = %if.end.29
  %56 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %unit = getelementptr inbounds %struct._GimpText, %struct._GimpText* %56, i32 0, i32 4
  %57 = load i32, i32* %unit, align 4
  %58 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy35 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %58, i32 0, i32 1
  %59 = load %struct._GimpText*, %struct._GimpText** %proxy35, align 8
  %unit36 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %59, i32 0, i32 4
  %60 = load i32, i32* %unit36, align 4
  %cmp37 = icmp ne i32 %57, %60
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.then.34
  %61 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %61, i32 0, i32 15
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_size_entry_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call40)
  %64 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpSizeEntry*
  %65 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %unit42 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %65, i32 0, i32 4
  %66 = load i32, i32* %unit42, align 4
  call void @gimp_size_entry_set_unit(%struct._GimpSizeEntry* %64, i32 %66)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.then.34
  %67 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %68 = bitcast %struct._GimpText* %67 to %struct._GTypeInstance*
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call44 to %struct._GObject*
  %70 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy45 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %70, i32 0, i32 1
  %71 = load %struct._GimpText*, %struct._GimpText** %proxy45, align 8
  %72 = bitcast %struct._GimpText* %71 to %struct._GTypeInstance*
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 80)
  %73 = bitcast %struct._GTypeInstance* %call46 to %struct._GObject*
  %call47 = call i32 @gimp_config_sync(%struct._GObject* %69, %struct._GObject* %73, i32 0)
  %74 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %markup = getelementptr inbounds %struct._GimpText, %struct._GimpText* %74, i32 0, i32 2
  %75 = load i8*, i8** %markup, align 8
  %tobool48 = icmp ne i8* %75, null
  br i1 %tobool48, label %if.then.49, label %if.else.52

if.then.49:                                       ; preds = %if.end.43
  %76 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer50 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %76, i32 0, i32 5
  %77 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer50, align 8
  %78 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %markup51 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %78, i32 0, i32 2
  %79 = load i8*, i8** %markup51, align 8
  call void @gimp_text_buffer_set_markup(%struct._GimpTextBuffer* %77, i8* %79)
  br label %if.end.55

if.else.52:                                       ; preds = %if.end.43
  %80 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer53 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %80, i32 0, i32 5
  %81 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer53, align 8
  %82 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %text54 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %82, i32 0, i32 1
  %83 = load i8*, i8** %text54, align 8
  call void @gimp_text_buffer_set_text(%struct._GimpTextBuffer* %81, i8* %83)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.49
  %84 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_clear_layout(%struct._GimpTextTool* %84)
  %85 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %86 = bitcast %struct._GimpText* %85 to i8*
  %call56 = call i8* @g_object_ref(i8* %86)
  %87 = bitcast i8* %call56 to %struct._GimpText*
  %88 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text57 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %88, i32 0, i32 6
  store %struct._GimpText* %87, %struct._GimpText** %text57, align 8
  %89 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %90 = bitcast %struct._GimpText* %89 to i8*
  %91 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %92 = bitcast %struct._GimpTextTool* %91 to i8*
  %call58 = call i64 @g_signal_connect_data(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpText*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_text_notify to void ()*), i8* %92, void (i8*, %struct._GClosure*)* null, i32 0)
  %93 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %94 = bitcast %struct._GimpText* %93 to i8*
  %95 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %96 = bitcast %struct._GimpTextTool* %95 to i8*
  %call59 = call i64 @g_signal_connect_data(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpText*, %struct._GimpTextTool*)* @gimp_text_tool_text_changed to void ()*), i8* %96, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.55, %if.end.29
  %97 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer61 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %97, i32 0, i32 5
  %98 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer61, align 8
  %99 = bitcast %struct._GimpTextBuffer* %98 to i8*
  %100 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %101 = bitcast %struct._GimpTextTool* %100 to i8*
  %call62 = call i32 @g_signal_handlers_unblock_matched(i8* %99, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_end_edit to i8*), i8* %101)
  %102 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer63 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %102, i32 0, i32 5
  %103 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer63, align 8
  %104 = bitcast %struct._GimpTextBuffer* %103 to i8*
  %105 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %106 = bitcast %struct._GimpTextTool* %105 to i8*
  %call64 = call i32 @g_signal_handlers_unblock_matched(i8* %104, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextBuffer*, %struct._GimpTextTool*)* @gimp_text_tool_buffer_begin_edit to i8*), i8* %106)
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.60, %do.end
  %107 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer66 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %107, i32 0, i32 7
  %108 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer66, align 8
  %109 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %cmp67 = icmp ne %struct._GimpTextLayer* %108, %109
  br i1 %cmp67, label %if.then.69, label %if.end.82

if.then.69:                                       ; preds = %if.end.65
  %110 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer70 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %110, i32 0, i32 7
  %111 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer70, align 8
  %tobool71 = icmp ne %struct._GimpTextLayer* %111, null
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.then.69
  %112 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer73 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %112, i32 0, i32 7
  %113 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer73, align 8
  %114 = bitcast %struct._GimpTextLayer* %113 to i8*
  %115 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %116 = bitcast %struct._GimpTextTool* %115 to i8*
  %call74 = call i32 @g_signal_handlers_disconnect_matched(i8* %114, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpTextLayer*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_layer_notify to i8*), i8* %116)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.then.69
  %117 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %118 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer76 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %118, i32 0, i32 7
  store %struct._GimpTextLayer* %117, %struct._GimpTextLayer** %layer76, align 8
  %119 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %tobool77 = icmp ne %struct._GimpTextLayer* %119, null
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.end.75
  %120 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer79 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %120, i32 0, i32 7
  %121 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer79, align 8
  %122 = bitcast %struct._GimpTextLayer* %121 to i8*
  %123 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %124 = bitcast %struct._GimpTextTool* %123 to i8*
  %call80 = call i64 @g_signal_connect_object(i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpTextLayer*, %struct._GParamSpec*, %struct._GimpTextTool*)* @gimp_text_tool_layer_notify to void ()*), i8* %124, i32 0)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.end.75
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.end.81, %if.end.65
  ret void
}

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare void @gimp_text_tool_editor_position(%struct._GimpTextTool*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_context_define_property(%struct._GimpContext*, i32, i32) #1

declare void @gimp_size_entry_set_unit(%struct._GimpSizeEntry*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_size_entry_get_type() #2

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare i8* @g_object_ref(i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_layer_notify(%struct._GimpTextLayer* %layer, %struct._GParamSpec* %pspec, %struct._GimpTextTool* %text_tool) #3 {
entry:
  %layer.addr = alloca %struct._GimpTextLayer*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  store %struct._GimpTextLayer* %layer, %struct._GimpTextLayer** %layer.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %modified = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %5, i32 0, i32 4
  %6 = load i32, i32* %modified, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %8 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_tool_control(%struct._GimpTool* %7, i32 2, %struct._GimpDisplay* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.14

if.else:                                          ; preds = %entry
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name5 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name5, align 8
  %call6 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.13, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %12 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %12, i32 0, i32 1
  %13 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool9 = icmp ne %struct._GimpText* %13, null
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.then.8
  %14 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %15 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display11 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %15, i32 0, i32 4
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display11, align 8
  call void @gimp_tool_control(%struct._GimpTool* %14, i32 2, %struct._GimpDisplay* %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  ret void
}

declare void @gimp_rectangle_tool_motion(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

declare void @gimp_text_tool_editor_motion(%struct._GimpTextTool*, double, double) #1

declare void @gimp_tool_control_halt(%struct._GimpToolControl*) #1

declare void @gimp_text_tool_editor_button_release(%struct._GimpTextTool*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gimp_rectangle_tool_button_release(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, i32, %struct._GimpDisplay*) #1

declare i32 @gimp_text_tool_editor_key_press(%struct._GimpTextTool*, %struct._GdkEventKey*) #1

declare i32 @gimp_text_tool_editor_key_release(%struct._GimpTextTool*, %struct._GdkEventKey*) #1

declare void @gimp_rectangle_tool_oper_update(%struct._GimpTool*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplay*) #1

declare void @gimp_tool_control_set_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_cursor_modifier(%struct._GimpToolControl*, i32) #1

declare void @gimp_rectangle_tool_cursor_update(%struct._GimpTool*, %struct._GimpCoords*, i32, %struct._GimpDisplay*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory*, i8*, i8*, i32) #1

declare %struct._GimpMenuFactory* @gimp_dialog_factory_get_menu_factory(%struct._GimpDialogFactory*) #1

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_item_get_type() #2

declare %struct._GtkWidget* @gtk_menu_item_get_submenu(%struct._GtkMenuItem*) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gtk_im_multicontext_append_menuitems(%struct._GtkIMMulticontext*, %struct._GtkMenuShell*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_im_multicontext_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_shell_get_type() #2

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare void @gimp_rectangle_tool_draw(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #1

declare void @gimp_text_tool_editor_update_im_rect(%struct._GimpTextTool*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_draw_selection(%struct._GimpDrawTool* %draw_tool) #3 {
entry:
  %draw_tool.addr = alloca %struct._GimpDrawTool*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %fill_group = alloca %struct._GimpCanvasGroup*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %iter = alloca %struct._PangoLayoutIter*, align 8
  %sel_start = alloca %struct._GtkTextIter, align 8
  %sel_end = alloca %struct._GtkTextIter, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %rect = alloca %struct._PangoRectangle, align 4
  %ytop = alloca i32, align 4
  %ybottom = alloca i32, align 4
  store %struct._GimpDrawTool* %draw_tool, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %0 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %1 = bitcast %struct._GimpDrawTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 5
  %4 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer2, align 8
  %5 = bitcast %struct._GimpTextBuffer* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_text_buffer_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %6, %struct._GtkTextBuffer** %buffer, align 8
  %7 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %call5 = call %struct._GimpCanvasGroup* @gimp_draw_tool_add_fill_group(%struct._GimpDrawTool* %7)
  store %struct._GimpCanvasGroup* %call5, %struct._GimpCanvasGroup** %fill_group, align 8
  %8 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %fill_group, align 8
  %9 = bitcast %struct._GimpCanvasGroup* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_canvas_item_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpCanvasItem*
  call void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem* %10, i32 1)
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call8 = call i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer* %11, %struct._GtkTextIter* %sel_start, %struct._GtkTextIter* %sel_end)
  %12 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer9 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %12, i32 0, i32 5
  %13 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer9, align 8
  %call10 = call i32 @gimp_text_buffer_get_iter_index(%struct._GimpTextBuffer* %13, %struct._GtkTextIter* %sel_start, i32 1)
  store i32 %call10, i32* %min, align 4
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer11 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 5
  %15 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer11, align 8
  %call12 = call i32 @gimp_text_buffer_get_iter_index(%struct._GimpTextBuffer* %15, %struct._GtkTextIter* %sel_end, i32 1)
  store i32 %call12, i32* %max, align 4
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layout13 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 13
  %17 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout13, align 8
  %call14 = call %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout* %17)
  store %struct._PangoLayout* %call14, %struct._PangoLayout** %layout, align 8
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layout15 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 13
  %19 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout15, align 8
  call void @gimp_text_layout_get_offsets(%struct._GimpTextLayout* %19, i32* %offset_x, i32* %offset_y)
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %20, i32 0, i32 7
  %21 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %22 = bitcast %struct._GimpTextLayer* %21 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_item_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call16)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %23, i32* %off_x, i32* %off_y)
  %24 = load i32, i32* %off_x, align 4
  %25 = load i32, i32* %offset_x, align 4
  %add = add nsw i32 %25, %24
  store i32 %add, i32* %offset_x, align 4
  %26 = load i32, i32* %off_y, align 4
  %27 = load i32, i32* %offset_y, align 4
  %add18 = add nsw i32 %27, %26
  store i32 %add18, i32* %offset_y, align 4
  %28 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %call19 = call %struct._PangoLayoutIter* @pango_layout_get_iter(%struct._PangoLayout* %28)
  store %struct._PangoLayoutIter* %call19, %struct._PangoLayoutIter** %iter, align 8
  %29 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %30 = load %struct._GimpCanvasGroup*, %struct._GimpCanvasGroup** %fill_group, align 8
  call void @gimp_draw_tool_push_group(%struct._GimpDrawTool* %29, %struct._GimpCanvasGroup* %30)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %31 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %iter, align 8
  %call20 = call %struct._PangoGlyphItem* @pango_layout_iter_get_run(%struct._PangoLayoutIter* %31)
  %tobool = icmp ne %struct._PangoGlyphItem* %call20, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.cond

if.end:                                           ; preds = %do.body
  %32 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %iter, align 8
  %call21 = call i32 @pango_layout_iter_get_index(%struct._PangoLayoutIter* %32)
  store i32 %call21, i32* %i, align 4
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %min, align 4
  %cmp = icmp sge i32 %33, %34
  br i1 %cmp, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %max, align 4
  %cmp22 = icmp slt i32 %35, %36
  br i1 %cmp22, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %land.lhs.true
  %37 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %iter, align 8
  call void @pango_layout_iter_get_char_extents(%struct._PangoLayoutIter* %37, %struct._PangoRectangle* %rect)
  %38 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %iter, align 8
  call void @pango_layout_iter_get_line_yrange(%struct._PangoLayoutIter* %38, i32* %ytop, i32* %ybottom)
  %39 = load i32, i32* %ytop, align 4
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  store i32 %39, i32* %y, align 4
  %40 = load i32, i32* %ybottom, align 4
  %41 = load i32, i32* %ytop, align 4
  %sub = sub nsw i32 %40, %41
  %height = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 3
  store i32 %sub, i32* %height, align 4
  call void @pango_extents_to_pixels(%struct._PangoRectangle* %rect, %struct._PangoRectangle* null)
  %42 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layout24 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %42, i32 0, i32 13
  %43 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout24, align 8
  call void @gimp_text_layout_transform_rect(%struct._GimpTextLayout* %43, %struct._PangoRectangle* %rect)
  %44 = load i32, i32* %offset_x, align 4
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 0
  %45 = load i32, i32* %x, align 4
  %add25 = add nsw i32 %45, %44
  store i32 %add25, i32* %x, align 4
  %46 = load i32, i32* %offset_y, align 4
  %y26 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  %47 = load i32, i32* %y26, align 4
  %add27 = add nsw i32 %47, %46
  store i32 %add27, i32* %y26, align 4
  %48 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  %x28 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 0
  %49 = load i32, i32* %x28, align 4
  %conv = sitofp i32 %49 to double
  %y29 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  %50 = load i32, i32* %y29, align 4
  %conv30 = sitofp i32 %50 to double
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 2
  %51 = load i32, i32* %width, align 4
  %conv31 = sitofp i32 %51 to double
  %height32 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 3
  %52 = load i32, i32* %height32, align 4
  %conv33 = sitofp i32 %52 to double
  %call34 = call %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool* %48, i32 1, double %conv, double %conv30, double %conv31, double %conv33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.23, %land.lhs.true, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.35, %if.then
  %53 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %iter, align 8
  %call36 = call i32 @pango_layout_iter_next_char(%struct._PangoLayoutIter* %53)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %54 = load %struct._GimpDrawTool*, %struct._GimpDrawTool** %draw_tool.addr, align 8
  call void @gimp_draw_tool_pop_group(%struct._GimpDrawTool* %54)
  %55 = load %struct._PangoLayoutIter*, %struct._PangoLayoutIter** %iter, align 8
  call void @pango_layout_iter_free(%struct._PangoLayoutIter* %55)
  ret void
}

declare void @gimp_text_tool_editor_get_cursor_rect(%struct._GimpTextTool*, i32, %struct._PangoRectangle*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_text_cursor(%struct._GimpDrawTool*, %struct._PangoRectangle*, i32) #1

declare void @gimp_canvas_item_set_highlight(%struct._GimpCanvasItem*, i32) #1

declare %struct._GimpCanvasGroup* @gimp_draw_tool_add_fill_group(%struct._GimpDrawTool*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_item_get_type() #2

declare i32 @gtk_text_buffer_get_selection_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare i32 @gimp_text_buffer_get_iter_index(%struct._GimpTextBuffer*, %struct._GtkTextIter*, i32) #1

declare %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout*) #1

declare void @gimp_text_layout_get_offsets(%struct._GimpTextLayout*, i32*, i32*) #1

declare %struct._PangoLayoutIter* @pango_layout_get_iter(%struct._PangoLayout*) #1

declare void @gimp_draw_tool_push_group(%struct._GimpDrawTool*, %struct._GimpCanvasGroup*) #1

declare %struct._PangoGlyphItem* @pango_layout_iter_get_run(%struct._PangoLayoutIter*) #1

declare i32 @pango_layout_iter_get_index(%struct._PangoLayoutIter*) #1

declare void @pango_layout_iter_get_char_extents(%struct._PangoLayoutIter*, %struct._PangoRectangle*) #1

declare void @pango_layout_iter_get_line_yrange(%struct._PangoLayoutIter*, i32*, i32*) #1

declare void @pango_extents_to_pixels(%struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare void @gimp_text_layout_transform_rect(%struct._GimpTextLayout*, %struct._PangoRectangle*) #1

declare %struct._GimpCanvasItem* @gimp_draw_tool_add_rectangle(%struct._GimpDrawTool*, i32, double, double, double, double) #1

declare i32 @pango_layout_iter_next_char(%struct._PangoLayoutIter*) #1

declare void @gimp_draw_tool_pop_group(%struct._GimpDrawTool*) #1

declare void @pango_layout_iter_free(%struct._PangoLayoutIter*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_tool_rectangle_change_complete(%struct._GimpRectangleTool* %rect_tool) #3 {
entry:
  %retval = alloca i32, align 4
  %rect_tool.addr = alloca %struct._GimpRectangleTool*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %box_unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %push_undo = alloca i32, align 4
  %undo = alloca %struct._GimpUndo*, align 8
  store %struct._GimpRectangleTool* %rect_tool, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %0 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %1 = bitcast %struct._GimpRectangleTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_editor_position(%struct._GimpTextTool* %3)
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %handle_rectangle_change_complete = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %4, i32 0, i32 11
  %5 = load i32, i32* %handle_rectangle_change_complete, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.62

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %6, i32 0, i32 7
  %7 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %8 = bitcast %struct._GimpTextLayer* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %9, %struct._GimpItem** %item, align 8
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool4 = icmp ne %struct._GimpItem* %10, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %11 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %text_box_fixed = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %11, i32 0, i32 12
  store i32 1, i32* %text_box_fixed, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool.addr, align 8
  %13 = bitcast %struct._GimpRectangleTool* %12 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32* %x1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32* %y1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32* %x2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %y2, i8* null)
  %14 = load i32, i32* %x1, align 4
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call6 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %15)
  %cmp = icmp ne i32 %14, %call6
  br i1 %cmp, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load i32, i32* %y1, align 4
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call7 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %17)
  %cmp8 = icmp ne i32 %16, %call7
  br i1 %cmp8, label %if.then.16, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %x2, align 4
  %19 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %18, %19
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call10 = call i32 @gimp_item_get_width(%struct._GimpItem* %20)
  %cmp11 = icmp ne i32 %sub, %call10
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %21 = load i32, i32* %y2, align 4
  %22 = load i32, i32* %y1, align 4
  %sub13 = sub nsw i32 %21, %22
  %23 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call14 = call i32 @gimp_item_get_height(%struct._GimpItem* %23)
  %cmp15 = icmp ne i32 %sub13, %call14
  br i1 %cmp15, label %if.then.16, label %if.end.61

if.then.16:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false, %if.end
  %24 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %24, i32 0, i32 1
  %25 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %box_unit17 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %25, i32 0, i32 20
  %26 = load i32, i32* %box_unit17, align 4
  store i32 %26, i32* %box_unit, align 4
  store i32 1, i32* %push_undo, align 4
  %27 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %image = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %27, i32 0, i32 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %28, double* %xres, double* %yres)
  %29 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy18 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %29, i32 0, i32 1
  %30 = load %struct._GimpText*, %struct._GimpText** %proxy18, align 8
  %31 = bitcast %struct._GimpText* %30 to i8*
  %32 = load i32, i32* %x2, align 4
  %33 = load i32, i32* %x1, align 4
  %sub19 = sub nsw i32 %32, %33
  %conv = sitofp i32 %sub19 to double
  %34 = load i32, i32* %box_unit, align 4
  %35 = load double, double* %xres, align 8
  %call20 = call double @gimp_pixels_to_units(double %conv, i32 %34, double %35)
  %36 = load i32, i32* %y2, align 4
  %37 = load i32, i32* %y1, align 4
  %sub21 = sub nsw i32 %36, %37
  %conv22 = sitofp i32 %sub21 to double
  %38 = load i32, i32* %box_unit, align 4
  %39 = load double, double* %yres, align 8
  %call23 = call double @gimp_pixels_to_units(double %conv22, i32 %38, double %39)
  call void (i8*, i8*, ...) @g_object_set(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), double %call20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), double %call23, i8* null)
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %image24 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %40, i32 0, i32 8
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image24, align 8
  %call25 = call i64 @gimp_undo_stack_get_type() #7
  %call26 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %41, i64 %call25, i32 31)
  store %struct._GimpUndo* %call26, %struct._GimpUndo** %undo, align 8
  %42 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool27 = icmp ne %struct._GimpUndo* %42, null
  br i1 %tobool27, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.then.16
  %43 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %call28 = call i32 @gimp_undo_get_age(%struct._GimpUndo* %43)
  %cmp29 = icmp sle i32 %call28, 3
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.37

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %44 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %45 = bitcast %struct._GimpUndo* %44 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  %call33 = call i8* @g_object_get_data(%struct._GObject* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0))
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %48 = bitcast %struct._GimpItem* %47 to i8*
  %cmp34 = icmp eq i8* %call33, %48
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.31
  store i32 0, i32* %push_undo, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %land.lhs.true.31, %land.lhs.true, %if.then.16
  %49 = load i32, i32* %push_undo, align 4
  %tobool38 = icmp ne i32 %49, 0
  br i1 %tobool38, label %if.then.39, label %if.end.50

if.then.39:                                       ; preds = %if.end.37
  %50 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %image40 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %50, i32 0, i32 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image40, align 8
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0)) #6
  %call42 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %51, i32 31, i8* %call41)
  %52 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %image43 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %52, i32 0, i32 8
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image43, align 8
  %call44 = call i64 @gimp_undo_stack_get_type() #7
  %call45 = call %struct._GimpUndo* @gimp_image_undo_can_compress(%struct._GimpImage* %53, i64 %call44, i32 31)
  store %struct._GimpUndo* %call45, %struct._GimpUndo** %undo, align 8
  %54 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %tobool46 = icmp ne %struct._GimpUndo* %54, null
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.39
  %55 = load %struct._GimpUndo*, %struct._GimpUndo** %undo, align 8
  %56 = bitcast %struct._GimpUndo* %55 to %struct._GTypeInstance*
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 80)
  %57 = bitcast %struct._GTypeInstance* %call48 to %struct._GObject*
  %58 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %59 = bitcast %struct._GimpItem* %58 to i8*
  call void @g_object_set_data(%struct._GObject* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8* %59)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.39
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.37
  %60 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %61 = load i32, i32* %x1, align 4
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call51 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %62)
  %sub52 = sub nsw i32 %61, %call51
  %63 = load i32, i32* %y1, align 4
  %64 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call53 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %64)
  %sub54 = sub nsw i32 %63, %call53
  %65 = load i32, i32* %push_undo, align 4
  call void @gimp_item_translate(%struct._GimpItem* %60, i32 %sub52, i32 %sub54, i32 %65)
  %66 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %67 = load i32, i32* %push_undo, align 4
  %call55 = call i32 @gimp_text_tool_apply(%struct._GimpTextTool* %66, i32 %67)
  %68 = load i32, i32* %push_undo, align 4
  %tobool56 = icmp ne i32 %68, 0
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.50
  %69 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %image58 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %69, i32 0, i32 8
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image58, align 8
  %call59 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %70)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.50
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %lor.lhs.false.12
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.5
  %71 = load i32, i32* %retval
  ret i32 %71
}

declare double @gimp_pixels_to_units(double, i32, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_undo_stack_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GimpTextBuffer* @gimp_text_buffer_new() #1

declare void @gimp_text_tool_editor_init(%struct._GimpTextTool*) #1

declare void @gimp_tool_control_set_scroll_lock(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_handle_empty_image(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_wants_click(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_wants_double_click(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_wants_triple_click(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_wants_all_key_events(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_precision(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_tool_cursor(%struct._GimpToolControl*, i32) #1

declare void @gimp_tool_control_set_action_object_1(%struct._GimpToolControl*, i8*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_set_image(%struct._GimpTextTool* %text_tool, %struct._GimpImage* %image) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %options = alloca %struct._GimpTextOptions*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image1, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.24

if.end:                                           ; preds = %entry
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image4 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image4, align 8
  %7 = bitcast %struct._GimpImage* %6 to i8*
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %9 = bitcast %struct._GimpTextTool* %8 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpTextTool*)* @gimp_text_tool_layer_changed to i8*), i8* %9)
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image5 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %10, i32 0, i32 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image5, align 8
  %12 = bitcast %struct._GimpImage* %11 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image7 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 8
  %15 = bitcast %struct._GimpImage** %image7 to i8*
  %16 = bitcast i8* %15 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %13, i8** %16)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image9 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 8
  store %struct._GimpImage* %17, %struct._GimpImage** %image9, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool10 = icmp ne %struct._GimpImage* %19, null
  br i1 %tobool10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %21 = bitcast %struct._GimpTextTool* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_tool_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpTool*
  %call14 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %22)
  %23 = bitcast %struct._GimpToolOptions* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_text_options_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpTextOptions*
  store %struct._GimpTextOptions* %24, %struct._GimpTextOptions** %options, align 8
  %25 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image17 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %25, i32 0, i32 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image17, align 8
  %27 = bitcast %struct._GimpImage* %26 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  %29 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image19 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %29, i32 0, i32 8
  %30 = bitcast %struct._GimpImage** %image19 to i8*
  %31 = bitcast i8* %30 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %28, i8** %31)
  %32 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %image20 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %32, i32 0, i32 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image20, align 8
  %34 = bitcast %struct._GimpImage* %33 to i8*
  %35 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %36 = bitcast %struct._GimpTextTool* %35 to i8*
  %call21 = call i64 @g_signal_connect_object(i8* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpTextTool*)* @gimp_text_tool_layer_changed to void ()*), i8* %36, i32 0)
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %37, double* %xres, double* %yres)
  %38 = load %struct._GimpTextOptions*, %struct._GimpTextOptions** %options, align 8
  %size_entry = getelementptr inbounds %struct._GimpTextOptions, %struct._GimpTextOptions* %38, i32 0, i32 15
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %size_entry, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_size_entry_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call22)
  %41 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpSizeEntry*
  %42 = load double, double* %yres, align 8
  call void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry* %41, i32 0, double %42, i32 0)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then, %if.then.11, %if.end.8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_confirm_dialog(%struct._GimpTextTool* %text_tool) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_tool_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTool*
  store %struct._GimpTool* %2, %struct._GimpTool** %tool, align 8
  %3 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %5, i32 0, i32 7
  %6 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %cmp = icmp ne %struct._GimpTextLayer* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_text_tool_confirm_dialog, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %confirm_dialog = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %7, i32 0, i32 9
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %do.end
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %confirm_dialog4 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %9, i32 0, i32 9
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %confirm_dialog4, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_window_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %12)
  br label %return

if.end.7:                                         ; preds = %do.end
  %13 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer8 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %13, i32 0, i32 7
  %14 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer8, align 8
  %15 = bitcast %struct._GimpTextLayer* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_viewable_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpViewable*
  %17 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %call11 = call %struct._GimpToolOptions* @gimp_tool_get_options(%struct._GimpTool* %17)
  %18 = bitcast %struct._GimpToolOptions* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_context_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpContext*
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0)) #6
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0)) #6
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %21 = bitcast %struct._GimpDisplayShell* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0)) #6
  %call19 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %16, %struct._GimpContext* %19, i8* %call14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i8* %call15, %struct._GtkWidget* %22, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* %call18, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 -3, i8* null)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %dialog, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_dialog_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %25, i32 1, i32 -3, i32 -6, i32 -1)
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_window_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call22)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %28, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to i8*
  %31 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %32 = bitcast %struct._GimpTextTool* %31 to i8*
  %call24 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpTextTool*)* @gimp_text_tool_confirm_response to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %call25 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %vbox, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_container_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call26)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %35, i32 12)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_dialog_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call28)
  %38 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkDialog*
  %call30 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %38)
  %39 = bitcast %struct._GtkWidget* %call30 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call31)
  %40 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %40, %struct._GtkWidget* %41, i32 0, i32 0, i32 0)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %42)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([231 x i8], [231 x i8]* @.str.46, i32 0, i32 0)) #6
  %call34 = call %struct._GtkWidget* @gtk_label_new(i8* %call33)
  store %struct._GtkWidget* %call34, %struct._GtkWidget** %label, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_misc_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call35)
  %45 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %45, float 0.000000e+00, float 5.000000e-01)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_label_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call37)
  %48 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkLabel*
  call void @gtk_label_set_line_wrap(%struct._GtkLabel* %48, i32 1)
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call39)
  %51 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %51, %struct._GtkWidget* %52, i32 0, i32 0, i32 0)
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %56 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %confirm_dialog41 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %56, i32 0, i32 9
  store %struct._GtkWidget* %55, %struct._GtkWidget** %confirm_dialog41, align 8
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %58 = bitcast %struct._GtkWidget* %57 to i8*
  %59 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %confirm_dialog42 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %59, i32 0, i32 9
  %60 = bitcast %struct._GtkWidget** %confirm_dialog42 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (void (i8**)* @g_nullify_pointer to void ()*), i8* %60, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %return

return:                                           ; preds = %if.end.7, %if.then.3, %if.else
  ret void
}

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare void @gimp_size_entry_set_resolution(%struct._GimpSizeEntry*, i32, double, i32) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_confirm_response(%struct._GtkWidget* %widget, i32 %response_id, %struct._GimpTextTool* %text_tool) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %layer = alloca %struct._GimpTextLayer*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %layer1 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %0, i32 0, i32 7
  %1 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer1, align 8
  store %struct._GimpTextLayer* %1, %struct._GimpTextLayer** %layer, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %2)
  %3 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %tobool = icmp ne %struct._GimpTextLayer* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %4, i32 0, i32 1
  %5 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool2 = icmp ne %struct._GimpText* %5, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %response_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 -3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.then
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %8 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text3 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %8, i32 0, i32 1
  %9 = load %struct._GimpText*, %struct._GimpText** %text3, align 8
  call void @gimp_text_tool_create_layer(%struct._GimpTextTool* %7, %struct._GimpText* %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  %10 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %11 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %12 = load %struct._GimpTextLayer*, %struct._GimpTextLayer** %layer, align 8
  %text5 = getelementptr inbounds %struct._GimpTextLayer, %struct._GimpTextLayer* %12, i32 0, i32 1
  %13 = load %struct._GimpText*, %struct._GimpText** %text5, align 8
  call void @gimp_text_tool_connect(%struct._GimpTextTool* %10, %struct._GimpTextLayer* %11, %struct._GimpText* %13)
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 1
  %15 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %16 = bitcast %struct._GimpText* %15 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0))
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_editor_start(%struct._GimpTextTool* %18)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %entry
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_label_set_line_wrap(%struct._GtkLabel*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @g_nullify_pointer(i8**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_tool_create_layer(%struct._GimpTextTool* %text_tool, %struct._GimpText* %text) #3 {
entry:
  %text_tool.addr = alloca %struct._GimpTextTool*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %rect_tool = alloca %struct._GimpRectangleTool*, align 8
  %tool = alloca %struct._GimpTool*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %string = alloca i8*, align 8
  %box_unit = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpTextTool* %text_tool, %struct._GimpTextTool** %text_tool.addr, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  %0 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %1 = bitcast %struct._GimpTextTool* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rectangle_tool_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRectangleTool*
  store %struct._GimpRectangleTool* %2, %struct._GimpRectangleTool** %rect_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %4 = bitcast %struct._GimpTextTool* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_tool_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpTool*
  store %struct._GimpTool* %5, %struct._GimpTool** %tool, align 8
  %6 = load %struct._GimpTool*, %struct._GimpTool** %tool, align 8
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %6, i32 0, i32 4
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call4 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %7)
  store %struct._GimpImage* %call4, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_block_drawing(%struct._GimpTextTool* %8)
  %9 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %tobool = icmp ne %struct._GimpText* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %11 = bitcast %struct._GimpText* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_config_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpConfig*
  %call7 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %12)
  %13 = bitcast i8* %call7 to %struct._GimpText*
  store %struct._GimpText* %13, %struct._GimpText** %text.addr, align 8
  br label %if.end.21

if.else:                                          ; preds = %entry
  %14 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %14, i32 0, i32 5
  %15 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %call8 = call i32 @gimp_text_buffer_has_markup(%struct._GimpTextBuffer* %15)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %if.else
  %16 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer11 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %16, i32 0, i32 5
  %17 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer11, align 8
  %call12 = call i8* @gimp_text_buffer_get_markup(%struct._GimpTextBuffer* %17)
  store i8* %call12, i8** %string, align 8
  %18 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %18, i32 0, i32 1
  %19 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %20 = bitcast %struct._GimpText* %19 to i8*
  %21 = load i8*, i8** %string, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 0, i8* null)
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %22 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %buffer14 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %22, i32 0, i32 5
  %23 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer14, align 8
  %call15 = call i8* @gimp_text_buffer_get_text(%struct._GimpTextBuffer* %23)
  store i8* %call15, i8** %string, align 8
  %24 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy16 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %24, i32 0, i32 1
  %25 = load %struct._GimpText*, %struct._GimpText** %proxy16, align 8
  %26 = bitcast %struct._GimpText* %25 to i8*
  %27 = load i8*, i8** %string, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 0, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.10
  %28 = load i8*, i8** %string, align 8
  call void @g_free(i8* %28)
  %29 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy17 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %29, i32 0, i32 1
  %30 = load %struct._GimpText*, %struct._GimpText** %proxy17, align 8
  %31 = bitcast %struct._GimpText* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_config_interface_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpConfig*
  %call20 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %32)
  %33 = bitcast i8* %call20 to %struct._GimpText*
  store %struct._GimpText* %33, %struct._GimpText** %text.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %35 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %call22 = call %struct._GimpLayer* @gimp_text_layer_new(%struct._GimpImage* %34, %struct._GimpText* %35)
  store %struct._GimpLayer* %call22, %struct._GimpLayer** %layer, align 8
  %36 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %37 = bitcast %struct._GimpText* %36 to i8*
  call void @g_object_unref(i8* %37)
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %tobool23 = icmp ne %struct._GimpLayer* %38, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.21
  %39 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_unblock_drawing(%struct._GimpTextTool* %39)
  br label %return

if.end.25:                                        ; preds = %if.end.21
  %40 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %41 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %42 = bitcast %struct._GimpLayer* %41 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_text_layer_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call26)
  %43 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpTextLayer*
  %44 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  call void @gimp_text_tool_connect(%struct._GimpTextTool* %40, %struct._GimpTextLayer* %43, %struct._GimpText* %44)
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0)) #6
  %call29 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %45, i32 31, i8* %call28)
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %46)
  %tobool31 = icmp ne %struct._GimpLayer* %call30, null
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.25
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %48 = bitcast %struct._GimpImage* %47 to i8*
  %49 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %50 = bitcast %struct._GimpTextTool* %49 to i8*
  %call33 = call i32 @g_signal_handlers_block_matched(i8* %48, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpTextTool*)* @gimp_text_tool_layer_changed to i8*), i8* %50)
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call34 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %51)
  call void @floating_sel_anchor(%struct._GimpLayer* %call34)
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %53 = bitcast %struct._GimpImage* %52 to i8*
  %54 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %55 = bitcast %struct._GimpTextTool* %54 to i8*
  %call35 = call i32 @g_signal_handlers_unblock_matched(i8* %53, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpTextTool*)* @gimp_text_tool_layer_changed to i8*), i8* %55)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.25
  %56 = load %struct._GimpRectangleTool*, %struct._GimpRectangleTool** %rect_tool, align 8
  %57 = bitcast %struct._GimpRectangleTool* %56 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i32* %x1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32* %y1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32* %x2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32* %y2, i8* null)
  %58 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %59 = bitcast %struct._GimpLayer* %58 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_item_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call37)
  %60 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpItem*
  %61 = load i32, i32* %x1, align 4
  %62 = load i32, i32* %y1, align 4
  call void @gimp_item_set_offset(%struct._GimpItem* %60, i32 %61, i32 %62)
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %64 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call39 = call i32 @gimp_image_add_layer(%struct._GimpImage* %63, %struct._GimpLayer* %64, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %65 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %text_box_fixed = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %65, i32 0, i32 12
  %66 = load i32, i32* %text_box_fixed, align 4
  %tobool40 = icmp ne i32 %66, 0
  br i1 %tobool40, label %if.then.41, label %if.else.50

if.then.41:                                       ; preds = %if.end.36
  %67 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy42 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %67, i32 0, i32 1
  %68 = load %struct._GimpText*, %struct._GimpText** %proxy42, align 8
  %box_unit43 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %68, i32 0, i32 20
  %69 = load i32, i32* %box_unit43, align 4
  store i32 %69, i32* %box_unit, align 4
  %70 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %70, double* %xres, double* %yres)
  %71 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %proxy44 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %71, i32 0, i32 1
  %72 = load %struct._GimpText*, %struct._GimpText** %proxy44, align 8
  %73 = bitcast %struct._GimpText* %72 to i8*
  %74 = load i32, i32* %x2, align 4
  %75 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %74, %75
  %conv = sitofp i32 %sub to double
  %76 = load i32, i32* %box_unit, align 4
  %77 = load double, double* %xres, align 8
  %call45 = call double @gimp_pixels_to_units(double %conv, i32 %76, double %77)
  %78 = load i32, i32* %y2, align 4
  %79 = load i32, i32* %y1, align 4
  %sub46 = sub nsw i32 %78, %79
  %conv47 = sitofp i32 %sub46 to double
  %80 = load i32, i32* %box_unit, align 4
  %81 = load double, double* %yres, align 8
  %call48 = call double @gimp_pixels_to_units(double %conv47, i32 %80, double %81)
  call void (i8*, i8*, ...) @g_object_set(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), double %call45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), double %call48, i8* null)
  %82 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %call49 = call i32 @gimp_text_tool_apply(%struct._GimpTextTool* %82, i32 1)
  br label %if.end.51

if.else.50:                                       ; preds = %if.end.36
  %83 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_frame_item(%struct._GimpTextTool* %83)
  %84 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  call void @gimp_text_tool_unblock_drawing(%struct._GimpTextTool* %84)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %if.then.41
  %85 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call52 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %85)
  %86 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %86)
  %87 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool.addr, align 8
  %88 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %89 = bitcast %struct._GimpLayer* %88 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_drawable_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call53)
  %90 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDrawable*
  %call55 = call i32 @gimp_text_tool_set_drawable(%struct._GimpTextTool* %87, %struct._GimpDrawable* %90, i32 0)
  br label %return

return:                                           ; preds = %if.end.51, %if.then.24
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare i32 @gimp_text_buffer_has_markup(%struct._GimpTextBuffer*) #1

declare i8* @gimp_text_buffer_get_markup(%struct._GimpTextBuffer*) #1

declare i8* @gimp_text_buffer_get_text(%struct._GimpTextBuffer*) #1

declare void @g_free(i8*) #1

declare %struct._GimpLayer* @gimp_text_layer_new(%struct._GimpImage*, %struct._GimpText*) #1

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare void @floating_sel_anchor(%struct._GimpLayer*) #1

declare void @gimp_item_set_offset(%struct._GimpItem*, i32, i32) #1

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #1

declare void @gimp_rectangle_tool_frame_item(%struct._GimpRectangleTool*, %struct._GimpItem*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
