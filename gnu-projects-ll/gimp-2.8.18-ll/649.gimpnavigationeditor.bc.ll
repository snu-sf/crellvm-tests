; ModuleID = './app/display/gimpnavigationeditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpNavigationEditorClass = type { %struct._GimpEditorClass }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkArg = type opaque
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
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
%struct._GdkDrawable = type { %struct._GObject }
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
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
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
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpNavigationEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpDisplayShell*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
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
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpToolInfo = type opaque
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
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDocked = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._GtkScale = type { %struct._GtkRange, i32, i8 }
%struct._GtkRange = type { %struct._GtkWidget, %struct._GtkAdjustment*, i32, i8, i32, i32, %struct._GdkRectangle, i32, i32, i32, i8, %struct._GtkRangeLayout*, %struct._GtkRangeStepTimer*, i32, i32, i32, %struct._GdkDrawable* }
%struct._GtkRangeLayout = type opaque
%struct._GtkRangeStepTimer = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpNavigationView = type opaque

@gimp_navigation_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpNavigationEditor\00", align 1
@gimp_navigation_editor_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockedInterface*)* @gimp_navigation_editor_docked_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_navigation_editor_popup = private unnamed_addr constant [29 x i8] c"gimp_navigation_editor_popup\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GTK_IS_WIDGET (widget)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@gimp_navigation_editor_parent_class = internal global i8* null, align 8
@GimpNavigationEditor_private_offset = internal global i32 0, align 4
@__func__.gimp_navigation_editor_set_shell = private unnamed_addr constant [33 x i8] c"gimp_navigation_editor_set_shell\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"GIMP_IS_NAVIGATION_EDITOR (editor)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"! shell || GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"scaled\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"scrolled\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"display-changed\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"marker-changed\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"scroll\00", align 1
@__func__.gimp_navigation_editor_zoom = private unnamed_addr constant [28 x i8] c"gimp_navigation_editor_zoom\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"direction != GIMP_ZOOM_TO\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"gimpnavigationeditor.c\00", align 1
@__func__.gimp_navigation_editor_scroll = private unnamed_addr constant [30 x i8] c"gimp_navigation_editor_scroll\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"adj != NULL\00", align 1
@__func__.gimp_navigation_editor_new_private = private unnamed_addr constant [35 x i8] c"gimp_navigation_editor_new_private\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"menu_factory == NULL || GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"shell == NULL || GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"menu_factory || shell\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"menu-identifier\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"<NavigationEditor>\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"view-zoom-out\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"view-zoom-in\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"view-zoom-1-1\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"view-zoom-fit-in\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"view-zoom-fill\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"view-shrink-wrap\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"100%\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"gimp-texture\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_navigation_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_navigation_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_navigation_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_editor_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_navigation_editor_class_intern_init to void (i8*, i8*)*), i32 232, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpNavigationEditor*)* @gimp_navigation_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_docked_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_navigation_editor_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_navigation_editor_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_navigation_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_navigation_editor_parent_class, align 8
  %1 = load i32, i32* @GimpNavigationEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpNavigationEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpNavigationEditorClass*
  call void @gimp_navigation_editor_class_init(%struct._GimpNavigationEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_init(%struct._GimpNavigationEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  %0 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %0, i32 0, i32 1
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  %1 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %1, i32 0, i32 2
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %shell, align 8
  %2 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %scale_timeout = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %2, i32 0, i32 12
  store i32 0, i32* %scale_timeout, align 4
  %call = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %frame, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_frame_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %5, i32 1)
  %6 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %7 = bitcast %struct._GimpNavigationEditor* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_box_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkBox*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %8, %struct._GtkWidget* %9, i32 1, i32 1, i32 0)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  %call5 = call i64 @gimp_navigation_view_get_type() #7
  %call6 = call i64 @gimp_image_get_type() #7
  %call7 = call %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext* null, i64 %call5, i64 %call6, i32 32, i32 0, i32 1)
  %11 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %11, i32 0, i32 3
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %view, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %15 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view10 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %15, i32 0, i32 3
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %view10, align 8
  call void @gtk_container_add(%struct._GtkContainer* %14, %struct._GtkWidget* %16)
  %17 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view11 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %17, i32 0, i32 3
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %view11, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  %19 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view12 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %19, i32 0, i32 3
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %view12, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  %22 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %23 = bitcast %struct._GimpNavigationEditor* %22 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpNavigationView*, double, double, double, double, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_marker_changed to void ()*), i8* %23, void (i8*, %struct._GClosure*)* null, i32 0)
  %24 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view14 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %24, i32 0, i32 3
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %view14, align 8
  %26 = bitcast %struct._GtkWidget* %25 to i8*
  %27 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %28 = bitcast %struct._GimpNavigationEditor* %27 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpNavigationView*, i32, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_zoom to void ()*), i8* %28, void (i8*, %struct._GClosure*)* null, i32 0)
  %29 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view16 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %29, i32 0, i32 3
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %view16, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %32 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %33 = bitcast %struct._GimpNavigationEditor* %32 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), void ()* bitcast (void (%struct._GimpNavigationView*, i32, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_scroll to void ()*), i8* %33, void (i8*, %struct._GClosure*)* null, i32 0)
  %34 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %35 = bitcast %struct._GimpNavigationEditor* %34 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call18)
  %36 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %36, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_docked_iface_init(%struct._GimpDockedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockedInterface*, align 8
  store %struct._GimpDockedInterface* %iface, %struct._GimpDockedInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockedInterface*, %struct._GimpDockedInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %0, i32 0, i32 8
  store void (%struct._GimpDocked*, %struct._GimpContext*)* @gimp_navigation_editor_set_context, void (%struct._GimpDocked*, %struct._GimpContext*)** %set_context, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_navigation_editor_new(%struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call = call %struct._GtkWidget* @gimp_navigation_editor_new_private(%struct._GimpMenuFactory* %0, %struct._GimpDisplayShell* null)
  ret %struct._GtkWidget* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_navigation_editor_new_private(%struct._GimpMenuFactory* %menu_factory, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %editor = alloca %struct._GimpNavigationEditor*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %gimp = alloca %struct._Gimp*, align 8
  %config = alloca %struct._GimpDisplayConfig*, align 8
  %view = alloca %struct._GimpView*, align 8
  %hscale = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %cmp = icmp eq %struct._GimpMenuFactory* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %2 = bitcast %struct._GimpMenuFactory* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #7
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_navigation_editor_new_private, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cmp13 = icmp eq %struct._GimpDisplayShell* %14, null
  br i1 %cmp13, label %if.then.38, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %do.body.12
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %16 = bitcast %struct._GimpDisplayShell* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_display_shell_get_type() #7
  store i64 %call19, i64* %__t18, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %lor.lhs.false.14
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type29, align 8
  %23 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %22, %23
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %25 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %26 = load i32, i32* %__r21, align 4
  store i32 %26, i32* %tmp36
  %27 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.35, %do.body.12
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_navigation_editor_new_private, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %28 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %tobool43 = icmp ne %struct._GimpMenuFactory* %28, null
  br i1 %tobool43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %do.body.42
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tobool45 = icmp ne %struct._GimpDisplayShell* %29, null
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %lor.lhs.false.44, %do.body.42
  br label %if.end.48

if.else.47:                                       ; preds = %lor.lhs.false.44
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_navigation_editor_new_private, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.48:                                        ; preds = %if.then.46
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tobool50 = icmp ne %struct._GimpDisplayShell* %30, null
  br i1 %tobool50, label %if.then.51, label %if.else.66

if.then.51:                                       ; preds = %do.end.49
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 1
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp53 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp53, align 8
  store %struct._Gimp* %33, %struct._Gimp** %gimp, align 8
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display55 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 1
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display55, align 8
  %config56 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %35, i32 0, i32 2
  %36 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config56, align 8
  store %struct._GimpDisplayConfig* %36, %struct._GimpDisplayConfig** %config, align 8
  %call58 = call i64 @gimp_navigation_editor_get_type() #7
  %call59 = call i8* (i64, i8*, ...) @g_object_new(i64 %call58, i8* null)
  %37 = bitcast i8* %call59 to %struct._GimpNavigationEditor*
  store %struct._GimpNavigationEditor* %37, %struct._GimpNavigationEditor** %editor, align 8
  %38 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %view60 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %38, i32 0, i32 3
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %view60, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_view_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call61)
  %41 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpView*
  store %struct._GimpView* %41, %struct._GimpView** %view, align 8
  %42 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %42, i32 0, i32 3
  %43 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %44 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %nav_preview_size = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %44, i32 0, i32 19
  %45 = load i32, i32* %nav_preview_size, align 4
  %mul = mul i32 %45, 3
  %46 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer63 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %46, i32 0, i32 3
  %47 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer63, align 8
  %border_width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %47, i32 0, i32 6
  %48 = load i32, i32* %border_width, align 4
  call void @gimp_view_renderer_set_size(%struct._GimpViewRenderer* %43, i32 %mul, i32 %48)
  %49 = load %struct._GimpView*, %struct._GimpView** %view, align 8
  %renderer64 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %49, i32 0, i32 3
  %50 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer64, align 8
  %51 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call65 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %51)
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %50, %struct._GimpContext* %call65)
  %52 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_navigation_editor_set_shell(%struct._GimpNavigationEditor* %52, %struct._GimpDisplayShell* %53)
  br label %if.end.115

