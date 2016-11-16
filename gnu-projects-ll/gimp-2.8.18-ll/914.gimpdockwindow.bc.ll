; ModuleID = './app/widgets/gimpdockwindow.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpDockWindowClass = type { %struct._GimpWindowClass }
%struct._GimpWindowClass = type { %struct._GtkWindowClass }
%struct._GtkWindowClass = type { %struct._GtkBinClass, void (%struct._GtkWindow*, %struct._GtkWidget*)*, i32 (%struct._GtkWindow*, %union._GdkEvent*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*)*, void (%struct._GtkWindow*, i32)*, void (%struct._GtkWindow*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkBinClass = type { %struct._GtkContainerClass }
%struct._GtkContainerClass = type { %struct._GtkWidgetClass, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*)*, void (%struct._GtkContainer*, i32, void (%struct._GtkWidget*, i8*)*, i8*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)*, i64 (%struct._GtkContainer*)*, i8* (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GtkContainer*, %struct._GtkWidget*, i32, %struct._GValue*, %struct._GParamSpec*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkWidgetClass = type { %struct._GtkObjectClass, i32, i32, void (%struct._GtkWidget*, i32, %struct._GParamSpec**)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkRequisition*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*, %struct._GParamSpec*)*, i32 (%struct._GtkWidget*, i32)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %union._GdkEvent*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventButton*)*, i32 (%struct._GtkWidget*, %struct._GdkEventScroll*)*, i32 (%struct._GtkWidget*, %struct._GdkEventMotion*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventExpose*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventKey*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventCrossing*)*, i32 (%struct._GtkWidget*, %struct._GdkEventConfigure*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventFocus*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProperty*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventSelection*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventProximity*)*, i32 (%struct._GtkWidget*, %struct._GdkEventVisibility*)*, i32 (%struct._GtkWidget*, %struct._GdkEventClient*)*, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)*, i32 (%struct._GtkWidget*, %struct._GdkEventWindowState*)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GtkSelectionData*, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkSelectionData*, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)*, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32)*, i32 (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32)*, %struct._AtkObject* (%struct._GtkWidget*)*, void (%struct._GtkWidget*, %struct._GdkScreen*)*, i32 (%struct._GtkWidget*, i32)*, i32 (%struct._GtkWidget*, %struct._GdkEventGrabBroken*)*, void (%struct._GtkWidget*)*, i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*)*, void ()*, void ()*, void ()* }
%struct._GtkObjectClass = type { %struct._GObjectClass, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*, %struct._GtkArg*, i32)*, void (%struct._GtkObject*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
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
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GimpDockWindowPrivate = type { %struct._GimpContext*, %struct._GimpDialogFactory*, i8*, %struct._GimpUIManager*, i32, %struct._GimpDockColumns*, i32, i32, i32, %struct._GimpContainer*, %struct._GimpContainer*, i32, i32, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpDockColumns = type { %struct._GtkBox, %struct._GimpDockColumnsPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockColumnsPrivate = type opaque
%struct._GimpDockContainerInterface = type { %struct._GTypeInterface, %struct._GList* (%struct._GimpDockContainer*)*, %struct._GimpUIManager* (%struct._GimpDockContainer*)*, void (%struct._GimpDockContainer*, %struct._GimpDock*, %struct._GimpSessionInfoDock*)*, i32 (%struct._GimpDockContainer*, %struct._GimpDock*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpDockContainer = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GimpDockPrivate = type opaque
%struct._GimpSessionInfoDock = type opaque
%struct._GimpSessionManagedInterface = type { %struct._GTypeInterface, %struct._GList* (%struct._GimpSessionManaged*)*, void (%struct._GimpSessionManaged*, %struct._GList*)* }
%struct._GimpSessionManaged = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GimpContainerView = type opaque
%struct._GimpSessionInfo = type { %struct._GimpObject, %struct._GimpSessionInfoPrivate* }
%struct._GimpSessionInfoPrivate = type opaque
%struct._GimpDialogFactoryEntry = type { i8*, i8*, i8*, i8*, i8*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GimpContext*, %struct._GimpUIManager*, i32)*, %struct._GtkWidget* (%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpSessionInfo*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GString = type { i8*, i64, i64 }
%struct._GimpSessionInfoAux = type { i8*, i8* }

@gimp_dock_window_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpDockWindow\00", align 1
@gimp_dock_window_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpDockContainerInterface*)* @gimp_dock_window_dock_container_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_dock_window_get_type.g_implement_interface_info.1 = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpSessionManagedInterface*)* @gimp_dock_window_session_managed_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dock_window_add_dock = private unnamed_addr constant [26 x i8] c"gimp_dock_window_add_dock\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"GIMP_IS_DOCK_WINDOW (dock_window)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DOCK (dock)\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"description-invalidated\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"geometry-invalidated\00", align 1
@__func__.gimp_dock_window_new = private unnamed_addr constant [21 x i8] c"gimp_dock_window_new\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"GIMP_IS_DIALOG_FACTORY (factory)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ui-manager-name\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"allow-dockbook-absence\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"dialog-factory\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@__func__.gimp_dock_window_get_id = private unnamed_addr constant [24 x i8] c"gimp_dock_window_get_id\00", align 1
@__func__.gimp_dock_window_get_context = private unnamed_addr constant [29 x i8] c"gimp_dock_window_get_context\00", align 1
@__func__.gimp_dock_window_get_dialog_factory = private unnamed_addr constant [36 x i8] c"gimp_dock_window_get_dialog_factory\00", align 1
@__func__.gimp_dock_window_get_auto_follow_active = private unnamed_addr constant [40 x i8] c"gimp_dock_window_get_auto_follow_active\00", align 1
@__func__.gimp_dock_window_set_auto_follow_active = private unnamed_addr constant [40 x i8] c"gimp_dock_window_set_auto_follow_active\00", align 1
@__func__.gimp_dock_window_get_show_image_menu = private unnamed_addr constant [37 x i8] c"gimp_dock_window_get_show_image_menu\00", align 1
@__func__.gimp_dock_window_set_show_image_menu = private unnamed_addr constant [37 x i8] c"gimp_dock_window_set_show_image_menu\00", align 1
@__func__.gimp_dock_window_has_toolbox = private unnamed_addr constant [29 x i8] c"gimp_dock_window_has_toolbox\00", align 1
@__func__.gimp_dock_window_from_dock = private unnamed_addr constant [27 x i8] c"gimp_dock_window_from_dock\00", align 1
@gimp_dock_window_parent_class = internal global i8* null, align 8
@GimpDockWindow_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"image-container\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"display-container\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"default-height\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"menu-preview-size\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Dock Context\00", align 1
@global_menu_factory = external global %struct._GimpMenuFactory*, align 8
@.str.19 = private unnamed_addr constant [16 x i8] c"display-changed\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"image-changed\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"gimp-dock-image-menu\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.26 = private unnamed_addr constant [76 x i8] c"When enabled the dialog automatically follows the image you are working on.\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"gimp-dock-auto-button\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"dock-removed\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"dock-added\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"gimp-dock\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@__func__.gimp_dock_window_dock_removed = private unnamed_addr constant [30 x i8] c"gimp_dock_window_dock_removed\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"gimpdockwindow.c\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"focus-line-width\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"focus-padding\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"gimp-toolbox-window\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"gimp-dock-window\00", align 1
@global_recent_docks = external global %struct._GimpContainer*, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"dock\04 | \00", align 1
@gimp_dock_window_init.dock_window_ID = internal global i32 1, align 4
@.str.41 = private unnamed_addr constant [13 x i8] c"gimp-dock-%d\00", align 1
@__func__.gimp_dock_window_get_docks = private unnamed_addr constant [27 x i8] c"gimp_dock_window_get_docks\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"GIMP_IS_DOCK_WINDOW (dock_container)\00", align 1
@__func__.gimp_dock_window_get_ui_manager = private unnamed_addr constant [32 x i8] c"gimp_dock_window_get_ui_manager\00", align 1
@__func__.gimp_dock_window_add_dock_from_session = private unnamed_addr constant [39 x i8] c"gimp_dock_window_add_dock_from_session\00", align 1
@__func__.gimp_dock_window_get_dock_side = private unnamed_addr constant [31 x i8] c"gimp_dock_window_get_dock_side\00", align 1
@__func__.gimp_dock_window_get_aux_info = private unnamed_addr constant [30 x i8] c"gimp_dock_window_get_aux_info\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"GIMP_IS_DOCK_WINDOW (session_managed)\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"show-image-menu\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"follow-active-image\00", align 1
@__func__.gimp_dock_window_set_aux_info = private unnamed_addr constant [30 x i8] c"gimp_dock_window_set_aux_info\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dock_window_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dock_window_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dock_window_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_window_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 904, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dock_window_class_intern_init to void (i8*, i8*)*), i32 256, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDockWindow*)* @gimp_dock_window_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_dock_container_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_dock_window_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  %call9 = call i64 @gimp_session_managed_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %6, i64 %call9, %struct._GInterfaceInfo* @gimp_dock_window_get_type.g_implement_interface_info.1)
  %7 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dock_window_get_type.g_define_type_id__volatile to i8*), i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %8 = load volatile i64, i64* @gimp_dock_window_get_type.g_define_type_id__volatile, align 8
  ret i64 %8
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dock_window_parent_class, align 8
  %1 = load i32, i32* @GimpDockWindow_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDockWindow_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDockWindowClass*
  call void @gimp_dock_window_class_init(%struct._GimpDockWindowClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_init(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDockWindowPrivate*
  %3 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %3, i32 0, i32 1
  store %struct._GimpDockWindowPrivate* %2, %struct._GimpDockWindowPrivate** %p, align 8
  %4 = load i32, i32* @gimp_dock_window_init.dock_window_ID, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @gimp_dock_window_init.dock_window_ID, align 4
  %5 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %5, i32 0, i32 1
  %6 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p2, align 8
  %ID = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %6, i32 0, i32 8
  store i32 %4, i32* %ID, align 4
  %7 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p3 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %7, i32 0, i32 1
  %8 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p3, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %8, i32 0, i32 12
  store i32 1, i32* %auto_follow_active, align 4
  %9 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %9, i32 0, i32 1
  %10 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p4, align 8
  %ID5 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %10, i32 0, i32 8
  %11 = load i32, i32* %ID5, align 4
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 %11)
  store i8* %call6, i8** %name, align 8
  %12 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %13 = bitcast %struct._GimpDockWindow* %12 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call7)
  %14 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %15 = load i8*, i8** %name, align 8
  call void @gtk_widget_set_name(%struct._GtkWidget* %14, i8* %15)
  %16 = load i8*, i8** %name, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %18 = bitcast %struct._GimpDockWindow* %17 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_window_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call9)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %19, i32 1)
  %20 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %21 = bitcast %struct._GimpDockWindow* %20 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_window_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call11)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWindow*
  call void @gtk_window_set_focus_on_map(%struct._GtkWindow* %22, i32 0)
  %23 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %24 = bitcast %struct._GimpDockWindow* %23 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_window_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call13)
  %25 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWindow*
  call void @gtk_window_set_skip_taskbar_hint(%struct._GtkWindow* %25, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_dock_container_iface_init(%struct._GimpDockContainerInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpDockContainerInterface*, align 8
  store %struct._GimpDockContainerInterface* %iface, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %0 = load %struct._GimpDockContainerInterface*, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %get_docks = getelementptr inbounds %struct._GimpDockContainerInterface, %struct._GimpDockContainerInterface* %0, i32 0, i32 1
  store %struct._GList* (%struct._GimpDockContainer*)* @gimp_dock_window_get_docks, %struct._GList* (%struct._GimpDockContainer*)** %get_docks, align 8
  %1 = load %struct._GimpDockContainerInterface*, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %get_ui_manager = getelementptr inbounds %struct._GimpDockContainerInterface, %struct._GimpDockContainerInterface* %1, i32 0, i32 2
  store %struct._GimpUIManager* (%struct._GimpDockContainer*)* @gimp_dock_window_get_ui_manager, %struct._GimpUIManager* (%struct._GimpDockContainer*)** %get_ui_manager, align 8
  %2 = load %struct._GimpDockContainerInterface*, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %add_dock = getelementptr inbounds %struct._GimpDockContainerInterface, %struct._GimpDockContainerInterface* %2, i32 0, i32 3
  store void (%struct._GimpDockContainer*, %struct._GimpDock*, %struct._GimpSessionInfoDock*)* @gimp_dock_window_add_dock_from_session, void (%struct._GimpDockContainer*, %struct._GimpDock*, %struct._GimpSessionInfoDock*)** %add_dock, align 8
  %3 = load %struct._GimpDockContainerInterface*, %struct._GimpDockContainerInterface** %iface.addr, align 8
  %get_dock_side = getelementptr inbounds %struct._GimpDockContainerInterface, %struct._GimpDockContainerInterface* %3, i32 0, i32 4
  store i32 (%struct._GimpDockContainer*, %struct._GimpDock*)* @gimp_dock_window_get_dock_side, i32 (%struct._GimpDockContainer*, %struct._GimpDock*)** %get_dock_side, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_container_interface_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_session_managed_iface_init(%struct._GimpSessionManagedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpSessionManagedInterface*, align 8
  store %struct._GimpSessionManagedInterface* %iface, %struct._GimpSessionManagedInterface** %iface.addr, align 8
  %0 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface.addr, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %0, i32 0, i32 1
  store %struct._GList* (%struct._GimpSessionManaged*)* @gimp_dock_window_get_aux_info, %struct._GList* (%struct._GimpSessionManaged*)** %get_aux_info, align 8
  %1 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface.addr, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %1, i32 0, i32 2
  store void (%struct._GimpSessionManaged*, %struct._GList*)* @gimp_dock_window_set_aux_info, void (%struct._GimpSessionManaged*, %struct._GList*)** %set_aux_info, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_session_managed_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_window_add_dock(%struct._GimpDockWindow* %dock_window, %struct._GimpDock* %dock, i32 %index) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %index.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dock_window_add_dock, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dock_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dock_window_add_dock, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %26, i32 0, i32 1
  %27 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %dock_columns = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %27, i32 0, i32 5
  %28 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %29 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %30 = bitcast %struct._GimpDock* %29 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_dock_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call39)
  %31 = bitcast %struct._GTypeInstance* %call40 to %struct._GimpDock*
  %32 = load i32, i32* %index.addr, align 4
  call void @gimp_dock_columns_add_dock(%struct._GimpDockColumns* %28, %struct._GimpDock* %31, i32 %32)
  %33 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %34 = bitcast %struct._GimpDock* %33 to i8*
  %35 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %36 = bitcast %struct._GimpDockWindow* %35 to i8*
  %call41 = call i64 @g_signal_connect_object(i8* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDockWindow*)* @gimp_dock_window_update_title to void ()*), i8* %36, i32 2)
  %37 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %38 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %39 = bitcast %struct._GimpDockWindow* %38 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_window_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call42)
  %40 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkWindow*
  call void @gimp_dock_set_host_geometry_hints(%struct._GimpDock* %37, %struct._GtkWindow* %40)
  %41 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %42 = bitcast %struct._GimpDock* %41 to i8*
  %43 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %44 = bitcast %struct._GimpDockWindow* %43 to i8*
  %call44 = call i64 @g_signal_connect_object(i8* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDock*, %struct._GtkWindow*)* @gimp_dock_set_host_geometry_hints to void ()*), i8* %44, i32 0)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare void @gimp_dock_columns_add_dock(%struct._GimpDockColumns*, %struct._GimpDock*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_update_title(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %0, i32 0, i32 1
  %1 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %update_title_idle_id = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %1, i32 0, i32 7
  %2 = load i32, i32* %update_title_idle_id, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %3, i32 0, i32 1
  %4 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p1, align 8
  %update_title_idle_id2 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %4, i32 0, i32 7
  %5 = load i32, i32* %update_title_idle_id2, align 4
  %call = call i32 @g_source_remove(i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %7 = bitcast %struct._GimpDockWindow* %6 to i8*
  %call3 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpDockWindow*)* @gimp_dock_window_update_title_idle to i32 (i8*)*), i8* %7)
  %8 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %8, i32 0, i32 1
  %9 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p4, align 8
  %update_title_idle_id5 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %9, i32 0, i32 7
  store i32 %call3, i32* %update_title_idle_id5, align 4
  ret void
}

