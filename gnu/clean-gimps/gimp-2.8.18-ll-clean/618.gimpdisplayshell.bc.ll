; ModuleID = './app/display/gimpdisplayshell.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDisplayShellClass = type { %struct._GtkBoxClass, void (%struct._GimpDisplayShell*)*, void (%struct._GimpDisplayShell*)*, void (%struct._GimpDisplayShell*)* }
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
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpDisplayOptions = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type { %struct._GimpObject }
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type { %struct._GimpObject, i32, i32, double, double, double, double, %struct._GimpCoords, %struct._GArray*, %struct._GArray*, i32, i32, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GtkOrientable = type opaque
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpColorManagedInterface = type { %struct._GTypeInterface, i8* (%struct._GimpColorManaged*, i64*)*, void (%struct._GimpColorManaged*)* }
%struct._GimpColorManaged = type opaque
%struct._GimpDisplayShellOverlay = type { double, double, i32, i32, i32 }
%struct._GimpOverlayBox = type { %struct._GtkContainer, %struct._GList* }
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpStatusbar = type { %struct._GtkStatusbar, %struct._GimpDisplayShell*, %struct._GSList*, %struct._GHashTable*, i32, %struct._GdkPixbuf*, i32, i32, i32, [32 x i8], [32 x i8], [32 x i8], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, double }
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }
%struct._GHashTable = type opaque
%struct._GimpVectors = type opaque
%struct._GimpLayer = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpCanvasLayerBoundary = type { %struct._GimpCanvasRectangle }
%struct._GimpCanvasRectangle = type { %struct._GimpCanvasItem }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpRuler = type { %struct._GtkWidget }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }

@gimp_display_shell_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpDisplayShell\00", align 1
@gimp_display_shell_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_display_shell_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_display_shell_get_type.g_implement_interface_info.1 = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpColorManagedInterface*)* @gimp_color_managed_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_new = private unnamed_addr constant [23 x i8] c"gimp_display_shell_new\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"GIMP_IS_UI_MANAGER (popup_manager)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"popup-manager\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@__func__.gimp_display_shell_add_overlay = private unnamed_addr constant [31 x i8] c"gimp_display_shell_add_overlay\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"GTK_IS_WIDGET (shell)\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"image-coords-overlay\00", align 1
@__func__.gimp_display_shell_move_overlay = private unnamed_addr constant [32 x i8] c"gimp_display_shell_move_overlay\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"overlay != NULL\00", align 1
@__func__.gimp_display_shell_get_window = private unnamed_addr constant [30 x i8] c"gimp_display_shell_get_window\00", align 1
@__func__.gimp_display_shell_get_statusbar = private unnamed_addr constant [33 x i8] c"gimp_display_shell_get_statusbar\00", align 1
@__func__.gimp_display_shell_present = private unnamed_addr constant [27 x i8] c"gimp_display_shell_present\00", align 1
@__func__.gimp_display_shell_reconnect = private unnamed_addr constant [29 x i8] c"gimp_display_shell_reconnect\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DISPLAY (shell->display)\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"gimp_display_get_image (shell->display) != NULL\00", align 1
@display_shell_signals = internal global [3 x i32] zeroinitializer, align 4
@__func__.gimp_display_shell_empty = private unnamed_addr constant [25 x i8] c"gimp_display_shell_empty\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"gimp_display_get_image (shell->display) == NULL\00", align 1
@__func__.gimp_display_shell_fill = private unnamed_addr constant [24 x i8] c"gimp_display_shell_fill\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@__func__.gimp_display_shell_scale_changed = private unnamed_addr constant [33 x i8] c"gimp_display_shell_scale_changed\00", align 1
@__func__.gimp_display_shell_scaled = private unnamed_addr constant [26 x i8] c"gimp_display_shell_scaled\00", align 1
@__func__.gimp_display_shell_scrolled = private unnamed_addr constant [28 x i8] c"gimp_display_shell_scrolled\00", align 1
@__func__.gimp_display_shell_set_unit = private unnamed_addr constant [28 x i8] c"gimp_display_shell_set_unit\00", align 1
@__func__.gimp_display_shell_get_unit = private unnamed_addr constant [28 x i8] c"gimp_display_shell_get_unit\00", align 1
@__func__.gimp_display_shell_snap_coords = private unnamed_addr constant [31 x i8] c"gimp_display_shell_snap_coords\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"coords != NULL\00", align 1
@__func__.gimp_display_shell_mask_bounds = private unnamed_addr constant [31 x i8] c"gimp_display_shell_mask_bounds\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"x1 != NULL\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"y1 != NULL\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"x2 != NULL\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"y2 != NULL\00", align 1
@__func__.gimp_display_shell_flush = private unnamed_addr constant [25 x i8] c"gimp_display_shell_flush\00", align 1
@__func__.gimp_display_shell_pause = private unnamed_addr constant [25 x i8] c"gimp_display_shell_pause\00", align 1
@__func__.gimp_display_shell_resume = private unnamed_addr constant [26 x i8] c"gimp_display_shell_resume\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"shell->paused_count > 0\00", align 1
@__func__.gimp_display_shell_set_highlight = private unnamed_addr constant [33 x i8] c"gimp_display_shell_set_highlight\00", align 1
@__func__.gimp_display_shell_set_mask = private unnamed_addr constant [28 x i8] c"gimp_display_shell_set_mask\00", align 1
@.str.22 = private unnamed_addr constant [77 x i8] c"mask == NULL || (GIMP_IS_DRAWABLE (mask) && gimp_drawable_bytes (mask) == 1)\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"mask == NULL || color != NULL\00", align 1
@gimp_display_shell_parent_class = internal global i8* null, align 8
@GimpDisplayShell_private_offset = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"scaled\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"scrolled\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"GNU Image Manipulation Program\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@display_rc_style = internal constant [157 x i8] c"style \22check-button-style\22\0A{\0A  GtkToggleButton::child-displacement-x = 0\0A  GtkToggleButton::child-displacement-y = 0\0A}\0Awidget \22*\22 style \22check-button-style\22\00", align 16
@.str.31 = private unnamed_addr constant [19 x i8] c"gimpdisplayshell.c\00", align 1
@__func__.gimp_display_shell_constructed = private unnamed_addr constant [31 x i8] c"gimp_display_shell_constructed\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"GIMP_IS_UI_MANAGER (shell->popup_manager)\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"gimp-menu-right\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Access the image menu\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"gimp-image-window-origin\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"gimp-image-window-ruler\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"realize\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"enter-notify-event\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"leave-notify-event\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"proximity-in-event\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"proximity-out-event\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"focus-in-event\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"focus-out-event\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"scroll-event\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"motion-notify-event\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"key-release-event\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"draw-indicator\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"relief\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"width-request\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"height-request\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"gimp-zoom-follow-window\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"Zoom image when window size changes\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"gimp-image-window-zoom-follow-button\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"gimp-quick-mask-off\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"quick-mask\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"quick-mask-toggle\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"Toggle Quick Mask\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"gimp-image-window-quick-mask-button\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"gimp-navigation\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"Navigate the image display\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"gimp-image-window-nav-button\00", align 1
@.str.69 = private unnamed_addr constant [29 x i8] c"gimp-image-window-status-bar\00", align 1
@.str.70 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"/dummy-menubar/image-popup\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"hover\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"zoomed\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"gimp-image-window\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_display_shell_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_display_shell_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_display_shell_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 848, void (i8*, i8*)* bitcast (void (i8*)* @gimp_display_shell_class_intern_init to void (i8*, i8*)*), i32 824, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDisplayShell*)* @gimp_display_shell_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_progress_interface_get_type() #8
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_display_shell_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  %call9 = call i64 @gimp_color_managed_interface_get_type() #8
  call void @g_type_add_interface_static(i64 %6, i64 %call9, %struct._GInterfaceInfo* @gimp_display_shell_get_type.g_implement_interface_info.1)
  %7 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_display_shell_get_type.g_define_type_id__volatile to i8*), i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %8 = load volatile i64, i64* @gimp_display_shell_get_type.g_define_type_id__volatile, align 8
  ret i64 %8
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_display_shell_parent_class, align 8
  %1 = load i32, i32* @GimpDisplayShell_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDisplayShell_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDisplayShellClass*
  call void @gimp_display_shell_class_init(%struct._GimpDisplayShellClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_init(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %call2 = call i64 @gimp_display_options_get_type() #8
  %call3 = call i8* (i64, i8*, ...) @g_object_new(i64 %call2, i8* null)
  %3 = bitcast i8* %call3 to %struct._GimpDisplayOptions*
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 3
  store %struct._GimpDisplayOptions* %3, %struct._GimpDisplayOptions** %options, align 8
  %call4 = call i64 @gimp_display_options_fullscreen_get_type() #8
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* null)
  %5 = bitcast i8* %call5 to %struct._GimpDisplayOptions*
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fullscreen_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 4
  store %struct._GimpDisplayOptions* %5, %struct._GimpDisplayOptions** %fullscreen_options, align 8
  %call6 = call i64 @gimp_display_options_no_image_get_type() #8
  %call7 = call i8* (i64, i8*, ...) @g_object_new(i64 %call6, i8* null)
  %7 = bitcast i8* %call7 to %struct._GimpDisplayOptions*
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %no_image_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 5
  store %struct._GimpDisplayOptions* %7, %struct._GimpDisplayOptions** %no_image_options, align 8
  %call8 = call %struct._GimpZoomModel* @gimp_zoom_model_new()
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 22
  store %struct._GimpZoomModel* %call8, %struct._GimpZoomModel** %zoom, align 8
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 17
  store i32 1, i32* %dot_for_dot, align 4
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 13
  store double 1.000000e+00, double* %scale_x, align 8
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 14
  store double 1.000000e+00, double* %scale_y, align 8
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 20
  store i32 1, i32* %x_dest_inc, align 4
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 21
  store i32 1, i32* %y_dest_inc, align 4
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 18
  store i32 1, i32* %x_src_dec, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 19
  store i32 1, i32* %y_src_dec, align 4
  %call9 = call %struct._cairo_surface* @cairo_image_surface_create(i32 0, i32 256, i32 256)
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %render_surface = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 45
  store %struct._cairo_surface* %call9, %struct._cairo_surface** %render_surface, align 8
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_items_init(%struct._GimpDisplayShell* %18)
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %icon_size = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 61
  store i32 32, i32* %icon_size, align 4
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_format = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 65
  store i32 0, i32* %cursor_format, align 4
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_handedness = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 66
  store i32 1, i32* %cursor_handedness, align 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %current_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 67
  store i32 -1, i32* %current_cursor, align 4
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tool_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 68
  store i32 0, i32* %tool_cursor, align 4
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cursor_modifier = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 69
  store i32 0, i32* %cursor_modifier, align 4
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %override_cursor = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 70
  store i32 -1, i32* %override_cursor, align 4
  %call10 = call %struct._GimpMotionBuffer* @gimp_motion_buffer_new()
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 100
  store %struct._GimpMotionBuffer* %call10, %struct._GimpMotionBuffer** %motion_buffer, align 8
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 100
  %28 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer11, align 8
  %29 = bitcast %struct._GimpMotionBuffer* %28 to i8*
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %31 = bitcast %struct._GimpDisplayShell* %30 to i8*
  %call12 = call i64 @g_signal_connect_data(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), void ()* bitcast (void (%struct._GimpMotionBuffer*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplayShell*)* @gimp_display_shell_buffer_stroke to void ()*), i8* %31, void (i8*, %struct._GClosure*)* null, i32 0)
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %motion_buffer13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 100
  %33 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer13, align 8
  %34 = bitcast %struct._GimpMotionBuffer* %33 to i8*
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %36 = bitcast %struct._GimpDisplayShell* %35 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), void ()* bitcast (void (%struct._GimpMotionBuffer*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplayShell*)* @gimp_display_shell_buffer_hover to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  %call15 = call %struct._GQueue* @g_queue_new()
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom_focus_pointer_queue = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 101
  store %struct._GQueue* %call15, %struct._GQueue** %zoom_focus_pointer_queue, align 8
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %39 = bitcast %struct._GimpDisplayShell* %38 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call16)
  %40 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  call void @gtk_widget_set_events(%struct._GtkWidget* %40, i32 2247940)
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 22
  %42 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom18, align 8
  %43 = bitcast %struct._GimpZoomModel* %42 to i8*
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %45 = bitcast %struct._GimpDisplayShell* %44 to i8*
  %call19 = call i64 @g_signal_connect_data(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*)* @gimp_display_shell_scale_changed to void ()*), i8* %45, void (i8*, %struct._GClosure*)* null, i32 2)
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %47 = bitcast %struct._GimpDisplayShell* %46 to i8*
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %49 = bitcast %struct._GimpDisplayShell* %48 to i8*
  %call20 = call i64 @g_signal_connect_data(i8* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_events to void ()*), i8* %49, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %51 = bitcast %struct._GimpDisplayShell* %50 to i8*
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %53 = bitcast %struct._GimpDisplayShell* %52 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_events to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %55 = bitcast %struct._GimpDisplayShell* %54 to i8*
  %56 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %57 = bitcast %struct._GimpDisplayShell* %56 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_events to void ()*), i8* %57, void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %59 = bitcast %struct._GimpDisplayShell* %58 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #8
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call23)
  %60 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  call void @gimp_help_connect(%struct._GtkWidget* %60, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0), i8* null)
  ret void
}