if.else.66:                                       ; preds = %do.end.49
  %call69 = call i64 @gimp_navigation_editor_get_type() #7
  %54 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %call70 = call i8* (i64, i8*, ...) @g_object_new(i64 %call69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct._GimpMenuFactory* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* null)
  %55 = bitcast i8* %call70 to %struct._GimpNavigationEditor*
  store %struct._GimpNavigationEditor* %55, %struct._GimpNavigationEditor** %editor, align 8
  %56 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %view71 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %56, i32 0, i32 3
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %view71, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %57, i32 96, i32 96)
  %58 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %view72 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %58, i32 0, i32 3
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %view72, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call73 = call i64 @gimp_view_get_type() #7
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call73)
  %61 = bitcast %struct._GTypeInstance* %call74 to %struct._GimpView*
  call void @gimp_view_set_expand(%struct._GimpView* %61, i32 1)
  %62 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %63 = bitcast %struct._GimpNavigationEditor* %62 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_editor_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call75)
  %64 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpEditor*
  %call77 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* null)
  %65 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_out_button = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %65, i32 0, i32 6
  store %struct._GtkWidget* %call77, %struct._GtkWidget** %zoom_out_button, align 8
  %66 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %67 = bitcast %struct._GimpNavigationEditor* %66 to %struct._GTypeInstance*
  %call78 = call i64 @gimp_editor_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call78)
  %68 = bitcast %struct._GTypeInstance* %call79 to %struct._GimpEditor*
  %call80 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* null)
  %69 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_in_button = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %69, i32 0, i32 7
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %zoom_in_button, align 8
  %70 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %71 = bitcast %struct._GimpNavigationEditor* %70 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_editor_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call81)
  %72 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpEditor*
  %call83 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8* null)
  %73 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_100_button = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %73, i32 0, i32 8
  store %struct._GtkWidget* %call83, %struct._GtkWidget** %zoom_100_button, align 8
  %74 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %75 = bitcast %struct._GimpNavigationEditor* %74 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_editor_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call84)
  %76 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpEditor*
  %call86 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* null)
  %77 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_fit_in_button = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %77, i32 0, i32 9
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %zoom_fit_in_button, align 8
  %78 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %79 = bitcast %struct._GimpNavigationEditor* %78 to %struct._GTypeInstance*
  %call87 = call i64 @gimp_editor_get_type() #7
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call87)
  %80 = bitcast %struct._GTypeInstance* %call88 to %struct._GimpEditor*
  %call89 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* null)
  %81 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_fill_button = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %81, i32 0, i32 10
  store %struct._GtkWidget* %call89, %struct._GtkWidget** %zoom_fill_button, align 8
  %82 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %83 = bitcast %struct._GimpNavigationEditor* %82 to %struct._GTypeInstance*
  %call90 = call i64 @gimp_editor_get_type() #7
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call90)
  %84 = bitcast %struct._GTypeInstance* %call91 to %struct._GimpEditor*
  %call92 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8* null)
  %85 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %shrink_wrap_button = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %85, i32 0, i32 11
  store %struct._GtkWidget* %call92, %struct._GtkWidget** %shrink_wrap_button, align 8
  %call93 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %hbox, align 8
  %86 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %87 = bitcast %struct._GimpNavigationEditor* %86 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_box_get_type() #7
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call94)
  %88 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %call96 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double -8.000000e+00, double 8.000000e+00, double 5.000000e-01, double 1.000000e+00, double 0.000000e+00)
  %91 = bitcast %struct._GtkObject* %call96 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_adjustment_get_type() #7
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call97)
  %92 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkAdjustment*
  %93 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_adjustment = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %93, i32 0, i32 5
  store %struct._GtkAdjustment* %92, %struct._GtkAdjustment** %zoom_adjustment, align 8
  %94 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_adjustment99 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %94, i32 0, i32 5
  %95 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %zoom_adjustment99, align 8
  %96 = bitcast %struct._GtkAdjustment* %95 to i8*
  %97 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %98 = bitcast %struct._GimpNavigationEditor* %97 to i8*
  %call100 = call i64 @g_signal_connect_data(i8* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_zoom_adj_changed to void ()*), i8* %98, void (i8*, %struct._GClosure*)* null, i32 0)
  %99 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_adjustment101 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %99, i32 0, i32 5
  %100 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %zoom_adjustment101, align 8
  %call102 = call %struct._GtkWidget* @gtk_scale_new(i32 0, %struct._GtkAdjustment* %100)
  store %struct._GtkWidget* %call102, %struct._GtkWidget** %hscale, align 8
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %hscale, align 8
  %102 = bitcast %struct._GtkWidget* %101 to %struct._GTypeInstance*
  %call103 = call i64 @gtk_scale_get_type() #7
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call103)
  %103 = bitcast %struct._GTypeInstance* %call104 to %struct._GtkScale*
  call void @gtk_scale_set_draw_value(%struct._GtkScale* %103, i32 0)
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_box_get_type() #7
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call105)
  %106 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkBox*
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %hscale, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %106, %struct._GtkWidget* %107, i32 1, i32 1, i32 0)
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %hscale, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %108)
  %call107 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0))
  %109 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_label = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %109, i32 0, i32 4
  store %struct._GtkWidget* %call107, %struct._GtkWidget** %zoom_label, align 8
  %110 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_label108 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %110, i32 0, i32 4
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_label108, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call109 = call i64 @gtk_label_get_type() #7
  %call110 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call109)
  %113 = bitcast %struct._GTypeInstance* %call110 to %struct._GtkLabel*
  call void @gtk_label_set_width_chars(%struct._GtkLabel* %113, i32 7)
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_box_get_type() #7
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call111)
  %116 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkBox*
  %117 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_label113 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %117, i32 0, i32 4
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_label113, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %116, %struct._GtkWidget* %118, i32 0, i32 0, i32 0)
  %119 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_label114 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %119, i32 0, i32 4
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_label114, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %120)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.66, %if.then.51
  %121 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %view116 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %121, i32 0, i32 3
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %view116, align 8
  %123 = bitcast %struct._GtkWidget* %122 to %struct._GTypeInstance*
  %call117 = call i64 @gimp_view_get_type() #7
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call117)
  %124 = bitcast %struct._GTypeInstance* %call118 to %struct._GimpView*
  %renderer119 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %124, i32 0, i32 3
  %125 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer119, align 8
  call void @gimp_view_renderer_set_background(%struct._GimpViewRenderer* %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0))
  %126 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %127 = bitcast %struct._GimpNavigationEditor* %126 to %struct._GTypeInstance*
  %call120 = call i64 @gtk_widget_get_type() #7
  %call121 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %127, i64 %call120)
  %128 = bitcast %struct._GTypeInstance* %call121 to %struct._GtkWidget*
  store %struct._GtkWidget* %128, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.115, %if.else.47, %if.else.39, %if.else.10
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %129
}

