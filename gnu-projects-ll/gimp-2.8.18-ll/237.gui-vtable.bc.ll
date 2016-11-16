; ModuleID = './app/gui/gui-vtable.bc'
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
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpGradient = type { %struct._GimpData, %struct._GimpGradientSegment* }
%struct._GimpGradientSegment = type { double, double, double, i32, %struct._GimpRGB, i32, %struct._GimpRGB, i32, i32, %struct._GimpGradientSegment*, %struct._GimpGradientSegment* }
%struct._GimpPalette = type { %struct._GimpData, %struct._GList*, i32, i32 }
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GdkDisplay = type { %struct._GObject, %struct._GList*, %struct._GList*, [2 x i32], [2 x %struct._GdkDrawable*], [2 x i32], i32, %struct._GdkDevice*, %struct._GdkDisplayPointerHooks*, i8, i32, [2 x i32], [2 x i32], %struct._GList*, %struct.GdkKeyboardGrabInfo, %struct.GdkPointerWindowInfo, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct._GdkDisplayPointerHooks = type { void (%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, %struct._GdkDrawable*, i32*, i32*, i32*)*, %struct._GdkDrawable* (%struct._GdkDisplay*, i32*, i32*)* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._cairo_font_options = type opaque
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
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
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GParameter = type { i8*, %struct._GValue }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpPdbDialog = type { %struct._GimpDialog, %struct._GimpPDB*, %struct._GimpContext*, %struct._GimpContext*, i64, %struct._GimpObject*, i8*, i32, %struct._GimpMenuFactory*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDocked = type opaque
%struct._GimpPdbDialogClass = type { %struct._GimpDialogClass, %struct._GList*, %struct._GValueArray* (%struct._GimpPdbDialog*, %struct._GimpObject*, i32, %struct._GError**)* }
%struct._GimpDialogClass = type { %struct._GtkDialogClass, void ()*, void ()*, void ()*, void ()* }
%struct._GtkDialogClass = type { %struct._GtkWindowClass, void (%struct._GtkDialog*, i32)*, void (%struct._GtkDialog*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWindowClass = type { %struct._GtkBinClass, void (%struct._GtkWindow*, %struct._GtkWidget*)*, i32 (%struct._GtkWindow*, %union._GdkEvent*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*, i32)*, void (%struct._GtkWindow*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GtkArg = type opaque
%union._GdkEvent = type { %struct._GdkEventCrossing }
%struct._GdkEventCrossing = type { i32, %struct._GdkDrawable*, i8, %struct._GdkDrawable*, i32, double, double, double, double, i32, i32, i32, i32 }
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
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
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GtkRecentData = type { i8*, i8*, i8*, i8*, i8*, i8**, i32 }
%struct._GtkRecentManager = type { %struct._GObject, %struct._GtkRecentManagerPrivate* }
%struct._GtkRecentManagerPrivate = type opaque
%struct._GtkRecentInfo = type opaque

@.str = private unnamed_addr constant [9 x i8] c"Gimp-GUI\00", align 1
@__func__.gui_vtable_init = private unnamed_addr constant [16 x i8] c"gui_vtable_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@gdk_threads_lock = external global void ()*, align 8
@gdk_threads_unlock = external global void ()*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"<Image>\00", align 1
@__func__.gui_display_create = private unnamed_addr constant [19 x i8] c"gui_display_create\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"image_managers != NULL\00", align 1
@global_menu_factory = external global %struct._GimpMenuFactory*, align 8
@__func__.gui_new_progress = private unnamed_addr constant [17 x i8] c"gui_new_progress\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"display == NULL || GIMP_IS_DISPLAY (display)\00", align 1
@__func__.gui_free_progress = private unnamed_addr constant [18 x i8] c"gui_free_progress\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"GIMP_IS_PROGRESS_DIALOG (progress)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"gimp-brush-selection\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gimp-brush-dialog\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"gimp-font-selection\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"gimp-font-dialog\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"gimp-gradient-selection\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"gimp-gradient-dialog\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"gimp-palette-selection\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"gimp-palette-dialog\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"gimp-pattern-selection\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"gimp-pattern-dialog\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"help-func\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"help-id\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"pdb\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"select-type\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"initial-object\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"callback-name\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"menu-factory\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Graphics\00", align 1
@gui_recent_list_add_uri.groups = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* null], align 16
@__func__.gui_recent_list_add_uri = private unnamed_addr constant [24 x i8] c"gui_recent_list_add_uri\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"GNU Image Manipulation Program\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"gimp-2.8 %u\00", align 1
@__func__.gui_recent_list_load = private unnamed_addr constant [21 x i8] c"gui_recent_list_load\00", align 1

; Function Attrs: nounwind uwtable
define void @gui_vtable_init(%struct._Gimp* %gimp) #0 {
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gui_vtable_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 14
  %ungrab = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui, i32 0, i32 0
  %ungrab11 = bitcast {}** %ungrab to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* @gui_ungrab, void (%struct._Gimp*)** %ungrab11, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui12 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 14
  %threads_enter = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui12, i32 0, i32 1
  %threads_enter13 = bitcast {}** %threads_enter to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* @gui_threads_enter, void (%struct._Gimp*)** %threads_enter13, align 8
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui14 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 14
  %threads_leave = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui14, i32 0, i32 2
  %threads_leave15 = bitcast {}** %threads_leave to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* @gui_threads_leave, void (%struct._Gimp*)** %threads_leave15, align 8
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui16 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 14
  %set_busy = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui16, i32 0, i32 3
  %set_busy17 = bitcast {}** %set_busy to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* @gui_set_busy, void (%struct._Gimp*)** %set_busy17, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui18 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 14
  %unset_busy = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui18, i32 0, i32 4
  %unset_busy19 = bitcast {}** %unset_busy to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* @gui_unset_busy, void (%struct._Gimp*)** %unset_busy19, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui20 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 14
  %show_message = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui20, i32 0, i32 5
  store void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)* @gui_message, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)** %show_message, align 8
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui21 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 14
  %help = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui21, i32 0, i32 6
  store void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)* @gui_help, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)** %help, align 8
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui22 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 14
  %get_program_class = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui22, i32 0, i32 7
  store i8* (%struct._Gimp*)* @gui_get_program_class, i8* (%struct._Gimp*)** %get_program_class, align 8
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui23 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %21, i32 0, i32 14
  %get_display_name = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui23, i32 0, i32 8
  store i8* (%struct._Gimp*, i32, i32*)* @gui_get_display_name, i8* (%struct._Gimp*, i32, i32*)** %get_display_name, align 8
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui24 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %22, i32 0, i32 14
  %get_user_time = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui24, i32 0, i32 9
  store i32 (%struct._Gimp*)* @gui_get_user_time, i32 (%struct._Gimp*)** %get_user_time, align 8
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui25 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 14
  %get_theme_dir = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui25, i32 0, i32 10
  store i8* (%struct._Gimp*)* @gui_get_theme_dir, i8* (%struct._Gimp*)** %get_theme_dir, align 8
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui26 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %24, i32 0, i32 14
  %get_window_strategy = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui26, i32 0, i32 11
  store %struct._GimpObject* (%struct._Gimp*)* @gui_get_window_strategy, %struct._GimpObject* (%struct._Gimp*)** %get_window_strategy, align 8
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui27 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 14
  %get_empty_display = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui27, i32 0, i32 12
  store %struct._GimpObject* (%struct._Gimp*)* @gui_get_empty_display, %struct._GimpObject* (%struct._Gimp*)** %get_empty_display, align 8
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui28 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %26, i32 0, i32 14
  %display_get_by_id = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui28, i32 0, i32 13
  store %struct._GimpObject* (%struct._Gimp*, i32)* @gui_display_get_by_ID, %struct._GimpObject* (%struct._Gimp*, i32)** %display_get_by_id, align 8
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui29 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 14
  %display_get_id = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui29, i32 0, i32 14
  store i32 (%struct._GimpObject*)* @gui_display_get_ID, i32 (%struct._GimpObject*)** %display_get_id, align 8
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui30 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 14
  %display_get_window_id = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui30, i32 0, i32 15
  store i32 (%struct._GimpObject*)* @gui_display_get_window_id, i32 (%struct._GimpObject*)** %display_get_window_id, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui31 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 14
  %display_create = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui31, i32 0, i32 16
  store %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)* @gui_display_create, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)** %display_create, align 8
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui32 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 14
  %display_delete = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui32, i32 0, i32 17
  store void (%struct._GimpObject*)* @gui_display_delete, void (%struct._GimpObject*)** %display_delete, align 8
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui33 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %31, i32 0, i32 14
  %displays_reconnect = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui33, i32 0, i32 18
  store void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)* @gui_displays_reconnect, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)** %displays_reconnect, align 8
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui34 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %32, i32 0, i32 14
  %progress_new = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui34, i32 0, i32 19
  store %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)* @gui_new_progress, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)** %progress_new, align 8
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui35 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %33, i32 0, i32 14
  %progress_free = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui35, i32 0, i32 20
  store void (%struct._Gimp*, %struct._GimpProgress*)* @gui_free_progress, void (%struct._Gimp*, %struct._GimpProgress*)** %progress_free, align 8
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui36 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %34, i32 0, i32 14
  %pdb_dialog_new = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui36, i32 0, i32 21
  store i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)* @gui_pdb_dialog_new, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)** %pdb_dialog_new, align 8
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui37 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %35, i32 0, i32 14
  %pdb_dialog_set = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui37, i32 0, i32 22
  store i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)* @gui_pdb_dialog_set, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)** %pdb_dialog_set, align 8
  %36 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui38 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %36, i32 0, i32 14
  %pdb_dialog_close = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui38, i32 0, i32 23
  store i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)* @gui_pdb_dialog_close, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)** %pdb_dialog_close, align 8
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui39 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 14
  %recent_list_add_uri = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui39, i32 0, i32 24
  store i32 (%struct._Gimp*, i8*, i8*)* @gui_recent_list_add_uri, i32 (%struct._Gimp*, i8*, i8*)** %recent_list_add_uri, align 8
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %gui40 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %38, i32 0, i32 14
  %recent_list_load = getelementptr inbounds %struct._GimpGui, %struct._GimpGui* %gui40, i32 0, i32 25
  %recent_list_load41 = bitcast {}** %recent_list_load to void (%struct._Gimp*)**
  store void (%struct._Gimp*)* @gui_recent_list_load, void (%struct._Gimp*)** %recent_list_load41, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gui_ungrab(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display = alloca %struct._GdkDisplay*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  store %struct._GdkDisplay* %call, %struct._GdkDisplay** %display, align 8
  %0 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  %tobool = icmp ne %struct._GdkDisplay* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  call void @gdk_display_pointer_ungrab(%struct._GdkDisplay* %1, i32 0)
  %2 = load %struct._GdkDisplay*, %struct._GdkDisplay** %display, align 8
  call void @gdk_display_keyboard_ungrab(%struct._GdkDisplay* %2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_threads_enter(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void ()*, void ()** @gdk_threads_lock, align 8
  %tobool = icmp ne void ()* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load void ()*, void ()** @gdk_threads_lock, align 8
  call void %1()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_threads_leave(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load void ()*, void ()** @gdk_threads_unlock, align 8
  %tobool = icmp ne void ()* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load void ()*, void ()** @gdk_threads_unlock, align 8
  call void %1()
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_set_busy(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_displays_set_busy(%struct._Gimp* %0)
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  call void @gimp_dialog_factory_set_busy(%struct._GimpDialogFactory* %call)
  call void @gdk_flush()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_unset_busy(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  call void @gimp_displays_unset_busy(%struct._Gimp* %0)
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  call void @gimp_dialog_factory_unset_busy(%struct._GimpDialogFactory* %call)
  call void @gdk_flush()
  ret void
}

declare void @gui_message(%struct._Gimp*, %struct._GObject*, i32, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gui_help(%struct._Gimp* %gimp, %struct._GimpProgress* %progress, i8* %help_domain, i8* %help_id) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %help_domain.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %help_domain, i8** %help_domain.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = load i8*, i8** %help_domain.addr, align 8
  %3 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_show(%struct._Gimp* %0, %struct._GimpProgress* %1, i8* %2, i8* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gui_get_program_class(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %call = call i8* @gdk_get_program_class()
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @gui_get_display_name(%struct._Gimp* %gimp, i32 %display_ID, i32* %monitor_number) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display_ID.addr = alloca i32, align 4
  %monitor_number.addr = alloca i32*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %screen = alloca %struct._GdkScreen*, align 8
  %monitor = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %display_ID, i32* %display_ID.addr, align 4
  store i32* %monitor_number, i32** %monitor_number.addr, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  %0 = load i32, i32* %display_ID.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %2 = load i32, i32* %display_ID.addr, align 4
  %call = call %struct._GimpDisplay* @gimp_display_get_by_ID(%struct._Gimp* %1, i32 %2)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %3, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %4)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %6 = bitcast %struct._GimpDisplayShell* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %call5 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %7)
  store %struct._GdkDrawable* %call5, %struct._GdkDrawable** %window, align 8
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %9 = bitcast %struct._GimpDisplayShell* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  %call8 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %10)
  store %struct._GdkScreen* %call8, %struct._GdkScreen** %screen, align 8
  %11 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %12 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call9 = call i32 @gdk_screen_get_monitor_at_window(%struct._GdkScreen* %11, %struct._GdkDrawable* %12)
  store i32 %call9, i32* %monitor, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %call10 = call %struct._GdkDisplay* @gdk_display_get_default()
  call void @gdk_display_get_pointer(%struct._GdkDisplay* %call10, %struct._GdkScreen** %screen, i32* %x, i32* %y, i32* null)
  %13 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %y, align 4
  %call11 = call i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen* %13, i32 %14, i32 %15)
  store i32 %call11, i32* %monitor, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.1
  %16 = load i32, i32* %monitor, align 4
  %17 = load i32*, i32** %monitor_number.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %tobool13 = icmp ne %struct._GdkScreen* %18, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %19 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call15 = call i8* @gdk_screen_make_display_name(%struct._GdkScreen* %19)
  store i8* %call15, i8** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14
  %20 = load i8*, i8** %retval
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_get_user_time(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GdkDisplay* @gdk_display_get_default()
  %call1 = call i32 @gdk_x11_display_get_user_time(%struct._GdkDisplay* %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i8* @gui_get_theme_dir(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %1, i32 0, i32 1
  %2 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %3 = bitcast %struct._GimpCoreConfig* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  %theme = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %4, i32 0, i32 20
  %5 = load i8*, i8** %theme, align 8
  %call2 = call i8* @themes_get_theme_dir(%struct._Gimp* %0, i8* %5)
  ret i8* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gui_get_window_strategy(%struct._Gimp* %gimp) #0 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 1
  %1 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %2 = bitcast %struct._GimpCoreConfig* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %3, i32 0, i32 32
  %4 = load i32, i32* %single_window_mode, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call %struct._GimpObject* @gimp_single_window_strategy_get_singleton()
  store %struct._GimpObject* %call2, %struct._GimpObject** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call %struct._GimpObject* @gimp_multi_window_strategy_get_singleton()
  store %struct._GimpObject* %call3, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gui_get_empty_display(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display = alloca %struct._GimpObject*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpObject* null, %struct._GimpObject** %display, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 31
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %call = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %1)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %displays1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 31
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %displays1, align 8
  %call2 = call %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer* %3)
  store %struct._GimpObject* %call2, %struct._GimpObject** %display, align 8
  %4 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %5 = bitcast %struct._GimpObject* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_display_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDisplay*
  %call5 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %6)
  %tobool = icmp ne %struct._GimpImage* %call5, null
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  store %struct._GimpObject* null, %struct._GimpObject** %display, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %7 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  ret %struct._GimpObject* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gui_display_get_by_ID(%struct._Gimp* %gimp, i32 %ID) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %ID.addr = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %ID, i32* %ID.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load i32, i32* %ID.addr, align 4
  %call = call %struct._GimpDisplay* @gimp_display_get_by_ID(%struct._Gimp* %0, i32 %1)
  %2 = bitcast %struct._GimpDisplay* %call to %struct._GimpObject*
  ret %struct._GimpObject* %2
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_display_get_ID(%struct._GimpObject* %display) #0 {
entry:
  %display.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  %call2 = call i32 @gimp_display_get_ID(%struct._GimpDisplay* %2)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_display_get_window_id(%struct._GimpObject* %display) #0 {
entry:
  %retval = alloca i32, align 4
  %display.addr = alloca %struct._GimpObject*, align 8
  %disp = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %disp, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %disp, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool = icmp ne %struct._GimpDisplayShell* %4, null
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %6 = bitcast %struct._GimpDisplayShell* %5 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call3)
  %7 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  %call5 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %7)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %toplevel, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call6 = call i64 @gtk_window_get_type() #5
  store i64 %call6, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool7 = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool7, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #6
  store i32 %call13, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.8
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %20, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.14
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_window_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call17)
  %23 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWindow*
  %call19 = call i32 @gimp_window_get_native_id(%struct._GtkWindow* %23)
  store i32 %call19, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.16
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gui_display_create(%struct._Gimp* %gimp, %struct._GimpImage* %image, i32 %unit, double %scale) #0 {
entry:
  %retval = alloca %struct._GimpObject*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %unit.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %context = alloca %struct._GimpContext*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image_managers = alloca %struct._GList*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double %scale, double* %scale.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %0)
  store %struct._GimpContext* %call, %struct._GimpContext** %context, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call1 = call %struct._GimpObject* @gui_get_empty_display(%struct._Gimp* %1)
  %2 = bitcast %struct._GimpObject* %call1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %3, %struct._GimpDisplay** %display, align 8
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %7 = load i32, i32* %unit.addr, align 4
  %8 = load double, double* %scale.addr, align 8
  call void @gimp_display_fill(%struct._GimpDisplay* %5, %struct._GimpImage* %6, i32 %7, double %8)
  br label %if.end.9

if.else:                                          ; preds = %entry
  %call4 = call %struct._GList* @gimp_ui_managers_from_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* %call4, %struct._GList** %image_managers, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  %9 = load %struct._GList*, %struct._GList** %image_managers, align 8
  %cmp = icmp ne %struct._GList* %9, null
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body
  br label %if.end

if.else.6:                                        ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gui_display_create, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpObject* null, %struct._GimpObject** %retval
  br label %return

if.end:                                           ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %12 = load i32, i32* %unit.addr, align 4
  %13 = load double, double* %scale.addr, align 8
  %14 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %15 = load %struct._GList*, %struct._GList** %image_managers, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GimpUIManager*
  %call7 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call8 = call %struct._GimpDisplay* @gimp_display_new(%struct._Gimp* %10, %struct._GimpImage* %11, i32 %12, double %13, %struct._GimpMenuFactory* %14, %struct._GimpUIManager* %17, %struct._GimpDialogFactory* %call7)
  store %struct._GimpDisplay* %call8, %struct._GimpDisplay** %display, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %if.then
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call10 = call i8* @gimp_context_get_display(%struct._GimpContext* %18)
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %20 = bitcast %struct._GimpDisplay* %19 to i8*
  %cmp11 = icmp eq i8* %call10, %20
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.9
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_context_set_image(%struct._GimpContext* %21, %struct._GimpImage* %22)
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_display_changed(%struct._GimpContext* %23)
  br label %if.end.14

if.else.13:                                       ; preds = %if.end.9
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %26 = bitcast %struct._GimpDisplay* %25 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %24, i8* %26)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %28 = bitcast %struct._GimpDisplay* %27 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_object_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call15)
  %29 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpObject*
  store %struct._GimpObject* %29, %struct._GimpObject** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.else.6
  %30 = load %struct._GimpObject*, %struct._GimpObject** %retval
  ret %struct._GimpObject* %30
}