declare void @gimp_dock_set_host_geometry_hints(%struct._GimpDock*, %struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_dock_window_remove_dock(%struct._GimpDockWindow* %dock_window, %struct._GimpDock* %dock) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %0, i32 0, i32 1
  %1 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %dock_columns = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %1, i32 0, i32 5
  %2 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %3 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %4 = bitcast %struct._GimpDock* %3 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDock*
  call void @gimp_dock_columns_remove_dock(%struct._GimpDockColumns* %2, %struct._GimpDock* %5)
  %6 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %7 = bitcast %struct._GimpDock* %6 to i8*
  %8 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %9 = bitcast %struct._GimpDockWindow* %8 to i8*
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %7, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDockWindow*)* @gimp_dock_window_update_title to i8*), i8* %9)
  %10 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %11 = bitcast %struct._GimpDock* %10 to i8*
  %12 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %13 = bitcast %struct._GimpDockWindow* %12 to i8*
  %call3 = call i32 @g_signal_handlers_disconnect_matched(i8* %11, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDock*, %struct._GtkWindow*)* @gimp_dock_set_host_geometry_hints to i8*), i8* %13)
  ret void
}

declare void @gimp_dock_columns_remove_dock(%struct._GimpDockColumns*, %struct._GimpDock*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dock_window_new(i8* %role, i8* %ui_manager_name, i32 %allow_dockbook_absence, %struct._GimpDialogFactory* %factory, %struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %role.addr = alloca i8*, align 8
  %ui_manager_name.addr = alloca i8*, align 8
  %allow_dockbook_absence.addr = alloca i32, align 4
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store i8* %role, i8** %role.addr, align 8
  store i8* %ui_manager_name, i8** %ui_manager_name.addr, align 8
  store i32 %allow_dockbook_absence, i32* %allow_dockbook_absence.addr, align 4
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %1 = bitcast %struct._GimpDialogFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dialog_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_dock_window_new, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_dock_window_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_dock_window_get_type() #7
  %26 = load i8*, i8** %role.addr, align 8
  %27 = load i8*, i8** %ui_manager_name.addr, align 8
  %28 = load i32, i32* %allow_dockbook_absence.addr, align 4
  %29 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), %struct._GimpDialogFactory* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._GimpContext* %30, i8* null)
  %31 = bitcast i8* %call40 to %struct._GtkWidget*
  store %struct._GtkWidget* %31, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %32
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_factory_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_dock_window_get_id(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %retval = alloca i32, align 4
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dock_window_get_id, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %13, i32 0, i32 1
  %14 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %ID = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %14, i32 0, i32 8
  %15 = load i32, i32* %ID, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_dock_window_get_context(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dock_window_get_context, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %13, i32 0, i32 1
  %14 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  store %struct._GimpContext* %15, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %16
}

; Function Attrs: nounwind uwtable
define %struct._GimpDialogFactory* @gimp_dock_window_get_dialog_factory(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %retval = alloca %struct._GimpDialogFactory*, align 8
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_dock_window_get_dialog_factory, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %13, i32 0, i32 1
  %14 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %14, i32 0, i32 1
  %15 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  store %struct._GimpDialogFactory* %15, %struct._GimpDialogFactory** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %retval
  ret %struct._GimpDialogFactory* %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dock_window_get_auto_follow_active(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %retval = alloca i32, align 4
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dock_window_get_auto_follow_active, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %13, i32 0, i32 1
  %14 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %14, i32 0, i32 12
  %15 = load i32, i32* %auto_follow_active, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dock_window_set_auto_follow_active(%struct._GimpDockWindow* %dock_window, i32 %auto_follow_active) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %auto_follow_active.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store i32 %auto_follow_active, i32* %auto_follow_active.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_dock_window_set_auto_follow_active, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %13, i32 0, i32 1
  %14 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %auto_button = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %14, i32 0, i32 14
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_button, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_toggle_button_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call11)
  %17 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkToggleButton*
  %18 = load i32, i32* %auto_follow_active.addr, align 4
  %tobool13 = icmp ne i32 %18, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %17, i32 %cond)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_dock_window_get_show_image_menu(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %retval = alloca i32, align 4
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dock_window_get_show_image_menu, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %13, i32 0, i32 1
  %14 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %show_image_menu = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %14, i32 0, i32 11
  %15 = load i32, i32* %show_image_menu, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dock_window_set_show_image_menu(%struct._GimpDockWindow* %dock_window, i32 %show) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %show.addr = alloca i32, align 4
  %parent = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store i32 %show, i32* %show.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dock_window_set_show_image_menu, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %13, i32 0, i32 1
  %14 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %image_combo = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %14, i32 0, i32 13
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo, align 8
  %call11 = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %15)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %parent, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %17 = load i32, i32* %show.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %16, i32 %17)
  %18 = load i32, i32* %show.addr, align 4
  %tobool12 = icmp ne i32 %18, 0
  %cond = select i1 %tobool12, i32 1, i32 0
  %19 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p13 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %19, i32 0, i32 1
  %20 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p13, align 8
  %show_image_menu = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %20, i32 0, i32 11
  store i32 %cond, i32* %show_image_menu, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_window_setup(%struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow* %template) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %template.addr = alloca %struct._GimpDockWindow*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpDockWindow* %template, %struct._GimpDockWindow** %template.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  %3 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %template.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %3, i32 0, i32 1
  %4 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %4, i32 0, i32 12
  %5 = load i32, i32* %auto_follow_active, align 4
  call void @gimp_dock_window_set_auto_follow_active(%struct._GimpDockWindow* %2, i32 %5)
  %6 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %7 = bitcast %struct._GimpDockWindow* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_dock_window_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpDockWindow*
  %9 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %template.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %9, i32 0, i32 1
  %10 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p4, align 8
  %show_image_menu = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %10, i32 0, i32 11
  %11 = load i32, i32* %show_image_menu, align 4
  call void @gimp_dock_window_set_show_image_menu(%struct._GimpDockWindow* %8, i32 %11)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dock_window_has_toolbox(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %retval = alloca i32, align 4
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %iter = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dock_window_has_toolbox, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %13, i32 0, i32 1
  %14 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %dock_columns = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %14, i32 0, i32 5
  %15 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %call11 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %15)
  store %struct._GList* %call11, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %16 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool12 = icmp ne %struct._GList* %16, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %19, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_toolbox_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %20, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %for.body
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %for.body
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %22, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type27, align 8
  %26 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %25, %26
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %28 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %27, i64 %28) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %29 = load i32, i32* %__r19, align 4
  store i32 %29, i32* %tmp34
  %30 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %31 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool38 = icmp ne %struct._GList* %31, null
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %32 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %32, i32 0, i32 1
  %33 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %33, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.36, %if.else.9
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca %struct._GimpDockWindow*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %toplevel, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dock_window_from_dock, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpDockWindow* null, %struct._GimpDockWindow** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %call13 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %15)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %toplevel, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst15, align 8
  %call18 = call i64 @gimp_dock_window_get_type() #7
  store i64 %call18, i64* %__t17, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %do.end
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %do.end
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %tobool25 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type28, align 8
  %24 = load i64, i64* %__t17, align 8
  %cmp29 = icmp eq i64 %23, %24
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %__r20, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true.26, %if.else.23
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %26 = load i64, i64* %__t17, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %27 = load i32, i32* %__r20, align 4
  store i32 %27, i32* %tmp35
  %28 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %28, 0
  br i1 %tobool36, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.end.34
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_dock_window_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call38)
  %31 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %31, %struct._GimpDockWindow** %retval
  br label %return