; Function Attrs: nounwind uwtable
define void @gimp_navigation_editor_popup(%struct._GimpDisplayShell* %shell, %struct._GtkWidget* %widget, i32 %click_x, i32 %click_y) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %click_x.addr = alloca i32, align 4
  %click_y.addr = alloca i32, align 4
  %style = alloca %struct._GtkStyle*, align 8
  %editor = alloca %struct._GimpNavigationEditor*, align 8
  %view = alloca %struct._GimpNavigationView*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %view_marker_x = alloca i32, align 4
  %view_marker_y = alloca i32, align 4
  %view_marker_width = alloca i32, align 4
  %view_marker_height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %frame = alloca %struct._GtkWidget*, align 8
  %bin = alloca %struct._GtkWidget*, align 8
  %x_origin = alloca i32, align 4
  %y_origin = alloca i32, align 4
  %popup_width = alloca i32, align 4
  %popup_height = alloca i32, align 4
  %border_width = alloca i32, align 4
  %border_height = alloca i32, align 4
  %screen_click_x = alloca i32, align 4
  %screen_click_y = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %click_x, i32* %click_x.addr, align 4
  store i32 %click_y, i32* %click_y.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %0)
  store %struct._GtkStyle* %call, %struct._GtkStyle** %style, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %2 = bitcast %struct._GimpDisplayShell* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_display_shell_get_type() #7
  store i64 %call1, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_navigation_editor_popup, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gtk_widget_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.12
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.12
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

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_navigation_editor_popup, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 75
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup, align 8
  %tobool40 = icmp ne %struct._GtkWidget* %28, null
  br i1 %tobool40, label %if.else.62, label %if.then.41

if.then.41:                                       ; preds = %do.end.39
  %call43 = call %struct._GtkWidget* @gtk_window_new(i32 1)
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup44 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 75
  store %struct._GtkWidget* %call43, %struct._GtkWidget** %nav_popup44, align 8
  %call45 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %frame, align 8
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_frame_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call46)
  %32 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %32, i32 2)
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup48 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 75
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup48, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_container_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call49)
  %36 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkContainer*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_container_add(%struct._GtkContainer* %36, %struct._GtkWidget* %37)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call51 = call %struct._GtkWidget* @gimp_navigation_editor_new_private(%struct._GimpMenuFactory* null, %struct._GimpDisplayShell* %39)
  %40 = bitcast %struct._GtkWidget* %call51 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_navigation_editor_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call52)
  %41 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpNavigationEditor*
  store %struct._GimpNavigationEditor* %41, %struct._GimpNavigationEditor** %editor, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_container_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call54)
  %44 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkContainer*
  %45 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %46 = bitcast %struct._GimpNavigationEditor* %45 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_widget_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call56)
  %47 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkWidget*
  call void @gtk_container_add(%struct._GtkContainer* %44, %struct._GtkWidget* %47)
  %48 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %49 = bitcast %struct._GimpNavigationEditor* %48 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_widget_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call58)
  %50 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %view60 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %51, i32 0, i32 3
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %view60, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %55 = bitcast %struct._GimpDisplayShell* %54 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*)* @gimp_navigation_editor_button_release to void ()*), i8* %55, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.73

