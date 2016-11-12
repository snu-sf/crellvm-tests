; ModuleID = './app/display/gimpimagewindow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpImageWindowClass = type { %struct._GimpWindowClass }
%struct._GimpWindowClass = type { %struct._GtkWindowClass }
%struct._GtkWindowClass = type { %struct._GtkBinClass, void (%struct._GtkWindow*, %struct._GtkWidget*)*, i32 (%struct._GtkWindow*, %union._GdkEvent*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*, i32)*, void (%struct._GtkWindow*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
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
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GimpDockContainerInterface = type { %struct._GTypeInterface, %struct._GList* (%struct._GimpDockContainer*)*, %struct._GimpUIManager* (%struct._GimpDockContainer*)*, void (%struct._GimpDockContainer*, %struct._GimpDock*, %struct._GimpSessionInfoDock*)*, i32 (%struct._GimpDockContainer*, %struct._GimpDock*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDockContainer = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque
%struct._GimpSessionInfoDock = type { i8*, i32, i32, %struct._GList* }
%struct._GimpSessionManagedInterface = type { %struct._GTypeInterface, %struct._GList* (%struct._GimpSessionManaged*)*, void (%struct._GimpSessionManaged*, %struct._GList*)* }
%struct._GimpSessionManaged = type opaque
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpImageWindowPrivate = type { %struct._Gimp*, %struct._GimpUIManager*, %struct._GimpDialogFactory*, %struct._GList*, %struct._GimpDisplayShell*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i8* }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpDockColumns = type { %struct._GtkBox, %struct._GimpDockColumnsPrivate* }
%struct._GimpDockColumnsPrivate = type opaque
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpView = type { %struct._GtkWidget, %struct._GdkDrawable*, %struct._GimpViewable*, %struct._GimpViewRenderer*, i8, i32 }
%struct._GimpViewRenderer = type opaque
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpStatusbar = type { %struct._GtkStatusbar, %struct._GimpDisplayShell*, %struct._GSList*, %struct._GHashTable*, i32, %struct._GdkPixbuf*, i32, i32, i32, [32 x i8], [32 x i8], [32 x i8], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, double }
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }
%struct._GHashTable = type opaque
%struct.PosCorrectionData = type { i32, i32 }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkPaned = type { %struct._GtkContainer, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GdkGC*, i32, %struct._GdkRectangle, i32, i32, i32, i32, i16, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkPanedPrivate*, i32, i32 }
%struct._GtkPanedPrivate = type opaque
%struct._GdkGeometry = type { i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32 }
%struct._GimpSessionInfo = type { %struct._GimpObject, %struct._GimpSessionInfoPrivate* }
%struct._GimpSessionInfoPrivate = type opaque
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpSessionInfoAux = type { i8*, i8* }

@gimp_image_window_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpImageWindow\00", align 1
@gimp_image_window_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockContainerInterface*)* @gimp_image_window_dock_container_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_image_window_get_type.g_implement_interface_info.1 = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpSessionManagedInterface*)* @gimp_image_window_session_managed_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_image_window_new = private unnamed_addr constant [22 x i8] c"gimp_image_window_new\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"GIMP_IS_IMAGE (image) || image == NULL\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"GIMP_IS_DIALOG_FACTORY (dialog_factory)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"dialog-factory\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"window-position\00", align 1
@__func__.gimp_image_window_destroy = private unnamed_addr constant [26 x i8] c"gimp_image_window_destroy\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"GIMP_IS_IMAGE_WINDOW (window)\00", align 1
@__func__.gimp_image_window_get_ui_manager = private unnamed_addr constant [33 x i8] c"gimp_image_window_get_ui_manager\00", align 1
@__func__.gimp_image_window_get_left_docks = private unnamed_addr constant [33 x i8] c"gimp_image_window_get_left_docks\00", align 1
@__func__.gimp_image_window_get_right_docks = private unnamed_addr constant [34 x i8] c"gimp_image_window_get_right_docks\00", align 1
@__func__.gimp_image_window_add_shell = private unnamed_addr constant [28 x i8] c"gimp_image_window_add_shell\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"g_list_find (private->shells, shell) == NULL\00", align 1
@__func__.gimp_image_window_get_shell = private unnamed_addr constant [28 x i8] c"gimp_image_window_get_shell\00", align 1
@__func__.gimp_image_window_remove_shell = private unnamed_addr constant [31 x i8] c"gimp_image_window_remove_shell\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"g_list_find (private->shells, shell) != NULL\00", align 1
@__func__.gimp_image_window_get_n_shells = private unnamed_addr constant [31 x i8] c"gimp_image_window_get_n_shells\00", align 1
@__func__.gimp_image_window_set_active_shell = private unnamed_addr constant [35 x i8] c"gimp_image_window_set_active_shell\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"g_list_find (private->shells, shell)\00", align 1
@__func__.gimp_image_window_get_active_shell = private unnamed_addr constant [35 x i8] c"gimp_image_window_get_active_shell\00", align 1
@__func__.gimp_image_window_set_fullscreen = private unnamed_addr constant [33 x i8] c"gimp_image_window_set_fullscreen\00", align 1
@__func__.gimp_image_window_get_fullscreen = private unnamed_addr constant [33 x i8] c"gimp_image_window_get_fullscreen\00", align 1
@__func__.gimp_image_window_set_show_menubar = private unnamed_addr constant [35 x i8] c"gimp_image_window_set_show_menubar\00", align 1
@__func__.gimp_image_window_get_show_menubar = private unnamed_addr constant [35 x i8] c"gimp_image_window_get_show_menubar\00", align 1
@__func__.gimp_image_window_is_iconified = private unnamed_addr constant [31 x i8] c"gimp_image_window_is_iconified\00", align 1
@__func__.gimp_image_window_is_maximized = private unnamed_addr constant [31 x i8] c"gimp_image_window_is_maximized\00", align 1
@__func__.gimp_image_window_has_toolbox = private unnamed_addr constant [30 x i8] c"gimp_image_window_has_toolbox\00", align 1
@__func__.gimp_image_window_shrink_wrap = private unnamed_addr constant [30 x i8] c"gimp_image_window_shrink_wrap\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@__func__.gimp_image_window_update_tabs = private unnamed_addr constant [30 x i8] c"gimp_image_window_update_tabs\00", align 1
@gimp_image_window_parent_class = internal global i8* null, align 8
@GimpImageWindow_private_offset = internal global i32 0, align 4
@image_window_rc_style = internal constant [179 x i8] c"style \22fullscreen-menubar-style\22\0A{\0A  GtkMenuBar::shadow-type      = none\0A  GtkMenuBar::internal-padding = 0\0A}\0Awidget \22*.gimp-menubar-fullscreen\22 style \22fullscreen-menubar-style\22\0A\00", align 16
@.str.17 = private unnamed_addr constant [18 x i8] c"gimpimagewindow.c\00", align 1
@__func__.gimp_image_window_constructed = private unnamed_addr constant [30 x i8] c"gimp_image_window_constructed\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"GIMP_IS_UI_MANAGER (private->menubar_manager)\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"dock-window-added\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"dock-window-removed\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"show-tooltip\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"hide-tooltip\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"/image-menubar\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"can-activate-accel\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"button-release-event\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"switch-page\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"page-removed\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"notify::single-window-mode\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"notify::hide-docks\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"menu-tooltip\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.gimp_image_window_switch_page = private unnamed_addr constant [30 x i8] c"gimp_image_window_switch_page\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"GimpImageWindow %p, private->active_shell = %p; \0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"notify::image\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"scaled\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"notify::title\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"notify::icon\00", align 1
@__func__.gimp_image_window_page_removed = private unnamed_addr constant [31 x i8] c"gimp_image_window_page_removed\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"single-window-mode\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"hide-docks\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"gimp-single-image-window\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"gimp-empty-image-window\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"<Image>\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"file-quit\00", align 1
@__func__.gimp_image_window_window_state_event = private unnamed_addr constant [37 x i8] c"gimp_image_window_window_state_event\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"Image window '%s' [%p] set fullscreen %s\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"gimp-menubar-fullscreen\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"Image window '%s' [%p] set %s\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"iconified\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"uniconified\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"No displays visible any longer\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"gimp-image-window\00", align 1
@__func__.gimp_image_window_get_docks = private unnamed_addr constant [28 x i8] c"gimp_image_window_get_docks\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"GIMP_IS_IMAGE_WINDOW (dock_container)\00", align 1
@__func__.gimp_image_window_dock_container_get_ui_manager = private unnamed_addr constant [48 x i8] c"gimp_image_window_dock_container_get_ui_manager\00", align 1
@__func__.gimp_image_window_add_dock = private unnamed_addr constant [27 x i8] c"gimp_image_window_add_dock\00", align 1
@__func__.gimp_image_window_get_dock_side = private unnamed_addr constant [32 x i8] c"gimp_image_window_get_dock_side\00", align 1
@__func__.gimp_image_window_get_aux_info = private unnamed_addr constant [31 x i8] c"gimp_image_window_get_aux_info\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"GIMP_IS_IMAGE_WINDOW (session_managed)\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"left-docks-width\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"right-docks-width\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"maximized\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@__func__.gimp_image_window_set_aux_info = private unnamed_addr constant [31 x i8] c"gimp_image_window_set_aux_info\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"right-docks-position\00", align 1
@__func__.gimp_image_window_set_right_docks_width = private unnamed_addr constant [40 x i8] c"gimp_image_window_set_right_docks_width\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"GTK_IS_PANED (paned)\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"gimp-close\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_window_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_image_window_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_image_window_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_window_get_type() #8
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 904, void (i8*, i8*)* bitcast (void (i8*)* @gimp_image_window_class_intern_init to void (i8*, i8*)*), i32 248, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpImageWindow*)* @gimp_image_window_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_dock_container_interface_get_type() #8
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_image_window_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  %call9 = call i64 @gimp_session_managed_interface_get_type() #8
  call void @g_type_add_interface_static(i64 %6, i64 %call9, %struct._GInterfaceInfo* @gimp_image_window_get_type.g_implement_interface_info.1)
  %7 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_image_window_get_type.g_define_type_id__volatile to i8*), i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %8 = load volatile i64, i64* @gimp_image_window_get_type.g_define_type_id__volatile, align 8
  ret i64 %8
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_image_window_parent_class, align 8
  %1 = load i32, i32* @GimpImageWindow_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpImageWindow_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpImageWindowClass*
  call void @gimp_image_window_class_init(%struct._GimpImageWindowClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_init(%struct._GimpImageWindow* %window) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i32 0, i32 0))
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %4 = bitcast %struct._GimpImageWindow* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %5, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_dock_container_iface_init(%struct._GimpDockContainerInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockContainerInterface*, align 8
  store %struct._GimpDockContainerInterface* %iface, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockContainerInterface*, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %get_docks = getelementptr inbounds %struct._GimpDockContainerInterface, %struct._GimpDockContainerInterface* %0, i32 0, i32 1
  store %struct._GList* (%struct._GimpDockContainer*)* @gimp_image_window_get_docks, %struct._GList* (%struct._GimpDockContainer*)** %get_docks, align 8
  %1 = load %struct._GimpDockContainerInterface*, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %get_ui_manager = getelementptr inbounds %struct._GimpDockContainerInterface, %struct._GimpDockContainerInterface* %1, i32 0, i32 2
  store %struct._GimpUIManager* (%struct._GimpDockContainer*)* @gimp_image_window_dock_container_get_ui_manager, %struct._GimpUIManager* (%struct._GimpDockContainer*)** %get_ui_manager, align 8
  %2 = load %struct._GimpDockContainerInterface*, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %add_dock = getelementptr inbounds %struct._GimpDockContainerInterface, %struct._GimpDockContainerInterface* %2, i32 0, i32 3
  store void (%struct._GimpDockContainer*, %struct._GimpDock*, %struct._GimpSessionInfoDock*)* @gimp_image_window_add_dock, void (%struct._GimpDockContainer*, %struct._GimpDock*, %struct._GimpSessionInfoDock*)** %add_dock, align 8
  %3 = load %struct._GimpDockContainerInterface*, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %get_dock_side = getelementptr inbounds %struct._GimpDockContainerInterface, %struct._GimpDockContainerInterface* %3, i32 0, i32 4
  store i32 (%struct._GimpDockContainer*, %struct._GimpDock*)* @gimp_image_window_get_dock_side, i32 (%struct._GimpDockContainer*, %struct._GimpDock*)** %get_dock_side, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_container_interface_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_session_managed_iface_init(%struct._GimpSessionManagedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpSessionManagedInterface*, align 8
  store %struct._GimpSessionManagedInterface* %iface, %struct._GimpSessionManagedInterface** %iface.addr, align 8
  %0 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface.addr, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %0, i32 0, i32 1
  store %struct._GList* (%struct._GimpSessionManaged*)* @gimp_image_window_get_aux_info, %struct._GList* (%struct._GimpSessionManaged*)** %get_aux_info, align 8
  %1 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface.addr, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %1, i32 0, i32 2
  store void (%struct._GimpSessionManaged*, %struct._GList*)* @gimp_image_window_set_aux_info, void (%struct._GimpSessionManaged*, %struct._GList*)** %set_aux_info, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_session_managed_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpImageWindow* @gimp_image_window_new(%struct._Gimp* %gimp, %struct._GimpImage* %image, %struct._GimpMenuFactory* %menu_factory, %struct._GimpDialogFactory* %dialog_factory) #3 {
entry:
  %retval = alloca %struct._GimpImageWindow*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %dialog_factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  %__inst70 = alloca %struct._GTypeInstance*, align 8
  %__t72 = alloca i64, align 8
  %__r75 = alloca i32, align 4
  %tmp90 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  store %struct._GimpDialogFactory* %dialog_factory, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_window_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpImageWindow* null, %struct._GimpImageWindow** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #8
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
  br i1 %tobool34, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.32
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp35 = icmp eq %struct._GimpImage* %26, null
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %lor.lhs.false, %if.end.32
  br label %if.end.38

if.else.37:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_window_new, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpImageWindow* null, %struct._GimpImageWindow** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %28 = bitcast %struct._GimpMenuFactory* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_menu_factory_get_type() #8
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %do.body.40
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %do.body.40
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #9
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_window_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpImageWindow* null, %struct._GimpImageWindow** %retval
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %40 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %41 = bitcast %struct._GimpDialogFactory* %40 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %41, %struct._GTypeInstance** %__inst70, align 8
  %call73 = call i64 @gimp_dialog_factory_get_type() #8
  store i64 %call73, i64* %__t72, align 8
  %42 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %tobool76 = icmp ne %struct._GTypeInstance* %42, null
  br i1 %tobool76, label %if.else.78, label %if.then.77

if.then.77:                                       ; preds = %do.body.68
  store i32 0, i32* %__r75, align 4
  br label %if.end.89

if.else.78:                                       ; preds = %do.body.68
  %43 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class79 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class79, align 8
  %tobool80 = icmp ne %struct._GTypeClass* %44, null
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.86

land.lhs.true.81:                                 ; preds = %if.else.78
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %g_class82 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class82, align 8
  %g_type83 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type83, align 8
  %48 = load i64, i64* %__t72, align 8
  %cmp84 = icmp eq i64 %47, %48
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %land.lhs.true.81
  store i32 1, i32* %__r75, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %land.lhs.true.81, %if.else.78
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst70, align 8
  %50 = load i64, i64* %__t72, align 8
  %call87 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %49, i64 %50) #9
  store i32 %call87, i32* %__r75, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.77
  %51 = load i32, i32* %__r75, align 4
  store i32 %51, i32* %tmp90
  %52 = load i32, i32* %tmp90
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.end.89
  br label %if.end.94

if.else.93:                                       ; preds = %if.end.89
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_window_new, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpImageWindow* null, %struct._GimpImageWindow** %retval
  br label %return

if.end.94:                                        ; preds = %if.then.92
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  %call96 = call i64 @gimp_image_window_get_type() #8
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %54 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %55 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool97 = icmp ne %struct._GimpImage* %56, null
  %cond = select i1 %tobool97, i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)
  %call98 = call i8* (i64, i8*, ...) @g_object_new(i64 %call96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._Gimp* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), %struct._GimpMenuFactory* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), %struct._GimpDialogFactory* %55, i8* %cond, i32 1, i8* null)
  %57 = bitcast i8* %call98 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %57, %struct._GimpImageWindow** %window, align 8
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %image_windows = getelementptr inbounds %struct._Gimp, %struct._Gimp* %58, i32 0, i32 33
  %59 = load %struct._GList*, %struct._GList** %image_windows, align 8
  %60 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %61 = bitcast %struct._GimpImageWindow* %60 to i8*
  %call99 = call %struct._GList* @g_list_append(%struct._GList* %59, i8* %61)
  %62 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %image_windows100 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %62, i32 0, i32 33
  store %struct._GList* %call99, %struct._GList** %image_windows100, align 8
  %63 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  store %struct._GimpImageWindow* %63, %struct._GimpImageWindow** %retval
  br label %return