if.else.40:                                       ; preds = %if.end.34
  store %struct._GimpDockWindow* null, %struct._GimpDockWindow** %retval
  br label %return

return:                                           ; preds = %if.else.40, %if.then.37, %if.else.9
  %32 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %retval
  ret %struct._GimpDockWindow* %32
}

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_class_init(%struct._GimpDockWindowClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDockWindowClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpDockWindowClass* %klass, %struct._GimpDockWindowClass** %klass.addr, align 8
  %0 = load %struct._GimpDockWindowClass*, %struct._GimpDockWindowClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDockWindowClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDockWindowClass*, %struct._GimpDockWindowClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDockWindowClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_dock_window_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_dock_window_dispose, void (%struct._GObject*)** %dispose, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dock_window_finalize, void (%struct._GObject*)** %finalize, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dock_window_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dock_window_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %11 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_dock_window_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %delete_event = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 29
  store i32 (%struct._GtkWidget*, %struct._GdkEventAny*)* @gimp_dock_window_delete_event, i32 (%struct._GtkWidget*, %struct._GdkEventAny*)** %delete_event, align 8
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_context_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 1, %struct._GParamSpec* %call4)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_dialog_factory_get_type() #7
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 2, %struct._GParamSpec* %call6)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* null, i8* null, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 3, %struct._GParamSpec* %call7)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @gimp_container_get_type() #7
  %call9 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i64 %call8, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 4, %struct._GParamSpec* %call9)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call i64 @gimp_container_get_type() #7
  %call11 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* null, i64 %call10, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 5, %struct._GParamSpec* %call11)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i32 0, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 6, %struct._GParamSpec* %call12)
  %19 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null, i32 -1, i32 2147483647, i32 300, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %19, %struct._GParamSpec* %call13)
  %20 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call14 = call i64 @gtk_icon_size_get_type() #7
  %call15 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* null, i64 %call14, i32 2, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %20, %struct._GParamSpec* %call15)
  %21 = load %struct._GimpDockWindowClass*, %struct._GimpDockWindowClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpDockWindowClass* %21 to i8*
  call void @g_type_class_add_private(i8* %22, i64 104)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %factory_context = alloca %struct._GimpContext*, align 8
  %accel_group = alloca %struct._GtkAccelGroup*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %settings = alloca %struct._GtkSettings*, align 8
  %menu_view_width = alloca i32, align 4
  %menu_view_height = alloca i32, align 4
  %vbox = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  store i32 -1, i32* %menu_view_width, align 4
  store i32 -1, i32* %menu_view_height, align 4
  %3 = load i8*, i8** @gimp_dock_window_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_dock_window_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %12, i32 0, i32 1
  %13 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %13, i32 0, i32 0
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp5 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp5, align 8
  %16 = bitcast %struct._Gimp* %15 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call6)
  %17 = bitcast %struct._GTypeInstance* %call7 to %struct._Gimp*
  store %struct._Gimp* %17, %struct._Gimp** %gimp, align 8
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config8 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %18, i32 0, i32 1
  %19 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config8, align 8
  %20 = bitcast %struct._GimpCoreConfig* %19 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_gui_config_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call9)
  %21 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %21, %struct._GimpGuiConfig** %config, align 8
  %22 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p11 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %22, i32 0, i32 1
  %23 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p11, align 8
  %context12 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %23, i32 0, i32 0
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context12, align 8
  %25 = bitcast %struct._GimpContext* %24 to i8*
  call void @g_object_unref(i8* %25)
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call13 = call %struct._GimpContext* @gimp_context_new(%struct._Gimp* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), %struct._GimpContext* null)
  %27 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p14 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %27, i32 0, i32 1
  %28 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p14, align 8
  %context15 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %28, i32 0, i32 0
  store %struct._GimpContext* %call13, %struct._GimpContext** %context15, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %29, i32 0, i32 26
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %31 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p16 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %31, i32 0, i32 1
  %32 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p16, align 8
  %image_container = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %32, i32 0, i32 9
  store %struct._GimpContainer* %30, %struct._GimpContainer** %image_container, align 8
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %33, i32 0, i32 31
  %34 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %35 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p17 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %35, i32 0, i32 1
  %36 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p17, align 8
  %display_container = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %36, i32 0, i32 10
  store %struct._GimpContainer* %34, %struct._GimpContainer** %display_container, align 8
  %37 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p18 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %37, i32 0, i32 1
  %38 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p18, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %38, i32 0, i32 1
  %39 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %call19 = call %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %39)
  store %struct._GimpContext* %call19, %struct._GimpContext** %factory_context, align 8
  %40 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %41 = bitcast %struct._GimpDockWindow* %40 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call20)
  %42 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  %43 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %dock_window_hint = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %43, i32 0, i32 28
  %44 = load i32, i32* %dock_window_hint, align 4
  call void @gimp_window_set_hint(%struct._GtkWindow* %42, i32 %44)
  %45 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %46 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p22 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %46, i32 0, i32 1
  %47 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p22, align 8
  %ui_manager_name = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %47, i32 0, i32 2
  %48 = load i8*, i8** %ui_manager_name, align 8
  %49 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %50 = bitcast %struct._GimpDockWindow* %49 to i8*
  %51 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %tearoff_menus = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %51, i32 0, i32 9
  %52 = load i32, i32* %tearoff_menus, align 4
  %call23 = call %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory* %45, i8* %48, i8* %50, i32 %52)
  %53 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p24 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %53, i32 0, i32 1
  %54 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p24, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %54, i32 0, i32 3
  store %struct._GimpUIManager* %call23, %struct._GimpUIManager** %ui_manager, align 8
  %55 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p25 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %55, i32 0, i32 1
  %56 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p25, align 8
  %ui_manager26 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %56, i32 0, i32 3
  %57 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager26, align 8
  %58 = bitcast %struct._GimpUIManager* %57 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_ui_manager_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call27)
  %59 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkUIManager*
  %call29 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %59)
  store %struct._GtkAccelGroup* %call29, %struct._GtkAccelGroup** %accel_group, align 8
  %60 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %61 = bitcast %struct._GimpDockWindow* %60 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_window_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call30)
  %62 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkWindow*
  %63 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  call void @gtk_window_add_accel_group(%struct._GtkWindow* %62, %struct._GtkAccelGroup* %63)
  %64 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p32 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %64, i32 0, i32 1
  %65 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p32, align 8
  %context33 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %65, i32 0, i32 0
  %66 = load %struct._GimpContext*, %struct._GimpContext** %context33, align 8
  %67 = bitcast %struct._GimpContext* %66 to i8*
  %68 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %69 = bitcast %struct._GimpDockWindow* %68 to i8*
  %call34 = call i64 @g_signal_connect_object(i8* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDockWindow*, %struct._GimpObject*, %struct._GimpContext*)* @gimp_dock_window_display_changed to void ()*), i8* %69, i32 2)
  %70 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p35 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %70, i32 0, i32 1
  %71 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p35, align 8
  %context36 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %71, i32 0, i32 0
  %72 = load %struct._GimpContext*, %struct._GimpContext** %context36, align 8
  %73 = bitcast %struct._GimpContext* %72 to i8*
  %74 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %75 = bitcast %struct._GimpDockWindow* %74 to i8*
  %call37 = call i64 @g_signal_connect_object(i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDockWindow*, %struct._GimpImage*, %struct._GimpContext*)* @gimp_dock_window_image_changed to void ()*), i8* %75, i32 2)
  %76 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images38 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %76, i32 0, i32 26
  %77 = load %struct._GimpContainer*, %struct._GimpContainer** %images38, align 8
  %78 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %79 = bitcast %struct._GimpDockWindow* %78 to i8*
  %call39 = call i32 @gimp_container_add_handler(%struct._GimpContainer* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, i32, %struct._GimpDockWindow*)* @gimp_dock_window_image_flush to void ()*), i8* %79)
  %80 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p40 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %80, i32 0, i32 1
  %81 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p40, align 8
  %image_flush_handler_id = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %81, i32 0, i32 4
  store i32 %call39, i32* %image_flush_handler_id, align 4
  %82 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p41 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %82, i32 0, i32 1
  %83 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p41, align 8
  %context42 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %83, i32 0, i32 0
  %84 = load %struct._GimpContext*, %struct._GimpContext** %context42, align 8
  call void @gimp_context_define_properties(%struct._GimpContext* %84, i32 1015792, i32 0)
  %85 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p43 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %85, i32 0, i32 1
  %86 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p43, align 8
  %context44 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %86, i32 0, i32 0
  %87 = load %struct._GimpContext*, %struct._GimpContext** %context44, align 8
  %88 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  call void @gimp_context_set_parent(%struct._GimpContext* %87, %struct._GimpContext* %88)
  store %struct._GtkWidget* null, %struct._GtkWidget** %vbox, align 8
  %call45 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %vbox, align 8
  %89 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %90 = bitcast %struct._GimpDockWindow* %89 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_container_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call46)
  %91 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkContainer*
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %91, %struct._GtkWidget* %92)
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %93)
  store %struct._GtkWidget* null, %struct._GtkWidget** %hbox, align 8
  %call48 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 2)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %hbox, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %95 = bitcast %struct._GtkWidget* %94 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_box_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %95, i64 %call49)
  %96 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkBox*
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %96, %struct._GtkWidget* %97, i32 0, i32 0, i32 0)
  %98 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p51 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %98, i32 0, i32 1
  %99 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p51, align 8
  %show_image_menu = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %99, i32 0, i32 11
  %100 = load i32, i32* %show_image_menu, align 4
  %tobool52 = icmp ne i32 %100, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end
  %101 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %101)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end
  %call55 = call %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer* null, %struct._GimpContext* null, i32 16, i32 1)
  %102 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p56 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %102, i32 0, i32 1
  %103 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p56, align 8
  %image_combo = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %103, i32 0, i32 13
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %image_combo, align 8
  %104 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %105 = bitcast %struct._GtkWidget* %104 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_box_get_type() #7
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call57)
  %106 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkBox*
  %107 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p59 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %107, i32 0, i32 1
  %108 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p59, align 8
  %image_combo60 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %108, i32 0, i32 13
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo60, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %106, %struct._GtkWidget* %109, i32 1, i32 1, i32 0)
  %110 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p61 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %110, i32 0, i32 1
  %111 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p61, align 8
  %image_combo62 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %111, i32 0, i32 13
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo62, align 8
  %113 = bitcast %struct._GtkWidget* %112 to i8*
  %114 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p63 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %114, i32 0, i32 1
  %115 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p63, align 8
  %image_combo64 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %115, i32 0, i32 13
  %116 = bitcast %struct._GtkWidget** %image_combo64 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkWidget**)* @gtk_widget_destroyed to void ()*), i8* %116, void (i8*, %struct._GClosure*)* null, i32 0)
  %117 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p66 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %117, i32 0, i32 1
  %118 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p66, align 8
  %image_combo67 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %118, i32 0, i32 13
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo67, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %119, i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0))
  %120 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p68 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %120, i32 0, i32 1
  %121 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p68, align 8
  %image_combo69 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %121, i32 0, i32 13
  %122 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo69, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %122)
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #6
  %call71 = call %struct._GtkWidget* @gtk_toggle_button_new_with_label(i8* %call70)
  %123 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p72 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %123, i32 0, i32 1
  %124 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p72, align 8
  %auto_button = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %124, i32 0, i32 14
  store %struct._GtkWidget* %call71, %struct._GtkWidget** %auto_button, align 8
  %125 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p73 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %125, i32 0, i32 1
  %126 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p73, align 8
  %auto_button74 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %126, i32 0, i32 14
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_button74, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_toggle_button_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call75)
  %129 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkToggleButton*
  %130 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p77 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %130, i32 0, i32 1
  %131 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p77, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %131, i32 0, i32 12
  %132 = load i32, i32* %auto_follow_active, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %129, i32 %132)
  %133 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %134 = bitcast %struct._GtkWidget* %133 to %struct._GTypeInstance*
  %call78 = call i64 @gtk_box_get_type() #7
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call78)
  %135 = bitcast %struct._GTypeInstance* %call79 to %struct._GtkBox*
  %136 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p80 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %136, i32 0, i32 1
  %137 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p80, align 8
  %auto_button81 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %137, i32 0, i32 14
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_button81, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %135, %struct._GtkWidget* %138, i32 0, i32 0, i32 0)
  %139 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p82 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %139, i32 0, i32 1
  %140 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p82, align 8
  %auto_button83 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %140, i32 0, i32 14
  %141 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_button83, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %141)
  %142 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p84 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %142, i32 0, i32 1
  %143 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p84, align 8
  %auto_button85 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %143, i32 0, i32 14
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_button85, align 8
  %145 = bitcast %struct._GtkWidget* %144 to i8*
  %146 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %147 = bitcast %struct._GimpDockWindow* %146 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpDock*)* @gimp_dock_window_auto_clicked to void ()*), i8* %147, void (i8*, %struct._GClosure*)* null, i32 0)
  %148 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p87 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %148, i32 0, i32 1
  %149 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p87, align 8
  %auto_button88 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %149, i32 0, i32 14
  %150 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_button88, align 8
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.26, i32 0, i32 0)) #6
  call void @gimp_help_set_help_data(%struct._GtkWidget* %150, i8* %call89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0))
  %151 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p90 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %151, i32 0, i32 1
  %152 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p90, align 8
  %context91 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %152, i32 0, i32 0
  %153 = load %struct._GimpContext*, %struct._GimpContext** %context91, align 8
  %154 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p92 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %154, i32 0, i32 1
  %155 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p92, align 8
  %dialog_factory93 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %155, i32 0, i32 1
  %156 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory93, align 8
  %157 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p94 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %157, i32 0, i32 1
  %158 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p94, align 8
  %ui_manager95 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %158, i32 0, i32 3
  %159 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager95, align 8
  %call96 = call %struct._GtkWidget* @gimp_dock_columns_new(%struct._GimpContext* %153, %struct._GimpDialogFactory* %156, %struct._GimpUIManager* %159)
  %160 = bitcast %struct._GtkWidget* %call96 to %struct._GTypeInstance*
  %call97 = call i64 @gimp_dock_columns_get_type() #7
  %call98 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %160, i64 %call97)
  %161 = bitcast %struct._GTypeInstance* %call98 to %struct._GimpDockColumns*
  %162 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p99 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %162, i32 0, i32 1
  %163 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p99, align 8
  %dock_columns = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %163, i32 0, i32 5
  store %struct._GimpDockColumns* %161, %struct._GimpDockColumns** %dock_columns, align 8
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call100 = call i64 @gtk_box_get_type() #7
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call100)
  %166 = bitcast %struct._GTypeInstance* %call101 to %struct._GtkBox*
  %167 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p102 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %167, i32 0, i32 1
  %168 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p102, align 8
  %dock_columns103 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %168, i32 0, i32 5
  %169 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns103, align 8
  %170 = bitcast %struct._GimpDockColumns* %169 to %struct._GTypeInstance*
  %call104 = call i64 @gtk_widget_get_type() #7
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %170, i64 %call104)
  %171 = bitcast %struct._GTypeInstance* %call105 to %struct._GtkWidget*
  call void @gtk_box_pack_start(%struct._GtkBox* %166, %struct._GtkWidget* %171, i32 1, i32 1, i32 0)
  %172 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p106 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %172, i32 0, i32 1
  %173 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p106, align 8
  %dock_columns107 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %173, i32 0, i32 5
  %174 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns107, align 8
  %175 = bitcast %struct._GimpDockColumns* %174 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_widget_get_type() #7
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %175, i64 %call108)
  %176 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %176)
  %177 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p110 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %177, i32 0, i32 1
  %178 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p110, align 8
  %dock_columns111 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %178, i32 0, i32 5
  %179 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns111, align 8
  %180 = bitcast %struct._GimpDockColumns* %179 to i8*
  %181 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %182 = bitcast %struct._GimpDockWindow* %181 to i8*
  %call112 = call i64 @g_signal_connect_object(i8* %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDockWindow*, %struct._GimpDock*, %struct._GimpDockColumns*)* @gimp_dock_window_dock_removed to void ()*), i8* %182, i32 2)
  %183 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p113 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %183, i32 0, i32 1
  %184 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p113, align 8
  %dock_columns114 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %184, i32 0, i32 5
  %185 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns114, align 8
  %186 = bitcast %struct._GimpDockColumns* %185 to i8*
  %187 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %188 = bitcast %struct._GimpDockWindow* %187 to i8*
  %call115 = call i64 @g_signal_connect_object(i8* %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDockWindow*)* @gimp_dock_window_update_title to void ()*), i8* %188, i32 2)
  %189 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p116 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %189, i32 0, i32 1
  %190 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p116, align 8
  %dock_columns117 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %190, i32 0, i32 5
  %191 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns117, align 8
  %192 = bitcast %struct._GimpDockColumns* %191 to i8*
  %193 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %194 = bitcast %struct._GimpDockWindow* %193 to i8*
  %call118 = call i64 @g_signal_connect_object(i8* %192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDockWindow*)* @gimp_dock_window_update_title to void ()*), i8* %194, i32 2)
  %195 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p119 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %195, i32 0, i32 1
  %196 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p119, align 8
  %auto_follow_active120 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %196, i32 0, i32 12
  %197 = load i32, i32* %auto_follow_active120, align 4
  %tobool121 = icmp ne i32 %197, 0
  br i1 %tobool121, label %if.then.122, label %if.end.131