declare void @gimp_display_shell_progress_iface_init(%struct._GimpProgressInterface*) #1

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_color_managed_iface_init(%struct._GimpColorManagedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpColorManagedInterface*, align 8
  store %struct._GimpColorManagedInterface* %iface, %struct._GimpColorManagedInterface** %iface.addr, align 8
  %0 = load %struct._GimpColorManagedInterface*, %struct._GimpColorManagedInterface** %iface.addr, align 8
  %get_icc_profile = getelementptr inbounds %struct._GimpColorManagedInterface, %struct._GimpColorManagedInterface* %0, i32 0, i32 1
  store i8* (%struct._GimpColorManaged*, i64*)* @gimp_display_shell_get_icc_profile, i8* (%struct._GimpColorManaged*, i64*)** %get_icc_profile, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_color_managed_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_display_shell_new(%struct._GimpDisplay* %display, i32 %unit, double %scale, %struct._GimpUIManager* %popup_manager) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %unit.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %popup_manager.addr = alloca %struct._GimpUIManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double %scale, double* %scale.addr, align 8
  store %struct._GimpUIManager* %popup_manager, %struct._GimpUIManager** %popup_manager.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_display_shell_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager.addr, align 8
  %14 = bitcast %struct._GimpUIManager* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_ui_manager_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_display_shell_new, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_display_shell_get_type() #8
  %26 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager.addr, align 8
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %28 = load i32, i32* %unit.addr, align 4
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._GimpUIManager* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._GimpDisplay* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %28, i8* null)
  %29 = bitcast i8* %call40 to %struct._GtkWidget*
  store %struct._GtkWidget* %29, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_add_overlay(%struct._GimpDisplayShell* %shell, %struct._GtkWidget* %child, double %image_x, double %image_y, i32 %anchor, i32 %spacing_x, i32 %spacing_y) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %image_x.addr = alloca double, align 8
  %image_y.addr = alloca double, align 8
  %anchor.addr = alloca i32, align 4
  %spacing_x.addr = alloca i32, align 4
  %spacing_y.addr = alloca i32, align 4
  %overlay = alloca %struct._GimpDisplayShellOverlay*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store double %image_x, double* %image_x.addr, align 8
  store double %image_y, double* %image_y.addr, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %spacing_x, i32* %spacing_x.addr, align 4
  store i32 %spacing_y, i32* %spacing_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_add_overlay, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = bitcast %struct._GimpDisplayShell* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_add_overlay, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call noalias i8* @g_malloc0_n(i64 1, i64 32)
  %26 = bitcast i8* %call39 to %struct._GimpDisplayShellOverlay*
  store %struct._GimpDisplayShellOverlay* %26, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %27 = load double, double* %image_x.addr, align 8
  %28 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %image_x40 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %28, i32 0, i32 0
  store double %27, double* %image_x40, align 8
  %29 = load double, double* %image_y.addr, align 8
  %30 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %image_y41 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %30, i32 0, i32 1
  store double %29, double* %image_y41, align 8
  %31 = load i32, i32* %anchor.addr, align 4
  %32 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %anchor42 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %32, i32 0, i32 2
  store i32 %31, i32* %anchor42, align 4
  %33 = load i32, i32* %spacing_x.addr, align 4
  %34 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_x43 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %34, i32 0, i32 3
  store i32 %33, i32* %spacing_x43, align 4
  %35 = load i32, i32* %spacing_y.addr, align 4
  %36 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_y44 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %36, i32 0, i32 4
  store i32 %35, i32* %spacing_y44, align 4
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 80)
  %39 = bitcast %struct._GTypeInstance* %call45 to %struct._GObject*
  %40 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %41 = bitcast %struct._GimpDisplayShellOverlay* %40 to i8*
  call void @g_object_set_data_full(%struct._GObject* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i8* %41, void (i8*)* @g_free)
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %children = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 32
  %43 = load %struct._GList*, %struct._GList** %children, align 8
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %call46 = call %struct._GList* @g_list_prepend(%struct._GList* %43, i8* %45)
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %children47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %46, i32 0, i32 32
  store %struct._GList* %call46, %struct._GList** %children47, align 8
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gimp_display_shell_transform_overlay(%struct._GimpDisplayShell* %47, %struct._GtkWidget* %48, double* %x, double* %y)
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %49, i32 0, i32 33
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_overlay_box_get_type() #8
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call48)
  %52 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpOverlayBox*
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gimp_overlay_box_add_child(%struct._GimpOverlayBox* %52, %struct._GtkWidget* %53, double 0.000000e+00, double 0.000000e+00)
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas50 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %54, i32 0, i32 33
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas50, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call51 = call i64 @gimp_overlay_box_get_type() #8
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call51)
  %57 = bitcast %struct._GTypeInstance* %call52 to %struct._GimpOverlayBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %59 = load double, double* %x, align 8
  %60 = load double, double* %y, align 8
  call void @gimp_overlay_box_set_child_position(%struct._GimpOverlayBox* %57, %struct._GtkWidget* %58, double %59, double %60)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_transform_overlay(%struct._GimpDisplayShell* %shell, %struct._GtkWidget* %child, double* %x, double* %y) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %overlay = alloca %struct._GimpDisplayShellOverlay*, align 8
  %requisition = alloca %struct._GtkRequisition, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpDisplayShellOverlay*
  store %struct._GimpDisplayShellOverlay* %3, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %5 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %image_x = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %5, i32 0, i32 0
  %6 = load double, double* %image_x, align 8
  %7 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %image_y = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %7, i32 0, i32 1
  %8 = load double, double* %image_y, align 8
  %9 = load double*, double** %x.addr, align 8
  %10 = load double*, double** %y.addr, align 8
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %4, double %6, double %8, double* %9, double* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %11, %struct._GtkRequisition* %requisition)
  %12 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %anchor = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %12, i32 0, i32 2
  %13 = load i32, i32* %anchor, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.11
    i32 3, label %sw.bb.17
    i32 4, label %sw.bb.26
    i32 5, label %sw.bb.36
    i32 6, label %sw.bb.45
    i32 7, label %sw.bb.56
    i32 8, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %entry
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %14 = load i32, i32* %width, align 4
  %div = sdiv i32 %14, 2
  %conv = sitofp i32 %div to double
  %15 = load double*, double** %x.addr, align 8
  %16 = load double, double* %15, align 8
  %sub = fsub double %16, %conv
  store double %sub, double* %15, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %17 = load i32, i32* %height, align 4
  %div2 = sdiv i32 %17, 2
  %conv3 = sitofp i32 %div2 to double
  %18 = load double*, double** %y.addr, align 8
  %19 = load double, double* %18, align 8
  %sub4 = fsub double %19, %conv3
  store double %sub4, double* %18, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %width6 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %20 = load i32, i32* %width6, align 4
  %div7 = sdiv i32 %20, 2
  %conv8 = sitofp i32 %div7 to double
  %21 = load double*, double** %x.addr, align 8
  %22 = load double, double* %21, align 8
  %sub9 = fsub double %22, %conv8
  store double %sub9, double* %21, align 8
  %23 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_y = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %23, i32 0, i32 4
  %24 = load i32, i32* %spacing_y, align 4
  %conv10 = sitofp i32 %24 to double
  %25 = load double*, double** %y.addr, align 8
  %26 = load double, double* %25, align 8
  %add = fadd double %26, %conv10
  store double %add, double* %25, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %27 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_x = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %27, i32 0, i32 3
  %28 = load i32, i32* %spacing_x, align 4
  %conv12 = sitofp i32 %28 to double
  %29 = load double*, double** %x.addr, align 8
  %30 = load double, double* %29, align 8
  %add13 = fadd double %30, %conv12
  store double %add13, double* %29, align 8
  %31 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_y14 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %31, i32 0, i32 4
  %32 = load i32, i32* %spacing_y14, align 4
  %conv15 = sitofp i32 %32 to double
  %33 = load double*, double** %y.addr, align 8
  %34 = load double, double* %33, align 8
  %add16 = fadd double %34, %conv15
  store double %add16, double* %33, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %width18 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %35 = load i32, i32* %width18, align 4
  %36 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_x19 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %36, i32 0, i32 3
  %37 = load i32, i32* %spacing_x19, align 4
  %add20 = add nsw i32 %35, %37
  %conv21 = sitofp i32 %add20 to double
  %38 = load double*, double** %x.addr, align 8
  %39 = load double, double* %38, align 8
  %sub22 = fsub double %39, %conv21
  store double %sub22, double* %38, align 8
  %40 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_y23 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %40, i32 0, i32 4
  %41 = load i32, i32* %spacing_y23, align 4
  %conv24 = sitofp i32 %41 to double
  %42 = load double*, double** %y.addr, align 8
  %43 = load double, double* %42, align 8
  %add25 = fadd double %43, %conv24
  store double %add25, double* %42, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %width27 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %44 = load i32, i32* %width27, align 4
  %div28 = sdiv i32 %44, 2
  %conv29 = sitofp i32 %div28 to double
  %45 = load double*, double** %x.addr, align 8
  %46 = load double, double* %45, align 8
  %sub30 = fsub double %46, %conv29
  store double %sub30, double* %45, align 8
  %height31 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %47 = load i32, i32* %height31, align 4
  %48 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_y32 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %48, i32 0, i32 4
  %49 = load i32, i32* %spacing_y32, align 4
  %add33 = add nsw i32 %47, %49
  %conv34 = sitofp i32 %add33 to double
  %50 = load double*, double** %y.addr, align 8
  %51 = load double, double* %50, align 8
  %sub35 = fsub double %51, %conv34
  store double %sub35, double* %50, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %52 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_x37 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %52, i32 0, i32 3
  %53 = load i32, i32* %spacing_x37, align 4
  %conv38 = sitofp i32 %53 to double
  %54 = load double*, double** %x.addr, align 8
  %55 = load double, double* %54, align 8
  %add39 = fadd double %55, %conv38
  store double %add39, double* %54, align 8
  %height40 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %56 = load i32, i32* %height40, align 4
  %57 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_y41 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %57, i32 0, i32 4
  %58 = load i32, i32* %spacing_y41, align 4
  %add42 = add nsw i32 %56, %58
  %conv43 = sitofp i32 %add42 to double
  %59 = load double*, double** %y.addr, align 8
  %60 = load double, double* %59, align 8
  %sub44 = fsub double %60, %conv43
  store double %sub44, double* %59, align 8
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %width46 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %61 = load i32, i32* %width46, align 4
  %62 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_x47 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %62, i32 0, i32 3
  %63 = load i32, i32* %spacing_x47, align 4
  %add48 = add nsw i32 %61, %63
  %conv49 = sitofp i32 %add48 to double
  %64 = load double*, double** %x.addr, align 8
  %65 = load double, double* %64, align 8
  %sub50 = fsub double %65, %conv49
  store double %sub50, double* %64, align 8
  %height51 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %66 = load i32, i32* %height51, align 4
  %67 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_y52 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %67, i32 0, i32 4
  %68 = load i32, i32* %spacing_y52, align 4
  %add53 = add nsw i32 %66, %68
  %conv54 = sitofp i32 %add53 to double
  %69 = load double*, double** %y.addr, align 8
  %70 = load double, double* %69, align 8
  %sub55 = fsub double %70, %conv54
  store double %sub55, double* %69, align 8
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  %71 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_x57 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %71, i32 0, i32 3
  %72 = load i32, i32* %spacing_x57, align 4
  %conv58 = sitofp i32 %72 to double
  %73 = load double*, double** %x.addr, align 8
  %74 = load double, double* %73, align 8
  %add59 = fadd double %74, %conv58
  store double %add59, double* %73, align 8
  %height60 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %75 = load i32, i32* %height60, align 4
  %div61 = sdiv i32 %75, 2
  %conv62 = sitofp i32 %div61 to double
  %76 = load double*, double** %y.addr, align 8
  %77 = load double, double* %76, align 8
  %sub63 = fsub double %77, %conv62
  store double %sub63, double* %76, align 8
  br label %sw.epilog

sw.bb.64:                                         ; preds = %entry
  %width65 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %78 = load i32, i32* %width65, align 4
  %79 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_x66 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %79, i32 0, i32 3
  %80 = load i32, i32* %spacing_x66, align 4
  %add67 = add nsw i32 %78, %80
  %conv68 = sitofp i32 %add67 to double
  %81 = load double*, double** %x.addr, align 8
  %82 = load double, double* %81, align 8
  %sub69 = fsub double %82, %conv68
  store double %sub69, double* %81, align 8
  %height70 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %83 = load i32, i32* %height70, align 4
  %div71 = sdiv i32 %83, 2
  %conv72 = sitofp i32 %div71 to double
  %84 = load double*, double** %y.addr, align 8
  %85 = load double, double* %84, align 8
  %sub73 = fsub double %85, %conv72
  store double %sub73, double* %84, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.64, %sw.bb.56, %sw.bb.45, %sw.bb.36, %sw.bb.26, %sw.bb.17, %sw.bb.11, %sw.bb.5, %sw.bb
  ret void
}

declare void @gimp_overlay_box_add_child(%struct._GimpOverlayBox*, %struct._GtkWidget*, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_overlay_box_get_type() #2

declare void @gimp_overlay_box_set_child_position(%struct._GimpOverlayBox*, %struct._GtkWidget*, double, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_move_overlay(%struct._GimpDisplayShell* %shell, %struct._GtkWidget* %child, double %image_x, double %image_y, i32 %anchor, i32 %spacing_x, i32 %spacing_y) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %image_x.addr = alloca double, align 8
  %image_y.addr = alloca double, align 8
  %anchor.addr = alloca i32, align 4
  %spacing_x.addr = alloca i32, align 4
  %spacing_y.addr = alloca i32, align 4
  %overlay = alloca %struct._GimpDisplayShellOverlay*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store double %image_x, double* %image_x.addr, align 8
  store double %image_y, double* %image_y.addr, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %spacing_x, i32* %spacing_x.addr, align 4
  store i32 %spacing_y, i32* %spacing_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_move_overlay, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = bitcast %struct._GimpDisplayShell* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_move_overlay, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %call40 = call i8* @g_object_get_data(%struct._GObject* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0))
  %29 = bitcast i8* %call40 to %struct._GimpDisplayShellOverlay*
  store %struct._GimpDisplayShellOverlay* %29, %struct._GimpDisplayShellOverlay** %overlay, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %30 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %cmp42 = icmp ne %struct._GimpDisplayShellOverlay* %30, null
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.41
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_move_overlay, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %31 = load double, double* %image_x.addr, align 8
  %32 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %image_x47 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %32, i32 0, i32 0
  store double %31, double* %image_x47, align 8
  %33 = load double, double* %image_y.addr, align 8
  %34 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %image_y48 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %34, i32 0, i32 1
  store double %33, double* %image_y48, align 8
  %35 = load i32, i32* %anchor.addr, align 4
  %36 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %anchor49 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %36, i32 0, i32 2
  store i32 %35, i32* %anchor49, align 4
  %37 = load i32, i32* %spacing_x.addr, align 4
  %38 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_x50 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %38, i32 0, i32 3
  store i32 %37, i32* %spacing_x50, align 4
  %39 = load i32, i32* %spacing_y.addr, align 4
  %40 = load %struct._GimpDisplayShellOverlay*, %struct._GimpDisplayShellOverlay** %overlay, align 8
  %spacing_y51 = getelementptr inbounds %struct._GimpDisplayShellOverlay, %struct._GimpDisplayShellOverlay* %40, i32 0, i32 4
  store i32 %39, i32* %spacing_y51, align 4
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gimp_display_shell_transform_overlay(%struct._GimpDisplayShell* %41, %struct._GtkWidget* %42, double* %x, double* %y)
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 33
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_overlay_box_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call52)
  %46 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpOverlayBox*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %48 = load double, double* %x, align 8
  %49 = load double, double* %y, align 8
  call void @gimp_overlay_box_set_child_position(%struct._GimpOverlayBox* %46, %struct._GtkWidget* %47, double %48, double %49)
  br label %return

return:                                           ; preds = %do.end.46, %if.else.44, %if.else.36, %if.else.9
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._GimpImageWindow*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_get_window, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpImageWindow* null, %struct._GimpImageWindow** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = bitcast %struct._GimpDisplayShell* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %call13 = call i64 @gimp_image_window_get_type() #8
  %call14 = call %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget* %15, i64 %call13)
  %16 = bitcast %struct._GtkWidget* %call14 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_image_window_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call15)
  %17 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %17, %struct._GimpImageWindow** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %retval
  ret %struct._GimpImageWindow* %18
}

declare %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca %struct._GimpStatusbar*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_display_shell_get_statusbar, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpStatusbar* null, %struct._GimpStatusbar** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %statusbar = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 44
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %statusbar, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_statusbar_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %16, %struct._GimpStatusbar** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %retval
  ret %struct._GimpStatusbar* %17
}

; Function Attrs: nounwind readnone
declare i64 @gimp_statusbar_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_present(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_display_shell_present, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call11 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %13)
  store %struct._GimpImageWindow* %call11, %struct._GimpImageWindow** %window, align 8
  %14 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool12 = icmp ne %struct._GimpImageWindow* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_image_window_set_active_shell(%struct._GimpImageWindow* %15, %struct._GimpDisplayShell* %16)
  %17 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %18 = bitcast %struct._GimpImageWindow* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_image_window_set_active_shell(%struct._GimpImageWindow*, %struct._GimpDisplayShell*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_reconnect(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_display_shell_reconnect, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_display_shell_reconnect, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display40 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 1
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display40, align 8
  %call41 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %28)
  %cmp42 = icmp ne %struct._GimpImage* %call41, null
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.39
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_display_shell_reconnect, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fill_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 64
  %30 = load i32, i32* %fill_idle_id, align 4
  %tobool47 = icmp ne i32 %30, 0
  br i1 %tobool47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %do.end.46
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fill_idle_id49 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 64
  %32 = load i32, i32* %fill_idle_id49, align 4
  %call50 = call i32 @g_source_remove(i32 %32)
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fill_idle_id51 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 64
  store i32 0, i32* %fill_idle_id51, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %do.end.46
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %35 = bitcast %struct._GimpDisplayShell* %34 to i8*
  %36 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @display_shell_signals, i32 0, i64 2), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %35, i32 %36, i32 0)
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %38 = bitcast %struct._GimpDisplayShell* %37 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_color_managed_interface_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call53)
  %39 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpColorManaged*
  call void @gimp_color_managed_profile_changed(%struct._GimpColorManaged* %39)
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell* %40)
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scaled(%struct._GimpDisplayShell* %41)
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_expose_full(%struct._GimpDisplayShell* %42)
  br label %return

return:                                           ; preds = %if.end.52, %if.else.44, %if.else.36, %if.else.9
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare i32 @g_source_remove(i32) #1

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare void @gimp_color_managed_profile_changed(%struct._GimpColorManaged*) #1

declare void @gimp_display_shell_scroll_clamp_and_update(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scaled(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_shell_scaled, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %children = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 32
  %14 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %15, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GtkWidget*
  store %struct._GtkWidget* %18, %struct._GtkWidget** %child, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gimp_display_shell_transform_overlay(%struct._GimpDisplayShell* %19, %struct._GtkWidget* %20, double* %x, double* %y)
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 33
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_overlay_box_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpOverlayBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %26 = load double, double* %x, align 8
  %27 = load double, double* %y, align 8
  call void @gimp_overlay_box_set_child_position(%struct._GimpOverlayBox* %24, %struct._GtkWidget* %25, double %26, double %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %28, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %32 = bitcast %struct._GimpDisplayShell* %31 to i8*
  %33 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @display_shell_signals, i32 0, i64 0), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %32, i32 %33, i32 0)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

declare void @gimp_display_shell_expose_full(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_empty(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %user_context = alloca %struct._GimpContext*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_display_shell_empty, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.64

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_display_shell_empty, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.64

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display40 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 1
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display40, align 8
  %call41 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %28)
  %cmp42 = icmp eq %struct._GimpImage* %call41, null
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.39
  br label %if.end.45

if.else.44:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_display_shell_empty, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.64

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call47 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %29)
  store %struct._GimpImageWindow* %call47, %struct._GimpImageWindow** %window, align 8
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fill_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 64
  %31 = load i32, i32* %fill_idle_id, align 4
  %tobool48 = icmp ne i32 %31, 0
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %do.end.46
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fill_idle_id50 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 64
  %33 = load i32, i32* %fill_idle_id50, align 4
  %call51 = call i32 @g_source_remove(i32 %33)
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fill_idle_id52 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 64
  store i32 0, i32* %fill_idle_id52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %do.end.46
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_selection_undraw(%struct._GimpDisplayShell* %35)
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_unset_cursor(%struct._GimpDisplayShell* %36)
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display54 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 1
  %39 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display54, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %39, i32 0, i32 2
  %40 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  call void @gimp_display_shell_sync_config(%struct._GimpDisplayShell* %37, %struct._GimpDisplayConfig* %40)
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_appearance_update(%struct._GimpDisplayShell* %41)
  %42 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  call void @gimp_image_window_update_tabs(%struct._GimpImageWindow* %42)
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %statusbar = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 44
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %statusbar, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_statusbar_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call55)
  %46 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpStatusbar*
  call void @gimp_statusbar_empty(%struct._GimpStatusbar* %46)
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 33
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  call void @gtk_widget_set_double_buffered(%struct._GtkWidget* %48, i32 1)
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_expose_full(%struct._GimpDisplayShell* %49)
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display57 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %50, i32 0, i32 1
  %51 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display57, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %51, i32 0, i32 1
  %52 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call58 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %52)
  store %struct._GimpContext* %call58, %struct._GimpContext** %user_context, align 8
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display59 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 1
  %54 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display59, align 8
  %55 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %call60 = call i8* @gimp_context_get_display(%struct._GimpContext* %55)
  %56 = bitcast i8* %call60 to %struct._GimpDisplay*
  %cmp61 = icmp eq %struct._GimpDisplay* %54, %56
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.53
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %57, i32 0, i32 2
  %58 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager, align 8
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display63 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %59, i32 0, i32 1
  %60 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display63, align 8
  %61 = bitcast %struct._GimpDisplay* %60 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %58, i8* %61)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.9, %if.else.36, %if.else.44, %if.then.62, %if.end.53
  ret void
}