; Function Attrs: nounwind uwtable
define internal void @gui_display_delete(%struct._GimpObject* %display) #0 {
entry:
  %display.addr = alloca %struct._GimpObject*, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  call void @gimp_display_close(%struct._GimpDisplay* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gui_displays_reconnect(%struct._Gimp* %gimp, %struct._GimpImage* %old_image, %struct._GimpImage* %new_image) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %old_image.addr = alloca %struct._GimpImage*, align 8
  %new_image.addr = alloca %struct._GimpImage*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %old_image, %struct._GimpImage** %old_image.addr, align 8
  store %struct._GimpImage* %new_image, %struct._GimpImage** %new_image.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %old_image.addr, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %new_image.addr, align 8
  call void @gimp_displays_reconnect(%struct._Gimp* %0, %struct._GimpImage* %1, %struct._GimpImage* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gui_new_progress(%struct._Gimp* %gimp, %struct._GimpObject* %display) #0 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %cmp = icmp eq %struct._GimpObject* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %2 = bitcast %struct._GimpObject* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #5
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
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gui_new_progress, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %14 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %tobool12 = icmp ne %struct._GimpObject* %14, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %15 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %16 = bitcast %struct._GimpObject* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_progress_interface_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpProgress*
  store %struct._GimpProgress* %17, %struct._GimpProgress** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  %call17 = call %struct._GtkWidget* @gimp_progress_dialog_new()
  %18 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_progress_interface_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpProgress*
  store %struct._GimpProgress* %19, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.13, %if.else.10
  %20 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %20
}

; Function Attrs: nounwind uwtable
define internal void @gui_free_progress(%struct._Gimp* %gimp, %struct._GimpProgress* %progress) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst12 = alloca %struct._GTypeInstance*, align 8
  %__t14 = alloca i64, align 8
  %__r17 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_progress_dialog_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gui_free_progress, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.37

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %14 = bitcast %struct._GimpProgress* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst12, align 8
  %call15 = call i64 @gimp_progress_dialog_get_type() #5
  store i64 %call15, i64* %__t14, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %tobool18 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool18, label %if.else.20, label %if.then.19

if.then.19:                                       ; preds = %do.end
  store i32 0, i32* %__r17, align 4
  br label %if.end.31

if.else.20:                                       ; preds = %do.end
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %tobool22 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.else.28

land.lhs.true.23:                                 ; preds = %if.else.20
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %g_type25 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type25, align 8
  %21 = load i64, i64* %__t14, align 8
  %cmp26 = icmp eq i64 %20, %21
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.23
  store i32 1, i32* %__r17, align 4
  br label %if.end.30

if.else.28:                                       ; preds = %land.lhs.true.23, %if.else.20
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst12, align 8
  %23 = load i64, i64* %__t14, align 8
  %call29 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
  store i32 %call29, i32* %__r17, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.19
  %24 = load i32, i32* %__r17, align 4
  store i32 %24, i32* %tmp32
  %25 = load i32, i32* %tmp32
  %tobool33 = icmp ne i32 %25, 0
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.31
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %27 = bitcast %struct._GimpProgress* %26 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_widget_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call35)
  %28 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %28)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.9, %if.then.34, %if.end.31
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_pdb_dialog_new(%struct._Gimp* %gimp, %struct._GimpContext* %context, %struct._GimpProgress* %progress, %struct._GimpContainer* %container, i8* %title, i8* %callback_name, i8* %object_name, %struct.__va_list_tag* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %title.addr = alloca i8*, align 8
  %callback_name.addr = alloca i8*, align 8
  %object_name.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %dialog_type = alloca i64, align 8
  %dialog_role = alloca i8*, align 8
  %help_id = alloca i8*, align 8
  %object = alloca %struct._GimpObject*, align 8
  %params = alloca %struct._GParameter*, align 8
  %n_params = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %window_id = alloca i32, align 4
  %source = alloca %struct._GSource*, align 8
  %closure = alloca %struct._GClosure*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %callback_name, i8** %callback_name.addr, align 8
  store i8* %object_name, i8** %object_name.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  store i64 4, i64* %dialog_type, align 8
  store i8* null, i8** %dialog_role, align 8
  store i8* null, i8** %help_id, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %0)
  %call1 = call i64 @gimp_brush_get_type() #5
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i64 @gimp_brush_select_get_type() #5
  store i64 %call2, i64* %dialog_type, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8** %dialog_role, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8** %help_id, align 8
  br label %if.end.29