if.else.62:                                       ; preds = %do.end.39
  %56 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup64 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %56, i32 0, i32 75
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup64, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_bin_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call65)
  %59 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkBin*
  %call67 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %59)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %bin, align 8
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %bin, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_bin_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call68)
  %62 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBin*
  %call70 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %62)
  %63 = bitcast %struct._GtkWidget* %call70 to %struct._GTypeInstance*
  %call71 = call i64 @gimp_navigation_editor_get_type() #7
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call71)
  %64 = bitcast %struct._GTypeInstance* %call72 to %struct._GimpNavigationEditor*
  store %struct._GimpNavigationEditor* %64, %struct._GimpNavigationEditor** %editor, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.62, %if.then.41
  %65 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %view74 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %65, i32 0, i32 3
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %view74, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_navigation_view_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call75)
  %68 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpNavigationView*
  store %struct._GimpNavigationView* %68, %struct._GimpNavigationView** %view, align 8
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call77 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %69)
  store %struct._GdkScreen* %call77, %struct._GdkScreen** %screen, align 8
  %70 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup78 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %70, i32 0, i32 75
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup78, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call79 = call i64 @gtk_window_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call79)
  %73 = bitcast %struct._GTypeInstance* %call80 to %struct._GtkWindow*
  %74 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  call void @gtk_window_set_screen(%struct._GtkWindow* %73, %struct._GdkScreen* %74)
  %75 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view, align 8
  call void @gimp_navigation_view_get_local_marker(%struct._GimpNavigationView* %75, i32* %view_marker_x, i32* %view_marker_y, i32* %view_marker_width, i32* %view_marker_height)
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call89 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %76)
  %call90 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %call89, i32* %x_origin, i32* %y_origin)
  %77 = load i32, i32* %x_origin, align 4
  %78 = load i32, i32* %click_x.addr, align 4
  %add = add nsw i32 %77, %78
  store i32 %add, i32* %screen_click_x, align 4
  %79 = load i32, i32* %y_origin, align 4
  %80 = load i32, i32* %click_y.addr, align 4
  %add91 = add nsw i32 %79, %80
  store i32 %add91, i32* %screen_click_y, align 4
  %81 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %81, i32 0, i32 12
  %82 = load i32, i32* %xthickness, align 4
  %mul = mul nsw i32 2, %82
  store i32 %mul, i32* %border_width, align 4
  %83 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %83, i32 0, i32 13
  %84 = load i32, i32* %ythickness, align 4
  %mul92 = mul nsw i32 2, %84
  store i32 %mul92, i32* %border_height, align 4
  %85 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view, align 8
  %86 = bitcast %struct._GimpNavigationView* %85 to %struct._GTypeInstance*
  %call93 = call i64 @gimp_view_get_type() #7
  %call94 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call93)
  %87 = bitcast %struct._GTypeInstance* %call94 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %87, i32 0, i32 3
  %88 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %width = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %88, i32 0, i32 4
  %89 = load i32, i32* %width, align 4
  %90 = load i32, i32* %border_width, align 4
  %mul95 = mul nsw i32 2, %90
  %sub = sub nsw i32 %89, %mul95
  store i32 %sub, i32* %popup_width, align 4
  %91 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view, align 8
  %92 = bitcast %struct._GimpNavigationView* %91 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_view_get_type() #7
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call96)
  %93 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpView*
  %renderer98 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %93, i32 0, i32 3
  %94 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer98, align 8
  %height = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %94, i32 0, i32 5
  %95 = load i32, i32* %height, align 4
  %96 = load i32, i32* %border_height, align 4
  %mul99 = mul nsw i32 2, %96
  %sub100 = sub nsw i32 %95, %mul99
  store i32 %sub100, i32* %popup_height, align 4
  %97 = load i32, i32* %screen_click_x, align 4
  %98 = load i32, i32* %border_width, align 4
  %sub101 = sub nsw i32 %97, %98
  %99 = load i32, i32* %view_marker_x, align 4
  %sub102 = sub nsw i32 %sub101, %99
  %100 = load i32, i32* %view_marker_width, align 4
  %div = sdiv i32 %100, 2
  %sub103 = sub nsw i32 %sub102, %div
  store i32 %sub103, i32* %x, align 4
  %101 = load i32, i32* %screen_click_y, align 4
  %102 = load i32, i32* %border_height, align 4
  %sub104 = sub nsw i32 %101, %102
  %103 = load i32, i32* %view_marker_y, align 4
  %sub105 = sub nsw i32 %sub104, %103
  %104 = load i32, i32* %view_marker_height, align 4
  %div106 = sdiv i32 %104, 2
  %sub107 = sub nsw i32 %sub105, %div106
  store i32 %sub107, i32* %y, align 4
  %105 = load i32, i32* %x, align 4
  %106 = load i32, i32* %screen_click_x, align 4
  %cmp108 = icmp sgt i32 %105, %106
  br i1 %cmp108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.73
  %107 = load i32, i32* %screen_click_x, align 4
  br label %cond.end.114

cond.false:                                       ; preds = %if.end.73
  %108 = load i32, i32* %x, align 4
  %109 = load i32, i32* %screen_click_x, align 4
  %110 = load i32, i32* %popup_width, align 4
  %sub109 = sub nsw i32 %109, %110
  %cmp110 = icmp slt i32 %108, %sub109
  br i1 %cmp110, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %cond.false
  %111 = load i32, i32* %screen_click_x, align 4
  %112 = load i32, i32* %popup_width, align 4
  %sub112 = sub nsw i32 %111, %112
  br label %cond.end

cond.false.113:                                   ; preds = %cond.false
  %113 = load i32, i32* %x, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.113, %cond.true.111
  %cond = phi i32 [ %sub112, %cond.true.111 ], [ %113, %cond.false.113 ]
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.end, %cond.true
  %cond115 = phi i32 [ %107, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond115, i32* %x, align 4
  %114 = load i32, i32* %y, align 4
  %115 = load i32, i32* %screen_click_y, align 4
  %cmp116 = icmp sgt i32 %114, %115
  br i1 %cmp116, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %cond.end.114
  %116 = load i32, i32* %screen_click_y, align 4
  br label %cond.end.126

cond.false.118:                                   ; preds = %cond.end.114
  %117 = load i32, i32* %y, align 4
  %118 = load i32, i32* %screen_click_y, align 4
  %119 = load i32, i32* %popup_height, align 4
  %sub119 = sub nsw i32 %118, %119
  %cmp120 = icmp slt i32 %117, %sub119
  br i1 %cmp120, label %cond.true.121, label %cond.false.123

cond.true.121:                                    ; preds = %cond.false.118
  %120 = load i32, i32* %screen_click_y, align 4
  %121 = load i32, i32* %popup_height, align 4
  %sub122 = sub nsw i32 %120, %121
  br label %cond.end.124

cond.false.123:                                   ; preds = %cond.false.118
  %122 = load i32, i32* %y, align 4
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.121
  %cond125 = phi i32 [ %sub122, %cond.true.121 ], [ %122, %cond.false.123 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.124, %cond.true.117
  %cond127 = phi i32 [ %116, %cond.true.117 ], [ %cond125, %cond.end.124 ]
  store i32 %cond127, i32* %y, align 4
  %123 = load i32, i32* %x, align 4
  %124 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call128 = call i32 @gdk_screen_get_width(%struct._GdkScreen* %124)
  %125 = load i32, i32* %popup_width, align 4
  %sub129 = sub nsw i32 %call128, %125
  %cmp130 = icmp sgt i32 %123, %sub129
  br i1 %cmp130, label %cond.true.131, label %cond.false.134

cond.true.131:                                    ; preds = %cond.end.126
  %126 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call132 = call i32 @gdk_screen_get_width(%struct._GdkScreen* %126)
  %127 = load i32, i32* %popup_width, align 4
  %sub133 = sub nsw i32 %call132, %127
  br label %cond.end.140

cond.false.134:                                   ; preds = %cond.end.126
  %128 = load i32, i32* %x, align 4
  %cmp135 = icmp slt i32 %128, 0
  br i1 %cmp135, label %cond.true.136, label %cond.false.137

cond.true.136:                                    ; preds = %cond.false.134
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.false.134
  %129 = load i32, i32* %x, align 4
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.136
  %cond139 = phi i32 [ 0, %cond.true.136 ], [ %129, %cond.false.137 ]
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.138, %cond.true.131
  %cond141 = phi i32 [ %sub133, %cond.true.131 ], [ %cond139, %cond.end.138 ]
  store i32 %cond141, i32* %x, align 4
  %130 = load i32, i32* %y, align 4
  %131 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call142 = call i32 @gdk_screen_get_height(%struct._GdkScreen* %131)
  %132 = load i32, i32* %popup_height, align 4
  %sub143 = sub nsw i32 %call142, %132
  %cmp144 = icmp sgt i32 %130, %sub143
  br i1 %cmp144, label %cond.true.145, label %cond.false.148

cond.true.145:                                    ; preds = %cond.end.140
  %133 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call146 = call i32 @gdk_screen_get_height(%struct._GdkScreen* %133)
  %134 = load i32, i32* %popup_height, align 4
  %sub147 = sub nsw i32 %call146, %134
  br label %cond.end.154

cond.false.148:                                   ; preds = %cond.end.140
  %135 = load i32, i32* %y, align 4
  %cmp149 = icmp slt i32 %135, 0
  br i1 %cmp149, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %cond.false.148
  br label %cond.end.152

cond.false.151:                                   ; preds = %cond.false.148
  %136 = load i32, i32* %y, align 4
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.150
  %cond153 = phi i32 [ 0, %cond.true.150 ], [ %136, %cond.false.151 ]
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.end.152, %cond.true.145
  %cond155 = phi i32 [ %sub147, %cond.true.145 ], [ %cond153, %cond.end.152 ]
  store i32 %cond155, i32* %y, align 4
  %137 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup156 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %137, i32 0, i32 75
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup156, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_window_get_type() #7
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call157)
  %140 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkWindow*
  %141 = load i32, i32* %x, align 4
  %142 = load i32, i32* %y, align 4
  call void @gtk_window_move(%struct._GtkWindow* %140, i32 %141, i32 %142)
  %143 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup159 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %143, i32 0, i32 75
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup159, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %144)
  call void @gdk_flush()
  %145 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view, align 8
  %146 = load i32, i32* %view_marker_width, align 4
  %div160 = sdiv i32 %146, 2
  %147 = load i32, i32* %view_marker_height, align 4
  %div161 = sdiv i32 %147, 2
  call void @gimp_navigation_view_set_motion_offset(%struct._GimpNavigationView* %145, i32 %div160, i32 %div161)
  %148 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view, align 8
  call void @gimp_navigation_view_grab_pointer(%struct._GimpNavigationView* %148)
  br label %return