declare void @gimp_display_shell_selection_undraw(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_unset_cursor(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_sync_config(%struct._GimpDisplayShell* %shell, %struct._GimpDisplayConfig* %config) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %config.addr = alloca %struct._GimpDisplayConfig*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpDisplayConfig* %config, %struct._GimpDisplayConfig** %config.addr, align 8
  %0 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %0, i32 0, i32 20
  %1 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view, align 8
  %2 = bitcast %struct._GimpDisplayOptions* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 3
  %5 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %6 = bitcast %struct._GimpDisplayOptions* %5 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %call2 = call i32 @gimp_config_sync(%struct._GObject* %3, %struct._GObject* %7, i32 0)
  %8 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %8, i32 0, i32 21
  %9 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  %10 = bitcast %struct._GimpDisplayOptions* %9 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 80)
  %11 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fullscreen_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 4
  %13 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %fullscreen_options, align 8
  %14 = bitcast %struct._GimpDisplayOptions* %13 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i32 @gimp_config_sync(%struct._GObject* %11, %struct._GObject* %15, i32 0)
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %17, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display6 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 1
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display6, align 8
  %call7 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %19)
  %tobool8 = icmp ne %struct._GimpDisplayShell* %call7, null
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %21 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_snap_to_guides = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %21, i32 0, i32 22
  %22 = load i32, i32* %default_snap_to_guides, align 4
  call void @gimp_display_shell_set_snap_to_guides(%struct._GimpDisplayShell* %20, i32 %22)
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %24 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_snap_to_grid = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %24, i32 0, i32 23
  %25 = load i32, i32* %default_snap_to_grid, align 4
  call void @gimp_display_shell_set_snap_to_grid(%struct._GimpDisplayShell* %23, i32 %25)
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %27 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_snap_to_canvas = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %27, i32 0, i32 24
  %28 = load i32, i32* %default_snap_to_canvas, align 4
  call void @gimp_display_shell_set_snap_to_canvas(%struct._GimpDisplayShell* %26, i32 %28)
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %30 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_snap_to_path = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %30, i32 0, i32 25
  %31 = load i32, i32* %default_snap_to_path, align 4
  call void @gimp_display_shell_set_snap_to_vectors(%struct._GimpDisplayShell* %29, i32 %31)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %32 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_snap_to_guides9 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %32, i32 0, i32 22
  %33 = load i32, i32* %default_snap_to_guides9, align 4
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %snap_to_guides = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 6
  store i32 %33, i32* %snap_to_guides, align 4
  %35 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_snap_to_grid10 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %35, i32 0, i32 23
  %36 = load i32, i32* %default_snap_to_grid10, align 4
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %snap_to_grid = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 7
  store i32 %36, i32* %snap_to_grid, align 4
  %38 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_snap_to_canvas11 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %38, i32 0, i32 24
  %39 = load i32, i32* %default_snap_to_canvas11, align 4
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %snap_to_canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 8
  store i32 %39, i32* %snap_to_canvas, align 4
  %41 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_snap_to_path12 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %41, i32 0, i32 25
  %42 = load i32, i32* %default_snap_to_path12, align 4
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %snap_to_vectors = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 9
  store i32 %42, i32* %snap_to_vectors, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_display_shell_appearance_update(%struct._GimpDisplayShell*) #1

declare void @gimp_image_window_update_tabs(%struct._GimpImageWindow*) #1

declare void @gimp_statusbar_empty(%struct._GimpStatusbar*) #1

declare void @gtk_widget_set_double_buffered(%struct._GtkWidget*, i32) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_fill(%struct._GimpDisplayShell* %shell, %struct._GimpImage* %image, i32 %unit, double %scale) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %unit.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst41 = alloca %struct._GTypeInstance*, align 8
  %__t43 = alloca i64, align 8
  %__r46 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double %scale, double* %scale.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_display_shell_fill, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %15 = bitcast %struct._GimpDisplay* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_get_type() #8
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #9
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_display_shell_fill, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %28 = bitcast %struct._GimpImage* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst41, align 8
  %call44 = call i64 @gimp_image_get_type() #8
  store i64 %call44, i64* %__t43, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %tobool47 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %do.body.39
  store i32 0, i32* %__r46, align 4
  br label %if.end.60

if.else.49:                                       ; preds = %do.body.39
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %tobool51 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.57

land.lhs.true.52:                                 ; preds = %if.else.49
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %g_class53 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class53, align 8
  %g_type54 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type54, align 8
  %35 = load i64, i64* %__t43, align 8
  %cmp55 = icmp eq i64 %34, %35
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %land.lhs.true.52
  store i32 1, i32* %__r46, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %land.lhs.true.52, %if.else.49
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst41, align 8
  %37 = load i64, i64* %__t43, align 8
  %call58 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call58, i32* %__r46, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.48
  %38 = load i32, i32* %__r46, align 4
  store i32 %38, i32* %tmp61
  %39 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %39, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.60
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_display_shell_fill, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call67 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %40)
  store %struct._GimpImageWindow* %call67, %struct._GimpImageWindow** %window, align 8
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %42 = load i32, i32* %unit.addr, align 4
  call void @gimp_display_shell_set_unit(%struct._GimpDisplayShell* %41, i32 %42)
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %44 = load double, double* %scale.addr, align 8
  call void @gimp_display_shell_set_initial_scale(%struct._GimpDisplayShell* %43, double %44, i32* null, i32* null)
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_changed(%struct._GimpDisplayShell* %45)
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display68 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %47, i32 0, i32 1
  %48 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display68, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %48, i32 0, i32 2
  %49 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  call void @gimp_display_shell_sync_config(%struct._GimpDisplayShell* %46, %struct._GimpDisplayConfig* %49)
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_appearance_update(%struct._GimpDisplayShell* %50)
  %51 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  call void @gimp_image_window_update_tabs(%struct._GimpImageWindow* %51)
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %statusbar = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 44
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %statusbar, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_statusbar_get_type() #8
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call69)
  %55 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpStatusbar*
  call void @gimp_statusbar_fill(%struct._GimpStatusbar* %55)
  %56 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scroll_center_image_on_next_size_allocate(%struct._GimpDisplayShell* %56, i32 1, i32 1)
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %57, i32 0, i32 33
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  call void @gtk_widget_set_double_buffered(%struct._GtkWidget* %58, i32 0)
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %60 = bitcast %struct._GimpDisplayShell* %59 to i8*
  %call71 = call i32 @g_idle_add_full(i32 300, i32 (i8*)* bitcast (i32 (%struct._GimpDisplayShell*)* @gimp_display_shell_fill_idle to i32 (i8*)*), i8* %60, void (i8*)* null)
  %61 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fill_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %61, i32 0, i32 64
  store i32 %call71, i32* %fill_idle_id, align 4
  br label %return

return:                                           ; preds = %do.end.66, %if.else.64, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_set_unit(%struct._GimpDisplayShell* %shell, i32 %unit) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %unit.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_display_shell_set_unit, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 10
  %14 = load i32, i32* %unit11, align 4
  %15 = load i32, i32* %unit.addr, align 4
  %cmp12 = icmp ne i32 %14, %15
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %16 = load i32, i32* %unit.addr, align 4
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 10
  store i32 %16, i32* %unit14, align 4
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_update_rulers(%struct._GimpDisplayShell* %18)
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scaled(%struct._GimpDisplayShell* %19)
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %21 = bitcast %struct._GimpDisplayShell* %20 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @gimp_display_shell_set_initial_scale(%struct._GimpDisplayShell*, double, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scale_changed(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_display_shell_scale_changed, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.44

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call11 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %14)
  store %struct._GimpImage* %call11, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool12 = icmp ne %struct._GimpImage* %15, null
  br i1 %tobool12, label %if.then.13, label %if.else.37

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 22
  %18 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call14 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %18)
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 13
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 14
  call void @gimp_display_shell_calculate_scale_x_and_y(%struct._GimpDisplayShell* %16, double %call14, double* %scale_x, double* %scale_y)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i32 @gimp_image_get_width(%struct._GimpImage* %21)
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 20
  store i32 %call15, i32* %x_dest_inc, align 4
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_get_height(%struct._GimpImage* %23)
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_dest_inc = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 21
  store i32 %call16, i32* %y_dest_inc, align 4
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 13
  %26 = load double, double* %scale_x17, align 8
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_dest_inc18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 20
  %28 = load i32, i32* %x_dest_inc18, align 4
  %conv = sitofp i32 %28 to double
  %mul = fmul double %26, %conv
  %conv19 = fptosi double %mul to i32
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 18
  store i32 %conv19, i32* %x_src_dec, align 4
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 14
  %31 = load double, double* %scale_y20, align 8
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_dest_inc21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 21
  %33 = load i32, i32* %y_dest_inc21, align 4
  %conv22 = sitofp i32 %33 to double
  %mul23 = fmul double %31, %conv22
  %conv24 = fptosi double %mul23 to i32
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_src_dec = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %34, i32 0, i32 19
  store i32 %conv24, i32* %y_src_dec, align 4
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_src_dec25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %35, i32 0, i32 18
  %36 = load i32, i32* %x_src_dec25, align 4
  %cmp26 = icmp slt i32 %36, 1
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.13
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_src_dec29 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 18
  store i32 1, i32* %x_src_dec29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.13
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_src_dec31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 19
  %39 = load i32, i32* %y_src_dec31, align 4
  %cmp32 = icmp slt i32 %39, 1
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.30
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_src_dec35 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 19
  store i32 1, i32* %y_src_dec35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.30
  br label %if.end.44

if.else.37:                                       ; preds = %do.end
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x38 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 13
  store double 1.000000e+00, double* %scale_x38, align 8
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y39 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 14
  store double 1.000000e+00, double* %scale_y39, align 8
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_dest_inc40 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 20
  store i32 1, i32* %x_dest_inc40, align 4
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_dest_inc41 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %44, i32 0, i32 21
  store i32 1, i32* %y_dest_inc41, align 4
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %x_src_dec42 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %45, i32 0, i32 18
  store i32 1, i32* %x_src_dec42, align 4
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %y_src_dec43 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %46, i32 0, i32 19
  store i32 1, i32* %y_src_dec43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.9, %if.else.37, %if.end.36
  ret void
}

declare void @gimp_statusbar_fill(%struct._GimpStatusbar*) #1

declare void @gimp_display_shell_scroll_center_image_on_next_size_allocate(%struct._GimpDisplayShell*, i32, i32) #1

declare i32 @g_idle_add_full(i32, i32 (i8*)*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_fill_idle(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %toplevel, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %fill_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 64
  store i32 0, i32* %fill_idle_id, align 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gtk_window_get_type() #8
  store i64 %call3, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #9
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_shrink_wrap(%struct._GimpDisplayShell* %17, i32 1)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_window_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %20)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.9
  ret i32 0
}

declare void @gimp_display_shell_calculate_scale_x_and_y(%struct._GimpDisplayShell*, double, double*, double*) #1

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_scrolled(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_display_shell_scrolled, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %children = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 32
  %14 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %14, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %15, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = bitcast i8* %17 to %struct._GtkWidget*
  store %struct._GtkWidget* %18, %struct._GtkWidget** %child, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gimp_display_shell_transform_overlay(%struct._GimpDisplayShell* %19, %struct._GtkWidget* %20, double* %x, double* %y)
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 33
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_overlay_box_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpOverlayBox*
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %26 = load double, double* %x, align 8
  %27 = load double, double* %y, align 8
  call void @gimp_overlay_box_set_child_position(%struct._GimpOverlayBox* %24, %struct._GtkWidget* %25, double %26, double %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool17 = icmp ne %struct._GList* %28, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %32 = bitcast %struct._GimpDisplayShell* %31 to i8*
  %33 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @display_shell_signals, i32 0, i64 1), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %32, i32 %33, i32 0)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

declare void @gimp_display_shell_scale_update_rulers(%struct._GimpDisplayShell*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_get_unit(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %retval = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_display_shell_get_unit, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 10
  %14 = load i32, i32* %unit, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_snap_coords(%struct._GimpDisplayShell* %shell, %struct._GimpCoords* %coords, i32 %snap_offset_x, i32 %snap_offset_y, i32 %snap_width, i32 %snap_height) #3 {
entry:
  %retval = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %snap_offset_x.addr = alloca i32, align 4
  %snap_offset_y.addr = alloca i32, align 4
  %snap_width.addr = alloca i32, align 4
  %snap_height.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %snap_to_guides = alloca i32, align 4
  %snap_to_grid = alloca i32, align 4
  %snap_to_canvas = alloca i32, align 4
  %snap_to_vectors = alloca i32, align 4
  %snapped = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %snap_distance = alloca i32, align 4
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %snap_offset_x, i32* %snap_offset_x.addr, align 4
  store i32 %snap_offset_y, i32* %snap_offset_y.addr, align 4
  store i32 %snap_width, i32* %snap_width.addr, align 4
  store i32 %snap_height, i32* %snap_height.addr, align 4
  store i32 0, i32* %snap_to_guides, align 4
  store i32 0, i32* %snap_to_grid, align 4
  store i32 0, i32* %snap_to_canvas, align 4
  store i32 0, i32* %snap_to_vectors, align 4
  store i32 0, i32* %snapped, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_snap_coords, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_snap_coords, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 1
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call17 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %15)
  store %struct._GimpImage* %call17, %struct._GimpImage** %image, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call18 = call i32 @gimp_display_shell_get_snap_to_guides(%struct._GimpDisplayShell* %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %do.end.16
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %17)
  %tobool22 = icmp ne %struct._GList* %call21, null
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  store i32 1, i32* %snap_to_guides, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.20, %do.end.16
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call25 = call i32 @gimp_display_shell_get_snap_to_grid(%struct._GimpDisplayShell* %18)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %if.end.24
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call28 = call %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage* %19)
  %tobool29 = icmp ne %struct._GimpGrid* %call28, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %snap_to_grid, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.27, %if.end.24
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call32 = call i32 @gimp_display_shell_get_snap_to_canvas(%struct._GimpDisplayShell* %20)
  store i32 %call32, i32* %snap_to_canvas, align 4
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call33 = call i32 @gimp_display_shell_get_snap_to_vectors(%struct._GimpDisplayShell* %21)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.39

land.lhs.true.35:                                 ; preds = %if.end.31
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call36 = call %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage* %22)
  %tobool37 = icmp ne %struct._GimpVectors* %call36, null
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.35
  store i32 1, i32* %snap_to_vectors, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true.35, %if.end.31
  %23 = load i32, i32* %snap_to_guides, align 4
  %tobool40 = icmp ne i32 %23, 0
  br i1 %tobool40, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.39
  %24 = load i32, i32* %snap_to_grid, align 4
  %tobool41 = icmp ne i32 %24, 0
  br i1 %tobool41, label %if.then.46, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false
  %25 = load i32, i32* %snap_to_canvas, align 4
  %tobool43 = icmp ne i32 %25, 0
  br i1 %tobool43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.42
  %26 = load i32, i32* %snap_to_vectors, align 4
  %tobool45 = icmp ne i32 %26, 0
  br i1 %tobool45, label %if.then.46, label %if.end.95

if.then.46:                                       ; preds = %lor.lhs.false.44, %lor.lhs.false.42, %lor.lhs.false, %if.end.39
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display50 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 1
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display50, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %28, i32 0, i32 2
  %29 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %snap_distance51 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %29, i32 0, i32 3
  %30 = load i32, i32* %snap_distance51, align 4
  store i32 %30, i32* %snap_distance, align 4
  %31 = load i32, i32* %snap_width.addr, align 4
  %cmp52 = icmp sgt i32 %31, 0
  br i1 %cmp52, label %land.lhs.true.53, label %if.else.72

land.lhs.true.53:                                 ; preds = %if.then.46
  %32 = load i32, i32* %snap_height.addr, align 4
  %cmp54 = icmp sgt i32 %32, 0
  br i1 %cmp54, label %if.then.55, label %if.else.72