return:                                           ; preds = %do.end.95, %if.else.93, %if.else.65, %if.else.37, %if.else.9
  %64 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %retval
  ret %struct._GimpImageWindow* %64
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_image_window_destroy(%struct._GimpImageWindow* %window) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_image_window_destroy, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 0
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %image_windows = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 33
  %18 = load %struct._GList*, %struct._GList** %image_windows, align 8
  %19 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %20 = bitcast %struct._GimpImageWindow* %19 to i8*
  %call13 = call %struct._GList* @g_list_remove(%struct._GList* %18, i8* %20)
  %21 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %gimp14 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %21, i32 0, i32 0
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %image_windows15 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 33
  store %struct._GList* %call13, %struct._GList** %image_windows15, align 8
  %23 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %24 = bitcast %struct._GimpImageWindow* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %25)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_window_get_ui_manager, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 1
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager, align 8
  store %struct._GimpUIManager* %17, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %18
}

; Function Attrs: nounwind uwtable
define %struct._GimpDockColumns* @gimp_image_window_get_left_docks(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca %struct._GimpDockColumns*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_window_get_left_docks, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpDockColumns* null, %struct._GimpDockColumns** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %left_docks, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_dock_columns_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %19, %struct._GimpDockColumns** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %retval
  ret %struct._GimpDockColumns* %20
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_columns_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpDockColumns* @gimp_image_window_get_right_docks(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca %struct._GimpDockColumns*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_image_window_get_right_docks, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpDockColumns* null, %struct._GimpDockColumns** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 12
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %right_docks, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_dock_columns_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %19, %struct._GimpDockColumns** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %retval
  ret %struct._GimpDockColumns* %20
}

; Function Attrs: nounwind uwtable
define void @gimp_image_window_add_shell(%struct._GimpImageWindow* %window, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %tab_label = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_window_add_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = bitcast %struct._GimpDisplayShell* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_window_add_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %27 = bitcast %struct._GimpImageWindow* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_image_window_get_type() #8
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %28, %struct._GimpImageWindowPrivate** %private, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %29 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %29, i32 0, i32 3
  %30 = load %struct._GList*, %struct._GList** %shells, align 8
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %32 = bitcast %struct._GimpDisplayShell* %31 to i8*
  %call42 = call %struct._GList* @g_list_find(%struct._GList* %30, i8* %32)
  %cmp43 = icmp eq %struct._GList* %call42, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_window_add_shell, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %33 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells48 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %33, i32 0, i32 3
  %34 = load %struct._GList*, %struct._GList** %shells48, align 8
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %36 = bitcast %struct._GimpDisplayShell* %35 to i8*
  %call49 = call %struct._GList* @g_list_append(%struct._GList* %34, i8* %36)
  %37 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells50 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %37, i32 0, i32 3
  store %struct._GList* %call49, %struct._GList** %shells50, align 8
  %38 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call51 = call %struct._GtkWidget* @gimp_image_window_create_tab_label(%struct._GimpImageWindow* %38, %struct._GimpDisplayShell* %39)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %tab_label, align 8
  %40 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %40, i32 0, i32 11
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_notebook_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call52)
  %43 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkNotebook*
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %45 = bitcast %struct._GimpDisplayShell* %44 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_widget_get_type() #8
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call54)
  %46 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkWidget*
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_label, align 8
  %call56 = call i32 @gtk_notebook_append_page(%struct._GtkNotebook* %43, %struct._GtkWidget* %46, %struct._GtkWidget* %47)
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %49 = bitcast %struct._GimpDisplayShell* %48 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_widget_get_type() #8
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call57)
  %50 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  br label %return

return:                                           ; preds = %do.end.47, %if.else.45, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_image_window_create_tab_label(%struct._GimpImageWindow* %window, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %gtk_image = alloca %struct._GtkWidget*, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %hbox, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %0)
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %1, i32 0, i32 1
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %3)
  %call2 = call i64 @gimp_view_get_type() #8
  %call3 = call i64 @gimp_image_get_type() #8
  %call4 = call %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext* %call1, i64 %call2, i64 %call3, i32 48, i32 0, i32 0)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %view, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %4, i32 48, i32 -1)
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_box_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call5)
  %7 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 0, i32 0, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display7 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 1
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display7, align 8
  %call8 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %11)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_view_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpView*
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %17 = bitcast %struct._GimpImage* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_viewable_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %15, %struct._GimpViewable* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call13 = call %struct._GtkWidget* @gtk_button_new()
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %button, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %19, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_button_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %22, i32 2)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %25, %struct._GtkWidget* %26, i32 0, i32 0, i32 0)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %call18 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %gtk_image, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_container_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkContainer*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %30, %struct._GtkWidget* %31)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %gtk_image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %32)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %36 = bitcast %struct._GimpDisplayShell* %35 to i8*
  %call21 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*)* @gimp_image_window_shell_close_button_callback to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 2)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  ret %struct._GtkWidget* %37
}

declare i32 @gtk_notebook_append_page(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDisplayShell* @gimp_image_window_get_shell(%struct._GimpImageWindow* %window, i32 %index) #3 {
entry:
  %retval = alloca %struct._GimpDisplayShell*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %index.addr = alloca i32, align 4
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_window_get_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 3
  %17 = load %struct._GList*, %struct._GList** %shells, align 8
  %18 = load i32, i32* %index.addr, align 4
  %call13 = call i8* @g_list_nth_data(%struct._GList* %17, i32 %18)
  %19 = bitcast i8* %call13 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %19, %struct._GimpDisplayShell** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %retval
  ret %struct._GimpDisplayShell* %20
}

declare i8* @g_list_nth_data(%struct._GList*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_image_window_remove_shell(%struct._GimpImageWindow* %window, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_window_remove_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = bitcast %struct._GimpDisplayShell* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_window_remove_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %27 = bitcast %struct._GimpImageWindow* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_image_window_get_type() #8
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %28, %struct._GimpImageWindowPrivate** %private, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %29 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %29, i32 0, i32 3
  %30 = load %struct._GList*, %struct._GList** %shells, align 8
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %32 = bitcast %struct._GimpDisplayShell* %31 to i8*
  %call42 = call %struct._GList* @g_list_find(%struct._GList* %30, i8* %32)
  %cmp43 = icmp ne %struct._GList* %call42, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_window_remove_shell, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %33 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells48 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %33, i32 0, i32 3
  %34 = load %struct._GList*, %struct._GList** %shells48, align 8
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %36 = bitcast %struct._GimpDisplayShell* %35 to i8*
  %call49 = call %struct._GList* @g_list_remove(%struct._GList* %34, i8* %36)
  %37 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells50 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %37, i32 0, i32 3
  store %struct._GList* %call49, %struct._GList** %shells50, align 8
  %38 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %38, i32 0, i32 11
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call51 = call i64 @gtk_container_get_type() #8
  %call52 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call51)
  %41 = bitcast %struct._GTypeInstance* %call52 to %struct._GtkContainer*
  %42 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %43 = bitcast %struct._GimpDisplayShell* %42 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_widget_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call53)
  %44 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkWidget*
  call void @gtk_container_remove(%struct._GtkContainer* %41, %struct._GtkWidget* %44)
  br label %return

return:                                           ; preds = %do.end.47, %if.else.45, %if.else.36, %if.else.9
  ret void
}

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_image_window_get_n_shells(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_window_get_n_shells, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 3
  %17 = load %struct._GList*, %struct._GList** %shells, align 8
  %call13 = call i32 @g_list_length(%struct._GList* %17)
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @g_list_length(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_image_window_set_active_shell(%struct._GimpImageWindow* %window, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %page_num = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_window_set_active_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = bitcast %struct._GimpDisplayShell* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_shell_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_window_set_active_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %27 = bitcast %struct._GimpImageWindow* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_image_window_get_type() #8
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %28, %struct._GimpImageWindowPrivate** %private, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %29 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %29, i32 0, i32 3
  %30 = load %struct._GList*, %struct._GList** %shells, align 8
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %32 = bitcast %struct._GimpDisplayShell* %31 to i8*
  %call42 = call %struct._GList* @g_list_find(%struct._GList* %30, i8* %32)
  %tobool43 = icmp ne %struct._GList* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_window_set_active_shell, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %33 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %33, i32 0, i32 11
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_notebook_get_type() #8
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call48)
  %36 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkNotebook*
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %38 = bitcast %struct._GimpDisplayShell* %37 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_widget_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call50)
  %39 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkWidget*
  %call52 = call i32 @gtk_notebook_page_num(%struct._GtkNotebook* %36, %struct._GtkWidget* %39)
  store i32 %call52, i32* %page_num, align 4
  %40 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook53 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %40, i32 0, i32 11
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook53, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_notebook_get_type() #8
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call54)
  %43 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkNotebook*
  %44 = load i32, i32* %page_num, align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %43, i32 %44)
  br label %return

return:                                           ; preds = %do.end.47, %if.else.45, %if.else.36, %if.else.9
  ret void
}

declare i32 @gtk_notebook_page_num(%struct._GtkNotebook*, %struct._GtkWidget*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca %struct._GimpDisplayShell*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_window_get_active_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 4
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  store %struct._GimpDisplayShell* %17, %struct._GimpDisplayShell** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %retval
  ret %struct._GimpDisplayShell* %18
}

; Function Attrs: nounwind uwtable
define void @gimp_image_window_set_fullscreen(%struct._GimpImageWindow* %window, i32 %fullscreen) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %fullscreen.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store i32 %fullscreen, i32* %fullscreen.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_window_set_fullscreen, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %fullscreen.addr, align 4
  %14 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %call11 = call i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow* %14)
  %cmp12 = icmp ne i32 %13, %call11
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %do.end
  %15 = load i32, i32* %fullscreen.addr, align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.then.13
  %16 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %17 = bitcast %struct._GimpImageWindow* %16 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_window_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call16)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWindow*
  call void @gtk_window_fullscreen(%struct._GtkWindow* %18)
  br label %if.end.21

if.else.18:                                       ; preds = %if.then.13
  %19 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %20 = bitcast %struct._GimpImageWindow* %19 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_window_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call19)
  %21 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWindow*
  call void @gtk_window_unfullscreen(%struct._GtkWindow* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.end.21, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_image_window_get_fullscreen, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %window_state = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 13
  %17 = load i32, i32* %window_state, align 4
  %and = and i32 %17, 16
  %cmp13 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare void @gtk_window_fullscreen(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_window_unfullscreen(%struct._GtkWindow*) #1

; Function Attrs: nounwind uwtable
define void @gimp_image_window_set_show_menubar(%struct._GimpImageWindow* %window, i32 %show) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %show.addr = alloca i32, align 4
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store i32 %show, i32* %show.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_window_set_show_menubar, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.16

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 6
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  %tobool13 = icmp ne %struct._GtkWidget* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar15 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %18, i32 0, i32 6
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar15, align 8
  %20 = load i32, i32* %show.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %19, i32 %20)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.9, %if.then.14, %do.end
  ret void
}

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_window_get_show_menubar(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_image_window_get_show_menubar, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 6
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  %tobool13 = icmp ne %struct._GtkWidget* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar15 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %18, i32 0, i32 6
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar15, align 8
  %call16 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %19)
  store i32 %call16, i32* %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.14, %if.else.9
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_window_is_iconified(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_window_is_iconified, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %window_state = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 13
  %17 = load i32, i32* %window_state, align 4
  %and = and i32 %17, 2
  %cmp13 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_window_is_maximized(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_window_is_maximized, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %window_state = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 13
  %17 = load i32, i32* %window_state, align 4
  %and = and i32 %17, 4
  %cmp13 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_window_has_toolbox(%struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %iter = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst18 = alloca %struct._GTypeInstance*, align 8
  %__t20 = alloca i64, align 8
  %__r23 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t53 = alloca i64, align 8
  %__r56 = alloca i32, align 4
  %tmp71 = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_window_has_toolbox, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %left_docks, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_dock_columns_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDockColumns*
  %call15 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %19)
  store %struct._GList* %call15, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %20 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool16 = icmp ne %struct._GList* %20, null
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %23, %struct._GTypeInstance** %__inst18, align 8
  %call21 = call i64 @gimp_toolbox_get_type() #8
  store i64 %call21, i64* %__t20, align 8
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %24, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %for.body
  store i32 0, i32* %__r23, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %for.body
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %26, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %if.else.26
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type31, align 8
  %30 = load i64, i64* %__t20, align 8
  %cmp32 = icmp eq i64 %29, %30
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r23, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.29, %if.else.26
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %32 = load i64, i64* %__t20, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #9
  store i32 %call35, i32* %__r23, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  %33 = load i32, i32* %__r23, align 4
  store i32 %33, i32* %tmp38
  %34 = load i32, i32* %tmp38
  %tobool39 = icmp ne i32 %34, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %35 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool42 = icmp ne %struct._GList* %35, null
  br i1 %tobool42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %36 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %37, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %38, i32 0, i32 12
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %right_docks, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_dock_columns_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call43)
  %41 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpDockColumns*
  %call45 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %41)
  store %struct._GList* %call45, %struct._GList** %iter, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %cond.end.80, %for.end
  %42 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool47 = icmp ne %struct._GList* %42, null
  br i1 %tobool47, label %for.body.48, label %for.end.82

for.body.48:                                      ; preds = %for.cond.46
  %43 = load %struct._GList*, %struct._GList** %iter, align 8
  %data51 = getelementptr inbounds %struct._GList, %struct._GList* %43, i32 0, i32 0
  %44 = load i8*, i8** %data51, align 8
  %45 = bitcast i8* %44 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %45, %struct._GTypeInstance** %__inst50, align 8
  %call54 = call i64 @gimp_toolbox_get_type() #8
  store i64 %call54, i64* %__t53, align 8
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool57 = icmp ne %struct._GTypeInstance* %46, null
  br i1 %tobool57, label %if.else.59, label %if.then.58

if.then.58:                                       ; preds = %for.body.48
  store i32 0, i32* %__r56, align 4
  br label %if.end.70

if.else.59:                                       ; preds = %for.body.48
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %tobool61 = icmp ne %struct._GTypeClass* %48, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.else.67

land.lhs.true.62:                                 ; preds = %if.else.59
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class63 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class63, align 8
  %g_type64 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %50, i32 0, i32 0
  %51 = load i64, i64* %g_type64, align 8
  %52 = load i64, i64* %__t53, align 8
  %cmp65 = icmp eq i64 %51, %52
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.62
  store i32 1, i32* %__r56, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.62, %if.else.59
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %54 = load i64, i64* %__t53, align 8
  %call68 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %53, i64 %54) #9
  store i32 %call68, i32* %__r56, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  %55 = load i32, i32* %__r56, align 4
  store i32 %55, i32* %tmp71
  %56 = load i32, i32* %tmp71
  %tobool72 = icmp ne i32 %56, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  store i32 1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.70
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %57 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool76 = icmp ne %struct._GList* %57, null
  br i1 %tobool76, label %cond.true.77, label %cond.false.79

cond.true.77:                                     ; preds = %for.inc.75
  %58 = load %struct._GList*, %struct._GList** %iter, align 8
  %next78 = getelementptr inbounds %struct._GList, %struct._GList* %58, i32 0, i32 1
  %59 = load %struct._GList*, %struct._GList** %next78, align 8
  br label %cond.end.80

cond.false.79:                                    ; preds = %for.inc.75
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.77
  %cond81 = phi %struct._GList* [ %59, %cond.true.77 ], [ null, %cond.false.79 ]
  store %struct._GList* %cond81, %struct._GList** %iter, align 8
  br label %for.cond.46

for.end.82:                                       ; preds = %for.cond.46
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.82, %if.then.73, %if.then.40, %if.else.9
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_image_window_shrink_wrap(%struct._GimpImageWindow* %window, i32 %grow_only) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %grow_only.addr = alloca i32, align 4
  %active_shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %screen = alloca %struct._GdkScreen*, align 8
  %rect = alloca %struct._GdkRectangle, align 4
  %monitor = alloca i32, align 4
  %disp_width = alloca i32, align 4
  %disp_height = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %max_auto_width = alloca i32, align 4
  %max_auto_height = alloca i32, align 4
  %border_width = alloca i32, align 4
  %border_height = alloca i32, align 4
  %resize = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %vsb_allocation = alloca %struct._GdkRectangle, align 4
  %hsb_allocation = alloca %struct._GdkRectangle, align 4
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %statusbar_width = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store i32 %grow_only, i32* %grow_only.addr, align 4
  store i32 0, i32* %resize, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_window_shrink_wrap, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %call13 = call i32 @gtk_widget_get_realized(%struct._GtkWidget* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %do.end
  br label %return

if.end.16:                                        ; preds = %do.end
  %16 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %call17 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %16)
  store %struct._GimpDisplayShell* %call17, %struct._GimpDisplayShell** %active_shell, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %tobool18 = icmp ne %struct._GimpDisplayShell* %17, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %18 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %18, i32 0, i32 1
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call21 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %19)
  store %struct._GimpImage* %call21, %struct._GimpImage** %image, align 8
  %20 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %21 = bitcast %struct._GimpImageWindow* %20 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call22)
  %22 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  store %struct._GtkWidget* %22, %struct._GtkWidget** %widget, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call24 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %23)
  store %struct._GdkScreen* %call24, %struct._GdkScreen** %screen, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %24, %struct._GdkRectangle* %allocation)
  %25 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call25 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %26)
  %call26 = call i32 @gdk_screen_get_monitor_at_window(%struct._GdkScreen* %25, %struct._GdkDrawable* %call25)
  store i32 %call26, i32* %monitor, align 4
  %27 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %28 = load i32, i32* %monitor, align 4
  call void @gdk_screen_get_monitor_geometry(%struct._GdkScreen* %27, i32 %28, %struct._GdkRectangle* %rect)
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call27 = call i32 @gimp_image_get_width(%struct._GimpImage* %29)
  %conv = sitofp i32 %call27 to double
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %scale_x = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 13
  %31 = load double, double* %scale_x, align 8
  %mul = fmul double %conv, %31
  %call28 = call double @rint(double %mul) #8
  %conv29 = fptosi double %call28 to i32
  store i32 %conv29, i32* %width, align 4
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call30 = call i32 @gimp_image_get_height(%struct._GimpImage* %32)
  %conv31 = sitofp i32 %call30 to double
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %scale_y = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 14
  %34 = load double, double* %scale_y, align 8
  %mul32 = fmul double %conv31, %34
  %call33 = call double @rint(double %mul32) #8
  %conv34 = fptosi double %call33 to i32
  store i32 %conv34, i32* %height, align 4
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %disp_width35 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %35, i32 0, i32 28
  %36 = load i32, i32* %disp_width35, align 4
  store i32 %36, i32* %disp_width, align 4
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %disp_height36 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 29
  %38 = load i32, i32* %disp_height36, align 4
  store i32 %38, i32* %disp_height, align 4
  %39 = load i32, i32* %disp_width, align 4
  %cmp37 = icmp sgt i32 %39, 1
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %vsb = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 37
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %vsb, align 8
  %tobool39 = icmp ne %struct._GtkWidget* %41, null
  br i1 %tobool39, label %if.else.42, label %if.then.40

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.20
  %width41 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %42 = load i32, i32* %width41, align 4
  %43 = load i32, i32* %disp_width, align 4
  %sub = sub nsw i32 %42, %43
  store i32 %sub, i32* %border_width, align 4
  br label %if.end.48