if.else:                                          ; preds = %entry
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call3 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %1)
  %call4 = call i64 @gimp_font_get_type() #5
  %cmp5 = icmp eq i64 %call3, %call4
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %call7 = call i64 @gimp_font_select_get_type() #5
  store i64 %call7, i64* %dialog_type, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8** %dialog_role, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8** %help_id, align 8
  br label %if.end.28

if.else.8:                                        ; preds = %if.else
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call9 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %2)
  %call10 = call i64 @gimp_gradient_get_type() #5
  %cmp11 = icmp eq i64 %call9, %call10
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.8
  %call13 = call i64 @gimp_gradient_select_get_type() #5
  store i64 %call13, i64* %dialog_type, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8** %dialog_role, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8** %help_id, align 8
  br label %if.end.27

if.else.14:                                       ; preds = %if.else.8
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call15 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %3)
  %call16 = call i64 @gimp_palette_get_type() #5
  %cmp17 = icmp eq i64 %call15, %call16
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.14
  %call19 = call i64 @gimp_palette_select_get_type() #5
  store i64 %call19, i64* %dialog_type, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8** %dialog_role, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8** %help_id, align 8
  br label %if.end.26

if.else.20:                                       ; preds = %if.else.14
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call21 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %4)
  %call22 = call i64 @gimp_pattern_get_type() #5
  %cmp23 = icmp eq i64 %call21, %call22
  br i1 %cmp23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.else.20
  %call25 = call i64 @gimp_pattern_select_get_type() #5
  store i64 %call25, i64* %dialog_type, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i8** %dialog_role, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8** %help_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.else.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.6
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then
  %5 = load i64, i64* %dialog_type, align 8
  %cmp30 = icmp ne i64 %5, 4
  br i1 %cmp30, label %if.then.31, label %if.end.70