if.then.122:                                      ; preds = %if.end.54
  %198 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %call123 = call i8* @gimp_context_get_display(%struct._GimpContext* %198)
  %tobool124 = icmp ne i8* %call123, null
  br i1 %tobool124, label %if.then.125, label %if.else

if.then.125:                                      ; preds = %if.then.122
  %199 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %200 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p126 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %200, i32 0, i32 1
  %201 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p126, align 8
  %context127 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %201, i32 0, i32 0
  %202 = load %struct._GimpContext*, %struct._GimpContext** %context127, align 8
  call void @gimp_context_copy_property(%struct._GimpContext* %199, %struct._GimpContext* %202, i32 3)
  br label %if.end.130

if.else:                                          ; preds = %if.then.122
  %203 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %204 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p128 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %204, i32 0, i32 1
  %205 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p128, align 8
  %context129 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %205, i32 0, i32 0
  %206 = load %struct._GimpContext*, %struct._GimpContext** %context129, align 8
  call void @gimp_context_copy_property(%struct._GimpContext* %203, %struct._GimpContext* %206, i32 2)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else, %if.then.125
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.54
  %207 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %208 = bitcast %struct._GimpContext* %207 to i8*
  %209 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %210 = bitcast %struct._GimpDockWindow* %209 to i8*
  %call132 = call i64 @g_signal_connect_object(i8* %208, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpObject*, %struct._GimpDock*)* @gimp_dock_window_factory_display_changed to void ()*), i8* %210, i32 0)
  %211 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %212 = bitcast %struct._GimpContext* %211 to i8*
  %213 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %214 = bitcast %struct._GimpDockWindow* %213 to i8*
  %call133 = call i64 @g_signal_connect_object(i8* %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContext*, %struct._GimpImage*, %struct._GimpDock*)* @gimp_dock_window_factory_image_changed to void ()*), i8* %214, i32 0)
  %215 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %216 = bitcast %struct._GimpDockWindow* %215 to %struct._GTypeInstance*
  %call134 = call i64 @gtk_widget_get_type() #7
  %call135 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %216, i64 %call134)
  %217 = bitcast %struct._GTypeInstance* %call135 to %struct._GtkWidget*
  %call136 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %217)
  store %struct._GtkSettings* %call136, %struct._GtkSettings** %settings, align 8
  %218 = load %struct._GtkSettings*, %struct._GtkSettings** %settings, align 8
  %call137 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %218, i32 2, i32* %menu_view_width, i32* %menu_view_height)
  %219 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p138 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %219, i32 0, i32 1
  %220 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p138, align 8
  %image_combo139 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %220, i32 0, i32 13
  %221 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo139, align 8
  %222 = bitcast %struct._GtkWidget* %221 to i8*
  %223 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p140 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %223, i32 0, i32 1
  %224 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p140, align 8
  %image_container141 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %224, i32 0, i32 9
  %225 = load %struct._GimpContainer*, %struct._GimpContainer** %image_container141, align 8
  %226 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p142 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %226, i32 0, i32 1
  %227 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p142, align 8
  %context143 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %227, i32 0, i32 0
  %228 = load %struct._GimpContext*, %struct._GimpContext** %context143, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %222, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), %struct._GimpContainer* %225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._GimpContext* %228, i8* null)
  %229 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %230 = bitcast %struct._GimpDockWindow* %229 to %struct._GTypeInstance*
  %call144 = call i64 @gtk_widget_get_type() #7
  %call145 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %230, i64 %call144)
  %231 = bitcast %struct._GTypeInstance* %call145 to %struct._GtkWidget*
  call void @gimp_help_connect(%struct._GtkWidget* %231, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* null)
  %232 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p146 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %232, i32 0, i32 1
  %233 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p146, align 8
  %auto_follow_active147 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %233, i32 0, i32 12
  %234 = load i32, i32* %auto_follow_active147, align 4
  %tobool148 = icmp ne i32 %234, 0
  br i1 %tobool148, label %if.then.149, label %if.end.159

if.then.149:                                      ; preds = %if.end.131
  %235 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %call150 = call i8* @gimp_context_get_display(%struct._GimpContext* %235)
  %tobool151 = icmp ne i8* %call150, null
  br i1 %tobool151, label %if.then.152, label %if.else.155

if.then.152:                                      ; preds = %if.then.149
  %236 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %237 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p153 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %237, i32 0, i32 1
  %238 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p153, align 8
  %context154 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %238, i32 0, i32 0
  %239 = load %struct._GimpContext*, %struct._GimpContext** %context154, align 8
  call void @gimp_context_copy_property(%struct._GimpContext* %236, %struct._GimpContext* %239, i32 3)
  br label %if.end.158