if.else.42:                                       ; preds = %lor.lhs.false
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %vsb44 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %44, i32 0, i32 37
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %vsb44, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %45, %struct._GdkRectangle* %vsb_allocation)
  %width45 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %46 = load i32, i32* %width45, align 4
  %47 = load i32, i32* %disp_width, align 4
  %sub46 = sub nsw i32 %46, %47
  %width47 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %vsb_allocation, i32 0, i32 2
  %48 = load i32, i32* %width47, align 4
  %add = add nsw i32 %sub46, %48
  store i32 %add, i32* %border_width, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.42, %if.then.40
  %49 = load i32, i32* %disp_height, align 4
  %cmp49 = icmp sgt i32 %49, 1
  br i1 %cmp49, label %if.then.53, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.48
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %hsb = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %50, i32 0, i32 36
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %hsb, align 8
  %tobool52 = icmp ne %struct._GtkWidget* %51, null
  br i1 %tobool52, label %if.else.56, label %if.then.53

if.then.53:                                       ; preds = %lor.lhs.false.51, %if.end.48
  %height54 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %52 = load i32, i32* %height54, align 4
  %53 = load i32, i32* %disp_height, align 4
  %sub55 = sub nsw i32 %52, %53
  store i32 %sub55, i32* %border_height, align 4
  br label %if.end.63

if.else.56:                                       ; preds = %lor.lhs.false.51
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %hsb58 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %54, i32 0, i32 36
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %hsb58, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %55, %struct._GdkRectangle* %hsb_allocation)
  %height59 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %56 = load i32, i32* %height59, align 4
  %57 = load i32, i32* %disp_height, align 4
  %sub60 = sub nsw i32 %56, %57
  %height61 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %hsb_allocation, i32 0, i32 3
  %58 = load i32, i32* %height61, align 4
  %add62 = add nsw i32 %sub60, %58
  store i32 %add62, i32* %border_height, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.56, %if.then.53
  %width64 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %59 = load i32, i32* %width64, align 4
  %60 = load i32, i32* %border_width, align 4
  %sub65 = sub nsw i32 %59, %60
  %conv66 = sitofp i32 %sub65 to double
  %mul67 = fmul double %conv66, 7.500000e-01
  %conv68 = fptosi double %mul67 to i32
  store i32 %conv68, i32* %max_auto_width, align 4
  %height69 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %61 = load i32, i32* %height69, align 4
  %62 = load i32, i32* %border_height, align 4
  %sub70 = sub nsw i32 %61, %62
  %conv71 = sitofp i32 %sub70 to double
  %mul72 = fmul double %conv71, 7.500000e-01
  %conv73 = fptosi double %mul72 to i32
  store i32 %conv73, i32* %max_auto_height, align 4
  %63 = load i32, i32* %width, align 4
  %64 = load i32, i32* %border_width, align 4
  %add74 = add nsw i32 %63, %64
  %width75 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %65 = load i32, i32* %width75, align 4
  %cmp76 = icmp slt i32 %add74, %65
  br i1 %cmp76, label %land.lhs.true.83, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.end.63
  %66 = load i32, i32* %height, align 4
  %67 = load i32, i32* %border_height, align 4
  %add79 = add nsw i32 %66, %67
  %height80 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %68 = load i32, i32* %height80, align 4
  %cmp81 = icmp slt i32 %add79, %68
  br i1 %cmp81, label %land.lhs.true.83, label %if.else.102

land.lhs.true.83:                                 ; preds = %lor.lhs.false.78, %if.end.63
  %69 = load i32, i32* %width, align 4
  %70 = load i32, i32* %disp_width, align 4
  %cmp84 = icmp ne i32 %69, %70
  br i1 %cmp84, label %if.then.89, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %land.lhs.true.83
  %71 = load i32, i32* %height, align 4
  %72 = load i32, i32* %disp_height, align 4
  %cmp87 = icmp ne i32 %71, %72
  br i1 %cmp87, label %if.then.89, label %if.else.102

if.then.89:                                       ; preds = %lor.lhs.false.86, %land.lhs.true.83
  %73 = load i32, i32* %width, align 4
  %74 = load i32, i32* %border_width, align 4
  %add90 = add nsw i32 %73, %74
  %width91 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 2
  %75 = load i32, i32* %width91, align 4
  %cmp92 = icmp slt i32 %add90, %75
  br i1 %cmp92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.89
  %76 = load i32, i32* %width, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.89
  %77 = load i32, i32* %max_auto_width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %76, %cond.true ], [ %77, %cond.false ]
  store i32 %cond, i32* %width, align 4
  %78 = load i32, i32* %height, align 4
  %79 = load i32, i32* %border_height, align 4
  %add94 = add nsw i32 %78, %79
  %height95 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %rect, i32 0, i32 3
  %80 = load i32, i32* %height95, align 4
  %cmp96 = icmp slt i32 %add94, %80
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end
  %81 = load i32, i32* %height, align 4
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.end
  %82 = load i32, i32* %max_auto_height, align 4
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %cond101 = phi i32 [ %81, %cond.true.98 ], [ %82, %cond.false.99 ]
  store i32 %cond101, i32* %height, align 4
  store i32 1, i32* %resize, align 4
  br label %if.end.128

if.else.102:                                      ; preds = %lor.lhs.false.86, %lor.lhs.false.78
  %83 = load i32, i32* %width, align 4
  %84 = load i32, i32* %disp_width, align 4
  %cmp103 = icmp sgt i32 %83, %84
  br i1 %cmp103, label %land.lhs.true.108, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.else.102
  %85 = load i32, i32* %height, align 4
  %86 = load i32, i32* %disp_height, align 4
  %cmp106 = icmp sgt i32 %85, %86
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.127

land.lhs.true.108:                                ; preds = %lor.lhs.false.105, %if.else.102
  %87 = load i32, i32* %disp_width, align 4
  %88 = load i32, i32* %max_auto_width, align 4
  %cmp109 = icmp slt i32 %87, %88
  br i1 %cmp109, label %if.then.114, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %land.lhs.true.108
  %89 = load i32, i32* %disp_height, align 4
  %90 = load i32, i32* %max_auto_height, align 4
  %cmp112 = icmp slt i32 %89, %90
  br i1 %cmp112, label %if.then.114, label %if.end.127

if.then.114:                                      ; preds = %lor.lhs.false.111, %land.lhs.true.108
  %91 = load i32, i32* %max_auto_width, align 4
  %92 = load i32, i32* %width, align 4
  %cmp115 = icmp slt i32 %91, %92
  br i1 %cmp115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %if.then.114
  %93 = load i32, i32* %max_auto_width, align 4
  br label %cond.end.119

cond.false.118:                                   ; preds = %if.then.114
  %94 = load i32, i32* %width, align 4
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi i32 [ %93, %cond.true.117 ], [ %94, %cond.false.118 ]
  store i32 %cond120, i32* %width, align 4
  %95 = load i32, i32* %max_auto_height, align 4
  %96 = load i32, i32* %height, align 4
  %cmp121 = icmp slt i32 %95, %96
  br i1 %cmp121, label %cond.true.123, label %cond.false.124

cond.true.123:                                    ; preds = %cond.end.119
  %97 = load i32, i32* %max_auto_height, align 4
  br label %cond.end.125

cond.false.124:                                   ; preds = %cond.end.119
  %98 = load i32, i32* %height, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.123
  %cond126 = phi i32 [ %97, %cond.true.123 ], [ %98, %cond.false.124 ]
  store i32 %cond126, i32* %height, align 4
  store i32 1, i32* %resize, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %cond.end.125, %lor.lhs.false.111, %lor.lhs.false.105
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %cond.end.100
  %99 = load i32, i32* %resize, align 4
  %tobool129 = icmp ne i32 %99, 0
  br i1 %tobool129, label %if.then.130, label %if.end.159

if.then.130:                                      ; preds = %if.end.128
  %100 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %call132 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %100)
  store %struct._GimpStatusbar* %call132, %struct._GimpStatusbar** %statusbar, align 8
  %101 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %102 = bitcast %struct._GimpStatusbar* %101 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_widget_get_type() #8
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call134)
  %103 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkWidget*
  call void @gtk_widget_get_size_request(%struct._GtkWidget* %103, i32* %statusbar_width, i32* null)
  %104 = load i32, i32* %width, align 4
  %105 = load i32, i32* %statusbar_width, align 4
  %cmp136 = icmp slt i32 %104, %105
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.then.130
  %106 = load i32, i32* %statusbar_width, align 4
  store i32 %106, i32* %width, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %if.then.130
  %107 = load i32, i32* %width, align 4
  %108 = load i32, i32* %border_width, align 4
  %add140 = add nsw i32 %107, %108
  store i32 %add140, i32* %width, align 4
  %109 = load i32, i32* %height, align 4
  %110 = load i32, i32* %border_height, align 4
  %add141 = add nsw i32 %109, %110
  store i32 %add141, i32* %height, align 4
  %111 = load i32, i32* %grow_only.addr, align 4
  %tobool142 = icmp ne i32 %111, 0
  br i1 %tobool142, label %if.then.143, label %if.end.156

if.then.143:                                      ; preds = %if.end.139
  %112 = load i32, i32* %width, align 4
  %width144 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %113 = load i32, i32* %width144, align 4
  %cmp145 = icmp slt i32 %112, %113
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.then.143
  %width148 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %114 = load i32, i32* %width148, align 4
  store i32 %114, i32* %width, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.then.143
  %115 = load i32, i32* %height, align 4
  %height150 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %116 = load i32, i32* %height150, align 4
  %cmp151 = icmp slt i32 %115, %116
  br i1 %cmp151, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.end.149
  %height154 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %117 = load i32, i32* %height154, align 4
  store i32 %117, i32* %height, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.153, %if.end.149
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.139
  %118 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %119 = bitcast %struct._GimpImageWindow* %118 to %struct._GTypeInstance*
  %call157 = call i64 @gtk_window_get_type() #8
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call157)
  %120 = bitcast %struct._GTypeInstance* %call158 to %struct._GtkWindow*
  %121 = load i32, i32* %width, align 4
  %122 = load i32, i32* %height, align 4
  call void @gtk_window_resize(%struct._GtkWindow* %120, i32 %121, i32 %122)
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.156, %if.end.128
  %123 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  call void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell* %123, i32 1, i32 1)
  br label %return

return:                                           ; preds = %if.end.159, %if.then.19, %if.then.15, %if.else.9
  ret void
}

declare i32 @gtk_widget_get_realized(%struct._GtkWidget*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gdk_screen_get_monitor_at_window(%struct._GdkScreen*, %struct._GdkDrawable*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare void @gdk_screen_get_monitor_geometry(%struct._GdkScreen*, i32, %struct._GdkRectangle*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell*) #1

declare void @gtk_widget_get_size_request(%struct._GtkWidget*, i32*, i32*) #1

declare void @gtk_window_resize(%struct._GtkWindow*, i32, i32) #1

declare void @gimp_display_shell_scroll_center_image(%struct._GimpDisplayShell*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_image_window_get_default_dockbook(%struct._GimpImageWindow* %window) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  %dockbook = alloca %struct._GtkWidget*, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dockbook, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %3, i32 0, i32 12
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %right_docks, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_dock_columns_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %6, %struct._GimpDockColumns** %dock_columns, align 8
  %7 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %call4 = call %struct._GtkWidget* @gimp_image_window_get_first_dockbook(%struct._GimpDockColumns* %7)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %dockbook, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %tobool = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %9, i32 0, i32 9
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %left_docks, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_dock_columns_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %12, %struct._GimpDockColumns** %dock_columns, align 8
  %13 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %call7 = call %struct._GtkWidget* @gimp_image_window_get_first_dockbook(%struct._GimpDockColumns* %13)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %dockbook, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  ret %struct._GtkWidget* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_image_window_get_first_dockbook(%struct._GimpDockColumns* %columns) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %columns.addr = alloca %struct._GimpDockColumns*, align 8
  %dock_iter = alloca %struct._GList*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  %dockbooks = alloca %struct._GList*, align 8
  store %struct._GimpDockColumns* %columns, %struct._GimpDockColumns** %columns.addr, align 8
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %columns.addr, align 8
  %call = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %0)
  store %struct._GList* %call, %struct._GList** %dock_iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %dock_iter, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %dock_iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_dock_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDock*
  store %struct._GimpDock* %5, %struct._GimpDock** %dock, align 8
  %6 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call3 = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %6)
  store %struct._GList* %call3, %struct._GList** %dockbooks, align 8
  %7 = load %struct._GList*, %struct._GList** %dockbooks, align 8
  %tobool4 = icmp ne %struct._GList* %7, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %dockbooks, align 8
  %data5 = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data5, align 8
  %10 = bitcast i8* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  store %struct._GtkWidget* %11, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._GList*, %struct._GList** %dock_iter, align 8
  %tobool8 = icmp ne %struct._GList* %12, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %dock_iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %dock_iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_image_window_keep_canvas_pos(%struct._GimpImageWindow* %window) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image_origin_shell_x = alloca i32, align 4
  %image_origin_shell_y = alloca i32, align 4
  %image_origin_window_x = alloca i32, align 4
  %image_origin_window_y = alloca i32, align 4
  %data = alloca %struct.PosCorrectionData*, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  store i32 -1, i32* %image_origin_shell_x, align 4
  store i32 -1, i32* %image_origin_shell_y, align 4
  store i32 -1, i32* %image_origin_window_x, align 4
  store i32 -1, i32* %image_origin_window_y, align 4
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell* %1, double 0.000000e+00, double 0.000000e+00, i32* %image_origin_shell_x, i32* %image_origin_shell_y)
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 33
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %6 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %7 = bitcast %struct._GimpImageWindow* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %9 = load i32, i32* %image_origin_shell_x, align 4
  %10 = load i32, i32* %image_origin_shell_y, align 4
  %call5 = call i32 @gtk_widget_translate_coordinates(%struct._GtkWidget* %5, %struct._GtkWidget* %8, i32 %9, i32 %10, i32* %image_origin_window_x, i32* %image_origin_window_y)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call noalias i8* @g_malloc0_n(i64 1, i64 8)
  %11 = bitcast i8* %call6 to %struct.PosCorrectionData*
  store %struct.PosCorrectionData* %11, %struct.PosCorrectionData** %data, align 8
  %12 = load i32, i32* %image_origin_window_x, align 4
  %13 = load %struct.PosCorrectionData*, %struct.PosCorrectionData** %data, align 8
  %x = getelementptr inbounds %struct.PosCorrectionData, %struct.PosCorrectionData* %13, i32 0, i32 0
  store i32 %12, i32* %x, align 4
  %14 = load i32, i32* %image_origin_window_y, align 4
  %15 = load %struct.PosCorrectionData*, %struct.PosCorrectionData** %data, align 8
  %y = getelementptr inbounds %struct.PosCorrectionData, %struct.PosCorrectionData* %15, i32 0, i32 1
  store i32 %14, i32* %y, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %17 = bitcast %struct._GimpDisplayShell* %16 to i8*
  %18 = load %struct.PosCorrectionData*, %struct.PosCorrectionData** %data, align 8
  %19 = bitcast %struct.PosCorrectionData* %18 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GdkRectangle*, %struct.PosCorrectionData*)* @gimp_image_window_shell_size_allocate to void ()*), i8* %19, void (i8*, %struct._GClosure*)* bitcast (void (i8*)* @g_free to void (i8*, %struct._GClosure*)*), i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_display_shell_transform_xy(%struct._GimpDisplayShell*, double, double, i32*, i32*) #1