return:                                           ; preds = %cond.end.154, %if.else.37, %if.else.10
  ret void
}

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkWidget* @gtk_window_new(i32) #1

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_navigation_editor_button_release(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %nav_popup = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 75
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_navigation_view_get_type() #2

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gimp_navigation_view_get_local_marker(%struct._GimpNavigationView*, i32*, i32*, i32*, i32*) #1

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare i32 @gdk_screen_get_width(%struct._GdkScreen*) #1

declare i32 @gdk_screen_get_height(%struct._GdkScreen*) #1

declare void @gtk_window_move(%struct._GtkWindow*, i32, i32) #1

declare void @gdk_flush() #1

declare void @gimp_navigation_view_set_motion_offset(%struct._GimpNavigationView*, i32, i32) #1

declare void @gimp_navigation_view_grab_pointer(%struct._GimpNavigationView*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_class_init(%struct._GimpNavigationEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpNavigationEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpNavigationEditorClass* %klass, %struct._GimpNavigationEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpNavigationEditorClass*, %struct._GimpNavigationEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpNavigationEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_navigation_editor_dispose, void (%struct._GObject*)** %dispose, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpNavigationEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_navigation_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpNavigationEditor*
  store %struct._GimpNavigationEditor* %2, %struct._GimpNavigationEditor** %editor, align 8
  %3 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %shell = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  call void @gimp_navigation_editor_set_shell(%struct._GimpNavigationEditor* %5, %struct._GimpDisplayShell* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %scale_timeout = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %6, i32 0, i32 12
  %7 = load i32, i32* %scale_timeout, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %scale_timeout4 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %8, i32 0, i32 12
  %9 = load i32, i32* %scale_timeout4, align 4
  %call5 = call i32 @g_source_remove(i32 %9)
  %10 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %scale_timeout6 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %10, i32 0, i32 12
  store i32 0, i32* %scale_timeout6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %11 = load i8*, i8** @gimp_navigation_editor_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call8 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 5
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %14(%struct._GObject* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_set_shell(%struct._GimpNavigationEditor* %editor, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpNavigationEditor* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_navigation_editor_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_navigation_editor_set_shell, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.95

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tobool12 = icmp ne %struct._GimpDisplayShell* %13, null
  br i1 %tobool12, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %15 = bitcast %struct._GimpDisplayShell* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_display_shell_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_navigation_editor_set_shell, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.95

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %28 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell40 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %28, i32 0, i32 2
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell40, align 8
  %cmp41 = icmp eq %struct._GimpDisplayShell* %27, %29
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end.39
  br label %if.end.95

if.end.43:                                        ; preds = %do.end.39
  %30 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell44 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %30, i32 0, i32 2
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell44, align 8
  %tobool45 = icmp ne %struct._GimpDisplayShell* %31, null
  br i1 %tobool45, label %if.then.46, label %if.else.53

if.then.46:                                       ; preds = %if.end.43
  %32 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell47 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %32, i32 0, i32 2
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell47, align 8
  %34 = bitcast %struct._GimpDisplayShell* %33 to i8*
  %35 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %36 = bitcast %struct._GimpNavigationEditor* %35 to i8*
  %call48 = call i32 @g_signal_handlers_disconnect_matched(i8* %34, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_shell_scaled to i8*), i8* %36)
  %37 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell49 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %37, i32 0, i32 2
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell49, align 8
  %39 = bitcast %struct._GimpDisplayShell* %38 to i8*
  %40 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %41 = bitcast %struct._GimpNavigationEditor* %40 to i8*
  %call50 = call i32 @g_signal_handlers_disconnect_matched(i8* %39, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_shell_scrolled to i8*), i8* %41)
  %42 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell51 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %42, i32 0, i32 2
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell51, align 8
  %44 = bitcast %struct._GimpDisplayShell* %43 to i8*
  %45 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %46 = bitcast %struct._GimpNavigationEditor* %45 to i8*
  %call52 = call i32 @g_signal_handlers_disconnect_matched(i8* %44, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_shell_reconnect to i8*), i8* %46)
  br label %if.end.59

if.else.53:                                       ; preds = %if.end.43
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tobool54 = icmp ne %struct._GimpDisplayShell* %47, null
  br i1 %tobool54, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.else.53
  %48 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %49 = bitcast %struct._GimpNavigationEditor* %48 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_widget_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call56)
  %50 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %50, i32 1)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.else.53
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.46
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %52 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell60 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %52, i32 0, i32 2
  store %struct._GimpDisplayShell* %51, %struct._GimpDisplayShell** %shell60, align 8
  %53 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell61 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %53, i32 0, i32 2
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell61, align 8
  %tobool62 = icmp ne %struct._GimpDisplayShell* %54, null
  br i1 %tobool62, label %if.then.63, label %if.else.77

if.then.63:                                       ; preds = %if.end.59
  %55 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %55, i32 0, i32 1
  %56 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call65 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %56)
  store %struct._GimpImage* %call65, %struct._GimpImage** %image, align 8
  %57 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %57, i32 0, i32 3
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_view_get_type() #7
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call66)
  %60 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpView*
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %62 = bitcast %struct._GimpImage* %61 to %struct._GTypeInstance*
  %call68 = call i64 @gimp_viewable_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call68)
  %63 = bitcast %struct._GTypeInstance* %call69 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %60, %struct._GimpViewable* %63)
  %64 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell70 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %64, i32 0, i32 2
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell70, align 8
  %66 = bitcast %struct._GimpDisplayShell* %65 to i8*
  %67 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %68 = bitcast %struct._GimpNavigationEditor* %67 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_shell_scaled to void ()*), i8* %68, void (i8*, %struct._GClosure*)* null, i32 0)
  %69 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell72 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %69, i32 0, i32 2
  %70 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell72, align 8
  %71 = bitcast %struct._GimpDisplayShell* %70 to i8*
  %72 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %73 = bitcast %struct._GimpNavigationEditor* %72 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_shell_scrolled to void ()*), i8* %73, void (i8*, %struct._GClosure*)* null, i32 0)
  %74 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell74 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %74, i32 0, i32 2
  %75 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell74, align 8
  %76 = bitcast %struct._GimpDisplayShell* %75 to i8*
  %77 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %78 = bitcast %struct._GimpNavigationEditor* %77 to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_shell_reconnect to void ()*), i8* %78, void (i8*, %struct._GClosure*)* null, i32 0)
  %79 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell76 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %79, i32 0, i32 2
  %80 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell76, align 8
  %81 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  call void @gimp_navigation_editor_shell_scaled(%struct._GimpDisplayShell* %80, %struct._GimpNavigationEditor* %81)
  br label %if.end.83