if.else.155:                                      ; preds = %if.then.149
  %240 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %241 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p156 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %241, i32 0, i32 1
  %242 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p156, align 8
  %context157 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %242, i32 0, i32 0
  %243 = load %struct._GimpContext*, %struct._GimpContext** %context157, align 8
  call void @gimp_context_copy_property(%struct._GimpContext* %240, %struct._GimpContext* %243, i32 2)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.152
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.131
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  %3 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %3, i32 0, i32 1
  %4 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %update_title_idle_id = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %4, i32 0, i32 7
  %5 = load i32, i32* %update_title_idle_id, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p2 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %6, i32 0, i32 1
  %7 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p2, align 8
  %update_title_idle_id3 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %7, i32 0, i32 7
  %8 = load i32, i32* %update_title_idle_id3, align 4
  %call4 = call i32 @g_source_remove(i32 %8)
  %9 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p5 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %9, i32 0, i32 1
  %10 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p5, align 8
  %update_title_idle_id6 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %10, i32 0, i32 7
  store i32 0, i32* %update_title_idle_id6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p7 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %11, i32 0, i32 1
  %12 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p7, align 8
  %image_flush_handler_id = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %12, i32 0, i32 4
  %13 = load i32, i32* %image_flush_handler_id, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end
  %14 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p10 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %14, i32 0, i32 1
  %15 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p10, align 8
  %context = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %15, i32 0, i32 0
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %images = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 26
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %images, align 8
  %19 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p11 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %19, i32 0, i32 1
  %20 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p11, align 8
  %image_flush_handler_id12 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %20, i32 0, i32 4
  %21 = load i32, i32* %image_flush_handler_id12, align 4
  call void @gimp_container_remove_handler(%struct._GimpContainer* %18, i32 %21)
  %22 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p13 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %22, i32 0, i32 1
  %23 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p13, align 8
  %image_flush_handler_id14 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %23, i32 0, i32 4
  store i32 0, i32* %image_flush_handler_id14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.9, %if.end
  %24 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p16 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %24, i32 0, i32 1
  %25 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p16, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %25, i32 0, i32 3
  %26 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool17 = icmp ne %struct._GimpUIManager* %26, null
  br i1 %tobool17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.15
  %27 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p19 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %27, i32 0, i32 1
  %28 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p19, align 8
  %ui_manager20 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %28, i32 0, i32 3
  %29 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager20, align 8
  %30 = bitcast %struct._GimpUIManager* %29 to i8*
  call void @g_object_unref(i8* %30)
  %31 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p21 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %31, i32 0, i32 1
  %32 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p21, align 8
  %ui_manager22 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %32, i32 0, i32 3
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %ui_manager22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.15
  %33 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p24 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %33, i32 0, i32 1
  %34 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p24, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %34, i32 0, i32 1
  %35 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %tobool25 = icmp ne %struct._GimpDialogFactory* %35, null
  br i1 %tobool25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.23
  %36 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p27 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %36, i32 0, i32 1
  %37 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p27, align 8
  %dialog_factory28 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %37, i32 0, i32 1
  %38 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory28, align 8
  %39 = bitcast %struct._GimpDialogFactory* %38 to i8*
  call void @g_object_unref(i8* %39)
  %40 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p29 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %40, i32 0, i32 1
  %41 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p29, align 8
  %dialog_factory30 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %41, i32 0, i32 1
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %dialog_factory30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %if.end.23
  %42 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p32 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %42, i32 0, i32 1
  %43 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p32, align 8
  %context33 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %43, i32 0, i32 0
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context33, align 8
  %tobool34 = icmp ne %struct._GimpContext* %44, null
  br i1 %tobool34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.end.31
  %45 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p36 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %45, i32 0, i32 1
  %46 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p36, align 8
  %context37 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %46, i32 0, i32 0
  %47 = load %struct._GimpContext*, %struct._GimpContext** %context37, align 8
  %48 = bitcast %struct._GimpContext* %47 to i8*
  call void @g_object_unref(i8* %48)
  %49 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p38 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %49, i32 0, i32 1
  %50 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p38, align 8
  %context39 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %50, i32 0, i32 0
  store %struct._GimpContext* null, %struct._GimpContext** %context39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %if.end.31
  %51 = load i8*, i8** @gimp_dock_window_parent_class, align 8
  %52 = bitcast i8* %51 to %struct._GTypeClass*
  %call41 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %52, i64 80)
  %53 = bitcast %struct._GTypeClass* %call41 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %53, i32 0, i32 5
  %54 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %55 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %54(%struct._GObject* %55)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  %3 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %3, i32 0, i32 1
  %4 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %ui_manager_name = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %4, i32 0, i32 2
  %5 = load i8*, i8** %ui_manager_name, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p2 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %6, i32 0, i32 1
  %7 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p2, align 8
  %ui_manager_name3 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %7, i32 0, i32 2
  %8 = load i8*, i8** %ui_manager_name3, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p4 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %9, i32 0, i32 1
  %10 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p4, align 8
  %ui_manager_name5 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %10, i32 0, i32 2
  store i8* null, i8** %ui_manager_name5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8*, i8** @gimp_dock_window_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 80)
  %13 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %13, i32 0, i32 6
  %14 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %14(%struct._GObject* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.11
    i32 5, label %sw.bb.14
    i32 6, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpContext*
  %6 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %6, i32 0, i32 1
  %7 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %7, i32 0, i32 0
  store %struct._GimpContext* %5, %struct._GimpContext** %context, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_object(%struct._GValue* %8)
  %9 = bitcast i8* %call4 to %struct._GimpDialogFactory*
  %10 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p5 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %10, i32 0, i32 1
  %11 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p5, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %11, i32 0, i32 1
  store %struct._GimpDialogFactory* %9, %struct._GimpDialogFactory** %dialog_factory, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %12 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p7 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %12, i32 0, i32 1
  %13 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p7, align 8
  %ui_manager_name = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %13, i32 0, i32 2
  %14 = load i8*, i8** %ui_manager_name, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_dup_string(%struct._GValue* %15)
  %16 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p9 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %16, i32 0, i32 1
  %17 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p9, align 8
  %ui_manager_name10 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %17, i32 0, i32 2
  store i8* %call8, i8** %ui_manager_name10, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i8* @g_value_dup_object(%struct._GValue* %18)
  %19 = bitcast i8* %call12 to %struct._GimpContainer*
  %20 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p13 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %20, i32 0, i32 1
  %21 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p13, align 8
  %image_container = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %21, i32 0, i32 9
  store %struct._GimpContainer* %19, %struct._GimpContainer** %image_container, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i8* @g_value_dup_object(%struct._GValue* %22)
  %23 = bitcast i8* %call15 to %struct._GimpContainer*
  %24 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p16 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %24, i32 0, i32 1
  %25 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p16, align 8
  %display_container = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %25, i32 0, i32 10
  store %struct._GimpContainer* %23, %struct._GimpContainer** %display_container, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %26)
  %27 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p19 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %27, i32 0, i32 1
  %28 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p19, align 8
  %allow_dockbook_absence = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %28, i32 0, i32 6
  store i32 %call18, i32* %allow_dockbook_absence, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %29, %struct._GObject** %_glib__object, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %30, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = load i32, i32* %property_id.addr, align 4
  store i32 %31, i32* %_glib__property_id, align 4
  %32 = load i32, i32* %_glib__property_id, align 4
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %33, i32 0, i32 1
  %34 = load i8*, i8** %name, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = bitcast %struct._GParamSpec* %35 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type, align 8
  %call20 = call i8* @g_type_name(i64 %38)
  %39 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type22, align 8
  %call23 = call i8* @g_type_name(i64 %42)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i32 564, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %32, i8* %34, i8* %call20, i8* %call23)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.17, %sw.bb.14, %sw.bb.11, %sw.bb.6, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.6
    i32 5, label %sw.bb.8
    i32 6, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %5, i32 0, i32 1
  %6 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %6, i32 0, i32 0
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %8 = bitcast %struct._GimpContext* %7 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %8)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %10 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p3 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %10, i32 0, i32 1
  %11 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p3, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %11, i32 0, i32 1
  %12 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %13 = bitcast %struct._GimpDialogFactory* %12 to i8*
  call void @g_value_set_object(%struct._GValue* %9, i8* %13)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p5 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %15, i32 0, i32 1
  %16 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p5, align 8
  %ui_manager_name = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %16, i32 0, i32 2
  %17 = load i8*, i8** %ui_manager_name, align 8
  call void @g_value_set_string(%struct._GValue* %14, i8* %17)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %19 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p7 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %19, i32 0, i32 1
  %20 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p7, align 8
  %image_container = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %20, i32 0, i32 9
  %21 = load %struct._GimpContainer*, %struct._GimpContainer** %image_container, align 8
  %22 = bitcast %struct._GimpContainer* %21 to i8*
  call void @g_value_set_object(%struct._GValue* %18, i8* %22)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %24 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p9 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %24, i32 0, i32 1
  %25 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p9, align 8
  %display_container = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %25, i32 0, i32 10
  %26 = load %struct._GimpContainer*, %struct._GimpContainer** %display_container, align 8
  %27 = bitcast %struct._GimpContainer* %26 to i8*
  call void @g_value_set_object(%struct._GValue* %23, i8* %27)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p11 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %29, i32 0, i32 1
  %30 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p11, align 8
  %allow_dockbook_absence = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %30, i32 0, i32 6
  %31 = load i32, i32* %allow_dockbook_absence, align 4
  call void @g_value_set_boolean(%struct._GValue* %28, i32 %31)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %32, %struct._GObject** %_glib__object, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %33, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = load i32, i32* %property_id.addr, align 4
  store i32 %34, i32* %_glib__property_id, align 4
  %35 = load i32, i32* %_glib__property_id, align 4
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %39 = bitcast %struct._GParamSpec* %38 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type, align 8
  %call12 = call i8* @g_type_name(i64 %41)
  %42 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %43 = bitcast %struct._GObject* %42 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type14, align 8
  %call15 = call i8* @g_type_name(i64 %45)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i32 604, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %35, i8* %37, i8* %call12, i8* %call15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %button_style = alloca %struct._GtkStyle*, align 8
  %menu_view_size = alloca i32, align 4
  %settings = alloca %struct._GtkSettings*, align 8
  %menu_view_width = alloca i32, align 4
  %menu_view_height = alloca i32, align 4
  %focus_line_width = alloca i32, align 4
  %focus_padding = alloca i32, align 4
  %ythickness = alloca i32, align 4
  %default_height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  store i32 18, i32* %menu_view_width, align 4
  store i32 18, i32* %menu_view_height, align 4
  store i32 300, i32* %default_height, align 4
  %3 = load i8*, i8** @gimp_dock_window_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32* %default_height, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32* %menu_view_size, i8* null)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  %13 = load i32, i32* %default_height, align 4
  call void @gtk_window_set_default_size(%struct._GtkWindow* %12, i32 -1, i32 %13)
  %14 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %14, i32 0, i32 1
  %15 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %image_combo = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %15, i32 0, i32 13
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo, align 8
  %call6 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %16)
  store %struct._GtkSettings* %call6, %struct._GtkSettings** %settings, align 8
  %17 = load %struct._GtkSettings*, %struct._GtkSettings** %settings, align 8
  %18 = load i32, i32* %menu_view_size, align 4
  %call7 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %17, i32 %18, i32* %menu_view_width, i32* %menu_view_height)
  %19 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p8 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %19, i32 0, i32 1
  %20 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p8, align 8
  %auto_button = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %20, i32 0, i32 14
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_button, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0), i32* %focus_line_width, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i32* %focus_padding, i8* null)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call9 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %22)
  store %struct._GtkStyle* %call9, %struct._GtkStyle** %button_style, align 8
  %23 = load %struct._GtkStyle*, %struct._GtkStyle** %button_style, align 8
  %ythickness10 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %23, i32 0, i32 13
  %24 = load i32, i32* %ythickness10, align 4
  store i32 %24, i32* %ythickness, align 4
  %25 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p11 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %25, i32 0, i32 1
  %26 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p11, align 8
  %image_combo12 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %26, i32 0, i32 13
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %image_combo12, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_container_view_interface_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call13)
  %29 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpContainerView*
  %30 = load i32, i32* %menu_view_height, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %29, i32 %30, i32 1)
  %31 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p15 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %31, i32 0, i32 1
  %32 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p15, align 8
  %auto_button16 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %32, i32 0, i32 14
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %auto_button16, align 8
  %34 = load i32, i32* %menu_view_height, align 4
  %35 = load i32, i32* %ythickness, align 4
  %add = add nsw i32 1, %35
  %36 = load i32, i32* %focus_padding, align 4
  %add17 = add nsw i32 %add, %36
  %37 = load i32, i32* %focus_line_width, align 4
  %add18 = add nsw i32 %add17, %37
  %mul = mul nsw i32 2, %add18
  %add19 = add nsw i32 %34, %mul
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %33, i32 -1, i32 %add19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dock_window_delete_event(%struct._GtkWidget* %widget, %struct._GdkEventAny* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventAny*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %info = alloca %struct._GimpSessionInfo*, align 8
  %entry_name = alloca i8*, align 8
  %entry2 = alloca %struct._GimpDialogFactoryEntry*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventAny* %event, %struct._GdkEventAny** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  store %struct._GimpSessionInfo* null, %struct._GimpSessionInfo** %info, align 8
  store i8* null, i8** %entry_name, align 8
  store %struct._GimpDialogFactoryEntry* null, %struct._GimpDialogFactoryEntry** %entry2, align 8
  store i8* null, i8** %name, align 8
  %3 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %call3 = call i32 @gimp_dock_window_should_add_to_recent(%struct._GimpDockWindow* %3)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call4 = call %struct._GimpSessionInfo* @gimp_session_info_new()
  store %struct._GimpSessionInfo* %call4, %struct._GimpSessionInfo** %info, align 8
  %4 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %call5 = call i8* @gimp_dock_window_get_description(%struct._GimpDockWindow* %4, i32 1)
  store i8* %call5, i8** %name, align 8
  %5 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %6 = bitcast %struct._GimpSessionInfo* %5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %8 = load i8*, i8** %name, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %7, i8* %8)
  %9 = load i8*, i8** %name, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %11 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %12 = bitcast %struct._GimpDockWindow* %11 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call8)
  %13 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  call void @gimp_session_info_get_info_with_widget(%struct._GimpSessionInfo* %10, %struct._GtkWidget* %13)
  %14 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %call10 = call i32 @gimp_dock_window_has_toolbox(%struct._GimpDockWindow* %14)
  %tobool11 = icmp ne i32 %call10, 0
  %cond = select i1 %tobool11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0)
  store i8* %cond, i8** %entry_name, align 8
  %call12 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %15 = load i8*, i8** %entry_name, align 8
  %call13 = call %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory* %call12, i8* %15)
  store %struct._GimpDialogFactoryEntry* %call13, %struct._GimpDialogFactoryEntry** %entry2, align 8
  %16 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %17 = load %struct._GimpDialogFactoryEntry*, %struct._GimpDialogFactoryEntry** %entry2, align 8
  call void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo* %16, %struct._GimpDialogFactoryEntry* %17)
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** @global_recent_docks, align 8
  %19 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %20 = bitcast %struct._GimpSessionInfo* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_object_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpObject*
  %call16 = call i32 @gimp_container_add(%struct._GimpContainer* %18, %struct._GimpObject* %21)
  %22 = load %struct._GimpSessionInfo*, %struct._GimpSessionInfo** %info, align 8
  %23 = bitcast %struct._GimpSessionInfo* %22 to i8*
  call void @g_object_unref(i8* %23)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_icon_size_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare void @g_object_unref(i8*) #1