declare i32 @gtk_widget_translate_coordinates(%struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i32*, i32*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_shell_size_allocate(%struct._GimpDisplayShell* %shell, %struct._GdkRectangle* %allocation, %struct.PosCorrectionData* %data) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %data.addr = alloca %struct.PosCorrectionData*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %image_origin_shell_x = alloca i32, align 4
  %image_origin_shell_y = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store %struct.PosCorrectionData* %data, %struct.PosCorrectionData** %data.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %call = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %0)
  store %struct._GimpImageWindow* %call, %struct._GimpImageWindow** %window, align 8
  store i32 -1, i32* %image_origin_shell_x, align 4
  store i32 -1, i32* %image_origin_shell_y, align 4
  %1 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %2 = bitcast %struct._GimpImageWindow* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %4, i32 0, i32 33
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %8 = load %struct.PosCorrectionData*, %struct.PosCorrectionData** %data.addr, align 8
  %x = getelementptr inbounds %struct.PosCorrectionData, %struct.PosCorrectionData* %8, i32 0, i32 0
  %9 = load i32, i32* %x, align 4
  %10 = load %struct.PosCorrectionData*, %struct.PosCorrectionData** %data.addr, align 8
  %y = getelementptr inbounds %struct.PosCorrectionData, %struct.PosCorrectionData* %10, i32 0, i32 1
  %11 = load i32, i32* %y, align 4
  %call5 = call i32 @gtk_widget_translate_coordinates(%struct._GtkWidget* %3, %struct._GtkWidget* %7, i32 %9, i32 %11, i32* %image_origin_shell_x, i32* %image_origin_shell_y)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %13 = load i32, i32* %image_origin_shell_x, align 4
  %sub = sub nsw i32 0, %13
  %14 = load i32, i32* %image_origin_shell_y, align 4
  %sub6 = sub nsw i32 0, %14
  call void @gimp_display_shell_scroll_set_offset(%struct._GimpDisplayShell* %12, i32 %sub, i32 %sub6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %16 = bitcast %struct._GimpDisplayShell* %15 to i8*
  %17 = load %struct.PosCorrectionData*, %struct.PosCorrectionData** %data.addr, align 8
  %18 = bitcast %struct.PosCorrectionData* %17 to i8*
  %call7 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GdkRectangle*, %struct.PosCorrectionData*)* @gimp_image_window_shell_size_allocate to i8*), i8* %18)
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_image_window_update_tabs(%struct._GimpImageWindow* %window) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_window_update_tabs, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 0
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 1
  %18 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config13, align 8
  %19 = bitcast %struct._GimpCoreConfig* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_gui_config_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %20, %struct._GimpGuiConfig** %config, align 8
  %21 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %21, i32 0, i32 11
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_notebook_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkNotebook*
  %25 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %25, i32 0, i32 32
  %26 = load i32, i32* %single_window_mode, align 4
  %tobool18 = icmp ne i32 %26, 0
  br i1 %tobool18, label %land.lhs.true.19, label %land.end

land.lhs.true.19:                                 ; preds = %do.end
  %27 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %27, i32 0, i32 31
  %28 = load i32, i32* %hide_docks, align 4
  %tobool20 = icmp ne i32 %28, 0
  br i1 %tobool20, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.19
  %29 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %29, i32 0, i32 4
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %tobool21 = icmp ne %struct._GimpDisplayShell* %30, null
  br i1 %tobool21, label %land.lhs.true.22, label %lor.rhs

land.lhs.true.22:                                 ; preds = %land.rhs
  %31 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell23 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %31, i32 0, i32 4
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell23, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %32, i32 0, i32 1
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool24 = icmp ne %struct._GimpDisplay* %33, null
  br i1 %tobool24, label %land.lhs.true.25, label %lor.rhs

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %34 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell26 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %34, i32 0, i32 4
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell26, align 8
  %display27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %35, i32 0, i32 1
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display27, align 8
  %call28 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %36)
  %tobool29 = icmp ne %struct._GimpImage* %call28, null
  br i1 %tobool29, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.25, %land.lhs.true.22, %land.rhs
  %37 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %37, i32 0, i32 3
  %38 = load %struct._GList*, %struct._GList** %shells, align 8
  %call30 = call i32 @g_list_length(%struct._GList* %38)
  %cmp31 = icmp ugt i32 %call30, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.25
  %39 = phi i1 [ true, %land.lhs.true.25 ], [ %cmp31, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.19, %do.end
  %40 = phi i1 [ false, %land.lhs.true.19 ], [ false, %do.end ], [ %39, %lor.end ]
  %land.ext = zext i1 %40 to i32
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %24, i32 %land.ext)
  br label %return

return:                                           ; preds = %land.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare void @gtk_notebook_set_show_tabs(%struct._GtkNotebook*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_class_init(%struct._GimpImageWindowClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpImageWindowClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpImageWindowClass* %klass, %struct._GimpImageWindowClass** %klass.addr, align 8
  %0 = load %struct._GimpImageWindowClass*, %struct._GimpImageWindowClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpImageWindowClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpImageWindowClass*, %struct._GimpImageWindowClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpImageWindowClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_image_window_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_image_window_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_image_window_finalize, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_image_window_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_image_window_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 8
  store void (%struct._GtkWidget*)* @gimp_image_window_map, void (%struct._GtkWidget*)** %map, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %delete_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 29
  store i32 (%struct._GtkWidget*, %struct._GdkEventAny*)* @gimp_image_window_delete_event, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)** %delete_event, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %configure_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 36
  store i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)* @gimp_image_window_configure_event, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)** %configure_event, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %window_state_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 50
  store i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)* @gimp_image_window_window_state_event, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)** %window_state_event, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_image_window_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_get_type() #8
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 1, %struct._GParamSpec* %call4)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_menu_factory_get_type() #8
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 234)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 2, %struct._GParamSpec* %call6)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call i64 @gimp_dialog_factory_get_type() #8
  %call8 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null, i64 %call7, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 3, %struct._GParamSpec* %call8)
  %19 = load %struct._GimpImageWindowClass*, %struct._GimpImageWindowClass** %klass.addr, align 8
  %20 = bitcast %struct._GimpImageWindowClass* %19 to i8*
  call void @g_type_class_add_private(i8* %20, i64 120)
  call void @gtk_rc_parse_string(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @image_window_rc_style, i32 0, i32 0))
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %2, %struct._GimpImageWindow** %window, align 8
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %4 = bitcast %struct._GimpImageWindow* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_window_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %5, %struct._GimpImageWindowPrivate** %private, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %6, i32 0, i32 1
  %7 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager, align 8
  %8 = bitcast %struct._GimpUIManager* %7 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %8, %struct._GTypeInstance** %__inst, align 8
  %call4 = call i64 @gimp_ui_manager_get_type() #8
  store i64 %call4, i64* %__t, align 8
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %9, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %11, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type, align 8
  %15 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %14, %15
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %17 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %16, i64 %17) #9
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %18 = load i32, i32* %__r, align 4
  store i32 %18, i32* %tmp
  %19 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.10
  br label %if.end.14

if.else.13:                                       ; preds = %if.end.10
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 317, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_window_constructed, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0)) #10
  unreachable

if.end.14:                                        ; preds = %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %20 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %20, i32 0, i32 2
  %21 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %22 = bitcast %struct._GimpDialogFactory* %21 to i8*
  %23 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %24 = bitcast %struct._GimpImageWindow* %23 to i8*
  %call15 = call i64 @g_signal_connect_object(i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImageWindow*)* @gimp_image_window_update_ui_manager to void ()*), i8* %24, i32 2)
  %25 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory16 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %25, i32 0, i32 2
  %26 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory16, align 8
  %27 = bitcast %struct._GimpDialogFactory* %26 to i8*
  %28 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %29 = bitcast %struct._GimpImageWindow* %28 to i8*
  %call17 = call i64 @g_signal_connect_object(i8* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImageWindow*)* @gimp_image_window_update_ui_manager to void ()*), i8* %29, i32 2)
  %30 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %31 = bitcast %struct._GimpImageWindow* %30 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call18)
  %32 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  %33 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager20 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %33, i32 0, i32 1
  %34 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager20, align 8
  %35 = bitcast %struct._GimpUIManager* %34 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_ui_manager_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call21)
  %36 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkUIManager*
  %call23 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %36)
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %32, %struct._GtkAccelGroup* %call23)
  %37 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager24 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %37, i32 0, i32 1
  %38 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager24, align 8
  %39 = bitcast %struct._GimpUIManager* %38 to i8*
  %40 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %41 = bitcast %struct._GimpImageWindow* %40 to i8*
  %call25 = call i64 @g_signal_connect_data(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpUIManager*, i8*, %struct._GimpImageWindow*)* @gimp_image_window_show_tooltip to void ()*), i8* %41, void (i8*, %struct._GClosure*)* null, i32 0)
  %42 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager26 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %42, i32 0, i32 1
  %43 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager26, align 8
  %44 = bitcast %struct._GimpUIManager* %43 to i8*
  %45 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %46 = bitcast %struct._GimpImageWindow* %45 to i8*
  %call27 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GimpUIManager*, %struct._GimpImageWindow*)* @gimp_image_window_hide_tooltip to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 0)
  %47 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory28 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %47, i32 0, i32 2
  %48 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory28, align 8
  %call29 = call %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %48)
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %call29, i32 0, i32 1
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config30 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %49, i32 0, i32 1
  %50 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config30, align 8
  %51 = bitcast %struct._GimpCoreConfig* %50 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_gui_config_get_type() #8
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call31)
  %52 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %52, %struct._GimpGuiConfig** %config, align 8
  %call33 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  %53 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %main_vbox = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %53, i32 0, i32 5
  store %struct._GtkWidget* %call33, %struct._GtkWidget** %main_vbox, align 8
  %54 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %55 = bitcast %struct._GimpImageWindow* %54 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_container_get_type() #8
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call34)
  %56 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkContainer*
  %57 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %main_vbox36 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %57, i32 0, i32 5
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox36, align 8
  call void @gtk_container_add(%struct._GtkContainer* %56, %struct._GtkWidget* %58)
  %59 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %main_vbox37 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %59, i32 0, i32 5
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox37, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager38 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %61, i32 0, i32 1
  %62 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager38, align 8
  %63 = bitcast %struct._GimpUIManager* %62 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_ui_manager_get_type() #8
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call39)
  %64 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkUIManager*
  %call41 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  %65 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %65, i32 0, i32 6
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %menubar, align 8
  %66 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar42 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %66, i32 0, i32 6
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar42, align 8
  %tobool43 = icmp ne %struct._GtkWidget* %67, null
  br i1 %tobool43, label %if.then.44, label %if.end.57