if.then.31:                                       ; preds = %if.end.29
  store %struct._GimpObject* null, %struct._GimpObject** %object, align 8
  %6 = load i8*, i8** %object_name.addr, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.then.31
  %7 = load i8*, i8** %object_name.addr, align 8
  %call32 = call i64 @strlen(i8* %7) #6
  %tobool33 = icmp ne i64 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %land.lhs.true
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %9 = load i8*, i8** %object_name.addr, align 8
  %call35 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %8, i8* %9)
  store %struct._GimpObject* %call35, %struct._GimpObject** %object, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %land.lhs.true, %if.then.31
  %10 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool37 = icmp ne %struct._GimpObject* %10, null
  br i1 %tobool37, label %if.end.41, label %if.then.38

if.then.38:                                       ; preds = %if.end.36
  %11 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call39 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %12)
  %call40 = call %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext* %11, i64 %call39)
  store %struct._GimpObject* %call40, %struct._GimpObject** %object, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.36
  %13 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool42 = icmp ne %struct._GimpObject* %13, null
  br i1 %tobool42, label %if.then.43, label %if.end.69

if.then.43:                                       ; preds = %if.end.41
  store %struct._GParameter* null, %struct._GParameter** %params, align 8
  store i32 0, i32* %n_params, align 4
  %14 = load i64, i64* %dialog_type, align 8
  %15 = load %struct._GParameter*, %struct._GParameter** %params, align 8
  %16 = load i8*, i8** %title.addr, align 8
  %17 = load i8*, i8** %dialog_role, align 8
  %18 = load i8*, i8** %help_id, align 8
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %pdb = getelementptr inbounds %struct._Gimp, %struct._Gimp* %19, i32 0, i32 44
  %20 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb, align 8
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call44 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %22)
  %23 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %24 = load i8*, i8** %callback_name.addr, align 8
  %25 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %call45 = call %struct._GParameter* (i64, %struct._GParameter*, i32*, ...) @gimp_parameters_append(i64 %14, %struct._GParameter* %15, i32* %n_params, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct._GimpPDB* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._GimpContext* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i64 %call44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), %struct._GimpObject* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), %struct._GimpMenuFactory* %25, i8* null)
  store %struct._GParameter* %call45, %struct._GParameter** %params, align 8
  %26 = load i64, i64* %dialog_type, align 8
  %27 = load %struct._GParameter*, %struct._GParameter** %params, align 8
  %28 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call46 = call %struct._GParameter* @gimp_parameters_append_valist(i64 %26, %struct._GParameter* %27, i32* %n_params, %struct.__va_list_tag* %28)
  store %struct._GParameter* %call46, %struct._GParameter** %params, align 8
  %29 = load i64, i64* %dialog_type, align 8
  %30 = load i32, i32* %n_params, align 4
  %31 = load %struct._GParameter*, %struct._GParameter** %params, align 8
  %call47 = call i8* @g_object_newv(i64 %29, i32 %30, %struct._GParameter* %31)
  %32 = bitcast i8* %call47 to %struct._GtkWidget*
  store %struct._GtkWidget* %32, %struct._GtkWidget** %dialog, align 8
  %33 = load %struct._GParameter*, %struct._GParameter** %params, align 8
  %34 = load i32, i32* %n_params, align 4
  call void @gimp_parameters_free(%struct._GParameter* %33, i32 %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_pdb_dialog_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call48)
  %37 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpPdbDialog*
  %view50 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %37, i32 0, i32 9
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %view50, align 8
  store %struct._GtkWidget* %38, %struct._GtkWidget** %view, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %tobool51 = icmp ne %struct._GtkWidget* %39, null
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.then.43
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_docked_interface_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call53)
  %42 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpDocked*
  call void @gimp_docked_set_show_button_bar(%struct._GimpDocked* %42, i32 0)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.then.43
  %43 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool56 = icmp ne %struct._GimpProgress* %43, null
  br i1 %tobool56, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.end.55
  %44 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call58 = call i32 @gimp_progress_get_window_id(%struct._GimpProgress* %44)
  store i32 %call58, i32* %window_id, align 4
  %45 = load i32, i32* %window_id, align 4
  %tobool59 = icmp ne i32 %45, 0
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.then.57
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call61 = call i64 @gtk_window_get_type() #5
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call61)
  %48 = bitcast %struct._GTypeInstance* %call62 to %struct._GtkWindow*
  %49 = load i32, i32* %window_id, align 4
  call void @gimp_window_set_transient_for(%struct._GtkWindow* %48, i32 %49)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.then.57
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.55
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %call65 = call %struct._GSource* @g_timeout_source_new(i32 100)
  store %struct._GSource* %call65, %struct._GSource** %source, align 8
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call66 to %struct._GObject*
  %call67 = call %struct._GClosure* @g_cclosure_new_object(void ()* bitcast (i32 (%struct._GtkWindow*)* @gui_pdb_dialog_present to void ()*), %struct._GObject* %53)
  store %struct._GClosure* %call67, %struct._GClosure** %closure, align 8
  %54 = load %struct._GSource*, %struct._GSource** %source, align 8
  %55 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @g_source_set_closure(%struct._GSource* %54, %struct._GClosure* %55)
  %56 = load %struct._GSource*, %struct._GSource** %source, align 8
  %call68 = call i32 @g_source_attach(%struct._GSource* %56, %struct._GMainContext* null)
  %57 = load %struct._GSource*, %struct._GSource** %source, align 8
  call void @g_source_unref(%struct._GSource* %57)
  store i32 1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.41
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.29
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.end.64
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_pdb_dialog_set(%struct._Gimp* %gimp, %struct._GimpContainer* %container, i8* %callback_name, i8* %object_name, %struct.__va_list_tag* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %callback_name.addr = alloca i8*, align 8
  %object_name.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %klass = alloca %struct._GimpPdbDialogClass*, align 8
  %dialog = alloca %struct._GimpPdbDialog*, align 8
  %object = alloca %struct._GimpObject*, align 8
  %prop_name = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %callback_name, i8** %callback_name.addr, align 8
  store i8* %object_name, i8** %object_name.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  store %struct._GimpPdbDialogClass* null, %struct._GimpPdbDialogClass** %klass, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %0)
  %call1 = call i64 @gimp_brush_get_type() #5
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i64 @gimp_brush_select_get_type() #5
  %call3 = call i8* @g_type_class_peek(i64 %call2)
  %1 = bitcast i8* %call3 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %1, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end.34