if.then.55:                                       ; preds = %land.lhs.true.53
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i32 0, i32 0
  %35 = load double, double* %x, align 8
  %36 = load i32, i32* %snap_offset_x.addr, align 4
  %conv = sitofp i32 %36 to double
  %add = fadd double %35, %conv
  %37 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %37, i32 0, i32 1
  %38 = load double, double* %y, align 8
  %39 = load i32, i32* %snap_offset_y.addr, align 4
  %conv56 = sitofp i32 %39 to double
  %add57 = fadd double %38, %conv56
  %40 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x58 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %40, i32 0, i32 0
  %41 = load double, double* %x58, align 8
  %42 = load i32, i32* %snap_offset_x.addr, align 4
  %conv59 = sitofp i32 %42 to double
  %add60 = fadd double %41, %conv59
  %43 = load i32, i32* %snap_width.addr, align 4
  %conv61 = sitofp i32 %43 to double
  %add62 = fadd double %add60, %conv61
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y63 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %44, i32 0, i32 1
  %45 = load double, double* %y63, align 8
  %46 = load i32, i32* %snap_offset_y.addr, align 4
  %conv64 = sitofp i32 %46 to double
  %add65 = fadd double %45, %conv64
  %47 = load i32, i32* %snap_height.addr, align 4
  %conv66 = sitofp i32 %47 to double
  %add67 = fadd double %add65, %conv66
  %48 = load i32, i32* %snap_distance, align 4
  %conv68 = sitofp i32 %48 to double
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %49, i32 0, i32 13
  %50 = load double, double* %scale_x, align 8
  %div = fdiv double %conv68, %50
  %51 = load i32, i32* %snap_distance, align 4
  %conv69 = sitofp i32 %51 to double
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 14
  %53 = load double, double* %scale_y, align 8
  %div70 = fdiv double %conv69, %53
  %54 = load i32, i32* %snap_to_guides, align 4
  %55 = load i32, i32* %snap_to_grid, align 4
  %56 = load i32, i32* %snap_to_canvas, align 4
  %57 = load i32, i32* %snap_to_vectors, align 4
  %call71 = call i32 @gimp_image_snap_rectangle(%struct._GimpImage* %33, double %add, double %add57, double %add62, double %add67, double* %tx, double* %ty, double %div, double %div70, i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %call71, i32* %snapped, align 4
  br label %if.end.86

if.else.72:                                       ; preds = %land.lhs.true.53, %if.then.46
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %59 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x73 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %59, i32 0, i32 0
  %60 = load double, double* %x73, align 8
  %61 = load i32, i32* %snap_offset_x.addr, align 4
  %conv74 = sitofp i32 %61 to double
  %add75 = fadd double %60, %conv74
  %62 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y76 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %62, i32 0, i32 1
  %63 = load double, double* %y76, align 8
  %64 = load i32, i32* %snap_offset_y.addr, align 4
  %conv77 = sitofp i32 %64 to double
  %add78 = fadd double %63, %conv77
  %65 = load i32, i32* %snap_distance, align 4
  %conv79 = sitofp i32 %65 to double
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_x80 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %66, i32 0, i32 13
  %67 = load double, double* %scale_x80, align 8
  %div81 = fdiv double %conv79, %67
  %68 = load i32, i32* %snap_distance, align 4
  %conv82 = sitofp i32 %68 to double
  %69 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %scale_y83 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %69, i32 0, i32 14
  %70 = load double, double* %scale_y83, align 8
  %div84 = fdiv double %conv82, %70
  %71 = load i32, i32* %snap_to_guides, align 4
  %72 = load i32, i32* %snap_to_grid, align 4
  %73 = load i32, i32* %snap_to_canvas, align 4
  %74 = load i32, i32* %snap_to_vectors, align 4
  %call85 = call i32 @gimp_image_snap_point(%struct._GimpImage* %58, double %add75, double %add78, double* %tx, double* %ty, double %div81, double %div84, i32 %71, i32 %72, i32 %73, i32 %74)
  store i32 %call85, i32* %snapped, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.72, %if.then.55
  %75 = load i32, i32* %snapped, align 4
  %tobool87 = icmp ne i32 %75, 0
  br i1 %tobool87, label %if.then.88, label %if.end.94

if.then.88:                                       ; preds = %if.end.86
  %76 = load double, double* %tx, align 8
  %77 = load i32, i32* %snap_offset_x.addr, align 4
  %conv89 = sitofp i32 %77 to double
  %sub = fsub double %76, %conv89
  %78 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x90 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %78, i32 0, i32 0
  store double %sub, double* %x90, align 8
  %79 = load double, double* %ty, align 8
  %80 = load i32, i32* %snap_offset_y.addr, align 4
  %conv91 = sitofp i32 %80 to double
  %sub92 = fsub double %79, %conv91
  %81 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y93 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %81, i32 0, i32 1
  store double %sub92, double* %y93, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.88, %if.end.86
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %lor.lhs.false.44
  %82 = load i32, i32* %snapped, align 4
  store i32 %82, i32* %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.else.14, %if.else.9
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @gimp_display_shell_get_snap_to_guides(%struct._GimpDisplayShell*) #1

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #1

declare i32 @gimp_display_shell_get_snap_to_grid(%struct._GimpDisplayShell*) #1

declare %struct._GimpGrid* @gimp_image_get_grid(%struct._GimpImage*) #1

declare i32 @gimp_display_shell_get_snap_to_canvas(%struct._GimpDisplayShell*) #1

declare i32 @gimp_display_shell_get_snap_to_vectors(%struct._GimpDisplayShell*) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare i32 @gimp_image_snap_rectangle(%struct._GimpImage*, double, double, double, double, double*, double*, double, double, i32, i32, i32, i32) #1

declare i32 @gimp_image_snap_point(%struct._GimpImage*, double, double, double*, double*, double, double, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_shell_mask_bounds(%struct._GimpDisplayShell* %shell, i32* %x1, i32* %y1, i32* %x2, i32* %y2) #3 {
entry:
  %retval = alloca i32, align 4
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %x1.addr = alloca i32*, align 8
  %y1.addr = alloca i32*, align 8
  %x2.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  %x1_f = alloca double, align 8
  %y1_f = alloca double, align 8
  %x2_f = alloca double, align 8
  %y2_f = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32* %x1, i32** %x1.addr, align 8
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %x2, i32** %x2.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_mask_bounds, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %x1.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_mask_bounds, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i32*, i32** %y1.addr, align 8
  %cmp18 = icmp ne i32* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_mask_bounds, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %15 = load i32*, i32** %x2.addr, align 8
  %cmp24 = icmp ne i32* %15, null
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.23
  br label %if.end.27

if.else.26:                                       ; preds = %do.body.23
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_mask_bounds, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %16 = load i32*, i32** %y2.addr, align 8
  %cmp30 = icmp ne i32* %16, null
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_mask_bounds, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 1
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call35 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %18)
  store %struct._GimpImage* %call35, %struct._GimpImage** %image, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call36 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %19)
  store %struct._GimpLayer* %call36, %struct._GimpLayer** %layer, align 8
  %tobool37 = icmp ne %struct._GimpLayer* %call36, null
  br i1 %tobool37, label %if.then.38, label %if.else.88

if.then.38:                                       ; preds = %do.end.34
  %20 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %21 = bitcast %struct._GimpLayer* %20 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_item_get_type() #8
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call41)
  %22 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %22, i32* %off_x, i32* %off_y)
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call43 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %23)
  %24 = load i32*, i32** %x1.addr, align 8
  %25 = load i32*, i32** %y1.addr, align 8
  %26 = load i32*, i32** %x2.addr, align 8
  %27 = load i32*, i32** %y2.addr, align 8
  %call44 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %call43, i32* %24, i32* %25, i32* %26, i32* %27)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.else.54, label %if.then.46

if.then.46:                                       ; preds = %if.then.38
  %28 = load i32, i32* %off_x, align 4
  %29 = load i32*, i32** %x1.addr, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %off_y, align 4
  %31 = load i32*, i32** %y1.addr, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %off_x, align 4
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %34 = bitcast %struct._GimpLayer* %33 to %struct._GTypeInstance*
  %call47 = call i64 @gimp_item_get_type() #8
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call47)
  %35 = bitcast %struct._GTypeInstance* %call48 to %struct._GimpItem*
  %call49 = call i32 @gimp_item_get_width(%struct._GimpItem* %35)
  %add = add nsw i32 %32, %call49
  %36 = load i32*, i32** %x2.addr, align 8
  store i32 %add, i32* %36, align 4
  %37 = load i32, i32* %off_y, align 4
  %38 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %39 = bitcast %struct._GimpLayer* %38 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_item_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call50)
  %40 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpItem*
  %call52 = call i32 @gimp_item_get_height(%struct._GimpItem* %40)
  %add53 = add nsw i32 %37, %call52
  %41 = load i32*, i32** %y2.addr, align 8
  store i32 %add53, i32* %41, align 4
  br label %if.end.87

if.else.54:                                       ; preds = %if.then.38
  %42 = load i32, i32* %off_x, align 4
  %43 = load i32*, i32** %x1.addr, align 8
  %44 = load i32, i32* %43, align 4
  %cmp55 = icmp slt i32 %42, %44
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.54
  %45 = load i32, i32* %off_x, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else.54
  %46 = load i32*, i32** %x1.addr, align 8
  %47 = load i32, i32* %46, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %45, %cond.true ], [ %47, %cond.false ]
  %48 = load i32*, i32** %x1.addr, align 8
  store i32 %cond, i32* %48, align 4
  %49 = load i32, i32* %off_y, align 4
  %50 = load i32*, i32** %y1.addr, align 8
  %51 = load i32, i32* %50, align 4
  %cmp56 = icmp slt i32 %49, %51
  br i1 %cmp56, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.end
  %52 = load i32, i32* %off_y, align 4
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end
  %53 = load i32*, i32** %y1.addr, align 8
  %54 = load i32, i32* %53, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.57
  %cond60 = phi i32 [ %52, %cond.true.57 ], [ %54, %cond.false.58 ]
  %55 = load i32*, i32** %y1.addr, align 8
  store i32 %cond60, i32* %55, align 4
  %56 = load i32, i32* %off_x, align 4
  %57 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %58 = bitcast %struct._GimpLayer* %57 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_item_get_type() #8
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call61)
  %59 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpItem*
  %call63 = call i32 @gimp_item_get_width(%struct._GimpItem* %59)
  %add64 = add nsw i32 %56, %call63
  %60 = load i32*, i32** %x2.addr, align 8
  %61 = load i32, i32* %60, align 4
  %cmp65 = icmp sgt i32 %add64, %61
  br i1 %cmp65, label %cond.true.66, label %cond.false.71

cond.true.66:                                     ; preds = %cond.end.59
  %62 = load i32, i32* %off_x, align 4
  %63 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %64 = bitcast %struct._GimpLayer* %63 to %struct._GTypeInstance*
  %call67 = call i64 @gimp_item_get_type() #8
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call67)
  %65 = bitcast %struct._GTypeInstance* %call68 to %struct._GimpItem*
  %call69 = call i32 @gimp_item_get_width(%struct._GimpItem* %65)
  %add70 = add nsw i32 %62, %call69
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.59
  %66 = load i32*, i32** %x2.addr, align 8
  %67 = load i32, i32* %66, align 4
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.66
  %cond73 = phi i32 [ %add70, %cond.true.66 ], [ %67, %cond.false.71 ]
  %68 = load i32*, i32** %x2.addr, align 8
  store i32 %cond73, i32* %68, align 4
  %69 = load i32, i32* %off_y, align 4
  %70 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %71 = bitcast %struct._GimpLayer* %70 to %struct._GTypeInstance*
  %call74 = call i64 @gimp_item_get_type() #8
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call74)
  %72 = bitcast %struct._GTypeInstance* %call75 to %struct._GimpItem*
  %call76 = call i32 @gimp_item_get_height(%struct._GimpItem* %72)
  %add77 = add nsw i32 %69, %call76
  %73 = load i32*, i32** %y2.addr, align 8
  %74 = load i32, i32* %73, align 4
  %cmp78 = icmp sgt i32 %add77, %74
  br i1 %cmp78, label %cond.true.79, label %cond.false.84

cond.true.79:                                     ; preds = %cond.end.72
  %75 = load i32, i32* %off_y, align 4
  %76 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %77 = bitcast %struct._GimpLayer* %76 to %struct._GTypeInstance*
  %call80 = call i64 @gimp_item_get_type() #8
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call80)
  %78 = bitcast %struct._GTypeInstance* %call81 to %struct._GimpItem*
  %call82 = call i32 @gimp_item_get_height(%struct._GimpItem* %78)
  %add83 = add nsw i32 %75, %call82
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end.72
  %79 = load i32*, i32** %y2.addr, align 8
  %80 = load i32, i32* %79, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.79
  %cond86 = phi i32 [ %add83, %cond.true.79 ], [ %80, %cond.false.84 ]
  %81 = load i32*, i32** %y2.addr, align 8
  store i32 %cond86, i32* %81, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %cond.end.85, %if.then.46
  br label %if.end.94

if.else.88:                                       ; preds = %do.end.34
  %82 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call89 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %82)
  %83 = load i32*, i32** %x1.addr, align 8
  %84 = load i32*, i32** %y1.addr, align 8
  %85 = load i32*, i32** %x2.addr, align 8
  %86 = load i32*, i32** %y2.addr, align 8
  %call90 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %call89, i32* %83, i32* %84, i32* %85, i32* %86)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %if.else.88
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.else.88
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.87
  %87 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %88 = load i32*, i32** %x1.addr, align 8
  %89 = load i32, i32* %88, align 4
  %conv = sitofp i32 %89 to double
  %90 = load i32*, i32** %y1.addr, align 8
  %91 = load i32, i32* %90, align 4
  %conv95 = sitofp i32 %91 to double
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %87, double %conv, double %conv95, double* %x1_f, double* %y1_f)
  %92 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %93 = load i32*, i32** %x2.addr, align 8
  %94 = load i32, i32* %93, align 4
  %conv96 = sitofp i32 %94 to double
  %95 = load i32*, i32** %y2.addr, align 8
  %96 = load i32, i32* %95, align 4
  %conv97 = sitofp i32 %96 to double
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %92, double %conv96, double %conv97, double* %x2_f, double* %y2_f)
  %97 = load double, double* %x1_f, align 8
  %call98 = call double @floor(double %97) #8
  %98 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %98, i32 0, i32 28
  %99 = load i32, i32* %disp_width, align 4
  %conv99 = sitofp i32 %99 to double
  %cmp100 = fcmp ogt double %call98, %conv99
  br i1 %cmp100, label %cond.true.102, label %cond.false.105

cond.true.102:                                    ; preds = %if.end.94
  %100 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width103 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %100, i32 0, i32 28
  %101 = load i32, i32* %disp_width103, align 4
  %conv104 = sitofp i32 %101 to double
  br label %cond.end.114

cond.false.105:                                   ; preds = %if.end.94
  %102 = load double, double* %x1_f, align 8
  %call106 = call double @floor(double %102) #8
  %cmp107 = fcmp olt double %call106, 0.000000e+00
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %cond.false.105
  br label %cond.end.112

cond.false.110:                                   ; preds = %cond.false.105
  %103 = load double, double* %x1_f, align 8
  %call111 = call double @floor(double %103) #8
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.109
  %cond113 = phi double [ 0.000000e+00, %cond.true.109 ], [ %call111, %cond.false.110 ]
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.end.112, %cond.true.102
  %cond115 = phi double [ %conv104, %cond.true.102 ], [ %cond113, %cond.end.112 ]
  %conv116 = fptosi double %cond115 to i32
  %104 = load i32*, i32** %x1.addr, align 8
  store i32 %conv116, i32* %104, align 4
  %105 = load double, double* %y1_f, align 8
  %call117 = call double @floor(double %105) #8
  %106 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %106, i32 0, i32 29
  %107 = load i32, i32* %disp_height, align 4
  %conv118 = sitofp i32 %107 to double
  %cmp119 = fcmp ogt double %call117, %conv118
  br i1 %cmp119, label %cond.true.121, label %cond.false.124

cond.true.121:                                    ; preds = %cond.end.114
  %108 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height122 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %108, i32 0, i32 29
  %109 = load i32, i32* %disp_height122, align 4
  %conv123 = sitofp i32 %109 to double
  br label %cond.end.133

cond.false.124:                                   ; preds = %cond.end.114
  %110 = load double, double* %y1_f, align 8
  %call125 = call double @floor(double %110) #8
  %cmp126 = fcmp olt double %call125, 0.000000e+00
  br i1 %cmp126, label %cond.true.128, label %cond.false.129

cond.true.128:                                    ; preds = %cond.false.124
  br label %cond.end.131

cond.false.129:                                   ; preds = %cond.false.124
  %111 = load double, double* %y1_f, align 8
  %call130 = call double @floor(double %111) #8
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.129, %cond.true.128
  %cond132 = phi double [ 0.000000e+00, %cond.true.128 ], [ %call130, %cond.false.129 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end.131, %cond.true.121
  %cond134 = phi double [ %conv123, %cond.true.121 ], [ %cond132, %cond.end.131 ]
  %conv135 = fptosi double %cond134 to i32
  %112 = load i32*, i32** %y1.addr, align 8
  store i32 %conv135, i32* %112, align 4
  %113 = load double, double* %x2_f, align 8
  %call136 = call double @ceil(double %113) #8
  %114 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width137 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %114, i32 0, i32 28
  %115 = load i32, i32* %disp_width137, align 4
  %conv138 = sitofp i32 %115 to double
  %cmp139 = fcmp ogt double %call136, %conv138
  br i1 %cmp139, label %cond.true.141, label %cond.false.144

cond.true.141:                                    ; preds = %cond.end.133
  %116 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width142 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %116, i32 0, i32 28
  %117 = load i32, i32* %disp_width142, align 4
  %conv143 = sitofp i32 %117 to double
  br label %cond.end.153

cond.false.144:                                   ; preds = %cond.end.133
  %118 = load double, double* %x2_f, align 8
  %call145 = call double @ceil(double %118) #8
  %cmp146 = fcmp olt double %call145, 0.000000e+00
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.false.144
  br label %cond.end.151

cond.false.149:                                   ; preds = %cond.false.144
  %119 = load double, double* %x2_f, align 8
  %call150 = call double @ceil(double %119) #8
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.149, %cond.true.148
  %cond152 = phi double [ 0.000000e+00, %cond.true.148 ], [ %call150, %cond.false.149 ]
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.end.151, %cond.true.141
  %cond154 = phi double [ %conv143, %cond.true.141 ], [ %cond152, %cond.end.151 ]
  %conv155 = fptosi double %cond154 to i32
  %120 = load i32*, i32** %x2.addr, align 8
  store i32 %conv155, i32* %120, align 4
  %121 = load double, double* %y2_f, align 8
  %call156 = call double @ceil(double %121) #8
  %122 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height157 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %122, i32 0, i32 29
  %123 = load i32, i32* %disp_height157, align 4
  %conv158 = sitofp i32 %123 to double
  %cmp159 = fcmp ogt double %call156, %conv158
  br i1 %cmp159, label %cond.true.161, label %cond.false.164

cond.true.161:                                    ; preds = %cond.end.153
  %124 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height162 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %124, i32 0, i32 29
  %125 = load i32, i32* %disp_height162, align 4
  %conv163 = sitofp i32 %125 to double
  br label %cond.end.173

cond.false.164:                                   ; preds = %cond.end.153
  %126 = load double, double* %y2_f, align 8
  %call165 = call double @ceil(double %126) #8
  %cmp166 = fcmp olt double %call165, 0.000000e+00
  br i1 %cmp166, label %cond.true.168, label %cond.false.169

cond.true.168:                                    ; preds = %cond.false.164
  br label %cond.end.171

cond.false.169:                                   ; preds = %cond.false.164
  %127 = load double, double* %y2_f, align 8
  %call170 = call double @ceil(double %127) #8
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.169, %cond.true.168
  %cond172 = phi double [ 0.000000e+00, %cond.true.168 ], [ %call170, %cond.false.169 ]
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.end.171, %cond.true.161
  %cond174 = phi double [ %conv163, %cond.true.161 ], [ %cond172, %cond.end.171 ]
  %conv175 = fptosi double %cond174 to i32
  %128 = load i32*, i32** %y2.addr, align 8
  store i32 %conv175, i32* %128, align 4
  %129 = load i32*, i32** %x2.addr, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %x1.addr, align 8
  %132 = load i32, i32* %131, align 4
  %sub = sub nsw i32 %130, %132
  %cmp176 = icmp sgt i32 %sub, 0
  br i1 %cmp176, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.173
  %133 = load i32*, i32** %y2.addr, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %y1.addr, align 8
  %136 = load i32, i32* %135, align 4
  %sub178 = sub nsw i32 %134, %136
  %cmp179 = icmp sgt i32 %sub178, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.173
  %137 = phi i1 [ false, %cond.end.173 ], [ %cmp179, %land.rhs ]
  %land.ext = zext i1 %137 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.92, %if.else.32, %if.else.26, %if.else.20, %if.else.14, %if.else.9
  %138 = load i32, i32* %retval
  ret i32 %138
}

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #1

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_flush(%struct._GimpDisplayShell* %shell, i32 %now) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %now.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %window = alloca %struct._GimpImageWindow*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %manager = alloca %struct._GimpUIManager*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %now, i32* %now.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_display_shell_flush, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.39

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_title_update(%struct._GimpDisplayShell* %13)
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_changed(%struct._GimpDisplayShell* %14)
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %layer_boundary = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 55
  %16 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %layer_boundary, align 8
  %17 = bitcast %struct._GimpCanvasItem* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_canvas_layer_boundary_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpCanvasLayerBoundary*
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 1
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call13 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %20)
  %call14 = call %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage* %call13)
  call void @gimp_canvas_layer_boundary_set_layer(%struct._GimpCanvasLayerBoundary* %18, %struct._GimpLayer* %call14)
  %21 = load i32, i32* %now.addr, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %do.end
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 33
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call17 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %23)
  call void @gdk_window_process_updates(%struct._GdkDrawable* %call17, i32 0)
  br label %if.end.39