if.then.44:                                       ; preds = %do.end
  %68 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %main_vbox45 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %68, i32 0, i32 5
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox45, align 8
  %70 = bitcast %struct._GtkWidget* %69 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 %call46)
  %71 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %72 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar48 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %72, i32 0, i32 6
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar48, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %71, %struct._GtkWidget* %73, i32 0, i32 0, i32 0)
  %74 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar49 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %74, i32 0, i32 6
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar49, align 8
  %76 = bitcast %struct._GtkWidget* %75 to i8*
  %call50 = call i64 @g_signal_connect_data(i8* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar51 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %77, i32 0, i32 6
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar51, align 8
  %79 = bitcast %struct._GtkWidget* %78 to i8*
  %80 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %81 = bitcast %struct._GimpImageWindow* %80 to i8*
  %call52 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpImageWindow*)* @gimp_image_window_shell_events to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 0)
  %82 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar53 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %82, i32 0, i32 6
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar53, align 8
  %84 = bitcast %struct._GtkWidget* %83 to i8*
  %85 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %86 = bitcast %struct._GimpImageWindow* %85 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpImageWindow*)* @gimp_image_window_shell_events to void ()*), i8* %86, void (i8*, %struct._GClosure*)* null, i32 0)
  %87 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar55 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %87, i32 0, i32 6
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar55, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %90 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %91 = bitcast %struct._GimpImageWindow* %90 to i8*
  %call56 = call i64 @g_signal_connect_data(i8* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpImageWindow*)* @gimp_image_window_shell_events to void ()*), i8* %91, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.44, %do.end
  %call58 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 0)
  %92 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %hbox = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %92, i32 0, i32 7
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %hbox, align 8
  %93 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %main_vbox59 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %93, i32 0, i32 5
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox59, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_box_get_type() #8
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call60)
  %96 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkBox*
  %97 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %hbox62 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %97, i32 0, i32 7
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox62, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %96, %struct._GtkWidget* %98, i32 1, i32 1, i32 0)
  %99 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %hbox63 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %99, i32 0, i32 7
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox63, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %100)
  %call64 = call %struct._GtkWidget* @gtk_paned_new(i32 0)
  %101 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_hpane = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %101, i32 0, i32 8
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %left_hpane, align 8
  %102 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %hbox65 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %102, i32 0, i32 7
  %103 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox65, align 8
  %104 = bitcast %struct._GtkWidget* %103 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_box_get_type() #8
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %104, i64 %call66)
  %105 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkBox*
  %106 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_hpane68 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %106, i32 0, i32 8
  %107 = load %struct._GtkWidget*, %struct._GtkWidget** %left_hpane68, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %105, %struct._GtkWidget* %107, i32 1, i32 1, i32 0)
  %108 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_hpane69 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %108, i32 0, i32 8
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %left_hpane69, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %109)
  %110 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %gimp70 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %110, i32 0, i32 0
  %111 = load %struct._Gimp*, %struct._Gimp** %gimp70, align 8
  %call71 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %111)
  %112 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory72 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %112, i32 0, i32 2
  %113 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory72, align 8
  %114 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager73 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %114, i32 0, i32 1
  %115 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager73, align 8
  %call74 = call %struct._GtkWidget* @gimp_dock_columns_new(%struct._GimpContext* %call71, %struct._GimpDialogFactory* %113, %struct._GimpUIManager* %115)
  %116 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %116, i32 0, i32 9
  store %struct._GtkWidget* %call74, %struct._GtkWidget** %left_docks, align 8
  %117 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_hpane75 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %117, i32 0, i32 8
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %left_hpane75, align 8
  %119 = bitcast %struct._GtkWidget* %118 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_paned_get_type() #8
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %119, i64 %call76)
  %120 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkPaned*
  %121 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks78 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %121, i32 0, i32 9
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %left_docks78, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %120, %struct._GtkWidget* %122, i32 0, i32 0)
  %123 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks79 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %123, i32 0, i32 9
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %left_docks79, align 8
  %125 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %125, i32 0, i32 32
  %126 = load i32, i32* %single_window_mode, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %124, i32 %126)
  %call80 = call %struct._GtkWidget* @gtk_paned_new(i32 0)
  %127 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %127, i32 0, i32 10
  store %struct._GtkWidget* %call80, %struct._GtkWidget** %right_hpane, align 8
  %128 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_hpane81 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %128, i32 0, i32 8
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %left_hpane81, align 8
  %130 = bitcast %struct._GtkWidget* %129 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_paned_get_type() #8
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %130, i64 %call82)
  %131 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkPaned*
  %132 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane84 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %132, i32 0, i32 10
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %right_hpane84, align 8
  call void @gtk_paned_pack2(%struct._GtkPaned* %131, %struct._GtkWidget* %133, i32 1, i32 0)
  %134 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane85 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %134, i32 0, i32 10
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %right_hpane85, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  %call86 = call %struct._GtkWidget* @gtk_notebook_new()
  %136 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %136, i32 0, i32 11
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %notebook, align 8
  %137 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook87 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %137, i32 0, i32 11
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook87, align 8
  %139 = bitcast %struct._GtkWidget* %138 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_notebook_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %139, i64 %call88)
  %140 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkNotebook*
  call void @gtk_notebook_set_scrollable(%struct._GtkNotebook* %140, i32 1)
  %141 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook90 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %141, i32 0, i32 11
  %142 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook90, align 8
  %143 = bitcast %struct._GtkWidget* %142 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_notebook_get_type() #8
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %143, i64 %call91)
  %144 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %144, i32 0)
  %145 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook93 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %145, i32 0, i32 11
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook93, align 8
  %147 = bitcast %struct._GtkWidget* %146 to %struct._GTypeInstance*
  %call94 = call i64 @gtk_notebook_get_type() #8
  %call95 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %147, i64 %call94)
  %148 = bitcast %struct._GTypeInstance* %call95 to %struct._GtkNotebook*
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %148, i32 0)
  %149 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane96 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %149, i32 0, i32 10
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %right_hpane96, align 8
  %151 = bitcast %struct._GtkWidget* %150 to %struct._GTypeInstance*
  %call97 = call i64 @gtk_paned_get_type() #8
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %151, i64 %call97)
  %152 = bitcast %struct._GTypeInstance* %call98 to %struct._GtkPaned*
  %153 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook99 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %153, i32 0, i32 11
  %154 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook99, align 8
  call void @gtk_paned_pack1(%struct._GtkPaned* %152, %struct._GtkWidget* %154, i32 1, i32 1)
  %155 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook100 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %155, i32 0, i32 11
  %156 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook100, align 8
  %157 = bitcast %struct._GtkWidget* %156 to i8*
  %158 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %159 = bitcast %struct._GimpImageWindow* %158 to i8*
  %call101 = call i64 @g_signal_connect_data(i8* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkNotebook*, i8*, i32, %struct._GimpImageWindow*)* @gimp_image_window_switch_page to void ()*), i8* %159, void (i8*, %struct._GClosure*)* null, i32 0)
  %160 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook102 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %160, i32 0, i32 11
  %161 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook102, align 8
  %162 = bitcast %struct._GtkWidget* %161 to i8*
  %163 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %164 = bitcast %struct._GimpImageWindow* %163 to i8*
  %call103 = call i64 @g_signal_connect_data(i8* %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkNotebook*, %struct._GtkWidget*, i32, %struct._GimpImageWindow*)* @gimp_image_window_page_removed to void ()*), i8* %164, void (i8*, %struct._GClosure*)* null, i32 0)
  %165 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook104 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %165, i32 0, i32 11
  %166 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook104, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %166)
  %167 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %gimp105 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %167, i32 0, i32 0
  %168 = load %struct._Gimp*, %struct._Gimp** %gimp105, align 8
  %call106 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %168)
  %169 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory107 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %169, i32 0, i32 2
  %170 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory107, align 8
  %171 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager108 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %171, i32 0, i32 1
  %172 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager108, align 8
  %call109 = call %struct._GtkWidget* @gimp_dock_columns_new(%struct._GimpContext* %call106, %struct._GimpDialogFactory* %170, %struct._GimpUIManager* %172)
  %173 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %173, i32 0, i32 12
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %right_docks, align 8
  %174 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane110 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %174, i32 0, i32 10
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %right_hpane110, align 8
  %176 = bitcast %struct._GtkWidget* %175 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_paned_get_type() #8
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %176, i64 %call111)
  %177 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkPaned*
  %178 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks113 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %178, i32 0, i32 12
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %right_docks113, align 8
  call void @gtk_paned_pack2(%struct._GtkPaned* %177, %struct._GtkWidget* %179, i32 0, i32 0)
  %180 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks114 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %180, i32 0, i32 12
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %right_docks114, align 8
  %182 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %single_window_mode115 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %182, i32 0, i32 32
  %183 = load i32, i32* %single_window_mode115, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %181, i32 %183)
  %184 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %185 = bitcast %struct._GimpGuiConfig* %184 to i8*
  %186 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %187 = bitcast %struct._GimpImageWindow* %186 to i8*
  %call116 = call i64 @g_signal_connect_object(i8* %185, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImageWindow*, %struct._GParamSpec*, %struct._GimpGuiConfig*)* @gimp_image_window_config_notify to void ()*), i8* %187, i32 2)
  %188 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %189 = bitcast %struct._GimpGuiConfig* %188 to i8*
  %190 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %191 = bitcast %struct._GimpImageWindow* %190 to i8*
  %call117 = call i64 @g_signal_connect_object(i8* %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImageWindow*, %struct._GParamSpec*, %struct._GimpGuiConfig*)* @gimp_image_window_config_notify to void ()*), i8* %191, i32 2)
  %192 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %193 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %call118 = call i8* @gimp_image_window_config_to_entry_id(%struct._GimpGuiConfig* %193)
  call void @gimp_image_window_session_update(%struct._GimpImageWindow* %192, %struct._GimpDisplay* null, i8* %call118)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %3, i32 0, i32 2
  %4 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %tobool = icmp ne %struct._GimpDialogFactory* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory2 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %5, i32 0, i32 2
  %6 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory2, align 8
  %7 = bitcast %struct._GimpDialogFactory* %6 to i8*
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %9 = bitcast %struct._GObject* %8 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImageWindow*)* @gimp_image_window_update_ui_manager to i8*), i8* %9)
  %10 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory4 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %10, i32 0, i32 2
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %dialog_factory4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %11, i32 0, i32 1
  %12 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager, align 8
  %tobool5 = icmp ne %struct._GimpUIManager* %12, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager7 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %13, i32 0, i32 1
  %14 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager7, align 8
  %15 = bitcast %struct._GimpUIManager* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager8 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 1
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %menubar_manager8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %17 = load i8*, i8** @gimp_image_window_parent_class, align 8
  %18 = bitcast i8* %17 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %18, i64 80)
  %19 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %19, i32 0, i32 5
  %20 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %20(%struct._GObject* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %3, i32 0, i32 3
  %4 = load %struct._GList*, %struct._GList** %shells, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells2 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %5, i32 0, i32 3
  %6 = load %struct._GList*, %struct._GList** %shells2, align 8
  call void @g_list_free(%struct._GList* %6)
  %7 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells3 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %7, i32 0, i32 3
  store %struct._GList* null, %struct._GList** %shells3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_image_window_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %factory = alloca %struct._GimpMenuFactory*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %2, %struct._GimpImageWindow** %window, align 8
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %4 = bitcast %struct._GimpImageWindow* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_window_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %5, %struct._GimpImageWindowPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._Gimp*
  %9 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %9, i32 0, i32 0
  store %struct._Gimp* %8, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i8* @g_value_get_object(%struct._GValue* %10)
  %11 = bitcast i8* %call6 to %struct._GimpMenuFactory*
  store %struct._GimpMenuFactory* %11, %struct._GimpMenuFactory** %factory, align 8
  %12 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %factory, align 8
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %14 = bitcast %struct._GimpImageWindow* %13 to i8*
  %call7 = call %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* %14, i32 0)
  %15 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %15, i32 0, i32 1
  store %struct._GimpUIManager* %call7, %struct._GimpUIManager** %menubar_manager, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call9 = call i8* @g_value_get_object(%struct._GValue* %16)
  %17 = bitcast i8* %call9 to %struct._GimpDialogFactory*
  %18 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %18, i32 0, i32 2
  store %struct._GimpDialogFactory* %17, %struct._GimpDialogFactory** %dialog_factory, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %19, %struct._GObject** %_glib__object, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %20, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = load i32, i32* %property_id.addr, align 4
  store i32 %21, i32* %_glib__property_id, align 4
  %22 = load i32, i32* %_glib__property_id, align 4
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = bitcast %struct._GParamSpec* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call10 = call i8* @g_type_name(i64 %28)
  %29 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type12 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type12, align 8
  %call13 = call i8* @g_type_name(i64 %32)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 501, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %22, i8* %24, i8* %call10, i8* %call13)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.8, %sw.bb.5, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %2, %struct._GimpImageWindow** %window, align 8
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %4 = bitcast %struct._GimpImageWindow* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_window_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %5, %struct._GimpImageWindowPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.4
    i32 2, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %8, i32 0, i32 0
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %10 = bitcast %struct._Gimp* %9 to i8*
  call void @g_value_set_object(%struct._GValue* %7, i8* %10)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %12 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %12, i32 0, i32 2
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %14 = bitcast %struct._GimpDialogFactory* %13 to i8*
  call void @g_value_set_object(%struct._GValue* %11, i8* %14)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.5
  br label %do.body

do.body:                                          ; preds = %sw.default
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %15, %struct._GObject** %_glib__object, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %16, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = load i32, i32* %property_id.addr, align 4
  store i32 %17, i32* %_glib__property_id, align 4
  %18 = load i32, i32* %_glib__property_id, align 4
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %19, i32 0, i32 1
  %20 = load i8*, i8** %name, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = bitcast %struct._GParamSpec* %21 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %24)
  %25 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %26 = bitcast %struct._GObject* %25 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %28)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 526, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %18, i8* %20, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_map(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load i8*, i8** @gimp_image_window_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #8
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %map = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 8
  %3 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %map, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %3(%struct._GtkWidget* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_window_delete_event(%struct._GtkWidget* %widget, %struct._GdkEventAny* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventAny*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventAny* %event, %struct._GdkEventAny** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %2, %struct._GimpImageWindow** %window, align 8
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %5 = bitcast %struct._GimpImageWindow* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_image_window_get_type() #8
  %call4 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast i8* %call4 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %6, %struct._GimpImageWindowPrivate** %private, align 8
  %7 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %7, i32 0, i32 2
  %8 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %call5 = call %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %8)
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %call5, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config6 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %9, i32 0, i32 1
  %10 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config6, align 8
  %11 = bitcast %struct._GimpCoreConfig* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_gui_config_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %12, %struct._GimpGuiConfig** %config, align 8
  %13 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %13, i32 0, i32 32
  %14 = load i32, i32* %single_window_mode, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call9 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %15)
  %call10 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %call9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.13

if.else:                                          ; preds = %entry
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool11 = icmp ne %struct._GimpDisplayShell* %16, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_close(%struct._GimpDisplayShell* %17, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_window_configure_event(%struct._GtkWidget* %widget, %struct._GdkEventConfigure* %event) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventConfigure*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %current_width = alloca i32, align 4
  %current_height = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventConfigure* %event, %struct._GdkEventConfigure** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %2, %struct._GimpImageWindow** %window, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %3, %struct._GdkRectangle* %allocation)
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %4 = load i32, i32* %width, align 4
  store i32 %4, i32* %current_width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %5 = load i32, i32* %height, align 4
  store i32 %5, i32* %current_height, align 4
  %6 = load i8*, i8** @gimp_image_window_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #8
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call2)
  %8 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %configure_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 36
  %9 = load i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)** %configure_event, align 8
  %tobool = icmp ne i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_image_window_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call4 = call i64 @gtk_widget_get_type() #8
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 %call4)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GtkWidgetClass*
  %configure_event6 = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 36
  %13 = load i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)** %configure_event6, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %15 = load %struct._GdkEventConfigure*, %struct._GdkEventConfigure** %event.addr, align 8
  %call7 = call i32 %13(%struct._GtkWidget* %14, %struct._GdkEventConfigure* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GdkEventConfigure*, %struct._GdkEventConfigure** %event.addr, align 8
  %width8 = getelementptr inbounds %struct._GdkEventConfigure, %struct._GdkEventConfigure* %16, i32 0, i32 5
  %17 = load i32, i32* %width8, align 4
  %18 = load i32, i32* %current_width, align 4
  %cmp = icmp ne i32 %17, %18
  br i1 %cmp, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load %struct._GdkEventConfigure*, %struct._GdkEventConfigure** %event.addr, align 8
  %height9 = getelementptr inbounds %struct._GdkEventConfigure, %struct._GdkEventConfigure* %19, i32 0, i32 6
  %20 = load i32, i32* %height9, align 4
  %21 = load i32, i32* %current_height, align 4
  %cmp10 = icmp ne i32 %20, %21
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  %22 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call12 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %22)
  store %struct._GimpDisplayShell* %call12, %struct._GimpDisplayShell** %shell, align 8
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool13 = icmp ne %struct._GimpDisplayShell* %23, null
  br i1 %tobool13, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.11
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %24, i32 0, i32 1
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call14 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %25)
  %tobool15 = icmp ne %struct._GimpImage* %call14, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %size_allocate_from_configure_event = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 85
  store i32 1, i32* %size_allocate_from_configure_event, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true, %if.then.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %lor.lhs.false
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_window_window_state_event(%struct._GtkWidget* %widget, %struct._GdkEventWindowState* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventWindowState*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %fullscreen = alloca i32, align 4
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %iconified = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventWindowState* %event, %struct._GdkEventWindowState** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %2, %struct._GimpImageWindow** %window, align 8
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %4 = bitcast %struct._GimpImageWindow* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_window_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %5, %struct._GimpImageWindowPrivate** %private, align 8
  %6 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call4 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %6)
  store %struct._GimpDisplayShell* %call4, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._GdkEventWindowState*, %struct._GdkEventWindowState** %event.addr, align 8
  %new_window_state = getelementptr inbounds %struct._GdkEventWindowState, %struct._GdkEventWindowState* %8, i32 0, i32 4
  %9 = load i32, i32* %new_window_state, align 4
  %10 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %window_state = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %10, i32 0, i32 13
  store i32 %9, i32* %window_state, align 4
  %11 = load %struct._GdkEventWindowState*, %struct._GdkEventWindowState** %event.addr, align 8
  %changed_mask = getelementptr inbounds %struct._GdkEventWindowState, %struct._GdkEventWindowState* %11, i32 0, i32 3
  %12 = load i32, i32* %changed_mask, align 4
  %and = and i32 %12, 16
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call7 = call i32 @gimp_image_window_get_fullscreen(%struct._GimpImageWindow* %13)
  store i32 %call7, i32* %fullscreen, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %14 = load i32, i32* @gimp_log_flags, align 4
  %and8 = and i32 %14, 1024
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %do.body
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_window_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWindow*
  %call13 = call i8* @gtk_window_get_title(%struct._GtkWindow* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %19 = load i32, i32* %fullscreen, align 4
  %tobool14 = icmp ne i32 %19, 0
  %cond = select i1 %tobool14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1024, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_image_window_window_state_event, i32 0, i32 0), i32 634, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0), i8* %call13, %struct._GtkWidget* %18, i8* %cond)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %20 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %20, i32 0, i32 6
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %21, null
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %do.end
  %22 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar18 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %22, i32 0, i32 6
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar18, align 8
  %24 = load i32, i32* %fullscreen, align 4
  %tobool19 = icmp ne i32 %24, 0
  %cond20 = select i1 %tobool19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0), i8* null
  call void @gtk_widget_set_name(%struct._GtkWidget* %23, i8* %cond20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %do.end
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_appearance_update(%struct._GimpDisplayShell* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %26 = load %struct._GdkEventWindowState*, %struct._GdkEventWindowState** %event.addr, align 8
  %changed_mask23 = getelementptr inbounds %struct._GdkEventWindowState, %struct._GdkEventWindowState* %26, i32 0, i32 3
  %27 = load i32, i32* %changed_mask23, align 4
  %and24 = and i32 %27, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.65

if.then.26:                                       ; preds = %if.end.22
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call27 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %28)
  store %struct._GimpStatusbar* %call27, %struct._GimpStatusbar** %statusbar, align 8
  %29 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call28 = call i32 @gimp_image_window_is_iconified(%struct._GimpImageWindow* %29)
  store i32 %call28, i32* %iconified, align 4
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.26
  %30 = load i32, i32* @gimp_log_flags, align 4
  %and30 = and i32 %30, 1024
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %do.body.29
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_window_get_type() #8
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call33)
  %33 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkWindow*
  %call35 = call i8* @gtk_window_get_title(%struct._GtkWindow* %33)
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %35 = load i32, i32* %iconified, align 4
  %tobool36 = icmp ne i32 %35, 0
  %cond37 = select i1 %tobool36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1024, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_image_window_window_state_event, i32 0, i32 0), i32 651, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0), i8* %call35, %struct._GtkWidget* %34, i8* %cond37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %do.body.29
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %36 = load i32, i32* %iconified, align 4
  %tobool40 = icmp ne i32 %36, 0
  br i1 %tobool40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %do.end.39
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 1
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %38, i32 0, i32 1
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call42 = call i32 @gimp_displays_get_num_visible(%struct._Gimp* %39)
  %cmp = icmp eq i32 %call42, 0
  br i1 %cmp, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.then.41
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %40 = load i32, i32* @gimp_log_flags, align 4
  %and45 = and i32 %40, 1024
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.body.44
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1024, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_image_window_window_state_event, i32 0, i32 0), i32 657, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %do.body.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %41 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %41, i32 0, i32 2
  %42 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  call void @gimp_dialog_factory_hide_with_display(%struct._GimpDialogFactory* %42)
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %if.then.41
  br label %if.end.52

if.else:                                          ; preds = %do.end.39
  %43 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory51 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %43, i32 0, i32 2
  %44 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory51, align 8
  call void @gimp_dialog_factory_show_with_display(%struct._GimpDialogFactory* %44)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.end.50
  %45 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %46 = bitcast %struct._GimpStatusbar* %45 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_progress_interface_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call53)
  %47 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpProgress*
  %call55 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %47)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.end.52
  %48 = load i32, i32* %iconified, align 4
  %tobool58 = icmp ne i32 %48, 0
  br i1 %tobool58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.then.57
  %49 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  call void @gimp_statusbar_override_window_title(%struct._GimpStatusbar* %49)
  br label %if.end.63