if.else:                                          ; preds = %entry
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call4 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %2)
  %call5 = call i64 @gimp_font_get_type() #5
  %cmp6 = icmp eq i64 %call4, %call5
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else
  %call8 = call i64 @gimp_font_select_get_type() #5
  %call9 = call i8* @g_type_class_peek(i64 %call8)
  %3 = bitcast i8* %call9 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %3, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end.33

if.else.10:                                       ; preds = %if.else
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call11 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %4)
  %call12 = call i64 @gimp_gradient_get_type() #5
  %cmp13 = icmp eq i64 %call11, %call12
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.else.10
  %call15 = call i64 @gimp_gradient_select_get_type() #5
  %call16 = call i8* @g_type_class_peek(i64 %call15)
  %5 = bitcast i8* %call16 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %5, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end.32

if.else.17:                                       ; preds = %if.else.10
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call18 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %6)
  %call19 = call i64 @gimp_palette_get_type() #5
  %cmp20 = icmp eq i64 %call18, %call19
  br i1 %cmp20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.else.17
  %call22 = call i64 @gimp_palette_select_get_type() #5
  %call23 = call i8* @g_type_class_peek(i64 %call22)
  %7 = bitcast i8* %call23 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %7, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end.31

if.else.24:                                       ; preds = %if.else.17
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call25 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %8)
  %call26 = call i64 @gimp_pattern_get_type() #5
  %cmp27 = icmp eq i64 %call25, %call26
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.else.24
  %call29 = call i64 @gimp_pattern_select_get_type() #5
  %call30 = call i8* @g_type_class_peek(i64 %call29)
  %9 = bitcast i8* %call30 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %9, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.else.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.21
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.14
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.7
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  %10 = load %struct._GimpPdbDialogClass*, %struct._GimpPdbDialogClass** %klass, align 8
  %tobool = icmp ne %struct._GimpPdbDialogClass* %10, null
  br i1 %tobool, label %if.then.35, label %if.end.53