if.else.18:                                       ; preds = %do.end
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call20 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %24)
  store %struct._GimpImageWindow* %call20, %struct._GimpImageWindow** %window, align 8
  %25 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool22 = icmp ne %struct._GimpImageWindow* %25, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.30

land.lhs.true.23:                                 ; preds = %if.else.18
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call24 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %26)
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %cmp25 = icmp eq %struct._GimpDisplayShell* %call24, %27
  br i1 %cmp25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %land.lhs.true.23
  %28 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call28 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %28)
  store %struct._GimpUIManager* %call28, %struct._GimpUIManager** %manager, align 8
  %29 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display29 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 1
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display29, align 8
  %32 = bitcast %struct._GimpDisplay* %31 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %29, i8* %32)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %land.lhs.true.23, %if.else.18
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 1
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display31, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %34, i32 0, i32 1
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call32 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %35)
  store %struct._GimpContext* %call32, %struct._GimpContext** %context, align 8
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display33 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %36, i32 0, i32 1
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display33, align 8
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call34 = call i8* @gimp_context_get_display(%struct._GimpContext* %38)
  %39 = bitcast i8* %call34 to %struct._GimpDisplay*
  %cmp35 = icmp eq %struct._GimpDisplay* %37, %39
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.30
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 2
  %41 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager, align 8
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display37 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 1
  %43 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display37, align 8
  %44 = bitcast %struct._GimpDisplay* %43 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %41, i8* %44)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.30
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.9, %if.end.38, %if.then.16
  ret void
}

declare void @gimp_display_shell_title_update(%struct._GimpDisplayShell*) #1

declare void @gimp_canvas_layer_boundary_set_layer(%struct._GimpCanvasLayerBoundary*, %struct._GimpLayer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_layer_boundary_get_type() #2

declare %struct._GimpLayer* @gimp_image_get_active_layer(%struct._GimpImage*) #1

declare void @gdk_window_process_updates(%struct._GdkDrawable*, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow*) #1

declare %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_pause(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_display_shell_pause, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %paused_count = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 80
  %14 = load i32, i32* %paused_count, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %paused_count, align 4
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %paused_count11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 80
  %16 = load i32, i32* %paused_count11, align 4
  %cmp12 = icmp eq i32 %16, 1
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 1
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 1
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display14, align 8
  call void @tool_manager_control_active(%struct._Gimp* %19, i32 0, %struct._GimpDisplay* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.13, %do.end
  ret void
}

declare void @tool_manager_control_active(%struct._Gimp*, i32, %struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_resume(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_shell_resume, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %paused_count = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 80
  %14 = load i32, i32* %paused_count, align 4
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_shell_resume, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.22

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %paused_count17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 80
  %16 = load i32, i32* %paused_count17, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %paused_count17, align 4
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %paused_count18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 80
  %18 = load i32, i32* %paused_count18, align 4
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.end.16
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 1
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 1
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display21, align 8
  call void @tool_manager_control_active(%struct._Gimp* %21, i32 1, %struct._GimpDisplay* %23)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.else.14, %if.then.20, %do.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_set_highlight(%struct._GimpDisplayShell* %shell, %struct._GdkRectangle* %highlight) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %highlight.addr = alloca %struct._GdkRectangle*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GdkRectangle* %highlight, %struct._GdkRectangle** %highlight.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_display_shell_set_highlight, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %highlight.addr, align 8
  %tobool11 = icmp ne %struct._GdkRectangle* %13, null
  br i1 %tobool11, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %passe_partout = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 49
  %15 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %passe_partout, align 8
  call void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem* %15)
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %passe_partout13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 49
  %17 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %passe_partout13, align 8
  %18 = load %struct._GdkRectangle*, %struct._GdkRectangle** %highlight.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %18, i32 0, i32 0
  %19 = load i32, i32* %x, align 4
  %conv = sitofp i32 %19 to double
  %20 = load %struct._GdkRectangle*, %struct._GdkRectangle** %highlight.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %20, i32 0, i32 1
  %21 = load i32, i32* %y, align 4
  %conv14 = sitofp i32 %21 to double
  %22 = load %struct._GdkRectangle*, %struct._GdkRectangle** %highlight.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %22, i32 0, i32 2
  %23 = load i32, i32* %width, align 4
  %conv15 = sitofp i32 %23 to double
  %24 = load %struct._GdkRectangle*, %struct._GdkRectangle** %highlight.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %24, i32 0, i32 3
  %25 = load i32, i32* %height, align 4
  %conv16 = sitofp i32 %25 to double
  call void @gimp_canvas_rectangle_set(%struct._GimpCanvasItem* %17, double %conv, double %conv14, double %conv15, double %conv16)
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %passe_partout17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 49
  %27 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %passe_partout17, align 8
  call void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem* %27, i32 1)
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %passe_partout18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 49
  %29 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %passe_partout18, align 8
  call void @gimp_canvas_item_end_change(%struct._GimpCanvasItem* %29)
  br label %if.end.21

if.else.19:                                       ; preds = %do.end
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %passe_partout20 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 49
  %31 = load %struct._GimpCanvasItem*, %struct._GimpCanvasItem** %passe_partout20, align 8
  call void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem* %31, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.else.19, %if.then.12
  ret void
}

declare void @gimp_canvas_item_begin_change(%struct._GimpCanvasItem*) #1

declare void @gimp_canvas_rectangle_set(%struct._GimpCanvasItem*, double, double, double, double) #1

declare void @gimp_canvas_item_set_visible(%struct._GimpCanvasItem*, i32) #1

declare void @gimp_canvas_item_end_change(%struct._GimpCanvasItem*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_set_mask(%struct._GimpDisplayShell* %shell, %struct._GimpDrawable* %mask, %struct._GimpRGB* %color) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %mask.addr = alloca %struct._GimpDrawable*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpDrawable* %mask, %struct._GimpDrawable** %mask.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_display_shell_set_mask, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %cmp12 = icmp eq %struct._GimpDrawable* %13, null
  br i1 %cmp12, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_drawable_get_type() #8
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
  br i1 %tobool35, label %land.lhs.true.36, label %if.else.40

land.lhs.true.36:                                 ; preds = %if.end.33
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %call37 = call i32 @gimp_drawable_bytes(%struct._GimpDrawable* %27)
  %cmp38 = icmp eq i32 %call37, 1
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %land.lhs.true.36, %do.body.11
  br label %if.end.41

if.else.40:                                       ; preds = %land.lhs.true.36, %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_display_shell_set_mask, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end.41:                                        ; preds = %if.then.39
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %cmp44 = icmp eq %struct._GimpDrawable* %28, null
  br i1 %cmp44, label %if.then.47, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %do.body.43
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %cmp46 = icmp ne %struct._GimpRGB* %29, null
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.45, %do.body.43
  br label %if.end.49

if.else.48:                                       ; preds = %lor.lhs.false.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_display_shell_set_mask, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %tobool51 = icmp ne %struct._GimpDrawable* %30, null
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %do.end.50
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to i8*
  %call53 = call i8* @g_object_ref(i8* %32)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %do.end.50
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask55 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 98
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask55, align 8
  %tobool56 = icmp ne %struct._GimpDrawable* %34, null
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask58 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %35, i32 0, i32 98
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask58, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to i8*
  call void @g_object_unref(i8* %37)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.54
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask60 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 98
  store %struct._GimpDrawable* %38, %struct._GimpDrawable** %mask60, align 8
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask.addr, align 8
  %tobool61 = icmp ne %struct._GimpDrawable* %40, null
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %mask_color = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 99
  %42 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %43 = bitcast %struct._GimpRGB* %mask_color to i8*
  %44 = bitcast %struct._GimpRGB* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.59
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_expose_full(%struct._GimpDisplayShell* %45)
  br label %return

return:                                           ; preds = %if.end.63, %if.else.48, %if.else.40, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_drawable_bytes(%struct._GimpDrawable*) #1

declare i8* @g_object_ref(i8*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_class_init(%struct._GimpDisplayShellClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDisplayShellClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpDisplayShellClass* %klass, %struct._GimpDisplayShellClass** %klass.addr, align 8
  %0 = load %struct._GimpDisplayShellClass*, %struct._GimpDisplayShellClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDisplayShellClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDisplayShellClass*, %struct._GimpDisplayShellClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDisplayShellClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpDisplayShellClass*, %struct._GimpDisplayShellClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDisplayShellClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i64 %8, i32 1, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @display_shell_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpDisplayShellClass*, %struct._GimpDisplayShellClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpDisplayShellClass* %9 to %struct._GTypeClass*
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type4, align 8
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i64 %11, i32 1, i32 832, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call5, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @display_shell_signals, i32 0, i64 1), align 4
  %12 = load %struct._GimpDisplayShellClass*, %struct._GimpDisplayShellClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpDisplayShellClass* %12 to %struct._GTypeClass*
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type6, align 8
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i64 %14, i32 1, i32 840, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call7, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @display_shell_signals, i32 0, i64 2), align 4
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_display_shell_constructed, void (%struct._GObject*)** %constructed, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_display_shell_dispose, void (%struct._GObject*)** %dispose, align 8
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_display_shell_finalize, void (%struct._GObject*)** %finalize, align 8
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_shell_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %19, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_shell_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %20 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %20, i32 0, i32 11
  store void (%struct._GtkWidget*)* @gimp_display_shell_unrealize, void (%struct._GtkWidget*)** %unrealize, align 8
  %21 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %screen_changed = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %21, i32 0, i32 64
  store void (%struct._GtkWidget*, %struct._GdkScreen*)* @gimp_display_shell_screen_changed, void (%struct._GtkWidget*, %struct._GdkScreen*)** %screen_changed, align 8
  %22 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %popup_menu = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %22, i32 0, i32 61
  store i32 (%struct._GtkWidget*)* @gimp_display_shell_popup_menu, i32 (%struct._GtkWidget*)** %popup_menu, align 8
  %23 = load %struct._GimpDisplayShellClass*, %struct._GimpDisplayShellClass** %klass.addr, align 8
  %scaled = getelementptr inbounds %struct._GimpDisplayShellClass, %struct._GimpDisplayShellClass* %23, i32 0, i32 1
  store void (%struct._GimpDisplayShell*)* @gimp_display_shell_real_scaled, void (%struct._GimpDisplayShell*)** %scaled, align 8
  %24 = load %struct._GimpDisplayShellClass*, %struct._GimpDisplayShellClass** %klass.addr, align 8
  %scrolled = getelementptr inbounds %struct._GimpDisplayShellClass, %struct._GimpDisplayShellClass* %24, i32 0, i32 2
  store void (%struct._GimpDisplayShell*)* null, void (%struct._GimpDisplayShell*)** %scrolled, align 8
  %25 = load %struct._GimpDisplayShellClass*, %struct._GimpDisplayShellClass** %klass.addr, align 8
  %reconnect = getelementptr inbounds %struct._GimpDisplayShellClass, %struct._GimpDisplayShellClass* %25, i32 0, i32 3
  store void (%struct._GimpDisplayShell*)* null, void (%struct._GimpDisplayShell*)** %reconnect, align 8
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @gimp_ui_manager_get_type() #8
  %call9 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call8, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 1, %struct._GParamSpec* %call9)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call i64 @gimp_display_get_type() #8
  %call11 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* null, i64 %call10, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 2, %struct._GParamSpec* %call11)
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 1, i32 0, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 3, %struct._GParamSpec* %call12)
  %29 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0)) #5
  %call14 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* null, i8* %call13, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %29, i32 4, %struct._GParamSpec* %call14)
  %30 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, i8* null, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %30, i32 5, %struct._GParamSpec* %call15)
  %31 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call i64 @gdk_pixbuf_get_type() #8
  %call17 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, i64 %call16, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %31, i32 6, %struct._GParamSpec* %call17)
  call void @gtk_rc_parse_string(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @display_rc_style, i32 0, i32 0))
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %config = alloca %struct._GimpDisplayConfig*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %filter = alloca %struct._GimpColorDisplayStack*, align 8
  %upper_hbox = alloca %struct._GtkWidget*, align 8
  %right_vbox = alloca %struct._GtkWidget*, align 8
  %lower_hbox = alloca %struct._GtkWidget*, align 8
  %inner_table = alloca %struct._GtkWidget*, align 8
  %gtk_image = alloca %struct._GtkWidget*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %shell_width = alloca i32, align 4
  %shell_height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load i8*, i8** @gimp_display_shell_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_display_shell_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 2
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager, align 8
  %14 = bitcast %struct._GimpUIManager* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_ui_manager_get_type() #8
  store i64 %call5, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool6 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool8 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class9 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class9, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call12 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call12, i32* %__r, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.7
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end.14
  br label %if.end.18

if.else.17:                                       ; preds = %if.end.14
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 370, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_constructed, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 1
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %28 = bitcast %struct._GimpDisplay* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_display_get_type() #8
  store i64 %call24, i64* %__t23, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %do.body.19
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %do.body.19
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type34, align 8
  %35 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %34, %35
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %37 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %38 = load i32, i32* %__r26, align 4
  store i32 %38, i32* %tmp41
  %39 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %39, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 371, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_constructed, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0)) #10
  unreachable

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 1
  %41 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display47, align 8
  %config48 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %41, i32 0, i32 2
  %42 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config48, align 8
  store %struct._GimpDisplayConfig* %42, %struct._GimpDisplayConfig** %config, align 8
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display49 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %43, i32 0, i32 1
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display49, align 8
  %call50 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %44)
  store %struct._GimpImage* %call50, %struct._GimpImage** %image, align 8
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool51 = icmp ne %struct._GimpImage* %45, null
  br i1 %tobool51, label %if.then.52, label %if.else.55

if.then.52:                                       ; preds = %do.end.46
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call53 = call i32 @gimp_image_get_width(%struct._GimpImage* %46)
  store i32 %call53, i32* %image_width, align 4
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call54 = call i32 @gimp_image_get_height(%struct._GimpImage* %47)
  store i32 %call54, i32* %image_height, align 4
  br label %if.end.56

if.else.55:                                       ; preds = %do.end.46
  store i32 640, i32* %image_width, align 4
  store i32 133, i32* %image_height, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.then.52
  %48 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %default_dot_for_dot = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %48, i32 0, i32 7
  %49 = load i32, i32* %default_dot_for_dot, align 4
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %dot_for_dot = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %50, i32 0, i32 17
  store i32 %49, i32* %dot_for_dot, align 4
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %52 = bitcast %struct._GimpDisplayShell* %51 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_widget_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call57)
  %53 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkWidget*
  %call59 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %53)
  store %struct._GdkScreen* %call59, %struct._GdkScreen** %screen, align 8
  %54 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %monitor_res_from_gdk = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %54, i32 0, i32 18
  %55 = load i32, i32* %monitor_res_from_gdk, align 4
  %tobool60 = icmp ne i32 %55, 0
  br i1 %tobool60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.end.56
  %56 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %57, i32 0, i32 15
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %58, i32 0, i32 16
  call void @gimp_get_screen_resolution(%struct._GdkScreen* %56, double* %monitor_xres, double* %monitor_yres)
  br label %if.end.67

if.else.62:                                       ; preds = %if.end.56
  %59 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %monitor_xres63 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %59, i32 0, i32 16
  %60 = load double, double* %monitor_xres63, align 8
  %61 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %monitor_xres64 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %61, i32 0, i32 15
  store double %60, double* %monitor_xres64, align 8
  %62 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %monitor_yres65 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %62, i32 0, i32 17
  %63 = load double, double* %monitor_yres65, align 8
  %64 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %monitor_yres66 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %64, i32 0, i32 16
  store double %63, double* %monitor_yres66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.62, %if.then.61
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool68 = icmp ne %struct._GimpImage* %65, null
  br i1 %tobool68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.end.67
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_set_initial_scale(%struct._GimpDisplayShell* %66, double 1.000000e+00, i32* %shell_width, i32* %shell_height)
  br label %if.end.71