if.else.60:                                       ; preds = %if.then.57
  %50 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %51 = bitcast %struct._GimpImageWindow* %50 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_window_get_type() #8
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call61)
  %52 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkWindow*
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 59
  %54 = load i8*, i8** %title, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %52, i8* %54)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.52
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.22
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.then
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %requisition = alloca %struct._GtkRequisition, align 4
  %geometry = alloca %struct._GdkGeometry, align 8
  %geometry_mask = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %2, %struct._GimpImageWindow** %window, align 8
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %4 = bitcast %struct._GimpImageWindow* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_window_get_type() #8
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %5, %struct._GimpImageWindowPrivate** %private, align 8
  %6 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call4 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %6)
  store %struct._GimpDisplayShell* %call4, %struct._GimpDisplayShell** %shell, align 8
  store %struct._GimpStatusbar* null, %struct._GimpStatusbar** %statusbar, align 8
  %7 = bitcast %struct._GtkRequisition* %requisition to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 8, i32 4, i1 false)
  %8 = bitcast %struct._GdkGeometry* %geometry to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 56, i32 8, i1 false)
  store i32 0, i32* %geometry_mask, align 4
  %9 = load i8*, i8** @gimp_image_window_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call i64 @gtk_widget_get_type() #8
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 17
  %12 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %14 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %12(%struct._GtkWidget* %13, %struct._GtkStyle* %14)
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %15, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call7 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %16)
  store %struct._GimpStatusbar* %call7, %struct._GimpStatusbar** %statusbar, align 8
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %18 = bitcast %struct._GimpStatusbar* %17 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call8)
  %19 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  call void @gtk_widget_size_request(%struct._GtkWidget* %19, %struct._GtkRequisition* %requisition)
  %min_height = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 1
  store i32 23, i32* %min_height, align 4
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %20 = load i32, i32* %width, align 4
  %min_width = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 0
  store i32 %20, i32* %min_width, align 4
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %21 = load i32, i32* %height, align 4
  %min_height10 = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 1
  %22 = load i32, i32* %min_height10, align 4
  %add = add nsw i32 %22, %21
  store i32 %add, i32* %min_height10, align 4
  %23 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %23, i32 0, i32 6
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %24, null
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %25 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar13 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %25, i32 0, i32 6
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %menubar13, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %26, %struct._GtkRequisition* %requisition)
  %height14 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 1
  %27 = load i32, i32* %height14, align 4
  %min_height15 = getelementptr inbounds %struct._GdkGeometry, %struct._GdkGeometry* %geometry, i32 0, i32 1
  %28 = load i32, i32* %min_height15, align 4
  %add16 = add nsw i32 %28, %27
  store i32 %add16, i32* %min_height15, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end
  store i32 2, i32* %geometry_mask, align 4
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 1
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call18 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %30)
  %tobool19 = icmp ne %struct._GimpImage* %call18, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %31 = load i32, i32* %geometry_mask, align 4
  %or = or i32 %31, 128
  store i32 %or, i32* %geometry_mask, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.17
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_window_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWindow*
  %35 = load i32, i32* %geometry_mask, align 4
  call void @gtk_window_set_geometry_hints(%struct._GtkWindow* %34, %struct._GtkWidget* null, %struct._GdkGeometry* %geometry, i32 %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_window_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call24)
  %38 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWindow*
  call void @gimp_dialog_factory_set_has_min_size(%struct._GtkWindow* %38, i32 1)
  br label %return

return:                                           ; preds = %if.end.21, %if.then
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gtk_rc_parse_string(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_update_ui_manager(%struct._GimpImageWindow* %window) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager, align 8
  %5 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %5, i32 0, i32 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %8 = bitcast %struct._GimpDisplay* %7 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %4, i8* %8)
  ret void
}

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #1

declare %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_show_tooltip(%struct._GimpUIManager* %manager, i8* %tooltip, %struct._GimpImageWindow* %window) #3 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %tooltip.addr = alloca i8*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %tooltip, i8** %tooltip.addr, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  store %struct._GimpStatusbar* null, %struct._GimpStatusbar** %statusbar, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call1 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %2)
  store %struct._GimpStatusbar* %call1, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %4 = load i8*, i8** %tooltip.addr, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_push(%struct._GimpStatusbar* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_hide_tooltip(%struct._GimpUIManager* %manager, %struct._GimpImageWindow* %window) #3 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  store %struct._GimpStatusbar* null, %struct._GimpStatusbar** %statusbar, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call1 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %2)
  store %struct._GimpStatusbar* %call1, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  call void @gimp_statusbar_pop(%struct._GimpStatusbar* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_window_shell_events(%struct._GtkWidget* %widget, %union._GdkEvent* %event, %struct._GimpImageWindow* %window) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %3 = load %union._GdkEvent*, %union._GdkEvent** %event.addr, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call1 = call i32 @gimp_display_shell_events(%struct._GtkWidget* %2, %union._GdkEvent* %3, %struct._GimpDisplayShell* %4)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct._GtkWidget* @gtk_paned_new(i32) #1

declare %struct._GtkWidget* @gimp_dock_columns_new(%struct._GimpContext*, %struct._GimpDialogFactory*, %struct._GimpUIManager*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gtk_paned_pack1(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_paned_get_type() #2

declare void @gtk_paned_pack2(%struct._GtkPaned*, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_notebook_new() #1

declare void @gtk_notebook_set_scrollable(%struct._GtkNotebook*, i32) #1

declare void @gtk_notebook_set_show_border(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_switch_page(%struct._GtkNotebook* %notebook, i8* %page, i32 %page_num, %struct._GimpImageWindow* %window) #3 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %page.addr = alloca i8*, align 8
  %page_num.addr = alloca i32, align 4
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %active_display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  store i8* %page, i8** %page.addr, align 8
  store i32 %page_num, i32* %page_num.addr, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook.addr, align 8
  %4 = load i32, i32* %page_num.addr, align 4
  %call2 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %3, i32 %4)
  %5 = bitcast %struct._GtkWidget* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_display_shell_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %6, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %8, i32 0, i32 4
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %cmp = icmp eq %struct._GimpDisplayShell* %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  call void @gimp_image_window_disconnect_from_active_shell(%struct._GimpImageWindow* %10)
  br label %do.body

do.body:                                          ; preds = %if.end
  %11 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %11, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  %12 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1024, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_window_switch_page, i32 0, i32 0), i32 1717, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i32 0, i32 0), %struct._GimpImageWindow* %12, %struct._GimpDisplayShell* %13)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %15 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell7 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %15, i32 0, i32 4
  store %struct._GimpDisplayShell* %14, %struct._GimpDisplayShell** %active_shell7, align 8
  %16 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %17 = bitcast %struct._GimpImageWindow* %16 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_window_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call8)
  %18 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpWindow*
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 33
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  call void @gimp_window_set_primary_focus_widget(%struct._GimpWindow* %18, %struct._GtkWidget* %20)
  %21 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell10 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %21, i32 0, i32 4
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell10, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 1
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  store %struct._GimpDisplay* %23, %struct._GimpDisplay** %active_display, align 8
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  %25 = bitcast %struct._GimpDisplay* %24 to i8*
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %27 = bitcast %struct._GimpImageWindow* %26 to i8*
  %call11 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplay*, %struct._GParamSpec*, %struct._GimpImageWindow*)* @gimp_image_window_image_notify to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  %28 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell12 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %28, i32 0, i32 4
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell12, align 8
  %30 = bitcast %struct._GimpDisplayShell* %29 to i8*
  %31 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %32 = bitcast %struct._GimpImageWindow* %31 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpImageWindow*)* @gimp_image_window_shell_scaled to void ()*), i8* %32, void (i8*, %struct._GClosure*)* null, i32 0)
  %33 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell14 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %33, i32 0, i32 4
  %34 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell14, align 8
  %35 = bitcast %struct._GimpDisplayShell* %34 to i8*
  %36 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %37 = bitcast %struct._GimpImageWindow* %36 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GParamSpec*, %struct._GimpImageWindow*)* @gimp_image_window_shell_title_notify to void ()*), i8* %37, void (i8*, %struct._GClosure*)* null, i32 0)
  %38 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell16 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %38, i32 0, i32 4
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell16, align 8
  %40 = bitcast %struct._GimpDisplayShell* %39 to i8*
  %41 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %42 = bitcast %struct._GimpImageWindow* %41 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GParamSpec*, %struct._GimpImageWindow*)* @gimp_image_window_shell_icon_notify to void ()*), i8* %42, void (i8*, %struct._GClosure*)* null, i32 0)
  %43 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %44 = bitcast %struct._GimpImageWindow* %43 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #8
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call18)
  %45 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %title = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %46, i32 0, i32 59
  %47 = load i8*, i8** %title, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %45, i8* %47)
  %48 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %49 = bitcast %struct._GimpImageWindow* %48 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call20)
  %50 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %icon = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %51, i32 0, i32 63
  %52 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon, align 8
  call void @gtk_window_set_icon(%struct._GtkWindow* %50, %struct._GdkPixbuf* %52)
  %53 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell22 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %53, i32 0, i32 4
  %54 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell22, align 8
  call void @gimp_display_shell_appearance_update(%struct._GimpDisplayShell* %54)
  %55 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %56 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  call void @gimp_image_window_session_update(%struct._GimpImageWindow* %55, %struct._GimpDisplay* %56, i8* null)
  %57 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %57, i32 0, i32 0
  %58 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call23 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %58)
  %59 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  %60 = bitcast %struct._GimpDisplay* %59 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %call23, i8* %60)
  %61 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %61, i32 0, i32 1
  %62 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager, align 8
  %63 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  %64 = bitcast %struct._GimpDisplay* %63 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %62, i8* %64)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_page_removed(%struct._GtkNotebook* %notebook, %struct._GtkWidget* %widget, i32 %page_num, %struct._GimpImageWindow* %window) #3 {
entry:
  %notebook.addr = alloca %struct._GtkNotebook*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %page_num.addr = alloca i32, align 4
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  store %struct._GtkNotebook* %notebook, %struct._GtkNotebook** %notebook.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %page_num, i32* %page_num.addr, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %5 = bitcast %struct._GimpDisplayShell* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %cmp = icmp eq %struct._GtkWidget* %6, %7
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %8, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %do.body
  %9 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 1024, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_window_page_removed, i32 0, i32 0), i32 1765, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i32 0, i32 0), %struct._GimpImageWindow* %9, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  call void @gimp_image_window_disconnect_from_active_shell(%struct._GimpImageWindow* %10)
  %11 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell5 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %11, i32 0, i32 4
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %active_shell5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_config_notify(%struct._GimpImageWindow* %window, %struct._GParamSpec* %pspec, %struct._GimpGuiConfig* %config) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %config.addr = alloca %struct._GimpGuiConfig*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %show_docks = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %user_context = alloca %struct._GimpContext*, align 8
  %w = alloca %struct._GdkDrawable*, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpGuiConfig* %config, %struct._GimpGuiConfig** %config.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %3, i32 0, i32 1
  %4 = load i8*, i8** %name, align 8
  %call2 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0)) #9
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name3, align 8
  %call4 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end.29

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %7, i32 0, i32 32
  %8 = load i32, i32* %single_window_mode, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %9 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %9, i32 0, i32 31
  %10 = load i32, i32* %hide_docks, align 4
  %tobool6 = icmp ne i32 %10, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %11 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %show_docks, align 4
  %12 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  call void @gimp_image_window_keep_canvas_pos(%struct._GimpImageWindow* %12)
  %13 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %13, i32 0, i32 9
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %left_docks, align 8
  %15 = load i32, i32* %show_docks, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %14, i32 %15)
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 12
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %right_docks, align 8
  %18 = load i32, i32* %show_docks, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %17, i32 %18)
  %19 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  call void @gimp_image_window_update_tabs(%struct._GimpImageWindow* %19)
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name7, align 8
  %call8 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)) #9
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %land.end
  %22 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %single_window_mode10 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %22, i32 0, i32 32
  %23 = load i32, i32* %single_window_mode10, align 4
  %tobool11 = icmp ne i32 %23, 0
  br i1 %tobool11, label %if.end.28, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %24 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %hide_docks13 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %24, i32 0, i32 31
  %25 = load i32, i32* %hide_docks13, align 4
  %tobool14 = icmp ne i32 %25, 0
  br i1 %tobool14, label %if.end.28, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.12
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %call16 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %26)
  store %struct._GimpDisplayShell* %call16, %struct._GimpDisplayShell** %shell, align 8
  %27 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %gimp = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %27, i32 0, i32 0
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call17 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %28)
  store %struct._GimpContext* %call17, %struct._GimpContext** %user_context, align 8
  %29 = load %struct._GimpContext*, %struct._GimpContext** %user_context, align 8
  %call18 = call i8* @gimp_context_get_display(%struct._GimpContext* %29)
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 1
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %32 = bitcast %struct._GimpDisplay* %31 to i8*
  %cmp19 = icmp eq i8* %call18, %32
  br i1 %cmp19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %if.then.15
  %33 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %34 = bitcast %struct._GimpImageWindow* %33 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_widget_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call21)
  %35 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWidget*
  %call23 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %35)
  store %struct._GdkDrawable* %call23, %struct._GdkDrawable** %w, align 8
  %36 = load %struct._GdkDrawable*, %struct._GdkDrawable** %w, align 8
  %tobool24 = icmp ne %struct._GdkDrawable* %36, null
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then.20
  %37 = load %struct._GdkDrawable*, %struct._GdkDrawable** %w, align 8
  %call26 = call i32 @gtk_get_current_event_time()
  call void @gdk_window_focus(%struct._GdkDrawable* %37, i32 %call26)
  br label %if.end

if.end:                                           ; preds = %if.then.25, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then.15
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.lhs.true.12, %land.lhs.true, %land.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.lhs.false
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name30 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %38, i32 0, i32 1
  %39 = load i8*, i8** %name30, align 8
  %call31 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0)) #9
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.29
  %40 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %41 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %call34 = call i8* @gimp_image_window_config_to_entry_id(%struct._GimpGuiConfig* %41)
  call void @gimp_image_window_session_update(%struct._GimpImageWindow* %40, %struct._GimpDisplay* null, i8* %call34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_session_update(%struct._GimpImageWindow* %window, %struct._GimpDisplay* %new_display, i8* %new_entry_id) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %new_display.addr = alloca %struct._GimpDisplay*, align 8
  %new_entry_id.addr = alloca i8*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store %struct._GimpDisplay* %new_display, %struct._GimpDisplay** %new_display.addr, align 8
  store i8* %new_entry_id, i8** %new_entry_id.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load i8*, i8** %new_entry_id.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %entry_id = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %4, i32 0, i32 14
  %5 = load i8*, i8** %entry_id, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %6 = load i8*, i8** %new_entry_id.addr, align 8
  %call4 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0)) #9
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %7 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %8 = load i8*, i8** %new_entry_id.addr, align 8
  call void @gimp_image_window_session_apply(%struct._GimpImageWindow* %7, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  br label %if.end.33

if.else:                                          ; preds = %if.then
  %9 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %entry_id6 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %9, i32 0, i32 14
  %10 = load i8*, i8** %entry_id6, align 8
  %11 = load i8*, i8** %new_entry_id.addr, align 8
  %call7 = call i32 @strcmp(i8* %10, i8* %11) #9
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.32

if.then.9:                                        ; preds = %if.else
  %12 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  call void @gimp_image_window_session_clear(%struct._GimpImageWindow* %12)
  %13 = load i8*, i8** %new_entry_id.addr, align 8
  %call10 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0)) #9
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.26

if.then.12:                                       ; preds = %if.then.9
  %14 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %14, i32 0, i32 4
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %tobool13 = icmp ne %struct._GimpDisplayShell* %15, null
  br i1 %tobool13, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.then.12
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell14 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 4
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell14, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 1
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool15 = icmp ne %struct._GimpDisplay* %18, null
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.25

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %19 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell17 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %19, i32 0, i32 4
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell17, align 8
  %display18 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %20, i32 0, i32 1
  %21 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display18, align 8
  %call19 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %21)
  %tobool20 = icmp ne %struct._GimpImage* %call19, null
  br i1 %tobool20, label %if.end.25, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %land.lhs.true.16
  %22 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %22, i32 0, i32 3
  %23 = load %struct._GList*, %struct._GList** %shells, align 8
  %call22 = call i32 @g_list_length(%struct._GList* %23)
  %cmp23 = icmp ule i32 %call22, 1
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  %24 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %25 = load i8*, i8** %new_entry_id.addr, align 8
  call void @gimp_image_window_session_apply(%struct._GimpImageWindow* %24, i8* %25)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.21, %land.lhs.true.16, %land.lhs.true, %if.then.12
  br label %if.end.31

if.else.26:                                       ; preds = %if.then.9
  %26 = load i8*, i8** %new_entry_id.addr, align 8
  %call27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0)) #9
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.26
  %27 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %28 = load i8*, i8** %new_entry_id.addr, align 8
  call void @gimp_image_window_session_apply(%struct._GimpImageWindow* %27, i8* %28)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  %29 = load i8*, i8** %new_entry_id.addr, align 8
  %30 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %entry_id34 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %30, i32 0, i32 14
  store i8* %29, i8** %entry_id34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.33, %entry
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %new_display.addr, align 8
  %tobool36 = icmp ne %struct._GimpDisplay* %31, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.56

land.lhs.true.37:                                 ; preds = %if.end.35
  %32 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %entry_id38 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %32, i32 0, i32 14
  %33 = load i8*, i8** %entry_id38, align 8
  %call39 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0)) #9
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.56

if.then.41:                                       ; preds = %land.lhs.true.37
  %34 = load %struct._GimpDisplay*, %struct._GimpDisplay** %new_display.addr, align 8
  %call42 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %34)
  %tobool43 = icmp ne %struct._GimpImage* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.then.41
  %35 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  call void @gimp_image_window_session_clear(%struct._GimpImageWindow* %35)
  br label %if.end.55

if.else.45:                                       ; preds = %if.then.41
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %new_display.addr, align 8
  %call46 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %36)
  %tobool47 = icmp ne %struct._GimpImage* %call46, null
  br i1 %tobool47, label %if.end.54, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %if.else.45
  %37 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %shells49 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %37, i32 0, i32 3
  %38 = load %struct._GList*, %struct._GList** %shells49, align 8
  %call50 = call i32 @g_list_length(%struct._GList* %38)
  %cmp51 = icmp ule i32 %call50, 1
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %land.lhs.true.48
  %39 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %40 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %entry_id53 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %40, i32 0, i32 14
  %41 = load i8*, i8** %entry_id53, align 8
  call void @gimp_image_window_session_apply(%struct._GimpImageWindow* %39, i8* %41)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %land.lhs.true.48, %if.else.45
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.44
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %land.lhs.true.37, %if.end.35
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_image_window_config_to_entry_id(%struct._GimpGuiConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpGuiConfig*, align 8
  store %struct._GimpGuiConfig* %config, %struct._GimpGuiConfig** %config.addr, align 8
  %0 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %0, i32 0, i32 32
  %1 = load i32, i32* %single_window_mode, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i32 0, i32 0)
  ret i8* %cond
}

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare void @gimp_statusbar_push(%struct._GimpStatusbar*, i8*, i8*, i8*, ...) #1