declare %struct._GimpContext* @gimp_context_new(%struct._Gimp*, i8*, %struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory*) #1

declare void @gimp_window_set_hint(%struct._GtkWindow*, i32) #1

declare %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory*, i8*, i8*, i32) #1

declare %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare void @gtk_window_add_accel_group(%struct._GtkWindow*, %struct._GtkAccelGroup*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_display_changed(%struct._GimpDockWindow* %dock_window, %struct._GimpObject* %display, %struct._GimpContext* %context) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %factory_context = alloca %struct._GimpContext*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %tobool = icmp ne %struct._GimpObject* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %1, i32 0, i32 1
  %2 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %2, i32 0, i32 12
  %3 = load i32, i32* %auto_follow_active, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %4, i32 0, i32 1
  %5 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p2, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %5, i32 0, i32 1
  %6 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %call = call %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %6)
  store %struct._GimpContext* %call, %struct._GimpContext** %factory_context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %8 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %9 = bitcast %struct._GimpObject* %8 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %7, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p3 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %10, i32 0, i32 1
  %11 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p3, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %11, i32 0, i32 3
  %12 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %13 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %14 = bitcast %struct._GimpObject* %13 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %12, i8* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_image_changed(%struct._GimpDockWindow* %dock_window, %struct._GimpImage* %image, %struct._GimpContext* %context) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %image_container = alloca %struct._GimpContainer*, align 8
  %display_container = alloca %struct._GimpContainer*, align 8
  %factory_context = alloca %struct._GimpContext*, align 8
  %display = alloca %struct._GimpObject*, align 8
  %display_image = alloca %struct._GimpImage*, align 8
  %find_display = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %0, i32 0, i32 1
  %1 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %image_container1 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %1, i32 0, i32 9
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %image_container1, align 8
  store %struct._GimpContainer* %2, %struct._GimpContainer** %image_container, align 8
  %3 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %3, i32 0, i32 1
  %4 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p2, align 8
  %display_container3 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %4, i32 0, i32 10
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %display_container3, align 8
  store %struct._GimpContainer* %5, %struct._GimpContainer** %display_container, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool = icmp ne %struct._GimpImage* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %7, i32 0, i32 1
  %8 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p4, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %8, i32 0, i32 12
  %9 = load i32, i32* %auto_follow_active, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p6 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %10, i32 0, i32 1
  %11 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p6, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %11, i32 0, i32 1
  %12 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %call = call %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %12)
  store %struct._GimpContext* %call, %struct._GimpContext** %factory_context, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %factory_context, align 8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_context_set_image(%struct._GimpContext* %13, %struct._GimpImage* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %15, null
  br i1 %cmp, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %if.end
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %image_container, align 8
  %call8 = call i32 @gimp_container_is_empty(%struct._GimpContainer* %16)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.7
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %image_container, align 8
  %call11 = call %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer* %17)
  %18 = bitcast %struct._GimpObject* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_image_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpImage*
  store %struct._GimpImage* %19, %struct._GimpImage** %image.addr, align 8
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_context_set_image(%struct._GimpContext* %20, %struct._GimpImage* %21)
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %23 = bitcast %struct._GimpContext* %22 to i8*
  call void @g_signal_stop_emission_by_name(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.46

if.else:                                          ; preds = %land.lhs.true.7, %if.end
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp14 = icmp ne %struct._GimpImage* %24, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.45

land.lhs.true.15:                                 ; preds = %if.else
  %25 = load %struct._GimpContainer*, %struct._GimpContainer** %display_container, align 8
  %call16 = call i32 @gimp_container_is_empty(%struct._GimpContainer* %25)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.45, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.15
  store i32 1, i32* %find_display, align 4
  %26 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call19 = call i8* @gimp_context_get_display(%struct._GimpContext* %26)
  %27 = bitcast i8* %call19 to %struct._GimpObject*
  store %struct._GimpObject* %27, %struct._GimpObject** %display, align 8
  %28 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %tobool20 = icmp ne %struct._GimpObject* %28, null
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.then.18
  %29 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %30 = bitcast %struct._GimpObject* %29 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), %struct._GimpImage** %display_image, i8* null)
  %31 = load %struct._GimpImage*, %struct._GimpImage** %display_image, align 8
  %tobool22 = icmp ne %struct._GimpImage* %31, null
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.then.21
  %32 = load %struct._GimpImage*, %struct._GimpImage** %display_image, align 8
  %33 = bitcast %struct._GimpImage* %32 to i8*
  call void @g_object_unref(i8* %33)
  %34 = load %struct._GimpImage*, %struct._GimpImage** %display_image, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp24 = icmp eq %struct._GimpImage* %34, %35
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  store i32 0, i32* %find_display, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %36 = load i32, i32* %find_display, align 4
  %tobool29 = icmp ne i32 %36, 0
  br i1 %tobool29, label %if.then.30, label %if.end.44

if.then.30:                                       ; preds = %if.end.28
  %37 = load %struct._GimpContainer*, %struct._GimpContainer** %display_container, align 8
  %38 = bitcast %struct._GimpContainer* %37 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_list_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call31)
  %39 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpList*
  %list33 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %39, i32 0, i32 1
  %40 = load %struct._GList*, %struct._GList** %list33, align 8
  store %struct._GList* %40, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.30
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool34 = icmp ne %struct._GList* %41, null
  br i1 %tobool34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data, align 8
  %44 = bitcast i8* %43 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_object_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call35)
  %45 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpObject*
  store %struct._GimpObject* %45, %struct._GimpObject** %display, align 8
  %46 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %47 = bitcast %struct._GimpObject* %46 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), %struct._GimpImage** %display_image, i8* null)
  %48 = load %struct._GimpImage*, %struct._GimpImage** %display_image, align 8
  %tobool37 = icmp ne %struct._GimpImage* %48, null
  br i1 %tobool37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %for.body
  %49 = load %struct._GimpImage*, %struct._GimpImage** %display_image, align 8
  %50 = bitcast %struct._GimpImage* %49 to i8*
  call void @g_object_unref(i8* %50)
  %51 = load %struct._GimpImage*, %struct._GimpImage** %display_image, align 8
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp39 = icmp eq %struct._GimpImage* %51, %52
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.38
  %53 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %54 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %55 = bitcast %struct._GimpObject* %54 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %53, i8* %55)
  br label %for.end

if.end.41:                                        ; preds = %if.then.38
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %56 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool43 = icmp ne %struct._GList* %56, null
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %57 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %57, i32 0, i32 1
  %58 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %58, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.40, %for.cond
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %if.end.28
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.15, %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.10
  %59 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p47 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %59, i32 0, i32 1
  %60 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p47, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %60, i32 0, i32 3
  %61 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %62 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call48 = call i8* @gimp_context_get_display(%struct._GimpContext* %62)
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %61, i8* %call48)
  ret void
}

declare i32 @gimp_container_add_handler(%struct._GimpContainer*, i8*, void ()*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_image_flush(%struct._GimpImage* %image, i32 %invalidate_preview, %struct._GimpDockWindow* %dock_window) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %invalidate_preview.addr = alloca i32, align 4
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %display = alloca %struct._GimpObject*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %invalidate_preview, i32* %invalidate_preview.addr, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %1, i32 0, i32 1
  %2 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %2, i32 0, i32 0
  %3 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %3)
  %cmp = icmp eq %struct._GimpImage* %0, %call
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %4, i32 0, i32 1
  %5 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p1, align 8
  %context2 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %5, i32 0, i32 0
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context2, align 8
  %call3 = call i8* @gimp_context_get_display(%struct._GimpContext* %6)
  %7 = bitcast i8* %call3 to %struct._GimpObject*
  store %struct._GimpObject* %7, %struct._GimpObject** %display, align 8
  %8 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %tobool = icmp ne %struct._GimpObject* %8, null
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %9, i32 0, i32 1
  %10 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p5, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %10, i32 0, i32 3
  %11 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %12 = load %struct._GimpObject*, %struct._GimpObject** %display, align 8
  %13 = bitcast %struct._GimpObject* %12 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %11, i8* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