if.else.70:                                       ; preds = %if.end.67
  store i32 -1, i32* %shell_width, align 4
  %67 = load i32, i32* %image_height, align 4
  store i32 %67, i32* %shell_height, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.69
  %68 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %69 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  call void @gimp_display_shell_sync_config(%struct._GimpDisplayShell* %68, %struct._GimpDisplayConfig* %69)
  %call72 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  store %struct._GtkWidget* %call72, %struct._GtkWidget** %upper_hbox, align 8
  %70 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %71 = bitcast %struct._GimpDisplayShell* %70 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_box_get_type() #8
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call73)
  %72 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkBox*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %72, %struct._GtkWidget* %73, i32 1, i32 1, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %call75 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call75, %struct._GtkWidget** %inner_table, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_table, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_table_get_type() #8
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call76)
  %77 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkTable*
  call void @gtk_table_set_col_spacing(%struct._GtkTable* %77, i32 0, i32 0)
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_table, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_table_get_type() #8
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call78)
  %80 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkTable*
  call void @gtk_table_set_row_spacing(%struct._GtkTable* %80, i32 0, i32 0)
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox, align 8
  %82 = bitcast %struct._GtkWidget* %81 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_box_get_type() #8
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 %call80)
  %83 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkBox*
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %83, %struct._GtkWidget* %84, i32 1, i32 1, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %85)
  %call82 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 1)
  store %struct._GtkWidget* %call82, %struct._GtkWidget** %right_vbox, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %upper_hbox, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_box_get_type() #8
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call83)
  %88 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  %call85 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 1)
  store %struct._GtkWidget* %call85, %struct._GtkWidget** %lower_hbox, align 8
  %91 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %92 = bitcast %struct._GimpDisplayShell* %91 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_box_get_type() #8
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call86)
  %93 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkBox*
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %93, %struct._GtkWidget* %94, i32 0, i32 0, i32 0)
  %95 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %95)
  %96 = load i32, i32* %image_width, align 4
  %conv = sitofp i32 %96 to double
  %97 = load i32, i32* %image_width, align 4
  %conv88 = sitofp i32 %97 to double
  %call89 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 0.000000e+00, double %conv, double 1.000000e+00, double 1.000000e+00, double %conv88)
  %98 = bitcast %struct._GtkObject* %call89 to %struct._GTypeInstance*
  %call90 = call i64 @gtk_adjustment_get_type() #8
  %call91 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call90)
  %99 = bitcast %struct._GTypeInstance* %call91 to %struct._GtkAdjustment*
  %100 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %100, i32 0, i32 34
  store %struct._GtkAdjustment* %99, %struct._GtkAdjustment** %hsbdata, align 8
  %101 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsbdata92 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %101, i32 0, i32 34
  %102 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %hsbdata92, align 8
  %call93 = call %struct._GtkWidget* @gtk_scrollbar_new(i32 0, %struct._GtkAdjustment* %102)
  %103 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsb = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %103, i32 0, i32 36
  store %struct._GtkWidget* %call93, %struct._GtkWidget** %hsb, align 8
  %104 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsb94 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %104, i32 0, i32 36
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %hsb94, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %105, i32 0)
  %106 = load i32, i32* %image_height, align 4
  %conv95 = sitofp i32 %106 to double
  %107 = load i32, i32* %image_height, align 4
  %conv96 = sitofp i32 %107 to double
  %call97 = call %struct._GtkObject* @gtk_adjustment_new(double 0.000000e+00, double 0.000000e+00, double %conv95, double 1.000000e+00, double 1.000000e+00, double %conv96)
  %108 = bitcast %struct._GtkObject* %call97 to %struct._GTypeInstance*
  %call98 = call i64 @gtk_adjustment_get_type() #8
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %108, i64 %call98)
  %109 = bitcast %struct._GTypeInstance* %call99 to %struct._GtkAdjustment*
  %110 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %110, i32 0, i32 35
  store %struct._GtkAdjustment* %109, %struct._GtkAdjustment** %vsbdata, align 8
  %111 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsbdata100 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %111, i32 0, i32 35
  %112 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %vsbdata100, align 8
  %call101 = call %struct._GtkWidget* @gtk_scrollbar_new(i32 1, %struct._GtkAdjustment* %112)
  %113 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsb = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %113, i32 0, i32 37
  store %struct._GtkWidget* %call101, %struct._GtkWidget** %vsb, align 8
  %114 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsb102 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %114, i32 0, i32 37
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %vsb102, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %115, i32 0)
  %call103 = call %struct._GtkWidget* @gtk_event_box_new()
  %116 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %origin = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %116, i32 0, i32 40
  store %struct._GtkWidget* %call103, %struct._GtkWidget** %origin, align 8
  %call104 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call104, %struct._GtkWidget** %gtk_image, align 8
  %117 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %origin105 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %117, i32 0, i32 40
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %origin105, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_container_get_type() #8
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call106)
  %120 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkContainer*
  %121 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %120, %struct._GtkWidget* %121)
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %123 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %origin108 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %123, i32 0, i32 40
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %origin108, align 8
  %125 = bitcast %struct._GtkWidget* %124 to i8*
  %126 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %127 = bitcast %struct._GimpDisplayShell* %126 to i8*
  %call109 = call i64 @g_signal_connect_data(i8* %125, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*)* @gimp_display_shell_origin_button_press to void ()*), i8* %127, void (i8*, %struct._GClosure*)* null, i32 0)
  %128 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %origin110 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %128, i32 0, i32 40
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %origin110, align 8
  %call111 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %129, i8* %call111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0))
  %130 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %call112 = call %struct._GtkWidget* @gimp_canvas_new(%struct._GimpDisplayConfig* %130)
  %131 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %131, i32 0, i32 33
  store %struct._GtkWidget* %call112, %struct._GtkWidget** %canvas, align 8
  %132 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas113 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %132, i32 0, i32 33
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas113, align 8
  %134 = load i32, i32* %shell_width, align 4
  %135 = load i32, i32* %shell_height, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %133, i32 %134, i32 %135)
  %136 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas114 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %136, i32 0, i32 33
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas114, align 8
  %138 = bitcast %struct._GtkWidget* %137 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_container_get_type() #8
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %138, i64 %call115)
  %139 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %139, i32 10)
  %140 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas117 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %140, i32 0, i32 33
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas117, align 8
  %142 = bitcast %struct._GtkWidget* %141 to i8*
  %143 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %144 = bitcast %struct._GimpDisplayShell* %143 to i8*
  %call118 = call i64 @g_signal_connect_data(i8* %142, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpDisplayShell*)* @gimp_display_shell_remove_overlay to void ()*), i8* %144, void (i8*, %struct._GClosure*)* null, i32 0)
  %145 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_dnd_init(%struct._GimpDisplayShell* %145)
  %146 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_init(%struct._GimpDisplayShell* %146)
  %call119 = call %struct._GtkWidget* @gimp_ruler_new(i32 0)
  %147 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hrule = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %147, i32 0, i32 38
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %hrule, align 8
  %148 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hrule120 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %148, i32 0, i32 38
  %149 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule120, align 8
  %150 = bitcast %struct._GtkWidget* %149 to %struct._GTypeInstance*
  %call121 = call i64 @gtk_widget_get_type() #8
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %150, i64 %call121)
  %151 = bitcast %struct._GTypeInstance* %call122 to %struct._GtkWidget*
  call void @gtk_widget_set_events(%struct._GtkWidget* %151, i32 768)
  %152 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hrule123 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %152, i32 0, i32 38
  %153 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule123, align 8
  %154 = bitcast %struct._GtkWidget* %153 to %struct._GTypeInstance*
  %call124 = call i64 @gimp_ruler_get_type() #8
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %154, i64 %call124)
  %155 = bitcast %struct._GTypeInstance* %call125 to %struct._GimpRuler*
  %156 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas126 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %156, i32 0, i32 33
  %157 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas126, align 8
  call void @gimp_ruler_add_track_widget(%struct._GimpRuler* %155, %struct._GtkWidget* %157)
  %158 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hrule127 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %158, i32 0, i32 38
  %159 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule127, align 8
  %160 = bitcast %struct._GtkWidget* %159 to i8*
  %161 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %162 = bitcast %struct._GimpDisplayShell* %161 to i8*
  %call128 = call i64 @g_signal_connect_data(i8* %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*)* @gimp_display_shell_hruler_button_press to void ()*), i8* %162, void (i8*, %struct._GClosure*)* null, i32 0)
  %163 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hrule129 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %163, i32 0, i32 38
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule129, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %164, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0))
  %call130 = call %struct._GtkWidget* @gimp_ruler_new(i32 1)
  %165 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vrule = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %165, i32 0, i32 39
  store %struct._GtkWidget* %call130, %struct._GtkWidget** %vrule, align 8
  %166 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vrule131 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %166, i32 0, i32 39
  %167 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule131, align 8
  %168 = bitcast %struct._GtkWidget* %167 to %struct._GTypeInstance*
  %call132 = call i64 @gtk_widget_get_type() #8
  %call133 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %168, i64 %call132)
  %169 = bitcast %struct._GTypeInstance* %call133 to %struct._GtkWidget*
  call void @gtk_widget_set_events(%struct._GtkWidget* %169, i32 768)
  %170 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vrule134 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %170, i32 0, i32 39
  %171 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule134, align 8
  %172 = bitcast %struct._GtkWidget* %171 to %struct._GTypeInstance*
  %call135 = call i64 @gimp_ruler_get_type() #8
  %call136 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call135)
  %173 = bitcast %struct._GTypeInstance* %call136 to %struct._GimpRuler*
  %174 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas137 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %174, i32 0, i32 33
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas137, align 8
  call void @gimp_ruler_add_track_widget(%struct._GimpRuler* %173, %struct._GtkWidget* %175)
  %176 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vrule138 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %176, i32 0, i32 39
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule138, align 8
  %178 = bitcast %struct._GtkWidget* %177 to i8*
  %179 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %180 = bitcast %struct._GimpDisplayShell* %179 to i8*
  %call139 = call i64 @g_signal_connect_data(i8* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*)* @gimp_display_shell_vruler_button_press to void ()*), i8* %180, void (i8*, %struct._GClosure*)* null, i32 0)
  %181 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hrule140 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %181, i32 0, i32 38
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule140, align 8
  %183 = bitcast %struct._GtkWidget* %182 to %struct._GTypeInstance*
  %call141 = call i64 @gimp_ruler_get_type() #8
  %call142 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %183, i64 %call141)
  %184 = bitcast %struct._GTypeInstance* %call142 to %struct._GimpRuler*
  %185 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vrule143 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %185, i32 0, i32 39
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule143, align 8
  call void @gimp_ruler_add_track_widget(%struct._GimpRuler* %184, %struct._GtkWidget* %186)
  %187 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vrule144 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %187, i32 0, i32 39
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule144, align 8
  %189 = bitcast %struct._GtkWidget* %188 to %struct._GTypeInstance*
  %call145 = call i64 @gimp_ruler_get_type() #8
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %189, i64 %call145)
  %190 = bitcast %struct._GTypeInstance* %call146 to %struct._GimpRuler*
  %191 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hrule147 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %191, i32 0, i32 38
  %192 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule147, align 8
  call void @gimp_ruler_add_track_widget(%struct._GimpRuler* %190, %struct._GtkWidget* %192)
  %193 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vrule148 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %193, i32 0, i32 39
  %194 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule148, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %194, i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0))
  %195 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display149 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %195, i32 0, i32 1
  %196 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display149, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %196, i32 0, i32 1
  %197 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %198 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hrule150 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %198, i32 0, i32 38
  %199 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule150, align 8
  call void @gimp_devices_add_widget(%struct._Gimp* %197, %struct._GtkWidget* %199)
  %200 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display151 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %200, i32 0, i32 1
  %201 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display151, align 8
  %gimp152 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %201, i32 0, i32 1
  %202 = load %struct._Gimp*, %struct._Gimp** %gimp152, align 8
  %203 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vrule153 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %203, i32 0, i32 39
  %204 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule153, align 8
  call void @gimp_devices_add_widget(%struct._Gimp* %202, %struct._GtkWidget* %204)
  %205 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas154 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %205, i32 0, i32 33
  %206 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas154, align 8
  %207 = bitcast %struct._GtkWidget* %206 to i8*
  %208 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %209 = bitcast %struct._GimpDisplayShell* %208 to i8*
  %call155 = call i64 @g_signal_connect_data(i8* %207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_realize to void ()*), i8* %209, void (i8*, %struct._GClosure*)* null, i32 0)
  %210 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas156 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %210, i32 0, i32 33
  %211 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas156, align 8
  %212 = bitcast %struct._GtkWidget* %211 to i8*
  %213 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %214 = bitcast %struct._GimpDisplayShell* %213 to i8*
  %call157 = call i64 @g_signal_connect_data(i8* %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_size_allocate to void ()*), i8* %214, void (i8*, %struct._GClosure*)* null, i32 0)
  %215 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas158 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %215, i32 0, i32 33
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas158, align 8
  %217 = bitcast %struct._GtkWidget* %216 to i8*
  %218 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %219 = bitcast %struct._GimpDisplayShell* %218 to i8*
  %call159 = call i64 @g_signal_connect_data(i8* %217, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_expose to void ()*), i8* %219, void (i8*, %struct._GClosure*)* null, i32 0)
  %220 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas160 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %220, i32 0, i32 33
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas160, align 8
  %222 = bitcast %struct._GtkWidget* %221 to i8*
  %223 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %224 = bitcast %struct._GimpDisplayShell* %223 to i8*
  %call161 = call i64 @g_signal_connect_data(i8* %222, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_expose_after to void ()*), i8* %224, void (i8*, %struct._GClosure*)* null, i32 1)
  %225 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas162 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %225, i32 0, i32 33
  %226 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas162, align 8
  %227 = bitcast %struct._GtkWidget* %226 to i8*
  %228 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %229 = bitcast %struct._GimpDisplayShell* %228 to i8*
  %call163 = call i64 @g_signal_connect_data(i8* %227, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %229, void (i8*, %struct._GClosure*)* null, i32 0)
  %230 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas164 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %230, i32 0, i32 33
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas164, align 8
  %232 = bitcast %struct._GtkWidget* %231 to i8*
  %233 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %234 = bitcast %struct._GimpDisplayShell* %233 to i8*
  %call165 = call i64 @g_signal_connect_data(i8* %232, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %234, void (i8*, %struct._GClosure*)* null, i32 0)
  %235 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas166 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %235, i32 0, i32 33
  %236 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas166, align 8
  %237 = bitcast %struct._GtkWidget* %236 to i8*
  %238 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %239 = bitcast %struct._GimpDisplayShell* %238 to i8*
  %call167 = call i64 @g_signal_connect_data(i8* %237, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %239, void (i8*, %struct._GClosure*)* null, i32 0)
  %240 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas168 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %240, i32 0, i32 33
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas168, align 8
  %242 = bitcast %struct._GtkWidget* %241 to i8*
  %243 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %244 = bitcast %struct._GimpDisplayShell* %243 to i8*
  %call169 = call i64 @g_signal_connect_data(i8* %242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %244, void (i8*, %struct._GClosure*)* null, i32 0)
  %245 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas170 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %245, i32 0, i32 33
  %246 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas170, align 8
  %247 = bitcast %struct._GtkWidget* %246 to i8*
  %248 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %249 = bitcast %struct._GimpDisplayShell* %248 to i8*
  %call171 = call i64 @g_signal_connect_data(i8* %247, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %249, void (i8*, %struct._GClosure*)* null, i32 0)
  %250 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas172 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %250, i32 0, i32 33
  %251 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas172, align 8
  %252 = bitcast %struct._GtkWidget* %251 to i8*
  %253 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %254 = bitcast %struct._GimpDisplayShell* %253 to i8*
  %call173 = call i64 @g_signal_connect_data(i8* %252, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %254, void (i8*, %struct._GClosure*)* null, i32 0)
  %255 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas174 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %255, i32 0, i32 33
  %256 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas174, align 8
  %257 = bitcast %struct._GtkWidget* %256 to i8*
  %258 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %259 = bitcast %struct._GimpDisplayShell* %258 to i8*
  %call175 = call i64 @g_signal_connect_data(i8* %257, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %259, void (i8*, %struct._GClosure*)* null, i32 0)
  %260 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas176 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %260, i32 0, i32 33
  %261 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas176, align 8
  %262 = bitcast %struct._GtkWidget* %261 to i8*
  %263 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %264 = bitcast %struct._GimpDisplayShell* %263 to i8*
  %call177 = call i64 @g_signal_connect_data(i8* %262, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %264, void (i8*, %struct._GClosure*)* null, i32 0)
  %265 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas178 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %265, i32 0, i32 33
  %266 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas178, align 8
  %267 = bitcast %struct._GtkWidget* %266 to i8*
  %268 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %269 = bitcast %struct._GimpDisplayShell* %268 to i8*
  %call179 = call i64 @g_signal_connect_data(i8* %267, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %269, void (i8*, %struct._GClosure*)* null, i32 0)
  %270 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas180 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %270, i32 0, i32 33
  %271 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas180, align 8
  %272 = bitcast %struct._GtkWidget* %271 to i8*
  %273 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %274 = bitcast %struct._GimpDisplayShell* %273 to i8*
  %call181 = call i64 @g_signal_connect_data(i8* %272, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %274, void (i8*, %struct._GClosure*)* null, i32 0)
  %275 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas182 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %275, i32 0, i32 33
  %276 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas182, align 8
  %277 = bitcast %struct._GtkWidget* %276 to i8*
  %278 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %279 = bitcast %struct._GimpDisplayShell* %278 to i8*
  %call183 = call i64 @g_signal_connect_data(i8* %277, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %279, void (i8*, %struct._GClosure*)* null, i32 0)
  %280 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas184 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %280, i32 0, i32 33
  %281 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas184, align 8
  %282 = bitcast %struct._GtkWidget* %281 to i8*
  %283 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %284 = bitcast %struct._GimpDisplayShell* %283 to i8*
  %call185 = call i64 @g_signal_connect_data(i8* %282, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*)* @gimp_display_shell_canvas_tool_events to void ()*), i8* %284, void (i8*, %struct._GClosure*)* null, i32 0)
  %call186 = call i64 @gtk_check_button_get_type() #8
  %call187 = call i8* (i64, i8*, ...) @g_object_new(i64 %call186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i32 18, i8* null)
  %285 = bitcast i8* %call187 to %struct._GtkWidget*
  %286 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom_button = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %286, i32 0, i32 42
  store %struct._GtkWidget* %285, %struct._GtkWidget** %zoom_button, align 8
  %287 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom_button188 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %287, i32 0, i32 42
  %288 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_button188, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %288, i32 0)
  %call189 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call189, %struct._GtkWidget** %gtk_image, align 8
  %289 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom_button190 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %289, i32 0, i32 42
  %290 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_button190, align 8
  %291 = bitcast %struct._GtkWidget* %290 to %struct._GTypeInstance*
  %call191 = call i64 @gtk_container_get_type() #8
  %call192 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %291, i64 %call191)
  %292 = bitcast %struct._GTypeInstance* %call192 to %struct._GtkContainer*
  %293 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %292, %struct._GtkWidget* %293)
  %294 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %294)
  %295 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom_button193 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %295, i32 0, i32 42
  %296 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_button193, align 8
  %call194 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %296, i8* %call194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i32 0, i32 0))
  %297 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom_button195 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %297, i32 0, i32 42
  %298 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_button195, align 8
  %299 = bitcast %struct._GtkWidget* %298 to i8*
  %300 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %301 = bitcast %struct._GimpDisplayShell* %300 to i8*
  %call196 = call i64 @g_signal_connect_data(i8* %299, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GtkWidget*)* @gimp_display_shell_zoom_button_callback to void ()*), i8* %301, void (i8*, %struct._GClosure*)* null, i32 2)
  %call197 = call i64 @gtk_check_button_get_type() #8
  %call198 = call i8* (i64, i8*, ...) @g_object_new(i64 %call197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i32 18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i32 18, i8* null)
  %302 = bitcast i8* %call198 to %struct._GtkWidget*
  %303 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %quick_mask_button = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %303, i32 0, i32 41
  store %struct._GtkWidget* %302, %struct._GtkWidget** %quick_mask_button, align 8
  %304 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %quick_mask_button199 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %304, i32 0, i32 41
  %305 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button199, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %305, i32 0)
  %call200 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call200, %struct._GtkWidget** %gtk_image, align 8
  %306 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %quick_mask_button201 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %306, i32 0, i32 41
  %307 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button201, align 8
  %308 = bitcast %struct._GtkWidget* %307 to %struct._GTypeInstance*
  %call202 = call i64 @gtk_container_get_type() #8
  %call203 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %308, i64 %call202)
  %309 = bitcast %struct._GTypeInstance* %call203 to %struct._GtkContainer*
  %310 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %309, %struct._GtkWidget* %310)
  %311 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %311)
  %312 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %popup_manager204 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %312, i32 0, i32 2
  %313 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager204, align 8
  %call205 = call %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager* %313, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0))
  store %struct._GtkAction* %call205, %struct._GtkAction** %action, align 8
  %314 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool206 = icmp ne %struct._GtkAction* %314, null
  br i1 %tobool206, label %if.then.207, label %if.else.209