if.then.35:                                       ; preds = %if.end.34
  %11 = load %struct._GimpPdbDialogClass*, %struct._GimpPdbDialogClass** %klass, align 8
  %12 = load i8*, i8** %callback_name.addr, align 8
  %call36 = call %struct._GimpPdbDialog* @gimp_pdb_dialog_get_by_callback(%struct._GimpPdbDialogClass* %11, i8* %12)
  store %struct._GimpPdbDialog* %call36, %struct._GimpPdbDialog** %dialog, align 8
  %13 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %tobool37 = icmp ne %struct._GimpPdbDialog* %13, null
  br i1 %tobool37, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.then.35
  %14 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %select_type = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %14, i32 0, i32 4
  %15 = load i64, i64* %select_type, align 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call38 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %16)
  %cmp39 = icmp eq i64 %15, %call38
  br i1 %cmp39, label %if.then.40, label %if.end.52

if.then.40:                                       ; preds = %land.lhs.true
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %18 = load i8*, i8** %object_name.addr, align 8
  %call41 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %17, i8* %18)
  store %struct._GimpObject* %call41, %struct._GimpObject** %object, align 8
  %19 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %tobool42 = icmp ne %struct._GimpObject* %19, null
  br i1 %tobool42, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %if.then.40
  %20 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %if.then.43
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 3
  %reg_save_area = load i8*, i8** %21
  %22 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %23 = bitcast i8* %22 to i8**
  %24 = add i32 %gp_offset, 8
  store i32 %24, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %if.then.43
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %25 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %23, %vaarg.in_reg ], [ %25, %vaarg.in_mem ]
  %26 = load i8*, i8** %vaarg.addr
  store i8* %26, i8** %prop_name, align 8
  %27 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %context = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %27, i32 0, i32 3
  %28 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %29 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %select_type44 = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %29, i32 0, i32 4
  %30 = load i64, i64* %select_type44, align 8
  %31 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  call void @gimp_context_set_by_type(%struct._GimpContext* %28, i64 %30, %struct._GimpObject* %31)
  %32 = load i8*, i8** %prop_name, align 8
  %tobool45 = icmp ne i8* %32, null
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %vaarg.end
  %33 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %34 = bitcast %struct._GimpPdbDialog* %33 to %struct._GTypeInstance*
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call47 to %struct._GObject*
  %36 = load i8*, i8** %prop_name, align 8
  %37 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  call void @g_object_set_valist(%struct._GObject* %35, i8* %36, %struct.__va_list_tag* %37)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %vaarg.end
  %38 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %39 = bitcast %struct._GimpPdbDialog* %38 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_window_get_type() #5
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call49)
  %40 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %40)
  store i32 1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.40
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true, %if.then.35
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.34
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.end.48
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_pdb_dialog_close(%struct._Gimp* %gimp, %struct._GimpContainer* %container, i8* %callback_name) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %callback_name.addr = alloca i8*, align 8
  %klass = alloca %struct._GimpPdbDialogClass*, align 8
  %dialog = alloca %struct._GimpPdbDialog*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %callback_name, i8** %callback_name.addr, align 8
  store %struct._GimpPdbDialogClass* null, %struct._GimpPdbDialogClass** %klass, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %0)
  %call1 = call i64 @gimp_brush_get_type() #5
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i64 @gimp_brush_select_get_type() #5
  %call3 = call i8* @g_type_class_peek(i64 %call2)
  %1 = bitcast i8* %call3 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %1, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end.34

if.else:                                          ; preds = %entry
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call4 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %2)
  %call5 = call i64 @gimp_font_get_type() #5
  %cmp6 = icmp eq i64 %call4, %call5
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else
  %call8 = call i64 @gimp_font_select_get_type() #5
  %call9 = call i8* @g_type_class_peek(i64 %call8)
  %3 = bitcast i8* %call9 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %3, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end.33

if.else.10:                                       ; preds = %if.else
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call11 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %4)
  %call12 = call i64 @gimp_gradient_get_type() #5
  %cmp13 = icmp eq i64 %call11, %call12
  br i1 %cmp13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.else.10
  %call15 = call i64 @gimp_gradient_select_get_type() #5
  %call16 = call i8* @g_type_class_peek(i64 %call15)
  %5 = bitcast i8* %call16 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %5, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end.32

if.else.17:                                       ; preds = %if.else.10
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call18 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %6)
  %call19 = call i64 @gimp_palette_get_type() #5
  %cmp20 = icmp eq i64 %call18, %call19
  br i1 %cmp20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.else.17
  %call22 = call i64 @gimp_palette_select_get_type() #5
  %call23 = call i8* @g_type_class_peek(i64 %call22)
  %7 = bitcast i8* %call23 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %7, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end.31

if.else.24:                                       ; preds = %if.else.17
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call25 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %8)
  %call26 = call i64 @gimp_pattern_get_type() #5
  %cmp27 = icmp eq i64 %call25, %call26
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.else.24
  %call29 = call i64 @gimp_pattern_select_get_type() #5
  %call30 = call i8* @g_type_class_peek(i64 %call29)
  %9 = bitcast i8* %call30 to %struct._GimpPdbDialogClass*
  store %struct._GimpPdbDialogClass* %9, %struct._GimpPdbDialogClass** %klass, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.else.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.21
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.14
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.7
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  %10 = load %struct._GimpPdbDialogClass*, %struct._GimpPdbDialogClass** %klass, align 8
  %tobool = icmp ne %struct._GimpPdbDialogClass* %10, null
  br i1 %tobool, label %if.then.35, label %if.end.44