declare void @gimp_context_define_properties(%struct._GimpContext*, i32, i32) #1

declare void @gimp_context_set_parent(%struct._GimpContext*, %struct._GimpContext*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GtkWidget* @gimp_container_combo_box_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroyed(%struct._GtkWidget*, %struct._GtkWidget**) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_toggle_button_new_with_label(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_auto_clicked(%struct._GtkWidget* %widget, %struct._GimpDock* %dock) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %4, i32 0, i32 1
  %5 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %5, i32 0, i32 12
  %6 = bitcast i32* %auto_follow_active to i8*
  call void @gimp_toggle_button_update(%struct._GtkWidget* %3, i8* %6)
  %7 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p2 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %7, i32 0, i32 1
  %8 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p2, align 8
  %auto_follow_active3 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %8, i32 0, i32 12
  %9 = load i32, i32* %auto_follow_active3, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p4 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %10, i32 0, i32 1
  %11 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p4, align 8
  %dialog_factory = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %11, i32 0, i32 1
  %12 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %call5 = call %struct._GimpContext* @gimp_dialog_factory_get_context(%struct._GimpDialogFactory* %12)
  %13 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p6 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %13, i32 0, i32 1
  %14 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p6, align 8
  %context = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  call void @gimp_context_copy_properties(%struct._GimpContext* %call5, %struct._GimpContext* %15, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkWidget* @gimp_dock_columns_new(%struct._GimpContext*, %struct._GimpDialogFactory*, %struct._GimpUIManager*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_columns_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_dock_removed(%struct._GimpDockWindow* %dock_window, %struct._GimpDock* %dock, %struct._GimpDockColumns* %dock_columns) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_window_dock_removed, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %call11 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %13)
  %cmp12 = icmp eq %struct._GList* %call11, null
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.18

land.lhs.true.13:                                 ; preds = %do.end
  %14 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %14, i32 0, i32 1
  %15 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %allow_dockbook_absence = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %15, i32 0, i32 6
  %16 = load i32, i32* %allow_dockbook_absence, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.13
  %17 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %18 = bitcast %struct._GimpDockWindow* %17 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call16)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.15, %land.lhs.true.13, %do.end
  ret void
}

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare void @gimp_context_copy_property(%struct._GimpContext*, %struct._GimpContext*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_factory_display_changed(%struct._GimpContext* %context, %struct._GimpObject* %display, %struct._GimpDock* %dock) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %display.addr = alloca %struct._GimpObject*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpObject* %display, %struct._GimpObject** %display.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  %3 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %tobool = icmp ne %struct._GimpObject* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %4, i32 0, i32 1
  %5 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %5, i32 0, i32 12
  %6 = load i32, i32* %auto_follow_active, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p3 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %7, i32 0, i32 1
  %8 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p3, align 8
  %context4 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %8, i32 0, i32 0
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  %10 = load %struct._GimpObject*, %struct._GimpObject** %display.addr, align 8
  %11 = bitcast %struct._GimpObject* %10 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %9, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_factory_image_changed(%struct._GimpContext* %context, %struct._GimpImage* %image, %struct._GimpDock* %dock) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_window_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %2, %struct._GimpDockWindow** %dock_window, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool = icmp ne %struct._GimpImage* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %4, i32 0, i32 1
  %5 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %5, i32 0, i32 12
  %6 = load i32, i32* %auto_follow_active, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p3 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %7, i32 0, i32 1
  %8 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p3, align 8
  %context4 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %8, i32 0, i32 0
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context4, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_context_set_image(%struct._GimpContext* %9, %struct._GimpImage* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gimp_context_set_display(%struct._GimpContext*, i8*) #1

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare void @gimp_context_set_image(%struct._GimpContext*, %struct._GimpImage*) #1

declare i32 @gimp_container_is_empty(%struct._GimpContainer*) #1

declare %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare void @g_signal_stop_emission_by_name(i8*, i8*) #1

declare void @g_object_get(i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #1

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #1

declare void @gimp_context_copy_properties(%struct._GimpContext*, %struct._GimpContext*, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @g_source_remove(i32) #1

declare void @gimp_container_remove_handler(%struct._GimpContainer*, i32) #1

declare void @g_free(i8*) #1

declare i8* @g_value_dup_object(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @gtk_window_set_default_size(%struct._GtkWindow*, i32, i32) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gimp_container_view_set_view_size(%struct._GimpContainerView*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dock_window_should_add_to_recent(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %docks = alloca %struct._GList*, align 8
  %should_add = alloca i32, align 4
  %dock = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst26 = alloca %struct._GTypeInstance*, align 8
  %__t28 = alloca i64, align 8
  %__r31 = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store i32 1, i32* %should_add, align 4
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_container_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockContainer*
  %call2 = call %struct._GList* @gimp_dock_container_get_docks(%struct._GimpDockContainer* %2)
  store %struct._GList* %call2, %struct._GList** %docks, align 8
  %3 = load %struct._GList*, %struct._GList** %docks, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %should_add, align 4
  br label %if.end.55

if.else:                                          ; preds = %entry
  %4 = load %struct._GList*, %struct._GList** %docks, align 8
  %call3 = call i32 @g_list_length(%struct._GList* %4)
  %cmp = icmp eq i32 %call3, 1
  br i1 %cmp, label %if.then.4, label %if.end.54

if.then.4:                                        ; preds = %if.else
  %5 = load %struct._GList*, %struct._GList** %docks, align 8
  %call5 = call i8* @g_list_nth_data(%struct._GList* %5, i32 0)
  %6 = bitcast i8* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_dock_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call6)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDock*
  store %struct._GimpDock* %7, %struct._GimpDock** %dock, align 8
  %8 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %9 = bitcast %struct._GimpDock* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call8 = call i64 @gimp_toolbox_get_type() #7
  store i64 %call8, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool9 = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool9, label %if.else.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.4
  store i32 0, i32* %__r, align 4
  br label %if.end.18

if.else.11:                                       ; preds = %if.then.4
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool12 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool12, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else.11
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp14 = icmp eq i64 %15, %16
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.16:                                       ; preds = %land.lhs.true, %if.else.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call17 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #8
  store i32 %call17, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.10
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool19 = icmp ne i32 %20, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.else.24

land.lhs.true.20:                                 ; preds = %if.end.18
  %21 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call21 = call i32 @gimp_dock_get_n_dockables(%struct._GimpDock* %21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.20
  store i32 0, i32* %should_add, align 4
  br label %if.end.53

if.else.24:                                       ; preds = %land.lhs.true.20, %if.end.18
  %22 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %23 = bitcast %struct._GimpDock* %22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %23, %struct._GTypeInstance** %__inst26, align 8
  %call29 = call i64 @gimp_toolbox_get_type() #7
  store i64 %call29, i64* %__t28, align 8
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %tobool32 = icmp ne %struct._GTypeInstance* %24, null
  br i1 %tobool32, label %if.else.34, label %if.then.33

if.then.33:                                       ; preds = %if.else.24
  store i32 0, i32* %__r31, align 4
  br label %if.end.45

if.else.34:                                       ; preds = %if.else.24
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %tobool36 = icmp ne %struct._GTypeClass* %26, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.else.42

land.lhs.true.37:                                 ; preds = %if.else.34
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %g_class38 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class38, align 8
  %g_type39 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type39, align 8
  %30 = load i64, i64* %__t28, align 8
  %cmp40 = icmp eq i64 %29, %30
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %__r31, align 4
  br label %if.end.44

if.else.42:                                       ; preds = %land.lhs.true.37, %if.else.34
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst26, align 8
  %32 = load i64, i64* %__t28, align 8
  %call43 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #8
  store i32 %call43, i32* %__r31, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.33
  %33 = load i32, i32* %__r31, align 4
  store i32 %33, i32* %tmp46
  %34 = load i32, i32* %tmp46
  %tobool47 = icmp ne i32 %34, 0
  br i1 %tobool47, label %if.end.52, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %if.end.45
  %35 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call49 = call i32 @gimp_dock_get_n_dockables(%struct._GimpDock* %35)
  %cmp50 = icmp eq i32 %call49, 1
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.48
  store i32 0, i32* %should_add, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.48, %if.end.45
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.23
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.else
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then
  %36 = load %struct._GList*, %struct._GList** %docks, align 8
  call void @g_list_free(%struct._GList* %36)
  %37 = load i32, i32* %should_add, align 4
  ret i32 %37
}

declare %struct._GimpSessionInfo* @gimp_session_info_new() #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_dock_window_get_description(%struct._GimpDockWindow* %dock_window, i32 %complete) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %complete.addr = alloca i32, align 4
  %complete_desc = alloca %struct._GString*, align 8
  %docks = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %desc = alloca i8*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  store i32 %complete, i32* %complete.addr, align 4
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %complete_desc, align 8
  store %struct._GList* null, %struct._GList** %docks, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %1 = bitcast %struct._GimpDockWindow* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_dock_container_interface_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDockContainer*
  %call3 = call %struct._GList* @gimp_dock_container_get_docks(%struct._GimpDockContainer* %2)
  store %struct._GList* %call3, %struct._GList** %docks, align 8
  %3 = load %struct._GList*, %struct._GList** %docks, align 8
  store %struct._GList* %3, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %4 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_dock_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDock*
  %9 = load i32, i32* %complete.addr, align 4
  %call6 = call i8* @gimp_dock_get_description(%struct._GimpDock* %8, i32 %9)
  store i8* %call6, i8** %desc, align 8
  %10 = load %struct._GString*, %struct._GString** %complete_desc, align 8
  %11 = load i8*, i8** %desc, align 8
  %call7 = call %struct._GString* @g_string_append(%struct._GString* %10, i8* %11)
  %12 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %12)
  %13 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool8 = icmp ne %struct._GList* %13, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 1
  %15 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool9 = icmp ne %struct._GList* %15, null
  br i1 %tobool9, label %if.then, label %if.end

cond.false:                                       ; preds = %for.body
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %16 = load %struct._GString*, %struct._GString** %complete_desc, align 8
  %call10 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i64 5)
  %call11 = call %struct._GString* @g_string_append(%struct._GString* %16, i8* %call10)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool12 = icmp ne %struct._GList* %17, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.15

cond.true.13:                                     ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %iter, align 8
  %next14 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next14, align 8
  br label %cond.end

cond.false.15:                                    ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.13
  %cond = phi %struct._GList* [ %19, %cond.true.13 ], [ null, %cond.false.15 ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %docks, align 8
  call void @g_list_free(%struct._GList* %20)
  %21 = load %struct._GString*, %struct._GString** %complete_desc, align 8
  %call16 = call i8* @g_string_free(%struct._GString* %21, i32 0)
  ret i8* %call16
}

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

declare void @gimp_session_info_get_info_with_widget(%struct._GimpSessionInfo*, %struct._GtkWidget*) #1

declare %struct._GimpDialogFactoryEntry* @gimp_dialog_factory_find_entry(%struct._GimpDialogFactory*, i8*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare void @gimp_session_info_set_factory_entry(%struct._GimpSessionInfo*, %struct._GimpDialogFactoryEntry*) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GList* @gimp_dock_container_get_docks(%struct._GimpDockContainer*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare i8* @g_list_nth_data(%struct._GList*, i32) #1

declare i32 @gimp_dock_get_n_dockables(%struct._GimpDock*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare i8* @gimp_dock_get_description(%struct._GimpDock*, i32) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gtk_widget_set_name(%struct._GtkWidget*, i8*) #1

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #1

declare void @gtk_window_set_focus_on_map(%struct._GtkWindow*, i32) #1

declare void @gtk_window_set_skip_taskbar_hint(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_dock_window_get_docks(%struct._GimpDockContainer* %dock_container) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %dock_container.addr = alloca %struct._GimpDockContainer*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
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
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dock_window_get_docks, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %14 = bitcast %struct._GimpDockContainer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dock_window_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %15, %struct._GimpDockWindow** %dock_window, align 8
  %16 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %16, i32 0, i32 1
  %17 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %dock_columns = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %17, i32 0, i32 5
  %18 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %call13 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %18)
  %call14 = call %struct._GList* @g_list_copy(%struct._GList* %call13)
  store %struct._GList* %call14, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpUIManager* @gimp_dock_window_get_ui_manager(%struct._GimpDockContainer* %dock_container) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %dock_container.addr = alloca %struct._GimpDockContainer*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
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
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dock_window_get_ui_manager, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %14 = bitcast %struct._GimpDockContainer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dock_window_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %15, %struct._GimpDockWindow** %dock_window, align 8
  %16 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %16, i32 0, i32 1
  %17 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %17, i32 0, i32 3
  %18 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  store %struct._GimpUIManager* %18, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %19
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_add_dock_from_session(%struct._GimpDockContainer* %dock_container, %struct._GimpDock* %dock, %struct._GimpSessionInfoDock* %dock_info) #3 {
entry:
  %dock_container.addr = alloca %struct._GimpDockContainer*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dock_info.addr = alloca %struct._GimpSessionInfoDock*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
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
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_dock_window_add_dock_from_session, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %14 = bitcast %struct._GimpDockContainer* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dock_window_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %15, %struct._GimpDockWindow** %dock_window, align 8
  %16 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %17 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dock_window_add_dock(%struct._GimpDockWindow* %16, %struct._GimpDock* %17, i32 -1)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dock_window_get_dock_side(%struct._GimpDockContainer* %dock_container, %struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca i32, align 4
  %dock_container.addr = alloca %struct._GimpDockContainer*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDockContainer* %dock_container, %struct._GimpDockContainer** %dock_container.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container.addr, align 8
  %1 = bitcast %struct._GimpDockContainer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dock_window_get_dock_side, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dock_get_type() #7
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dock_window_get_dock_side, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare %struct._GList* @g_list_copy(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_dock_window_get_aux_info(%struct._GimpSessionManaged* %session_managed) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %session_managed.addr = alloca %struct._GimpSessionManaged*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %aux_info = alloca %struct._GList*, align 8
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst18 = alloca %struct._GTypeInstance*, align 8
  %__t20 = alloca i64, align 8
  %__r23 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store %struct._GimpSessionManaged* %session_managed, %struct._GimpSessionManaged** %session_managed.addr, align 8
  store %struct._GList* null, %struct._GList** %aux_info, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %1 = bitcast %struct._GimpSessionManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_window_get_aux_info, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %14 = bitcast %struct._GimpSessionManaged* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dock_window_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %15, %struct._GimpDockWindow** %dock_window, align 8
  %16 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %16, i32 0, i32 1
  %17 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %allow_dockbook_absence = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %17, i32 0, i32 6
  %18 = load i32, i32* %allow_dockbook_absence, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  br label %do.body.16

do.body.16:                                       ; preds = %if.end.15
  %19 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %20 = bitcast %struct._GimpDockWindow* %19 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %20, %struct._GTypeInstance** %__inst18, align 8
  %call21 = call i64 @gimp_dock_window_get_type() #7
  store i64 %call21, i64* %__t20, align 8
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %tobool24 = icmp ne %struct._GTypeInstance* %21, null
  br i1 %tobool24, label %if.else.26, label %if.then.25

if.then.25:                                       ; preds = %do.body.16
  store i32 0, i32* %__r23, align 4
  br label %if.end.37

if.else.26:                                       ; preds = %do.body.16
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %23, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.34

land.lhs.true.29:                                 ; preds = %if.else.26
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type31, align 8
  %27 = load i64, i64* %__t20, align 8
  %cmp32 = icmp eq i64 %26, %27
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r23, align 4
  br label %if.end.36

if.else.34:                                       ; preds = %land.lhs.true.29, %if.else.26
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst18, align 8
  %29 = load i64, i64* %__t20, align 8
  %call35 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %28, i64 %29) #8
  store i32 %call35, i32* %__r23, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.25
  %30 = load i32, i32* %__r23, align 4
  store i32 %30, i32* %tmp38
  %31 = load i32, i32* %tmp38
  %tobool39 = icmp ne i32 %31, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.37
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.37
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_window_get_aux_info, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %32 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p44 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %32, i32 0, i32 1
  %33 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p44, align 8
  %show_image_menu = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %33, i32 0, i32 11
  %34 = load i32, i32* %show_image_menu, align 4
  %tobool45 = icmp ne i32 %34, 0
  %cond = select i1 %tobool45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)
  %call46 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i8* %cond)
  store %struct._GimpSessionInfoAux* %call46, %struct._GimpSessionInfoAux** %aux, align 8
  %35 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %36 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %37 = bitcast %struct._GimpSessionInfoAux* %36 to i8*
  %call47 = call %struct._GList* @g_list_append(%struct._GList* %35, i8* %37)
  store %struct._GList* %call47, %struct._GList** %aux_info, align 8
  %38 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p48 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %38, i32 0, i32 1
  %39 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p48, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %39, i32 0, i32 12
  %40 = load i32, i32* %auto_follow_active, align 4
  %tobool49 = icmp ne i32 %40, 0
  %cond50 = select i1 %tobool49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)
  %call51 = call %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), i8* %cond50)
  store %struct._GimpSessionInfoAux* %call51, %struct._GimpSessionInfoAux** %aux, align 8
  %41 = load %struct._GList*, %struct._GList** %aux_info, align 8
  %42 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %43 = bitcast %struct._GimpSessionInfoAux* %42 to i8*
  %call52 = call %struct._GList* @g_list_append(%struct._GList* %41, i8* %43)
  store %struct._GList* %call52, %struct._GList** %aux_info, align 8
  %44 = load %struct._GList*, %struct._GList** %aux_info, align 8
  store %struct._GList* %44, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end.43, %if.else.41, %if.then.14, %if.else.9
  %45 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %45
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_window_set_aux_info(%struct._GimpSessionManaged* %session_managed, %struct._GList* %aux_info) #3 {
entry:
  %session_managed.addr = alloca %struct._GimpSessionManaged*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %list = alloca %struct._GList*, align 8
  %menu_shown = alloca i32, align 4
  %auto_follow = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %aux = alloca %struct._GimpSessionInfoAux*, align 8
  store %struct._GimpSessionManaged* %session_managed, %struct._GimpSessionManaged** %session_managed.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %1 = bitcast %struct._GimpSessionManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_window_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_window_set_aux_info, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.43

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %14 = bitcast %struct._GimpSessionManaged* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dock_window_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %15, %struct._GimpDockWindow** %dock_window, align 8
  %16 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %16, i32 0, i32 1
  %17 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %show_image_menu = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %17, i32 0, i32 11
  %18 = load i32, i32* %show_image_menu, align 4
  store i32 %18, i32* %menu_shown, align 4
  %19 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p13 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %19, i32 0, i32 1
  %20 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p13, align 8
  %auto_follow_active = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %20, i32 0, i32 12
  %21 = load i32, i32* %auto_follow_active, align 4
  store i32 %21, i32* %auto_follow, align 4
  %22 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  store %struct._GList* %22, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool14 = icmp ne %struct._GList* %23, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8
  %26 = bitcast i8* %25 to %struct._GimpSessionInfoAux*
  store %struct._GimpSessionInfoAux* %26, %struct._GimpSessionInfoAux** %aux, align 8
  %27 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %27, i32 0, i32 0
  %28 = load i8*, i8** %name, align 8
  %call16 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0)) #8
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else.21, label %if.then.18

if.then.18:                                       ; preds = %for.body
  %29 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %29, i32 0, i32 1
  %30 = load i8*, i8** %value, align 8
  %call19 = call i32 @g_ascii_strcasecmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0))
  %tobool20 = icmp ne i32 %call19, 0
  %lnot = xor i1 %tobool20, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %menu_shown, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %for.body
  %31 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %name22 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %31, i32 0, i32 0
  %32 = load i8*, i8** %name22, align 8
  %call23 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0)) #8
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.31, label %if.then.25