if.else.77:                                       ; preds = %if.end.59
  %82 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view78 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %82, i32 0, i32 3
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %view78, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call79 = call i64 @gimp_view_get_type() #7
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call79)
  %85 = bitcast %struct._GTypeInstance* %call80 to %struct._GimpView*
  call void @gimp_view_set_viewable(%struct._GimpView* %85, %struct._GimpViewable* null)
  %86 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %87 = bitcast %struct._GimpNavigationEditor* %86 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_widget_get_type() #7
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call81)
  %88 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %88, i32 0)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.77, %if.then.63
  %89 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %90 = bitcast %struct._GimpNavigationEditor* %89 to %struct._GTypeInstance*
  %call84 = call i64 @gimp_editor_get_type() #7
  %call85 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call84)
  %91 = bitcast %struct._GTypeInstance* %call85 to %struct._GimpEditor*
  %call86 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %91)
  %tobool87 = icmp ne %struct._GimpUIManager* %call86, null
  br i1 %tobool87, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %if.end.83
  %92 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %93 = bitcast %struct._GimpNavigationEditor* %92 to %struct._GTypeInstance*
  %call89 = call i64 @gimp_editor_get_type() #7
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %93, i64 %call89)
  %94 = bitcast %struct._GTypeInstance* %call90 to %struct._GimpEditor*
  %call91 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %94)
  %95 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %96 = bitcast %struct._GimpNavigationEditor* %95 to %struct._GTypeInstance*
  %call92 = call i64 @gimp_editor_get_type() #7
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 %call92)
  %97 = bitcast %struct._GTypeInstance* %call93 to %struct._GimpEditor*
  %call94 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %97)
  %98 = bitcast i8** %call94 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call91, i8* %98)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.9, %if.else.37, %if.then.42, %if.then.88, %if.end.83
  ret void
}