if.then.207:                                      ; preds = %if.end.71
  %315 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %quick_mask_button208 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %315, i32 0, i32 41
  %316 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button208, align 8
  %317 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gimp_widget_set_accel_help(%struct._GtkWidget* %316, %struct._GtkAction* %317)
  br label %if.end.212

if.else.209:                                      ; preds = %if.end.71
  %318 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %quick_mask_button210 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %318, i32 0, i32 41
  %319 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button210, align 8
  %call211 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %319, i8* %call211, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.209, %if.then.207
  %320 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %quick_mask_button213 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %320, i32 0, i32 41
  %321 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button213, align 8
  %322 = bitcast %struct._GtkWidget* %321 to i8*
  %323 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %324 = bitcast %struct._GimpDisplayShell* %323 to i8*
  %call214 = call i64 @g_signal_connect_data(i8* %322, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpDisplayShell*)* @gimp_display_shell_quick_mask_toggled to void ()*), i8* %324, void (i8*, %struct._GClosure*)* null, i32 0)
  %325 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %quick_mask_button215 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %325, i32 0, i32 41
  %326 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button215, align 8
  %327 = bitcast %struct._GtkWidget* %326 to i8*
  %328 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %329 = bitcast %struct._GimpDisplayShell* %328 to i8*
  %call216 = call i64 @g_signal_connect_data(i8* %327, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*)* @gimp_display_shell_quick_mask_button_press to void ()*), i8* %329, void (i8*, %struct._GClosure*)* null, i32 0)
  %call217 = call %struct._GtkWidget* @gtk_event_box_new()
  %330 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_ebox = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %330, i32 0, i32 43
  store %struct._GtkWidget* %call217, %struct._GtkWidget** %nav_ebox, align 8
  %call218 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call218, %struct._GtkWidget** %gtk_image, align 8
  %331 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_ebox219 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %331, i32 0, i32 43
  %332 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_ebox219, align 8
  %333 = bitcast %struct._GtkWidget* %332 to %struct._GTypeInstance*
  %call220 = call i64 @gtk_container_get_type() #8
  %call221 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %333, i64 %call220)
  %334 = bitcast %struct._GTypeInstance* %call221 to %struct._GtkContainer*
  %335 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %334, %struct._GtkWidget* %335)
  %336 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %336)
  %337 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_ebox222 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %337, i32 0, i32 43
  %338 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_ebox222, align 8
  %339 = bitcast %struct._GtkWidget* %338 to i8*
  %340 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %341 = bitcast %struct._GimpDisplayShell* %340 to i8*
  %call223 = call i64 @g_signal_connect_data(i8* %339, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*)* @gimp_display_shell_navigation_button_press to void ()*), i8* %341, void (i8*, %struct._GClosure*)* null, i32 0)
  %342 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_ebox224 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %342, i32 0, i32 43
  %343 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_ebox224, align 8
  %call225 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %343, i8* %call225, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.68, i32 0, i32 0))
  %call226 = call %struct._GtkWidget* @gimp_statusbar_new()
  %344 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %statusbar = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %344, i32 0, i32 44
  store %struct._GtkWidget* %call226, %struct._GtkWidget** %statusbar, align 8
  %345 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %statusbar227 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %345, i32 0, i32 44
  %346 = load %struct._GtkWidget*, %struct._GtkWidget** %statusbar227, align 8
  %347 = bitcast %struct._GtkWidget* %346 to %struct._GTypeInstance*
  %call228 = call i64 @gimp_statusbar_get_type() #8
  %call229 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %347, i64 %call228)
  %348 = bitcast %struct._GTypeInstance* %call229 to %struct._GimpStatusbar*
  %349 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_statusbar_set_shell(%struct._GimpStatusbar* %348, %struct._GimpDisplayShell* %349)
  %350 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %statusbar230 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %350, i32 0, i32 44
  %351 = load %struct._GtkWidget*, %struct._GtkWidget** %statusbar230, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %351, i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.69, i32 0, i32 0))
  %352 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %353 = bitcast %struct._GimpDisplayShell* %352 to %struct._GTypeInstance*
  %call231 = call i64 @gtk_box_get_type() #8
  %call232 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %353, i64 %call231)
  %354 = bitcast %struct._GTypeInstance* %call232 to %struct._GtkBox*
  %355 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %statusbar233 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %355, i32 0, i32 44
  %356 = load %struct._GtkWidget*, %struct._GtkWidget** %statusbar233, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %354, %struct._GtkWidget* %356, i32 0, i32 0, i32 0)
  %357 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_table, align 8
  %358 = bitcast %struct._GtkWidget* %357 to %struct._GTypeInstance*
  %call234 = call i64 @gtk_table_get_type() #8
  %call235 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %358, i64 %call234)
  %359 = bitcast %struct._GTypeInstance* %call235 to %struct._GtkTable*
  %360 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %origin236 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %360, i32 0, i32 40
  %361 = load %struct._GtkWidget*, %struct._GtkWidget** %origin236, align 8
  call void @gtk_table_attach(%struct._GtkTable* %359, %struct._GtkWidget* %361, i32 0, i32 1, i32 0, i32 1, i32 4, i32 4, i32 0, i32 0)
  %362 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_table, align 8
  %363 = bitcast %struct._GtkWidget* %362 to %struct._GTypeInstance*
  %call237 = call i64 @gtk_table_get_type() #8
  %call238 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %363, i64 %call237)
  %364 = bitcast %struct._GTypeInstance* %call238 to %struct._GtkTable*
  %365 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hrule239 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %365, i32 0, i32 38
  %366 = load %struct._GtkWidget*, %struct._GtkWidget** %hrule239, align 8
  call void @gtk_table_attach(%struct._GtkTable* %364, %struct._GtkWidget* %366, i32 1, i32 2, i32 0, i32 1, i32 7, i32 4, i32 0, i32 0)
  %367 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_table, align 8
  %368 = bitcast %struct._GtkWidget* %367 to %struct._GTypeInstance*
  %call240 = call i64 @gtk_table_get_type() #8
  %call241 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %368, i64 %call240)
  %369 = bitcast %struct._GTypeInstance* %call241 to %struct._GtkTable*
  %370 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vrule242 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %370, i32 0, i32 39
  %371 = load %struct._GtkWidget*, %struct._GtkWidget** %vrule242, align 8
  call void @gtk_table_attach(%struct._GtkTable* %369, %struct._GtkWidget* %371, i32 0, i32 1, i32 1, i32 2, i32 4, i32 7, i32 0, i32 0)
  %372 = load %struct._GtkWidget*, %struct._GtkWidget** %inner_table, align 8
  %373 = bitcast %struct._GtkWidget* %372 to %struct._GTypeInstance*
  %call243 = call i64 @gtk_table_get_type() #8
  %call244 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %373, i64 %call243)
  %374 = bitcast %struct._GTypeInstance* %call244 to %struct._GtkTable*
  %375 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas245 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %375, i32 0, i32 33
  %376 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas245, align 8
  call void @gtk_table_attach(%struct._GtkTable* %374, %struct._GtkWidget* %376, i32 1, i32 2, i32 1, i32 2, i32 7, i32 7, i32 0, i32 0)
  %377 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %378 = bitcast %struct._GtkWidget* %377 to %struct._GTypeInstance*
  %call246 = call i64 @gtk_box_get_type() #8
  %call247 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %378, i64 %call246)
  %379 = bitcast %struct._GTypeInstance* %call247 to %struct._GtkBox*
  %380 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom_button248 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %380, i32 0, i32 42
  %381 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_button248, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %379, %struct._GtkWidget* %381, i32 0, i32 0, i32 0)
  %382 = load %struct._GtkWidget*, %struct._GtkWidget** %right_vbox, align 8
  %383 = bitcast %struct._GtkWidget* %382 to %struct._GTypeInstance*
  %call249 = call i64 @gtk_box_get_type() #8
  %call250 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %383, i64 %call249)
  %384 = bitcast %struct._GTypeInstance* %call250 to %struct._GtkBox*
  %385 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %vsb251 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %385, i32 0, i32 37
  %386 = load %struct._GtkWidget*, %struct._GtkWidget** %vsb251, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %384, %struct._GtkWidget* %386, i32 1, i32 1, i32 0)
  %387 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox, align 8
  %388 = bitcast %struct._GtkWidget* %387 to %struct._GTypeInstance*
  %call252 = call i64 @gtk_box_get_type() #8
  %call253 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %388, i64 %call252)
  %389 = bitcast %struct._GTypeInstance* %call253 to %struct._GtkBox*
  %390 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %quick_mask_button254 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %390, i32 0, i32 41
  %391 = load %struct._GtkWidget*, %struct._GtkWidget** %quick_mask_button254, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %389, %struct._GtkWidget* %391, i32 0, i32 0, i32 0)
  %392 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox, align 8
  %393 = bitcast %struct._GtkWidget* %392 to %struct._GTypeInstance*
  %call255 = call i64 @gtk_box_get_type() #8
  %call256 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %393, i64 %call255)
  %394 = bitcast %struct._GTypeInstance* %call256 to %struct._GtkBox*
  %395 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %hsb257 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %395, i32 0, i32 36
  %396 = load %struct._GtkWidget*, %struct._GtkWidget** %hsb257, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %394, %struct._GtkWidget* %396, i32 1, i32 1, i32 0)
  %397 = load %struct._GtkWidget*, %struct._GtkWidget** %lower_hbox, align 8
  %398 = bitcast %struct._GtkWidget* %397 to %struct._GTypeInstance*
  %call258 = call i64 @gtk_box_get_type() #8
  %call259 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %398, i64 %call258)
  %399 = bitcast %struct._GTypeInstance* %call259 to %struct._GtkBox*
  %400 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_ebox260 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %400, i32 0, i32 43
  %401 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_ebox260, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %399, %struct._GtkWidget* %401, i32 0, i32 0, i32 0)
  %402 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas261 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %402, i32 0, i32 33
  %403 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas261, align 8
  %404 = bitcast %struct._GtkWidget* %403 to %struct._GTypeInstance*
  %call262 = call i64 @gtk_widget_get_type() #8
  %call263 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %404, i64 %call262)
  %405 = bitcast %struct._GTypeInstance* %call263 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %405)
  %406 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %407 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %408 = bitcast %struct._GimpDisplayConfig* %407 to %struct._GTypeInstance*
  %call264 = call i64 @gimp_core_config_get_type() #8
  %call265 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %408, i64 %call264)
  %409 = bitcast %struct._GTypeInstance* %call265 to %struct._GimpCoreConfig*
  %color_management = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %409, i32 0, i32 46
  %410 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_management, align 8
  %call266 = call %struct._GimpColorDisplayStack* @gimp_display_shell_filter_new(%struct._GimpDisplayShell* %406, %struct._GimpColorConfig* %410)
  store %struct._GimpColorDisplayStack* %call266, %struct._GimpColorDisplayStack** %filter, align 8
  %411 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %filter, align 8
  %tobool267 = icmp ne %struct._GimpColorDisplayStack* %411, null
  br i1 %tobool267, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.end.212
  %412 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %413 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %filter, align 8
  call void @gimp_display_shell_filter_set(%struct._GimpDisplayShell* %412, %struct._GimpColorDisplayStack* %413)
  %414 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %filter, align 8
  %415 = bitcast %struct._GimpColorDisplayStack* %414 to i8*
  call void @g_object_unref(i8* %415)
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.268, %if.end.212
  %416 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool270 = icmp ne %struct._GimpImage* %416, null
  br i1 %tobool270, label %if.then.271, label %if.else.272

if.then.271:                                      ; preds = %if.end.269
  %417 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_connect(%struct._GimpDisplayShell* %417)
  %418 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scroll_center_image_on_next_size_allocate(%struct._GimpDisplayShell* %418, i32 1, i32 1)
  br label %if.end.276

if.else.272:                                      ; preds = %if.end.269
  %419 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %statusbar273 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %419, i32 0, i32 44
  %420 = load %struct._GtkWidget*, %struct._GtkWidget** %statusbar273, align 8
  %421 = bitcast %struct._GtkWidget* %420 to %struct._GTypeInstance*
  %call274 = call i64 @gimp_statusbar_get_type() #8
  %call275 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %421, i64 %call274)
  %422 = bitcast %struct._GTypeInstance* %call275 to %struct._GimpStatusbar*
  call void @gimp_statusbar_empty(%struct._GimpStatusbar* %422)
  br label %if.end.276