declare void @gimp_statusbar_pop(%struct._GimpStatusbar*, i8*) #1

declare i32 @gimp_display_shell_events(%struct._GtkWidget*, %union._GdkEvent*, %struct._GimpDisplayShell*) #1

declare %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_disconnect_from_active_shell(%struct._GimpImageWindow* %window) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %active_display = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %active_display, align 8
  %3 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %3, i32 0, i32 4
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.16

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell2 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %5, i32 0, i32 4
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell2, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  store %struct._GimpDisplay* %7, %struct._GimpDisplay** %active_display, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  %tobool3 = icmp ne %struct._GimpDisplay* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  %10 = bitcast %struct._GimpDisplay* %9 to i8*
  %11 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %12 = bitcast %struct._GimpImageWindow* %11 to i8*
  %call5 = call i32 @g_signal_handlers_disconnect_matched(i8* %10, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplay*, %struct._GParamSpec*, %struct._GimpImageWindow*)* @gimp_image_window_image_notify to i8*), i8* %12)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %13 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell7 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell7, align 8
  %15 = bitcast %struct._GimpDisplayShell* %14 to i8*
  %16 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %17 = bitcast %struct._GimpImageWindow* %16 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %15, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpImageWindow*)* @gimp_image_window_shell_scaled to i8*), i8* %17)
  %18 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell9 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %18, i32 0, i32 4
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell9, align 8
  %20 = bitcast %struct._GimpDisplayShell* %19 to i8*
  %21 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %22 = bitcast %struct._GimpImageWindow* %21 to i8*
  %call10 = call i32 @g_signal_handlers_disconnect_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GParamSpec*, %struct._GimpImageWindow*)* @gimp_image_window_shell_title_notify to i8*), i8* %22)
  %23 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %active_shell11 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %23, i32 0, i32 4
  %24 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell11, align 8
  %25 = bitcast %struct._GimpDisplayShell* %24 to i8*
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %27 = bitcast %struct._GimpImageWindow* %26 to i8*
  %call12 = call i32 @g_signal_handlers_disconnect_matched(i8* %25, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GParamSpec*, %struct._GimpImageWindow*)* @gimp_image_window_shell_icon_notify to i8*), i8* %27)
  %28 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %28, i32 0, i32 1
  %29 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager, align 8
  %tobool13 = icmp ne %struct._GimpUIManager* %29, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.6
  %30 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager15 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %30, i32 0, i32 1
  %31 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager15, align 8
  %32 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  call void @gimp_image_window_hide_tooltip(%struct._GimpUIManager* %31, %struct._GimpImageWindow* %32)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then, %if.then.14, %if.end.6
  ret void
}

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare void @gimp_window_set_primary_focus_widget(%struct._GimpWindow*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_image_notify(%struct._GimpDisplay* %display, %struct._GParamSpec* %pspec, %struct._GimpImageWindow* %window) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %tab_label = alloca %struct._GtkWidget*, align 8
  %children = alloca %struct._GList*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_image_window_session_update(%struct._GimpImageWindow* %3, %struct._GimpDisplay* %4, i8* null)
  %5 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %notebook = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %5, i32 0, i32 11
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %notebook, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_notebook_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkNotebook*
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call4 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %9)
  %10 = bitcast %struct._GimpDisplayShell* %call4 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  %call7 = call %struct._GtkWidget* @gtk_notebook_get_tab_label(%struct._GtkNotebook* %8, %struct._GtkWidget* %11)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %tab_label, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_label, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_container_get_type() #8
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkContainer*
  %call10 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %14)
  store %struct._GList* %call10, %struct._GList** %children, align 8
  %15 = load %struct._GList*, %struct._GList** %children, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %18, %struct._GtkWidget** %view, align 8
  %19 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %19)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_view_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call13)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpView*
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call15 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %23)
  %24 = bitcast %struct._GimpImage* %call15 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_viewable_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpViewable*
  call void @gimp_view_set_viewable(%struct._GimpView* %22, %struct._GimpViewable* %25)
  %26 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %26, i32 0, i32 1
  %27 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager, align 8
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %29 = bitcast %struct._GimpDisplay* %28 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %27, i8* %29)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_shell_scaled(%struct._GimpDisplayShell* %shell, %struct._GimpImageWindow* %window) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %menubar_manager = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %3, i32 0, i32 1
  %4 = load %struct._GimpUIManager*, %struct._GimpUIManager** %menubar_manager, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 1
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %7 = bitcast %struct._GimpDisplay* %6 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %4, i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_shell_title_notify(%struct._GimpDisplayShell* %shell, %struct._GParamSpec* %pspec, %struct._GimpImageWindow* %window) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %title = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 59
  %4 = load i8*, i8** %title, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %2, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_shell_icon_notify(%struct._GimpDisplayShell* %shell, %struct._GParamSpec* %pspec, %struct._GimpImageWindow* %window) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_window_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWindow*
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %icon = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 63
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon, align 8
  call void @gtk_window_set_icon(%struct._GtkWindow* %2, %struct._GdkPixbuf* %4)
  ret void
}

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

declare void @gtk_window_set_icon(%struct._GtkWindow*, %struct._GdkPixbuf*) #1

declare void @gimp_display_shell_appearance_update(%struct._GimpDisplayShell*) #1

declare void @gimp_context_set_display(%struct._GimpContext*, i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_notebook_get_tab_label(%struct._GtkNotebook*, %struct._GtkWidget*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gimp_view_set_viewable(%struct._GimpView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare void @gdk_window_focus(%struct._GdkDrawable*, i32) #1

declare i32 @gtk_get_current_event_time() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_session_apply(%struct._GimpImageWindow* %window, i8* %entry_id) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %entry_id.addr = alloca i8*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %session_info = alloca %struct._GimpSessionInfo*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  store i8* %entry_id, i8** %entry_id.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  store %struct._GimpSessionInfo* null, %struct._GimpSessionInfo** %session_info, align 8
  store i32 -1, i32* %width, align 4
  store i32 -1, i32* %height, align 4
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %4 = bitcast %struct._GimpImageWindow* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  call void @gtk_window_unfullscreen(%struct._GtkWindow* %5)
  %6 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %6, i32 0, i32 2
  %7 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %8 = load i8*, i8** %entry_id.addr, align 8
  %call4 = call %struct._GimpSessionInfo* @gimp_dialog_factory_find_session_info(%struct._GimpDialogFactory* %7, i8* %8)
  store %struct._GimpSessionInfo* %call4, %struct._GimpSessionInfo** %session_info, align 8
  %9 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %tobool = icmp ne %struct._GimpSessionInfo* %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call5 = call i32 @gimp_session_info_get_width(%struct._GimpSessionInfo* %10)
  store i32 %call5, i32* %width, align 4
  %11 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %session_info, align 8
  %call6 = call i32 @gimp_session_info_get_height(%struct._GimpSessionInfo* %11)
  store i32 %call6, i32* %height, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %13 = bitcast %struct._GimpImageWindow* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %14, %struct._GdkRectangle* %allocation)
  %width9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %15 = load i32, i32* %width9, align 4
  store i32 %15, i32* %width, align 4
  %height10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %16 = load i32, i32* %height10, align 4
  store i32 %16, i32* %height, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory11 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %17, i32 0, i32 2
  %18 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory11, align 8
  %19 = load i8*, i8** %entry_id.addr, align 8
  %20 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %21 = bitcast %struct._GimpImageWindow* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  call void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory* %18, i8* %19, %struct._GtkWidget* %22)
  %23 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %24 = bitcast %struct._GimpImageWindow* %23 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call14)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  call void @gtk_window_unmaximize(%struct._GtkWindow* %25)
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %27 = bitcast %struct._GimpImageWindow* %26 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_window_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call16)
  %28 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWindow*
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %height, align 4
  call void @gtk_window_resize(%struct._GtkWindow* %28, i32 %29, i32 %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_session_clear(%struct._GimpImageWindow* %window) #3 {
entry:
  %window.addr = alloca %struct._GimpImageWindow*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GimpImageWindow* %window, %struct._GimpImageWindow** %window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %1 = bitcast %struct._GimpImageWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_window_get_type() #8
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %2, %struct._GimpImageWindowPrivate** %private, align 8
  %3 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window.addr, align 8
  %4 = bitcast %struct._GimpImageWindow* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %5, %struct._GtkWidget** %widget, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call4 = call %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget* %6, %struct._GimpDialogFactoryEntry** null)
  %tobool = icmp ne %struct._GimpDialogFactory* %call4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %7, i32 0, i32 2
  %8 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gimp_dialog_factory_remove_dialog(%struct._GimpDialogFactory* %8, %struct._GtkWidget* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GimpSessionInfo* @gimp_dialog_factory_find_session_info(%struct._GimpDialogFactory*, i8*) #1

declare i32 @gimp_session_info_get_width(%struct._GimpSessionInfo*) #1

declare i32 @gimp_session_info_get_height(%struct._GimpSessionInfo*) #1

declare void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory*, i8*, %struct._GtkWidget*) #1

declare void @gtk_window_unmaximize(%struct._GtkWindow*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_from_widget(%struct._GtkWidget*, %struct._GimpDialogFactoryEntry**) #1

declare void @gimp_dialog_factory_remove_dialog(%struct._GimpDialogFactory*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory*, i8*, i8*, i32) #1

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
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager*, i8*, i8*) #1

declare void @gimp_display_shell_close(%struct._GimpDisplayShell*, i32) #1

declare i8* @gtk_window_get_title(%struct._GtkWindow*) #1

declare void @gtk_widget_set_name(%struct._GtkWidget*, i8*) #1

declare i32 @gimp_displays_get_num_visible(%struct._Gimp*) #1

declare void @gimp_dialog_factory_hide_with_display(%struct._GimpDialogFactory*) #1

declare void @gimp_dialog_factory_show_with_display(%struct._GimpDialogFactory*) #1

declare i32 @gimp_progress_is_active(%struct._GimpProgress*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @gimp_statusbar_override_window_title(%struct._GimpStatusbar*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @gtk_window_set_geometry_hints(%struct._GtkWindow*, %struct._GtkWidget*, %struct._GdkGeometry*, i32) #1

declare void @gimp_dialog_factory_set_has_min_size(%struct._GtkWindow*, i32) #1

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_image_window_get_docks(%struct._GimpDockContainer* %dock_container) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %dock_container.addr = alloca %struct._GimpDockContainer*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %iter = alloca %struct._GList*, align 8
  %all_docks = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockContainer* %dock_container, %struct._GimpDockContainer** %dock_container.addr, align 8
  store %struct._GList* null, %struct._GList** %all_docks, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %1 = bitcast %struct._GimpDockContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_window_get_docks, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %14 = bitcast %struct._GimpDockContainer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %left_docks, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_dock_columns_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDockColumns*
  %call15 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %19)
  store %struct._GList* %call15, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %20 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool16 = icmp ne %struct._GList* %20, null
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._GList*, %struct._GList** %all_docks, align 8
  %22 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_dock_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDock*
  %26 = bitcast %struct._GimpDock* %25 to i8*
  %call19 = call %struct._GList* @g_list_append(%struct._GList* %21, i8* %26)
  store %struct._GList* %call19, %struct._GList** %all_docks, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool20 = icmp ne %struct._GList* %27, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %28 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %29, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %30, i32 0, i32 12
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %right_docks, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_dock_columns_get_type() #8
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call21)
  %33 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpDockColumns*
  %call23 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %33)
  store %struct._GList* %call23, %struct._GList** %iter, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %cond.end.36, %for.end
  %34 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool25 = icmp ne %struct._GList* %34, null
  br i1 %tobool25, label %for.body.26, label %for.end.38

for.body.26:                                      ; preds = %for.cond.24
  %35 = load %struct._GList*, %struct._GList** %all_docks, align 8
  %36 = load %struct._GList*, %struct._GList** %iter, align 8
  %data27 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 0
  %37 = load i8*, i8** %data27, align 8
  %38 = bitcast i8* %37 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_dock_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call28)
  %39 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDock*
  %40 = bitcast %struct._GimpDock* %39 to i8*
  %call30 = call %struct._GList* @g_list_append(%struct._GList* %35, i8* %40)
  store %struct._GList* %call30, %struct._GList** %all_docks, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.26
  %41 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool32 = icmp ne %struct._GList* %41, null
  br i1 %tobool32, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %for.inc.31
  %42 = load %struct._GList*, %struct._GList** %iter, align 8
  %next34 = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 1
  %43 = load %struct._GList*, %struct._GList** %next34, align 8
  br label %cond.end.36

cond.false.35:                                    ; preds = %for.inc.31
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.true.33
  %cond37 = phi %struct._GList* [ %43, %cond.true.33 ], [ null, %cond.false.35 ]
  store %struct._GList* %cond37, %struct._GList** %iter, align 8
  br label %for.cond.24

for.end.38:                                       ; preds = %for.cond.24
  %44 = load %struct._GList*, %struct._GList** %all_docks, align 8
  store %struct._GList* %44, %struct._GList** %retval
  br label %return

return:                                           ; preds = %for.end.38, %if.else.9
  %45 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %45
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpUIManager* @gimp_image_window_dock_container_get_ui_manager(%struct._GimpDockContainer* %dock_container) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %dock_container.addr = alloca %struct._GimpDockContainer*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockContainer* %dock_container, %struct._GimpDockContainer** %dock_container.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %1 = bitcast %struct._GimpDockContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__func__.gimp_image_window_dock_container_get_ui_manager, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %14 = bitcast %struct._GimpDockContainer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %15, %struct._GimpImageWindow** %window, align 8
  %16 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call13 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %16)
  store %struct._GimpUIManager* %call13, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %17
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_add_dock(%struct._GimpDockContainer* %dock_container, %struct._GimpDock* %dock, %struct._GimpSessionInfoDock* %dock_info) #3 {
entry:
  %dock_container.addr = alloca %struct._GimpDockContainer*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dock_info.addr = alloca %struct._GimpSessionInfoDock*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %active_shell = alloca %struct._GimpDisplayShell*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockContainer* %dock_container, %struct._GimpDockContainer** %dock_container.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpSessionInfoDock* %dock_info, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %1 = bitcast %struct._GimpDockContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_image_window_add_dock, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.26

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %14 = bitcast %struct._GimpDockContainer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %15, %struct._GimpImageWindow** %window, align 8
  %16 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %17 = bitcast %struct._GimpImageWindow* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_image_window_get_type() #8
  %call14 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast i8* %call14 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %18, %struct._GimpImageWindowPrivate** %private, align 8
  %19 = load %struct._GimpSessionInfoDock*, %struct._GimpSessionInfoDock** %dock_info.addr, align 8
  %side = getelementptr inbounds %struct._GimpSessionInfoDock, %struct._GimpSessionInfoDock* %19, i32 0, i32 1
  %20 = load i32, i32* %side, align 4
  %cmp15 = icmp eq i32 %20, 0
  br i1 %cmp15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %do.end
  %21 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %21, i32 0, i32 9
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %left_docks, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_dock_columns_get_type() #8
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDockColumns*
  %25 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dock_columns_add_dock(%struct._GimpDockColumns* %24, %struct._GimpDock* %25, i32 -1)
  br label %if.end.22

if.else.19:                                       ; preds = %do.end
  %26 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %26, i32 0, i32 12
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %right_docks, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_dock_columns_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call20)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpDockColumns*
  %30 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dock_columns_add_dock(%struct._GimpDockColumns* %29, %struct._GimpDock* %30, i32 -1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.16
  %31 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call23 = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %31)
  store %struct._GimpDisplayShell* %call23, %struct._GimpDisplayShell** %active_shell, align 8
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %tobool24 = icmp ne %struct._GimpDisplayShell* %32, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  call void @gimp_display_shell_appearance_update(%struct._GimpDisplayShell* %33)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.9, %if.then.25, %if.end.22
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_image_window_get_dock_side(%struct._GimpDockContainer* %dock_container, %struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca i32, align 4
  %dock_container.addr = alloca %struct._GimpDockContainer*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %side = alloca i32, align 4
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %iter = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dock_iter = alloca %struct._GimpDock*, align 8
  %dock_iter35 = alloca %struct._GimpDock*, align 8
  store %struct._GimpDockContainer* %dock_container, %struct._GimpDockContainer** %dock_container.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i32 -1, i32* %side, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %1 = bitcast %struct._GimpDockContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_image_window_get_dock_side, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %14 = bitcast %struct._GimpDockContainer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 9
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %left_docks, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_dock_columns_get_type() #8
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDockColumns*
  %call15 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %19)
  store %struct._GList* %call15, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %20 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool16 = icmp ne %struct._GList* %20, null
  br i1 %tobool16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %21 = load i32, i32* %side, align 4
  %cmp17 = icmp eq i32 %21, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %22 = phi i1 [ false, %for.cond ], [ %cmp17, %land.rhs ]
  br i1 %22, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %23 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 0
  %24 = load i8*, i8** %data, align 8
  %25 = bitcast i8* %24 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_dock_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpDock*
  store %struct._GimpDock* %26, %struct._GimpDock** %dock_iter, align 8
  %27 = load %struct._GimpDock*, %struct._GimpDock** %dock_iter, align 8
  %28 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %cmp21 = icmp eq %struct._GimpDock* %27, %28
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  store i32 0, i32* %side, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %29 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool24 = icmp ne %struct._GList* %29, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %30 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %31, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %32 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_docks = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %32, i32 0, i32 12
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %right_docks, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_dock_columns_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call25)
  %35 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpDockColumns*
  %call27 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %35)
  store %struct._GList* %call27, %struct._GList** %iter, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %cond.end.47, %for.end
  %36 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool29 = icmp ne %struct._GList* %36, null
  br i1 %tobool29, label %land.rhs.30, label %land.end.32