declare i32 @g_source_remove(i32) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_shell_scaled(%struct._GimpDisplayShell* %shell, %struct._GimpNavigationEditor* %editor) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  %str = alloca i8*, align 8
  %val = alloca double, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  %0 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %zoom_label = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_label, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 22
  %3 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %4 = bitcast %struct._GimpZoomModel* %3 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8** %str, i8* null)
  %5 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %zoom_label1 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %5, i32 0, i32 4
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_label1, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkLabel*
  %9 = load i8*, i8** %str, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %8, i8* %9)
  %10 = load i8*, i8** %str, align 8
  call void @g_free(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %zoom_adjustment = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %11, i32 0, i32 5
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %zoom_adjustment, align 8
  %tobool3 = icmp ne %struct._GtkAdjustment* %12, null
  br i1 %tobool3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 22
  %14 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom5, align 8
  %call6 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %14)
  %call7 = call double @log(double %call6) #9
  %div = fdiv double %call7, 0x3FE62E42FEFA39EF
  store double %div, double* %val, align 8
  %15 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %zoom_adjustment8 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %15, i32 0, i32 5
  %16 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %zoom_adjustment8, align 8
  %17 = bitcast %struct._GtkAdjustment* %16 to i8*
  %18 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %19 = bitcast %struct._GimpNavigationEditor* %18 to i8*
  %call9 = call i32 @g_signal_handlers_block_matched(i8* %17, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_zoom_adj_changed to i8*), i8* %19)
  %20 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %zoom_adjustment10 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %20, i32 0, i32 5
  %21 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %zoom_adjustment10, align 8
  %22 = load double, double* %val, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %21, double %22)
  %23 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %zoom_adjustment11 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %23, i32 0, i32 5
  %24 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %zoom_adjustment11, align 8
  %25 = bitcast %struct._GtkAdjustment* %24 to i8*
  %26 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %27 = bitcast %struct._GimpNavigationEditor* %26 to i8*
  %call12 = call i32 @g_signal_handlers_unblock_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAdjustment*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_zoom_adj_changed to i8*), i8* %27)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.4, %if.end
  %28 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  call void @gimp_navigation_editor_update_marker(%struct._GimpNavigationEditor* %28)
  %29 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %30 = bitcast %struct._GimpNavigationEditor* %29 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_editor_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call14)
  %31 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpEditor*
  %call16 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %31)
  %tobool17 = icmp ne %struct._GimpUIManager* %call16, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.end.13
  %32 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %33 = bitcast %struct._GimpNavigationEditor* %32 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_editor_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call19)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpEditor*
  %call21 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %34)
  %35 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %36 = bitcast %struct._GimpNavigationEditor* %35 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_editor_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call22)
  %37 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpEditor*
  %call24 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %37)
  %38 = bitcast i8** %call24 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call21, i8* %38)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_shell_scrolled(%struct._GimpDisplayShell* %shell, %struct._GimpNavigationEditor* %editor) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  %0 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  call void @gimp_navigation_editor_update_marker(%struct._GimpNavigationEditor* %0)
  %1 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %2 = bitcast %struct._GimpNavigationEditor* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  %call2 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %3)
  %tobool = icmp ne %struct._GimpUIManager* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpNavigationEditor* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_editor_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpEditor*
  %call5 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %6)
  %7 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %8 = bitcast %struct._GimpNavigationEditor* %7 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_editor_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call6)
  %9 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpEditor*
  %call8 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %9)
  %10 = bitcast i8** %call8 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call5, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_shell_reconnect(%struct._GimpDisplayShell* %shell, %struct._GimpNavigationEditor* %editor) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %2, i32 0, i32 3
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_view_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpView*
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = bitcast %struct._GimpImage* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_viewable_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %5, %struct._GimpViewable* %8)
  %9 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %10 = bitcast %struct._GimpNavigationEditor* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %call7 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %11)
  %tobool = icmp ne %struct._GimpUIManager* %call7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %13 = bitcast %struct._GimpNavigationEditor* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_editor_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpEditor*
  %call10 = call %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor* %14)
  %15 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %16 = bitcast %struct._GimpNavigationEditor* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_editor_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpEditor*
  %call13 = call i8** @gimp_editor_get_popup_data(%struct._GimpEditor* %17)
  %18 = bitcast i8** %call13 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %call10, i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GimpUIManager* @gimp_editor_get_ui_manager(%struct._GimpEditor*) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare i8** @gimp_editor_get_popup_data(%struct._GimpEditor*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare double @log(double) #5

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_zoom_adj_changed(%struct._GtkAdjustment* %adj, %struct._GimpNavigationEditor* %editor) #3 {
entry:
  %adj.addr = alloca %struct._GtkAdjustment*, align 8
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  store %struct._GtkAdjustment* %adj, %struct._GtkAdjustment** %adj.addr, align 8
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  %0 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %scale_timeout = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %0, i32 0, i32 12
  %1 = load i32, i32* %scale_timeout, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %scale_timeout1 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %2, i32 0, i32 12
  %3 = load i32, i32* %scale_timeout1, align 4
  %call = call i32 @g_source_remove(i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %5 = bitcast %struct._GimpNavigationEditor* %4 to i8*
  %call2 = call i32 @g_timeout_add(i32 300, i32 (i8*)* @gimp_navigation_editor_zoom_adj_changed_timeout, i8* %5)
  %6 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %scale_timeout3 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %6, i32 0, i32 12
  store i32 %call2, i32* %scale_timeout3, align 4
  ret void
}

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_update_marker(%struct._GimpNavigationEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %view7 = alloca %struct._GimpNavigationView*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  %0 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %0, i32 0, i32 3
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_view_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpView*
  %renderer2 = getelementptr inbounds %struct._GimpView, %struct._GimpView* %3, i32 0, i32 3
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer2, align 8
  store %struct._GimpViewRenderer* %4, %struct._GimpViewRenderer** %renderer, align 8
  %5 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell3 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell3, align 8
  store %struct._GimpDisplayShell* %6, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 7
  %bf.load = load i8, i8* %dot_for_dot, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %dot_for_dot4 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 17
  %9 = load i32, i32* %dot_for_dot4, align 4
  %cmp = icmp ne i32 %bf.cast, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %dot_for_dot5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 17
  %12 = load i32, i32* %dot_for_dot5, align 4
  call void @gimp_view_renderer_set_dot_for_dot(%struct._GimpViewRenderer* %10, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 3
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool = icmp ne %struct._GimpViewable* %14, null
  br i1 %tobool, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %15 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %view8 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %15, i32 0, i32 3
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %view8, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_navigation_view_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call9)
  %18 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpNavigationView*
  store %struct._GimpNavigationView* %18, %struct._GimpNavigationView** %view7, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scroll_get_viewport(%struct._GimpDisplayShell* %19, double* %x, double* %y, double* %w, double* %h)
  %20 = load %struct._GimpNavigationView*, %struct._GimpNavigationView** %view7, align 8
  %21 = load double, double* %x, align 8
  %22 = load double, double* %y, align 8
  %23 = load double, double* %w, align 8
  %24 = load double, double* %h, align 8
  call void @gimp_navigation_view_set_marker(%struct._GimpNavigationView* %20, double %21, double %22, double %23, double %24)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %if.end
  ret void
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_navigation_editor_zoom_adj_changed_timeout(i8* %data) #3 {
entry:
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpNavigationEditor*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_navigation_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpNavigationEditor*
  store %struct._GimpNavigationEditor* %2, %struct._GimpNavigationEditor** %editor, align 8
  %3 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %zoom_adjustment = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %3, i32 0, i32 5
  %4 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %zoom_adjustment, align 8
  store %struct._GtkAdjustment* %4, %struct._GtkAdjustment** %adj, align 8
  %5 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %shell = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %7)
  %tobool = icmp ne %struct._GimpImage* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %shell3 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %8, i32 0, i32 2
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell3, align 8
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call4 = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  %call5 = call double @pow(double 2.000000e+00, double %call4) #9
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %9, i32 6, double %call5, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %scale_timeout = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %11, i32 0, i32 12
  store i32 0, i32* %scale_timeout, align 4
  ret i32 0
}

declare void @gimp_display_shell_scale(%struct._GimpDisplayShell*, i32, double, i32) #1

; Function Attrs: nounwind
declare double @pow(double, double) #5

declare double @gtk_adjustment_get_value(%struct._GtkAdjustment*) #1

declare void @gimp_view_renderer_set_dot_for_dot(%struct._GimpViewRenderer*, i32) #1

declare void @gimp_display_shell_scroll_get_viewport(%struct._GimpDisplayShell*, double*, double*, double*, double*) #1