if.then.35:                                       ; preds = %if.end.34
  %11 = load %struct._GimpPdbDialogClass*, %struct._GimpPdbDialogClass** %klass, align 8
  %12 = load i8*, i8** %callback_name.addr, align 8
  %call36 = call %struct._GimpPdbDialog* @gimp_pdb_dialog_get_by_callback(%struct._GimpPdbDialogClass* %11, i8* %12)
  store %struct._GimpPdbDialog* %call36, %struct._GimpPdbDialog** %dialog, align 8
  %13 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %tobool37 = icmp ne %struct._GimpPdbDialog* %13, null
  br i1 %tobool37, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.then.35
  %14 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %select_type = getelementptr inbounds %struct._GimpPdbDialog, %struct._GimpPdbDialog* %14, i32 0, i32 4
  %15 = load i64, i64* %select_type, align 8
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call38 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %16)
  %cmp39 = icmp eq i64 %15, %call38
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %land.lhs.true
  %17 = load %struct._GimpPdbDialog*, %struct._GimpPdbDialog** %dialog, align 8
  %18 = bitcast %struct._GimpPdbDialog* %17 to %struct._GTypeInstance*
  %call41 = call i64 @gtk_widget_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call41)
  %19 = bitcast %struct._GTypeInstance* %call42 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %19)
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true, %if.then.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.34
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.40
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_recent_list_add_uri(%struct._Gimp* %gimp, i8* %uri, i8* %mime_type) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %uri.addr = alloca i8*, align 8
  %mime_type.addr = alloca i8*, align 8
  %recent = alloca %struct._GtkRecentData, align 8
  %groups = alloca [2 x i8*], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  %0 = bitcast [2 x i8*]* %groups to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x i8*]* @gui_recent_list_add_uri.groups to i8*), i64 16, i32 16, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %2 = bitcast %struct._Gimp* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gui_recent_list_add_uri, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %14 = load i8*, i8** %uri.addr, align 8
  %cmp12 = icmp ne i8* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gui_recent_list_add_uri, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %display_name = getelementptr inbounds %struct._GtkRecentData, %struct._GtkRecentData* %recent, i32 0, i32 0
  store i8* null, i8** %display_name, align 8
  %description = getelementptr inbounds %struct._GtkRecentData, %struct._GtkRecentData* %recent, i32 0, i32 1
  store i8* null, i8** %description, align 8
  %15 = load i8*, i8** %mime_type.addr, align 8
  %tobool17 = icmp ne i8* %15, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.16
  %16 = load i8*, i8** %mime_type.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.end.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), %cond.false ]
  %mime_type18 = getelementptr inbounds %struct._GtkRecentData, %struct._GtkRecentData* %recent, i32 0, i32 2
  store i8* %cond, i8** %mime_type18, align 8
  %app_name = getelementptr inbounds %struct._GtkRecentData, %struct._GtkRecentData* %recent, i32 0, i32 3
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i8** %app_name, align 8
  %app_exec = getelementptr inbounds %struct._GtkRecentData, %struct._GtkRecentData* %recent, i32 0, i32 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8** %app_exec, align 8
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %groups, i32 0, i32 0
  %groups19 = getelementptr inbounds %struct._GtkRecentData, %struct._GtkRecentData* %recent, i32 0, i32 5
  store i8** %arraydecay, i8*** %groups19, align 8
  %is_private = getelementptr inbounds %struct._GtkRecentData, %struct._GtkRecentData* %recent, i32 0, i32 6
  store i32 0, i32* %is_private, align 4
  %call20 = call %struct._GtkRecentManager* @gtk_recent_manager_get_default()
  %17 = load i8*, i8** %uri.addr, align 8
  %call21 = call i32 @gtk_recent_manager_add_full(%struct._GtkRecentManager* %call20, i8* %17, %struct._GtkRecentData* %recent)
  store i32 %call21, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.else.14, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @gui_recent_list_load(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %items = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %info = alloca %struct._GtkRecentInfo*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gui_recent_list_load, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 47
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  call void @gimp_container_freeze(%struct._GimpContainer* %14)
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %documents11 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %15, i32 0, i32 47
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %documents11, align 8
  call void @gimp_container_clear(%struct._GimpContainer* %16)
  %call12 = call %struct._GtkRecentManager* @gtk_recent_manager_get_default()
  %call13 = call %struct._GList* @gtk_recent_manager_get_items(%struct._GtkRecentManager* %call12)
  store %struct._GList* %call13, %struct._GList** %items, align 8
  %17 = load %struct._GList*, %struct._GList** %items, align 8
  %call14 = call %struct._GList* @g_list_sort(%struct._GList* %17, i32 (i8*, i8*)* @gui_recent_list_compare)
  store %struct._GList* %call14, %struct._GList** %items, align 8
  %18 = load %struct._GList*, %struct._GList** %items, align 8
  store %struct._GList* %18, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool15 = icmp ne %struct._GList* %19, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GtkRecentInfo*
  store %struct._GtkRecentInfo* %22, %struct._GtkRecentInfo** %info, align 8
  %23 = load %struct._GtkRecentInfo*, %struct._GtkRecentInfo** %info, align 8
  %call17 = call i32 @gtk_recent_info_has_application(%struct._GtkRecentInfo* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %for.body
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %25 = load %struct._GtkRecentInfo*, %struct._GtkRecentInfo** %info, align 8
  %call21 = call i8* @gtk_recent_info_get_uri(%struct._GtkRecentInfo* %25)
  %call22 = call %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp* %24, i8* %call21)
  store %struct._GimpImagefile* %call22, %struct._GimpImagefile** %imagefile, align 8
  %26 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %27 = load %struct._GtkRecentInfo*, %struct._GtkRecentInfo** %info, align 8
  %call23 = call i8* @gtk_recent_info_get_mime_type(%struct._GtkRecentInfo* %27)
  call void @gimp_imagefile_set_mime_type(%struct._GimpImagefile* %26, i8* %call23)
  %28 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %documents24 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %28, i32 0, i32 47
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %documents24, align 8
  %30 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %31 = bitcast %struct._GimpImagefile* %30 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_object_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call25)
  %32 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpObject*
  %call27 = call i32 @gimp_container_add(%struct._GimpContainer* %29, %struct._GimpObject* %32)
  %33 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %34 = bitcast %struct._GimpImagefile* %33 to i8*
  call void @g_object_unref(i8* %34)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.19, %for.body
  %35 = load %struct._GtkRecentInfo*, %struct._GtkRecentInfo** %info, align 8
  call void @gtk_recent_info_unref(%struct._GtkRecentInfo* %35)
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %37, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct._GList*, %struct._GList** %items, align 8
  call void @g_list_free(%struct._GList* %38)
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %documents29 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %39, i32 0, i32 47
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %documents29, align 8
  call void @gimp_container_thaw(%struct._GimpContainer* %40)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