land.rhs.30:                                      ; preds = %for.cond.28
  %37 = load i32, i32* %side, align 4
  %cmp31 = icmp eq i32 %37, -1
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.30, %for.cond.28
  %38 = phi i1 [ false, %for.cond.28 ], [ %cmp31, %land.rhs.30 ]
  br i1 %38, label %for.body.33, label %for.end.49

for.body.33:                                      ; preds = %land.end.32
  %39 = load %struct._GList*, %struct._GList** %iter, align 8
  %data36 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 0
  %40 = load i8*, i8** %data36, align 8
  %41 = bitcast i8* %40 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_dock_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call37)
  %42 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDock*
  store %struct._GimpDock* %42, %struct._GimpDock** %dock_iter35, align 8
  %43 = load %struct._GimpDock*, %struct._GimpDock** %dock_iter35, align 8
  %44 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %cmp39 = icmp eq %struct._GimpDock* %43, %44
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body.33
  store i32 2, i32* %side, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %for.body.33
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %45 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool43 = icmp ne %struct._GList* %45, null
  br i1 %tobool43, label %cond.true.44, label %cond.false.46

cond.true.44:                                     ; preds = %for.inc.42
  %46 = load %struct._GList*, %struct._GList** %iter, align 8
  %next45 = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 1
  %47 = load %struct._GList*, %struct._GList** %next45, align 8
  br label %cond.end.47

cond.false.46:                                    ; preds = %for.inc.42
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.44
  %cond48 = phi %struct._GList* [ %47, %cond.true.44 ], [ null, %cond.false.46 ]
  store %struct._GList* %cond48, %struct._GList** %iter, align 8
  br label %for.cond.28

for.end.49:                                       ; preds = %land.end.32
  %48 = load i32, i32* %side, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %for.end.49, %if.else.9
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare void @gimp_dock_columns_add_dock(%struct._GimpDockColumns*, %struct._GimpDock*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_image_window_get_aux_info(%struct._GimpSessionManaged* %session_managed) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %session_managed.addr = alloca %struct._GimpSessionManaged*, align 8
  %aux_info = alloca %struct._GList*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %widthbuf = alloca [128 x i8], align 16
  store %struct._GimpSessionManaged* %session_managed, %struct._GimpSessionManaged** %session_managed.addr, align 8
  store %struct._GList* null, %struct._GList** %aux_info, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %1 = bitcast %struct._GimpSessionManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_window_get_aux_info, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %14 = bitcast %struct._GimpSessionManaged* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %16, i32 0, i32 2
  %17 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %call13 = call %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %17)
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %call13, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 1
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config14, align 8
  %20 = bitcast %struct._GimpCoreConfig* %19 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_gui_config_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call15)
  %21 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %21, %struct._GimpGuiConfig** %config, align 8
  %22 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %22, i32 0, i32 32
  %23 = load i32, i32* %single_window_mode, align 4
  %tobool17 = icmp ne i32 %23, 0
  br i1 %tobool17, label %if.then.18, label %if.end.44

if.then.18:                                       ; preds = %do.end
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %widthbuf, i32 0, i32 0
  %24 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_hpane = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %24, i32 0, i32 8
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %left_hpane, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_paned_get_type() #8
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkPaned*
  %call24 = call i32 @gtk_paned_get_position(%struct._GtkPaned* %27)
  %call25 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32 %call24)
  %arraydecay26 = getelementptr inbounds [128 x i8], [128 x i8]* %widthbuf, i32 0, i32 0
  %call27 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0), i8* %arraydecay26)
  store %struct._GimpSessionInfoAux* %call27, %struct._GimpSessionInfoAux** %aux, align 8
  %28 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %29 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %30 = bitcast %struct._GimpSessionInfoAux* %29 to i8*
  %call28 = call %struct._GList* @g_list_append(%struct._GList* %28, i8* %30)
  store %struct._GList* %call28, %struct._GList** %aux_info, align 8
  %31 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %31, i32 0, i32 10
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %right_hpane, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %32, %struct._GdkRectangle* %allocation)
  %arraydecay29 = getelementptr inbounds [128 x i8], [128 x i8]* %widthbuf, i32 0, i32 0
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %33 = load i32, i32* %width, align 4
  %34 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane30 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %34, i32 0, i32 10
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %right_hpane30, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_paned_get_type() #8
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call31)
  %37 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkPaned*
  %call33 = call i32 @gtk_paned_get_position(%struct._GtkPaned* %37)
  %sub = sub nsw i32 %33, %call33
  %call34 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay29, i64 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32 %sub)
  %arraydecay35 = getelementptr inbounds [128 x i8], [128 x i8]* %widthbuf, i32 0, i32 0
  %call36 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0), i8* %arraydecay35)
  store %struct._GimpSessionInfoAux* %call36, %struct._GimpSessionInfoAux** %aux, align 8
  %38 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %39 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %40 = bitcast %struct._GimpSessionInfoAux* %39 to i8*
  %call37 = call %struct._GList* @g_list_append(%struct._GList* %38, i8* %40)
  store %struct._GList* %call37, %struct._GList** %aux_info, align 8
  %41 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %42 = bitcast %struct._GimpSessionManaged* %41 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_image_window_get_type() #8
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call38)
  %43 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpImageWindow*
  %call40 = call i32 @gimp_image_window_is_maximized(%struct._GimpImageWindow* %43)
  %tobool41 = icmp ne i32 %call40, 0
  %cond = select i1 %tobool41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0)
  %call42 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8* %cond)
  store %struct._GimpSessionInfoAux* %call42, %struct._GimpSessionInfoAux** %aux, align 8
  %44 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %45 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %46 = bitcast %struct._GimpSessionInfoAux* %45 to i8*
  %call43 = call %struct._GList* @g_list_append(%struct._GList* %44, i8* %46)
  store %struct._GList* %call43, %struct._GList** %aux_info, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.18, %do.end
  %47 = load %struct._GList*, %struct._GList** %aux_info, align 8
  store %struct._GList* %47, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.else.9
  %48 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %48
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_set_aux_info(%struct._GimpSessionManaged* %session_managed, %struct._GList* %aux_info) #3 {
entry:
  %session_managed.addr = alloca %struct._GimpSessionManaged*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %private = alloca %struct._GimpImageWindowPrivate*, align 8
  %iter = alloca %struct._GList*, align 8
  %left_docks_width = alloca i32, align 4
  %right_docks_width = alloca i32, align 4
  %wait_with_right_docks = alloca i32, align 4
  %maximized = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %width = alloca i32*, align 8
  store %struct._GimpSessionManaged* %session_managed, %struct._GimpSessionManaged** %session_managed.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  store i32 -2147483648, i32* %left_docks_width, align 4
  store i32 -2147483648, i32* %right_docks_width, align 4
  store i32 0, i32* %wait_with_right_docks, align 4
  store i32 0, i32* %maximized, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %1 = bitcast %struct._GimpSessionManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_window_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_image_window_set_aux_info, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.90

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %14 = bitcast %struct._GimpSessionManaged* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_image_window_get_type() #8
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpImageWindowPrivate*
  store %struct._GimpImageWindowPrivate* %15, %struct._GimpImageWindowPrivate** %private, align 8
  %16 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  store %struct._GList* %16, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %17 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool13 = icmp ne %struct._GList* %17, null
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %20, %struct._GimpSessionInfoAux** %aux, align 8
  store i32* null, i32** %width, align 8
  %21 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %21, i32 0, i32 0
  %22 = load i8*, i8** %name, align 8
  %call16 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i32 0, i32 0)) #9
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %for.body
  store i32* %left_docks_width, i32** %width, align 8
  br label %if.end.41

if.else.19:                                       ; preds = %for.body
  %23 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name20 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %23, i32 0, i32 0
  %24 = load i8*, i8** %name20, align 8
  %call21 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0)) #9
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %if.else.19
  store i32* %right_docks_width, i32** %width, align 8
  br label %if.end.40

if.else.24:                                       ; preds = %if.else.19
  %25 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name25 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %25, i32 0, i32 0
  %26 = load i8*, i8** %name25, align 8
  %call26 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0)) #9
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %if.else.24
  store i32* %right_docks_width, i32** %width, align 8
  br label %if.end.39

if.else.29:                                       ; preds = %if.else.24
  %27 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name30 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %27, i32 0, i32 0
  %28 = load i8*, i8** %name30, align 8
  %call31 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0)) #9
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.38, label %if.then.33

if.then.33:                                       ; preds = %if.else.29
  %29 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %29, i32 0, i32 1
  %30 = load i8*, i8** %value, align 8
  %call34 = call i32 @g_ascii_strcasecmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0))
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  store i32 1, i32* %maximized, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.else.29
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.28
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.23
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.18
  %31 = load i32*, i32** %width, align 8
  %tobool42 = icmp ne i32* %31, null
  br i1 %tobool42, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.end.41
  %32 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value44 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %32, i32 0, i32 1
  %33 = load i8*, i8** %value44, align 8
  %34 = load i32*, i32** %width, align 8
  %call45 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i32* %34) #6
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.end.41
  %35 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name47 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %35, i32 0, i32 0
  %36 = load i8*, i8** %name47, align 8
  %call48 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0)) #9
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.end.46
  %37 = load i32*, i32** %width, align 8
  %38 = load i32, i32* %37, align 4
  %sub = sub nsw i32 0, %38
  %39 = load i32*, i32** %width, align 8
  store i32 %sub, i32* %39, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.46
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %40 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool52 = icmp ne %struct._GList* %40, null
  br i1 %tobool52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %41 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 1
  %42 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %42, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %left_docks_width, align 4
  %cmp53 = icmp ne i32 %43, -2147483648
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.63

land.lhs.true.54:                                 ; preds = %for.end
  %44 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_hpane = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %44, i32 0, i32 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %left_hpane, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_paned_get_type() #8
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call55)
  %47 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkPaned*
  %call57 = call i32 @gtk_paned_get_position(%struct._GtkPaned* %47)
  %48 = load i32, i32* %left_docks_width, align 4
  %cmp58 = icmp ne i32 %call57, %48
  br i1 %cmp58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %land.lhs.true.54
  %49 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %left_hpane60 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %49, i32 0, i32 8
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %left_hpane60, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_paned_get_type() #8
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call61)
  %52 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkPaned*
  %53 = load i32, i32* %left_docks_width, align 4
  call void @gtk_paned_set_position(%struct._GtkPaned* %52, i32 %53)
  store i32 1, i32* %wait_with_right_docks, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %land.lhs.true.54, %for.end
  %54 = load i32, i32* %right_docks_width, align 4
  %cmp64 = icmp ne i32 %54, -2147483648
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.82

land.lhs.true.65:                                 ; preds = %if.end.63
  %55 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %55, i32 0, i32 10
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %right_hpane, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call66 = call i64 @gtk_paned_get_type() #8
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call66)
  %58 = bitcast %struct._GTypeInstance* %call67 to %struct._GtkPaned*
  %call68 = call i32 @gtk_paned_get_position(%struct._GtkPaned* %58)
  %59 = load i32, i32* %right_docks_width, align 4
  %cmp69 = icmp ne i32 %call68, %59
  br i1 %cmp69, label %if.then.70, label %if.end.82

if.then.70:                                       ; preds = %land.lhs.true.65
  %60 = load i32, i32* %wait_with_right_docks, align 4
  %tobool71 = icmp ne i32 %60, 0
  br i1 %tobool71, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.70
  %61 = load i32, i32* %right_docks_width, align 4
  %cmp72 = icmp sgt i32 %61, 0
  br i1 %cmp72, label %if.then.73, label %if.else.76

if.then.73:                                       ; preds = %lor.lhs.false, %if.then.70
  %62 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane74 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %62, i32 0, i32 10
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %right_hpane74, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %65 = load i32, i32* %right_docks_width, align 4
  %conv = sext i32 %65 to i64
  %66 = inttoptr i64 %conv to i8*
  %call75 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct._GtkPaned*, %struct._GdkRectangle*, i8*)* @gimp_image_window_set_right_docks_width to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 1)
  br label %if.end.81

if.else.76:                                       ; preds = %lor.lhs.false
  %67 = load %struct._GimpImageWindowPrivate*, %struct._GimpImageWindowPrivate** %private, align 8
  %right_hpane77 = getelementptr inbounds %struct._GimpImageWindowPrivate, %struct._GimpImageWindowPrivate* %67, i32 0, i32 10
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %right_hpane77, align 8
  %69 = bitcast %struct._GtkWidget* %68 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_paned_get_type() #8
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %69, i64 %call78)
  %70 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkPaned*
  %71 = load i32, i32* %right_docks_width, align 4
  %sub80 = sub nsw i32 0, %71
  call void @gtk_paned_set_position(%struct._GtkPaned* %70, i32 %sub80)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.76, %if.then.73
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.65, %if.end.63
  %72 = load i32, i32* %maximized, align 4
  %tobool83 = icmp ne i32 %72, 0
  br i1 %tobool83, label %if.then.84, label %if.else.87

if.then.84:                                       ; preds = %if.end.82
  %73 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %74 = bitcast %struct._GimpSessionManaged* %73 to %struct._GTypeInstance*
  %call85 = call i64 @gtk_window_get_type() #8
  %call86 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call85)
  %75 = bitcast %struct._GTypeInstance* %call86 to %struct._GtkWindow*
  call void @gtk_window_maximize(%struct._GtkWindow* %75)
  br label %if.end.90

if.else.87:                                       ; preds = %if.end.82
  %76 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %77 = bitcast %struct._GimpSessionManaged* %76 to %struct._GTypeInstance*
  %call88 = call i64 @gtk_window_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call88)
  %78 = bitcast %struct._GTypeInstance* %call89 to %struct._GtkWindow*
  call void @gtk_window_unmaximize(%struct._GtkWindow* %78)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.9, %if.else.87, %if.then.84
  ret void
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare i32 @gtk_paned_get_position(%struct._GtkPaned*) #1

declare %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8*, i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #7

declare void @gtk_paned_set_position(%struct._GtkPaned*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_set_right_docks_width(%struct._GtkPaned* %paned, %struct._GdkRectangle* %allocation, i8* %data) #3 {
entry:
  %paned.addr = alloca %struct._GtkPaned*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %data.addr = alloca i8*, align 8
  %width = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkPaned* %paned, %struct._GtkPaned** %paned.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %width, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GtkPaned*, %struct._GtkPaned** %paned.addr, align 8
  %3 = bitcast %struct._GtkPaned* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_paned_get_type() #8
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #9
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
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_image_window_set_right_docks_width, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %15 = load i32, i32* %width, align 4
  %cmp12 = icmp sgt i32 %15, 0
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %do.end
  %16 = load %struct._GtkPaned*, %struct._GtkPaned** %paned.addr, align 8
  %17 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %17, i32 0, i32 2
  %18 = load i32, i32* %width15, align 4
  %19 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %18, %19
  call void @gtk_paned_set_position(%struct._GtkPaned* %16, i32 %sub)
  br label %if.end.18

if.else.16:                                       ; preds = %do.end
  %20 = load %struct._GtkPaned*, %struct._GtkPaned** %paned.addr, align 8
  %21 = load i32, i32* %width, align 4
  %sub17 = sub nsw i32 0, %21
  call void @gtk_paned_set_position(%struct._GtkPaned* %20, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  %22 = load %struct._GtkPaned*, %struct._GtkPaned** %paned.addr, align 8
  %23 = bitcast %struct._GtkPaned* %22 to i8*
  %24 = load i8*, i8** %data.addr, align 8
  %call19 = call i32 @g_signal_handlers_disconnect_matched(i8* %23, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkPaned*, %struct._GdkRectangle*, i8*)* @gimp_image_window_set_right_docks_width to i8*), i8* %24)
  br label %return

return:                                           ; preds = %if.end.18, %if.else.10
  ret void
}

declare void @gtk_window_maximize(%struct._GtkWindow*) #1

declare %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock*) #1

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_scroll_set_offset(%struct._GimpDisplayShell*, i32, i32) #1

declare %struct._GtkWidget* @gimp_view_new_by_types(%struct._GimpContext*, i64, i64, i32, i32, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_window_shell_close_button_callback(%struct._GimpDisplayShell* %shell) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_close(%struct._GimpDisplayShell* %1, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