declare void @gimp_navigation_view_set_marker(%struct._GimpNavigationView*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_set_context(%struct._GimpDocked* %docked, %struct._GimpContext* %context) #3 {
entry:
  %docked.addr = alloca %struct._GimpDocked*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %editor = alloca %struct._GimpNavigationEditor*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpDocked* %docked, %struct._GimpDocked** %docked.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDocked*, %struct._GimpDocked** %docked.addr, align 8
  %1 = bitcast %struct._GimpDocked* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_navigation_editor_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpNavigationEditor*
  store %struct._GimpNavigationEditor* %2, %struct._GimpNavigationEditor** %editor, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %context2 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %tobool = icmp ne %struct._GimpContext* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %context3 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context3, align 8
  %7 = bitcast %struct._GimpContext* %6 to i8*
  %8 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %9 = bitcast %struct._GimpNavigationEditor* %8 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpContext*, %struct._GimpDisplay*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_display_changed to i8*), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %11 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %context5 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %11, i32 0, i32 1
  store %struct._GimpContext* %10, %struct._GimpContext** %context5, align 8
  %12 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %context6 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context6, align 8
  %tobool7 = icmp ne %struct._GimpContext* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to i8*
  %16 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %17 = bitcast %struct._GimpNavigationEditor* %16 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpDisplay*, %struct._GimpNavigationEditor*)* @gimp_navigation_editor_display_changed to void ()*), i8* %17, void (i8*, %struct._GClosure*)* null, i32 0)
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call10 = call i8* @gimp_context_get_display(%struct._GimpContext* %18)
  %19 = bitcast i8* %call10 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %19, %struct._GimpDisplay** %display, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %20 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %20, i32 0, i32 3
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_view_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call12)
  %23 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpView*
  %renderer = getelementptr inbounds %struct._GimpView, %struct._GimpView* %23, i32 0, i32 3
  %24 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_view_renderer_set_context(%struct._GimpViewRenderer* %24, %struct._GimpContext* %25)
  %26 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  %context14 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %26, i32 0, i32 1
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context14, align 8
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %29 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor, align 8
  call void @gimp_navigation_editor_display_changed(%struct._GimpContext* %27, %struct._GimpDisplay* %28, %struct._GimpNavigationEditor* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_display_changed(%struct._GimpContext* %context, %struct._GimpDisplay* %display, %struct._GimpNavigationEditor* %editor) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %shell, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %tobool = icmp ne %struct._GimpDisplay* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %1)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_navigation_editor_set_shell(%struct._GimpNavigationEditor* %2, %struct._GimpDisplayShell* %3)
  ret void
}

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare void @gimp_view_renderer_set_context(%struct._GimpViewRenderer*, %struct._GimpContext*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_marker_changed(%struct._GimpNavigationView* %view, double %x, double %y, double %width, double %height, %struct._GimpNavigationEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpNavigationView*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  store %struct._GimpNavigationView* %view, %struct._GimpNavigationView** %view.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  %0 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %0, i32 0, i32 2
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell1 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %2, i32 0, i32 2
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell1, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  %tobool2 = icmp ne %struct._GimpImage* %call, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell4 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %5, i32 0, i32 2
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell4, align 8
  %7 = load double, double* %x.addr, align 8
  %8 = load double, double* %width.addr, align 8
  %div = fdiv double %8, 2.000000e+00
  %add = fadd double %7, %div
  %9 = load double, double* %y.addr, align 8
  %10 = load double, double* %height.addr, align 8
  %div5 = fdiv double %10, 2.000000e+00
  %add6 = fadd double %9, %div5
  call void @gimp_display_shell_scroll_center_image_coordinate(%struct._GimpDisplayShell* %6, double %add, double %add6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_zoom(%struct._GimpNavigationView* %view, i32 %direction, %struct._GimpNavigationEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpNavigationView*, align 8
  %direction.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  store %struct._GimpNavigationView* %view, %struct._GimpNavigationView** %view.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %direction.addr, align 4
  %cmp = icmp ne i32 %0, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_navigation_editor_zoom, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.7

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %1, i32 0, i32 2
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %do.end
  %3 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell2 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell2, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 1
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %5)
  %tobool3 = icmp ne %struct._GimpImage* %call, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.1
  %6 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell5 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %6, i32 0, i32 2
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell5, align 8
  %8 = load i32, i32* %direction.addr, align 4
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %7, i32 %8, double 0.000000e+00, i32 0)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.1
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end.6, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_navigation_editor_scroll(%struct._GimpNavigationView* %view, i32 %direction, %struct._GimpNavigationEditor* %editor) #3 {
entry:
  %view.addr = alloca %struct._GimpNavigationView*, align 8
  %direction.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpNavigationEditor*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  %value = alloca double, align 8
  store %struct._GimpNavigationView* %view, %struct._GimpNavigationView** %view.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store %struct._GimpNavigationEditor* %editor, %struct._GimpNavigationEditor** %editor.addr, align 8
  %0 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %0, i32 0, i32 2
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %entry
  store %struct._GtkAdjustment* null, %struct._GtkAdjustment** %adj, align 8
  %2 = load i32, i32* %direction.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 0, label %sw.bb.2
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %3 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell1 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %3, i32 0, i32 2
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell1, align 8
  %hsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 34
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata, align 8
  store %struct._GtkAdjustment* %5, %struct._GtkAdjustment** %adj, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then, %if.then
  %6 = load %struct._GimpNavigationEditor*, %struct._GimpNavigationEditor** %editor.addr, align 8
  %shell3 = getelementptr inbounds %struct._GimpNavigationEditor, %struct._GimpNavigationEditor* %6, i32 0, i32 2
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell3, align 8
  %vsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 35
  %8 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata, align 8
  store %struct._GtkAdjustment* %8, %struct._GtkAdjustment** %adj, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.2, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %9 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %cmp = icmp ne %struct._GtkAdjustment* %9, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32 578, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_navigation_editor_scroll, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #10
  unreachable

if.end:                                           ; preds = %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call = call double @gtk_adjustment_get_value(%struct._GtkAdjustment* %10)
  store double %call, double* %value, align 8
  %11 = load i32, i32* %direction.addr, align 4
  switch i32 %11, label %sw.epilog.10 [
    i32 2, label %sw.bb.5
    i32 0, label %sw.bb.5
    i32 3, label %sw.bb.7
    i32 1, label %sw.bb.7
  ]

sw.bb.5:                                          ; preds = %do.end, %do.end
  %12 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call6 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %12)
  %div = fdiv double %call6, 2.000000e+00
  %13 = load double, double* %value, align 8
  %sub = fsub double %13, %div
  store double %sub, double* %value, align 8
  br label %sw.epilog.10

sw.bb.7:                                          ; preds = %do.end, %do.end
  %14 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call8 = call double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment* %14)
  %div9 = fdiv double %call8, 2.000000e+00
  %15 = load double, double* %value, align 8
  %add = fadd double %15, %div9
  store double %add, double* %value, align 8
  br label %sw.epilog.10

sw.epilog.10:                                     ; preds = %do.end, %sw.bb.7, %sw.bb.5
  %16 = load double, double* %value, align 8
  %17 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call11 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %17)
  %18 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call12 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %18)
  %sub13 = fsub double %call11, %call12
  %cmp14 = fcmp ogt double %16, %sub13
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.10
  %19 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call15 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %19)
  %20 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call16 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %20)
  %sub17 = fsub double %call15, %call16
  br label %cond.end.23

cond.false:                                       ; preds = %sw.epilog.10
  %21 = load double, double* %value, align 8
  %22 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call18 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %22)
  %cmp19 = fcmp olt double %21, %call18
  br i1 %cmp19, label %cond.true.20, label %cond.false.22

cond.true.20:                                     ; preds = %cond.false
  %23 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call21 = call double @gtk_adjustment_get_lower(%struct._GtkAdjustment* %23)
  br label %cond.end

cond.false.22:                                    ; preds = %cond.false
  %24 = load double, double* %value, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.22, %cond.true.20
  %cond = phi double [ %call21, %cond.true.20 ], [ %24, %cond.false.22 ]
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end, %cond.true
  %cond24 = phi double [ %sub17, %cond.true ], [ %cond, %cond.end ]
  store double %cond24, double* %value, align 8
  %25 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %26 = load double, double* %value, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %25, double %26)
  br label %if.end.25

if.end.25:                                        ; preds = %cond.end.23, %entry
  ret void
}

declare void @gimp_display_shell_scroll_center_image_coordinate(%struct._GimpDisplayShell*, double, double) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare double @gtk_adjustment_get_page_increment(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_lower(%struct._GtkAdjustment*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gimp_view_renderer_set_size(%struct._GimpViewRenderer*, i32, i32) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gimp_view_set_expand(%struct._GimpView*, i32) #1

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare %struct._GtkWidget* @gtk_scale_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_scale_set_draw_value(%struct._GtkScale*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scale_get_type() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_label_set_width_chars(%struct._GtkLabel*, i32) #1

declare void @gimp_view_renderer_set_background(%struct._GimpViewRenderer*, i8*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