if.end.276:                                       ; preds = %if.else.272, %if.then.271
  %423 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_scale_changed(%struct._GimpDisplayShell* %423)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 1
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  %tobool4 = icmp ne %struct._GimpDisplayShell* %call3, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_disconnect(%struct._GimpDisplayShell* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 2
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %popup_manager, align 8
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_selection_free(%struct._GimpDisplayShell* %9)
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %filter_stack = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 77
  %11 = load %struct._GimpColorDisplayStack*, %struct._GimpColorDisplayStack** %filter_stack, align 8
  %tobool5 = icmp ne %struct._GimpColorDisplayStack* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_filter_set(%struct._GimpDisplayShell* %12, %struct._GimpColorDisplayStack* null)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %filter_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 78
  %14 = load i32, i32* %filter_idle_id, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.7
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %filter_idle_id10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 78
  %16 = load i32, i32* %filter_idle_id10, align 4
  %call11 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %filter_idle_id12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 78
  store i32 0, i32* %filter_idle_id12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.7
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %render_surface = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 45
  %19 = load %struct._cairo_surface*, %struct._cairo_surface** %render_surface, align 8
  %tobool14 = icmp ne %struct._cairo_surface* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.13
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %render_surface16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 45
  %21 = load %struct._cairo_surface*, %struct._cairo_surface** %render_surface16, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %21)
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %render_surface17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 45
  store %struct._cairo_surface* null, %struct._cairo_surface** %render_surface17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.13
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %mask_surface = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 46
  %24 = load %struct._cairo_surface*, %struct._cairo_surface** %mask_surface, align 8
  %tobool19 = icmp ne %struct._cairo_surface* %24, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %mask_surface21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 46
  %26 = load %struct._cairo_surface*, %struct._cairo_surface** %mask_surface21, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %26)
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %mask_surface22 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 46
  store %struct._cairo_surface* null, %struct._cairo_surface** %mask_surface22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %checkerboard = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %28, i32 0, i32 47
  %29 = load %struct._cairo_pattern*, %struct._cairo_pattern** %checkerboard, align 8
  %tobool24 = icmp ne %struct._cairo_pattern* %29, null
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.23
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %checkerboard26 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 47
  %31 = load %struct._cairo_pattern*, %struct._cairo_pattern** %checkerboard26, align 8
  call void @cairo_pattern_destroy(%struct._cairo_pattern* %31)
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %checkerboard27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 47
  store %struct._cairo_pattern* null, %struct._cairo_pattern** %checkerboard27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.23
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %mask = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 98
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask, align 8
  %tobool29 = icmp ne %struct._GimpDrawable* %34, null
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.28
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %mask31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %35, i32 0, i32 98
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %mask31, align 8
  %37 = bitcast %struct._GimpDrawable* %36 to i8*
  call void @g_object_unref(i8* %37)
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %mask32 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %38, i32 0, i32 98
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %mask32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.28
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_items_free(%struct._GimpDisplayShell* %39)
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %motion_buffer = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 100
  %41 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer, align 8
  %tobool34 = icmp ne %struct._GimpMotionBuffer* %41, null
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.33
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %motion_buffer36 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %42, i32 0, i32 100
  %43 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %motion_buffer36, align 8
  %44 = bitcast %struct._GimpMotionBuffer* %43 to i8*
  call void @g_object_unref(i8* %44)
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %motion_buffer37 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %45, i32 0, i32 100
  store %struct._GimpMotionBuffer* null, %struct._GimpMotionBuffer** %motion_buffer37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.33
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom_focus_pointer_queue = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %46, i32 0, i32 101
  %47 = load %struct._GQueue*, %struct._GQueue** %zoom_focus_pointer_queue, align 8
  %tobool39 = icmp ne %struct._GQueue* %47, null
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom_focus_pointer_queue41 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %48, i32 0, i32 101
  %49 = load %struct._GQueue*, %struct._GQueue** %zoom_focus_pointer_queue41, align 8
  call void @g_queue_free(%struct._GQueue* %49)
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom_focus_pointer_queue42 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %50, i32 0, i32 101
  store %struct._GQueue* null, %struct._GQueue** %zoom_focus_pointer_queue42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.38
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %51, i32 0, i32 58
  %52 = load i32, i32* %title_idle_id, align 4
  %tobool44 = icmp ne i32 %52, 0
  br i1 %tobool44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %if.end.43
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title_idle_id46 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 58
  %54 = load i32, i32* %title_idle_id46, align 4
  %call47 = call i32 @g_source_remove(i32 %54)
  %55 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title_idle_id48 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %55, i32 0, i32 58
  store i32 0, i32* %title_idle_id48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %if.end.43
  %56 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %fill_idle_id = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %56, i32 0, i32 64
  %57 = load i32, i32* %fill_idle_id, align 4
  %tobool50 = icmp ne i32 %57, 0
  br i1 %tobool50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.end.49
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %fill_idle_id52 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %58, i32 0, i32 64
  %59 = load i32, i32* %fill_idle_id52, align 4
  %call53 = call i32 @g_source_remove(i32 %59)
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %fill_idle_id54 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 64
  store i32 0, i32* %fill_idle_id54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.end.49
  %61 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_popup = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %61, i32 0, i32 75
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup, align 8
  %tobool56 = icmp ne %struct._GtkWidget* %62, null
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.55
  %63 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_popup58 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %63, i32 0, i32 75
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup58, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %64)
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_popup59 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %65, i32 0, i32 75
  store %struct._GtkWidget* null, %struct._GtkWidget** %nav_popup59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.55
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %66, i32 0, i32 76
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %grid_dialog, align 8
  %tobool61 = icmp ne %struct._GtkWidget* %67, null
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.60
  %68 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog63 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %68, i32 0, i32 76
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %grid_dialog63, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %69)
  %70 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %grid_dialog64 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %70, i32 0, i32 76
  store %struct._GtkWidget* null, %struct._GtkWidget** %grid_dialog64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.60
  %71 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display66 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %71, i32 0, i32 1
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display66, align 8
  %72 = load i8*, i8** @gimp_display_shell_parent_class, align 8
  %73 = bitcast i8* %72 to %struct._GTypeClass*
  %call67 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %73, i64 80)
  %74 = bitcast %struct._GTypeClass* %call67 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %74, i32 0, i32 5
  %75 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %76 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %75(%struct._GObject* %76)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 22
  %4 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %5 = bitcast %struct._GimpZoomModel* %4 to i8*
  call void @g_object_unref(i8* %5)
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 3
  %7 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %tobool = icmp ne %struct._GimpDisplayOptions* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %options2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 3
  %9 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options2, align 8
  %10 = bitcast %struct._GimpDisplayOptions* %9 to i8*
  call void @g_object_unref(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %fullscreen_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 4
  %12 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %fullscreen_options, align 8
  %tobool3 = icmp ne %struct._GimpDisplayOptions* %12, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %fullscreen_options5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %fullscreen_options5, align 8
  %15 = bitcast %struct._GimpDisplayOptions* %14 to i8*
  call void @g_object_unref(i8* %15)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %no_image_options = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 5
  %17 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %no_image_options, align 8
  %tobool7 = icmp ne %struct._GimpDisplayOptions* %17, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %no_image_options9 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 5
  %19 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %no_image_options9, align 8
  %20 = bitcast %struct._GimpDisplayOptions* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 59
  %22 = load i8*, i8** %title, align 8
  %tobool11 = icmp ne i8* %22, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 59
  %24 = load i8*, i8** %title13, align 8
  call void @g_free(i8* %24)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %status = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 60
  %26 = load i8*, i8** %status, align 8
  %tobool15 = icmp ne i8* %26, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %status17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 60
  %28 = load i8*, i8** %status17, align 8
  call void @g_free(i8* %28)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 63
  %30 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon, align 8
  %tobool19 = icmp ne %struct._GdkPixbuf* %30, null
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon21 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %31, i32 0, i32 63
  %32 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon21, align 8
  %33 = bitcast %struct._GdkPixbuf* %32 to i8*
  call void @g_object_unref(i8* %33)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %34 = load i8*, i8** @gimp_display_shell_parent_class, align 8
  %35 = bitcast i8* %34 to %struct._GTypeClass*
  %call23 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %35, i64 80)
  %36 = bitcast %struct._GTypeClass* %call23 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %36, i32 0, i32 6
  %37 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %38 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %37(%struct._GObject* %38)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.10
    i32 6, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpUIManager*
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 2
  store %struct._GimpUIManager* %5, %struct._GimpUIManager** %popup_manager, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GimpDisplay*
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 1
  store %struct._GimpDisplay* %8, %struct._GimpDisplay** %display, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %11)
  call void @gimp_display_shell_set_unit(%struct._GimpDisplayShell* %10, i32 %call6)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 59
  %13 = load i8*, i8** %title, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_dup_string(%struct._GValue* %14)
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title9 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 59
  store i8* %call8, i8** %title9, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %status = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 60
  %17 = load i8*, i8** %status, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call11 = call i8* @g_value_dup_string(%struct._GValue* %18)
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %status12 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 60
  store i8* %call11, i8** %status12, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 63
  %21 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %21, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.13
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 63
  %23 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon14, align 8
  %24 = bitcast %struct._GdkPixbuf* %23 to i8*
  call void @g_object_unref(i8* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.13
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i8* @g_value_dup_object(%struct._GValue* %25)
  %26 = bitcast i8* %call15 to %struct._GdkPixbuf*
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 63
  store %struct._GdkPixbuf* %26, %struct._GdkPixbuf** %icon16, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %28 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %28, %struct._GObject** %_glib__object, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %29, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = load i32, i32* %property_id.addr, align 4
  store i32 %30, i32* %_glib__property_id, align 4
  %31 = load i32, i32* %_glib__property_id, align 4
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %32, i32 0, i32 1
  %33 = load i8*, i8** %name, align 8
  %34 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %35 = bitcast %struct._GParamSpec* %34 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type, align 8
  %call17 = call i8* @g_type_name(i64 %37)
  %38 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %39 = bitcast %struct._GObject* %38 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type19 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type19, align 8
  %call20 = call i8* @g_type_name(i64 %41)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 907, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i32 %31, i8* %33, i8* %call17, i8* %call20)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end, %sw.bb.10, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 2
  %6 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager, align 8
  %7 = bitcast %struct._GimpUIManager* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 1
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %11 = bitcast %struct._GimpDisplay* %10 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 10
  %14 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %12, i32 %14)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 59
  %17 = load i8*, i8** %title, align 8
  call void @g_value_set_string(%struct._GValue* %15, i8* %17)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %status = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 60
  %20 = load i8*, i8** %status, align 8
  call void @g_value_set_string(%struct._GValue* %18, i8* %20)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 63
  %23 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon, align 8
  %24 = bitcast %struct._GdkPixbuf* %23 to i8*
  call void @g_value_set_object(%struct._GValue* %21, i8* %24)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %25, %struct._GObject** %_glib__object, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %26, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = load i32, i32* %property_id.addr, align 4
  store i32 %27, i32* %_glib__property_id, align 4
  %28 = load i32, i32* %_glib__property_id, align 4
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = bitcast %struct._GParamSpec* %31 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %34)
  %35 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %38)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 942, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i32 %28, i8* %30, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_unrealize(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_popup = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 75
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %nav_popup2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 75
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %nav_popup2, align 8
  call void @gtk_widget_unrealize(%struct._GtkWidget* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** @gimp_display_shell_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call i64 @gtk_widget_get_type() #8
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call3)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GtkWidgetClass*
  %unrealize = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 11
  %10 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unrealize, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %10(%struct._GtkWidget* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_screen_changed(%struct._GtkWidget* %widget, %struct._GdkScreen* %previous) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %previous.addr = alloca %struct._GdkScreen*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkScreen* %previous, %struct._GdkScreen** %previous.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load i8*, i8** @gimp_display_shell_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %screen_changed = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 64
  %6 = load void (%struct._GtkWidget*, %struct._GdkScreen*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)** %screen_changed, align 8
  %tobool = icmp ne void (%struct._GtkWidget*, %struct._GdkScreen*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_display_shell_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #8
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call4)
  %9 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %screen_changed6 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 64
  %10 = load void (%struct._GtkWidget*, %struct._GdkScreen*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)** %screen_changed6, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = load %struct._GdkScreen*, %struct._GdkScreen** %previous.addr, align 8
  call void %10(%struct._GtkWidget* %11, %struct._GdkScreen* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %14, i32 0, i32 2
  %15 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %monitor_res_from_gdk = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %15, i32 0, i32 18
  %16 = load i32, i32* %monitor_res_from_gdk, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call9 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %17)
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 15
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 16
  call void @gimp_get_screen_resolution(%struct._GdkScreen* %call9, double* %monitor_xres, double* %monitor_yres)
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display10 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 1
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display10, align 8
  %config11 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %21, i32 0, i32 2
  %22 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config11, align 8
  %monitor_xres12 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %22, i32 0, i32 16
  %23 = load double, double* %monitor_xres12, align 8
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %monitor_xres13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 15
  store double %23, double* %monitor_xres13, align 8
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 1
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display14, align 8
  %config15 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %26, i32 0, i32 2
  %27 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config15, align 8
  %monitor_yres16 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %27, i32 0, i32 17
  %28 = load double, double* %monitor_yres16, align 8
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %monitor_yres17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 16
  store double %28, double* %monitor_yres17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_shell_popup_menu(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %5)
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %8 = bitcast %struct._GimpDisplay* %7 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %call2, i8* %8)
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %9, i32 0, i32 2
  %10 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager, align 8
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %12 = bitcast %struct._GimpDisplayShell* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %origin = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 40
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %origin, align 8
  %16 = bitcast %struct._GtkWidget* %15 to i8*
  call void @gimp_ui_manager_ui_popup(%struct._GimpUIManager* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0), %struct._GtkWidget* %13, void (%struct._GtkMenu*, i32*, i32*, i8*)* @gimp_display_shell_menu_position, i8* %16, void (i8*)* null, i8* null)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_real_scaled(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %user_context = alloca %struct._GimpContext*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.6

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_title_update(%struct._GimpDisplayShell* %2)
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %5)
  store %struct._GimpContext* %call, %struct._GimpContext** %user_context, align 8
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %8 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %call3 = call i8* @gimp_context_get_display(%struct._GimpContext* %8)
  %9 = bitcast i8* %call3 to %struct._GimpDisplay*
  %cmp = icmp eq %struct._GimpDisplay* %7, %9
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %popup_manager = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 2
  %11 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager, align 8
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display5 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 1
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display5, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %11, i8* %14)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then, %if.then.4, %if.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

; Function Attrs: nounwind readnone
declare i64 @gdk_pixbuf_get_type() #2

declare void @gtk_rc_parse_string(i8*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #7

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gimp_get_screen_resolution(%struct._GdkScreen*, double*, double*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_col_spacing(%struct._GtkTable*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_row_spacing(%struct._GtkTable*, i32, i32) #1

declare %struct._GtkObject* @gtk_adjustment_new(double, double, double, double, double, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #2

declare %struct._GtkWidget* @gtk_scrollbar_new(i32, %struct._GtkAdjustment*) #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_event_box_new() #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @gimp_display_shell_origin_button_press(%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_canvas_new(%struct._GimpDisplayConfig*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_remove_overlay(%struct._GtkWidget* %canvas, %struct._GtkWidget* %child, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %canvas.addr = alloca %struct._GtkWidget*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %canvas, %struct._GtkWidget** %canvas.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %children = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 32
  %1 = load %struct._GList*, %struct._GList** %children, align 8
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %call = call %struct._GList* @g_list_remove(%struct._GList* %1, i8* %3)
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %children1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 32
  store %struct._GList* %call, %struct._GList** %children1, align 8
  ret void
}

declare void @gimp_display_shell_dnd_init(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_selection_init(%struct._GimpDisplayShell*) #1

declare %struct._GtkWidget* @gimp_ruler_new(i32) #1

declare void @gtk_widget_set_events(%struct._GtkWidget*, i32) #1

declare void @gimp_ruler_add_track_widget(%struct._GimpRuler*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_ruler_get_type() #2

declare i32 @gimp_display_shell_hruler_button_press(%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*) #1

declare i32 @gimp_display_shell_vruler_button_press(%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*) #1

declare void @gimp_devices_add_widget(%struct._Gimp*, %struct._GtkWidget*) #1

declare void @gimp_display_shell_canvas_realize(%struct._GtkWidget*, %struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_canvas_size_allocate(%struct._GtkWidget*, %struct._GdkRectangle*, %struct._GimpDisplayShell*) #1

declare i32 @gimp_display_shell_canvas_expose(%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpDisplayShell*) #1

declare i32 @gimp_display_shell_canvas_expose_after(%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpDisplayShell*) #1

declare i32 @gimp_display_shell_canvas_tool_events(%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_check_button_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_zoom_button_callback(%struct._GimpDisplayShell* %shell, %struct._GtkWidget* %zoom_button) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %zoom_button.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GtkWidget* %zoom_button, %struct._GtkWidget** %zoom_button.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %zoom_button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom_on_resize = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 84
  store i32 %call2, i32* %zoom_on_resize, align 4
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom_on_resize3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 84
  %5 = load i32, i32* %zoom_on_resize3, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call4 = call i32 @gimp_display_shell_scale_image_is_within_viewport(%struct._GimpDisplayShell* %6, i32* null, i32* null)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_scale_fit_in(%struct._GimpDisplayShell* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager*, i8*, i8*) #1

declare void @gimp_widget_set_accel_help(%struct._GtkWidget*, %struct._GtkAction*) #1

declare void @gimp_display_shell_quick_mask_toggled(%struct._GtkWidget*, %struct._GimpDisplayShell*) #1

declare i32 @gimp_display_shell_quick_mask_button_press(%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*) #1

declare i32 @gimp_display_shell_navigation_button_press(%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpDisplayShell*) #1

declare %struct._GtkWidget* @gimp_statusbar_new() #1

declare void @gimp_statusbar_set_shell(%struct._GimpStatusbar*, %struct._GimpDisplayShell*) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare %struct._GimpColorDisplayStack* @gimp_display_shell_filter_new(%struct._GimpDisplayShell*, %struct._GimpColorConfig*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_core_config_get_type() #2

declare void @gimp_display_shell_filter_set(%struct._GimpDisplayShell*, %struct._GimpColorDisplayStack*) #1

declare void @gimp_display_shell_connect(%struct._GimpDisplayShell*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

declare i32 @gimp_display_shell_scale_image_is_within_viewport(%struct._GimpDisplayShell*, i32*, i32*) #1

declare void @gimp_display_shell_scale_fit_in(%struct._GimpDisplayShell*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_display_shell_disconnect(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_selection_free(%struct._GimpDisplayShell*) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

declare void @cairo_pattern_destroy(%struct._cairo_pattern*) #1

declare void @gimp_display_shell_items_free(%struct._GimpDisplayShell*) #1

declare void @g_queue_free(%struct._GQueue*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @gtk_widget_unrealize(%struct._GtkWidget*) #1

declare void @gimp_context_set_display(%struct._GimpContext*, i8*) #1

declare void @gimp_ui_manager_ui_popup(%struct._GimpUIManager*, i8*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_menu_position(%struct._GtkMenu* %menu, i32* %x, i32* %y, i8* %data) #3 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %3 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %4 = load i32*, i32** %x.addr, align 8
  %5 = load i32*, i32** %y.addr, align 8
  call void @gimp_button_menu_position(%struct._GtkWidget* %2, %struct._GtkMenu* %3, i32 1, i32* %4, i32* %5)
  ret void
}

declare void @gimp_button_menu_position(%struct._GtkWidget*, %struct._GtkMenu*, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_display_shell_get_icc_profile(%struct._GimpColorManaged* %managed, i64* %len) #3 {
entry:
  %retval = alloca i8*, align 8
  %managed.addr = alloca %struct._GimpColorManaged*, align 8
  %len.addr = alloca i64*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GimpColorManaged* %managed, %struct._GimpColorManaged** %managed.addr, align 8
  store i64* %len, i64** %len.addr, align 8
  %0 = load %struct._GimpColorManaged*, %struct._GimpColorManaged** %managed.addr, align 8
  %1 = bitcast %struct._GimpColorManaged* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = bitcast %struct._GimpImage* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_color_managed_interface_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpColorManaged*
  %9 = load i64*, i64** %len.addr, align 8
  %call5 = call i8* @gimp_color_managed_get_icc_profile(%struct._GimpColorManaged* %8, i64* %9)
  store i8* %call5, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i8*, i8** %retval
  ret i8* %10
}

declare i8* @gimp_color_managed_get_icc_profile(%struct._GimpColorManaged*, i64*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_display_options_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_display_options_fullscreen_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_display_options_no_image_get_type() #2

declare %struct._GimpZoomModel* @gimp_zoom_model_new() #1

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare void @gimp_display_shell_items_init(%struct._GimpDisplayShell*) #1

declare %struct._GimpMotionBuffer* @gimp_motion_buffer_new() #1

declare void @gimp_display_shell_buffer_stroke(%struct._GimpMotionBuffer*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_buffer_hover(%struct._GimpMotionBuffer*, %struct._GimpCoords*, i32, i32, %struct._GimpDisplayShell*) #1

declare %struct._GQueue* @g_queue_new() #1

declare i32 @gimp_display_shell_events(%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*) #1

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare void @gimp_display_shell_set_snap_to_guides(%struct._GimpDisplayShell*, i32) #1

declare void @gimp_display_shell_set_snap_to_grid(%struct._GimpDisplayShell*, i32) #1

declare void @gimp_display_shell_set_snap_to_canvas(%struct._GimpDisplayShell*, i32) #1

declare void @gimp_display_shell_set_snap_to_vectors(%struct._GimpDisplayShell*, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gimp_display_shell_scale_shrink_wrap(%struct._GimpDisplayShell*, i32) #1

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