if.then.25:                                       ; preds = %if.else.21
  %33 = load %struct._GimpSessionInfoAux*, %struct._GimpSessionInfoAux** %aux, align 8
  %value26 = getelementptr inbounds %struct._GimpSessionInfoAux, %struct._GimpSessionInfoAux* %33, i32 0, i32 1
  %34 = load i8*, i8** %value26, align 8
  %call27 = call i32 @g_ascii_strcasecmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  store i32 %lnot.ext30, i32* %auto_follow, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %if.else.21
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool33 = icmp ne %struct._GList* %35, null
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %36 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %37, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %menu_shown, align 4
  %39 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p34 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %39, i32 0, i32 1
  %40 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p34, align 8
  %show_image_menu35 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %40, i32 0, i32 11
  %41 = load i32, i32* %show_image_menu35, align 4
  %cmp36 = icmp ne i32 %38, %41
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end
  %42 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %43 = load i32, i32* %menu_shown, align 4
  call void @gimp_dock_window_set_show_image_menu(%struct._GimpDockWindow* %42, i32 %43)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %for.end
  %44 = load i32, i32* %auto_follow, align 4
  %45 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %p39 = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %45, i32 0, i32 1
  %46 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p39, align 8
  %auto_follow_active40 = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %46, i32 0, i32 12
  %47 = load i32, i32* %auto_follow_active40, align 4
  %cmp41 = icmp ne i32 %44, %47
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  %48 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %49 = load i32, i32* %auto_follow, align 4
  call void @gimp_dock_window_set_auto_follow_active(%struct._GimpDockWindow* %48, i32 %49)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.9, %if.then.42, %if.end.38
  ret void
}

declare %struct._GimpSessionInfoAux* @gimp_session_info_aux_new(i8*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dock_window_update_title_idle(%struct._GimpDockWindow* %dock_window) #3 {
entry:
  %dock_window.addr = alloca %struct._GimpDockWindow*, align 8
  %desc = alloca i8*, align 8
  store %struct._GimpDockWindow* %dock_window, %struct._GimpDockWindow** %dock_window.addr, align 8
  %0 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %call = call i8* @gimp_dock_window_get_description(%struct._GimpDockWindow* %0, i32 0)
  store i8* %call, i8** %desc, align 8
  %1 = load i8*, i8** %desc, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %3 = bitcast %struct._GimpDockWindow* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %5 = load i8*, i8** %desc, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %4, i8* %5)
  %6 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockWindow, %struct._GimpDockWindow* %7, i32 0, i32 1
  %8 = load %struct._GimpDockWindowPrivate*, %struct._GimpDockWindowPrivate** %p, align 8
  %update_title_idle_id = getelementptr inbounds %struct._GimpDockWindowPrivate, %struct._GimpDockWindowPrivate* %8, i32 0, i32 7
  store i32 0, i32* %update_title_idle_id, align 4
  ret i32 0
}

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