declare %struct._GdkDisplay* @gdk_display_get_default() #3

declare void @gdk_display_pointer_ungrab(%struct._GdkDisplay*, i32) #3

declare void @gdk_display_keyboard_ungrab(%struct._GdkDisplay*, i32) #3

declare void @gimp_displays_set_busy(%struct._Gimp*) #3

declare void @gimp_dialog_factory_set_busy(%struct._GimpDialogFactory*) #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #3

declare void @gdk_flush() #3

declare void @gimp_displays_unset_busy(%struct._Gimp*) #3

declare void @gimp_dialog_factory_unset_busy(%struct._GimpDialogFactory*) #3

declare void @gimp_help_show(%struct._Gimp*, %struct._GimpProgress*, i8*, i8*) #3

declare i8* @gdk_get_program_class() #3

declare %struct._GimpDisplay* @gimp_display_get_by_ID(%struct._Gimp*, i32) #3

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #3

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #3

declare i32 @gdk_screen_get_monitor_at_window(%struct._GdkScreen*, %struct._GdkDrawable*) #3

declare void @gdk_display_get_pointer(%struct._GdkDisplay*, %struct._GdkScreen**, i32*, i32*, i32*) #3

declare i32 @gdk_screen_get_monitor_at_point(%struct._GdkScreen*, i32, i32) #3

declare i8* @gdk_screen_make_display_name(%struct._GdkScreen*) #3

declare i32 @gdk_x11_display_get_user_time(%struct._GdkDisplay*) #3

declare i8* @themes_get_theme_dir(%struct._Gimp*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare %struct._GimpObject* @gimp_single_window_strategy_get_singleton() #3

declare %struct._GimpObject* @gimp_multi_window_strategy_get_singleton() #3

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #3

declare %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer*) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #1

declare i32 @gimp_display_get_ID(%struct._GimpDisplay*) #3

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #1

declare i32 @gimp_window_get_native_id(%struct._GtkWindow*) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare void @gimp_display_fill(%struct._GimpDisplay*, %struct._GimpImage*, i32, double) #3

declare %struct._GList* @gimp_ui_managers_from_name(i8*) #3

declare %struct._GimpDisplay* @gimp_display_new(%struct._Gimp*, %struct._GimpImage*, i32, double, %struct._GimpMenuFactory*, %struct._GimpUIManager*, %struct._GimpDialogFactory*) #3

declare i8* @gimp_context_get_display(%struct._GimpContext*) #3

declare void @gimp_context_set_image(%struct._GimpContext*, %struct._GimpImage*) #3

declare void @gimp_context_display_changed(%struct._GimpContext*) #3

declare void @gimp_context_set_display(%struct._GimpContext*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare void @gimp_display_close(%struct._GimpDisplay*) #3

declare void @gimp_displays_reconnect(%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare %struct._GtkWidget* @gimp_progress_dialog_new() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_dialog_get_type() #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #3

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_select_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_font_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_font_select_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_select_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_select_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_select_get_type() #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #3

declare %struct._GimpObject* @gimp_context_get_by_type(%struct._GimpContext*, i64) #3

declare %struct._GParameter* @gimp_parameters_append(i64, %struct._GParameter*, i32*, ...) #3

declare void @gimp_standard_help_func(i8*, i8*) #3

declare %struct._GParameter* @gimp_parameters_append_valist(i64, %struct._GParameter*, i32*, %struct.__va_list_tag*) #3

declare i8* @g_object_newv(i64, i32, %struct._GParameter*) #3

declare void @gimp_parameters_free(%struct._GParameter*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_dialog_get_type() #1

declare void @gimp_docked_set_show_button_bar(%struct._GimpDocked*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #1

declare i32 @gimp_progress_get_window_id(%struct._GimpProgress*) #3

declare void @gimp_window_set_transient_for(%struct._GtkWindow*, i32) #3

declare void @gtk_widget_show(%struct._GtkWidget*) #3

declare %struct._GSource* @g_timeout_source_new(i32) #3

declare %struct._GClosure* @g_cclosure_new_object(void ()*, %struct._GObject*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gui_pdb_dialog_present(%struct._GtkWindow* %window) #0 {
entry:
  %window.addr = alloca %struct._GtkWindow*, align 8
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  %0 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_present(%struct._GtkWindow* %0)
  ret i32 0
}

declare void @g_source_set_closure(%struct._GSource*, %struct._GClosure*) #3

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #3

declare void @g_source_unref(%struct._GSource*) #3

declare void @gtk_window_present(%struct._GtkWindow*) #3

declare i8* @g_type_class_peek(i64) #3

declare %struct._GimpPdbDialog* @gimp_pdb_dialog_get_by_callback(%struct._GimpPdbDialogClass*, i8*) #3

declare void @gimp_context_set_by_type(%struct._GimpContext*, i64, %struct._GimpObject*) #3

declare void @g_object_set_valist(%struct._GObject*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @gtk_recent_manager_add_full(%struct._GtkRecentManager*, i8*, %struct._GtkRecentData*) #3

declare %struct._GtkRecentManager* @gtk_recent_manager_get_default() #3

declare void @gimp_container_freeze(%struct._GimpContainer*) #3

declare void @gimp_container_clear(%struct._GimpContainer*) #3

declare %struct._GList* @gtk_recent_manager_get_items(%struct._GtkRecentManager*) #3

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @gui_recent_list_compare(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct._GtkRecentInfo*
  %call = call i64 @gtk_recent_info_get_modified(%struct._GtkRecentInfo* %1)
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct._GtkRecentInfo*
  %call1 = call i64 @gtk_recent_info_get_modified(%struct._GtkRecentInfo* %3)
  %sub = sub nsw i64 %call, %call1
  %conv = trunc i64 %sub to i32
  ret i32 %conv
}

declare i32 @gtk_recent_info_has_application(%struct._GtkRecentInfo*, i8*) #3

declare %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp*, i8*) #3

declare i8* @gtk_recent_info_get_uri(%struct._GtkRecentInfo*) #3

declare void @gimp_imagefile_set_mime_type(%struct._GimpImagefile*, i8*) #3

declare i8* @gtk_recent_info_get_mime_type(%struct._GtkRecentInfo*) #3

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #3

declare void @g_object_unref(i8*) #3

declare void @gtk_recent_info_unref(%struct._GtkRecentInfo*) #3

declare void @g_list_free(%struct._GList*) #3

declare void @gimp_container_thaw(%struct._GimpContainer*) #3

declare i64 @gtk_recent_info_get_modified(%struct._GtkRecentInfo*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
