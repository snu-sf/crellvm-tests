; ModuleID = './app/widgets/gimpdock.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpMenuFactory = type opaque
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDockClass = type { %struct._GtkBoxClass, i8* (%struct._GimpDock*, i32)*, void (%struct._GimpDock*, %struct._GtkWindow*)*, void (%struct._GimpDock*, %struct._GimpDockbook*)*, void (%struct._GimpDock*, %struct._GimpDockbook*)*, void (%struct._GimpDock*)*, void (%struct._GimpDock*)* }
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
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GList*, i32 }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpDockbookPrivate = type opaque
%struct._GtkOrientable = type opaque
%struct._GimpPanedBox = type { %struct._GtkBox, %struct._GimpPanedBoxPrivate* }
%struct._GimpPanedBoxPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GimpImage = type opaque
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
%struct._GimpDockColumns = type { %struct._GtkBox, %struct._GimpDockColumnsPrivate* }
%struct._GimpDockColumnsPrivate = type opaque
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GimpDockWindowPrivate = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpDockContainer = type opaque
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GimpDockablePrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._PangoContext = type opaque
%struct._GString = type { i8*, i64, i64 }

@gimp_dock_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"GimpDock\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dock_get_description = private unnamed_addr constant [26 x i8] c"gimp_dock_get_description\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_DOCK (dock)\00", align 1
@__func__.gimp_dock_set_host_geometry_hints = private unnamed_addr constant [34 x i8] c"gimp_dock_set_host_geometry_hints\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"GTK_IS_WINDOW (window)\00", align 1
@__func__.gimp_dock_invalidate_geometry = private unnamed_addr constant [30 x i8] c"gimp_dock_invalidate_geometry\00", align 1
@dock_signals = internal global [4 x i32] zeroinitializer, align 16
@__func__.gimp_dock_get_context = private unnamed_addr constant [22 x i8] c"gimp_dock_get_context\00", align 1
@__func__.gimp_dock_get_dialog_factory = private unnamed_addr constant [29 x i8] c"gimp_dock_get_dialog_factory\00", align 1
@__func__.gimp_dock_get_ui_manager = private unnamed_addr constant [25 x i8] c"gimp_dock_get_ui_manager\00", align 1
@__func__.gimp_dock_get_dockbooks = private unnamed_addr constant [24 x i8] c"gimp_dock_get_dockbooks\00", align 1
@__func__.gimp_dock_get_n_dockables = private unnamed_addr constant [26 x i8] c"gimp_dock_get_n_dockables\00", align 1
@__func__.gimp_dock_get_main_vbox = private unnamed_addr constant [24 x i8] c"gimp_dock_get_main_vbox\00", align 1
@__func__.gimp_dock_get_vbox = private unnamed_addr constant [19 x i8] c"gimp_dock_get_vbox\00", align 1
@__func__.gimp_dock_get_id = private unnamed_addr constant [17 x i8] c"gimp_dock_get_id\00", align 1
@__func__.gimp_dock_set_id = private unnamed_addr constant [17 x i8] c"gimp_dock_set_id\00", align 1
@__func__.gimp_dock_add = private unnamed_addr constant [14 x i8] c"gimp_dock_add\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DOCKABLE (dockable)\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"gimp_dockable_get_dockbook (dockable) == NULL\00", align 1
@__func__.gimp_dock_remove = private unnamed_addr constant [17 x i8] c"gimp_dock_remove\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"gimp_dockable_get_dockbook (dockable) != NULL\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"gimp_dockbook_get_dock (gimp_dockable_get_dockbook (dockable)) == dock\00", align 1
@__func__.gimp_dock_add_book = private unnamed_addr constant [19 x i8] c"gimp_dock_add_book\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DOCKBOOK (dockbook)\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"gimp_dockbook_get_dock (dockbook) == NULL\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"dockable-added\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"dockable-removed\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"dockable-reordered\00", align 1
@__func__.gimp_dock_remove_book = private unnamed_addr constant [22 x i8] c"gimp_dock_remove_book\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"gimp_dockbook_get_dock (dockbook) == dock\00", align 1
@__func__.gimp_dock_temp_add = private unnamed_addr constant [19 x i8] c"gimp_dock_temp_add\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"GTK_IS_WIDGET (child)\00", align 1
@__func__.gimp_dock_temp_remove = private unnamed_addr constant [22 x i8] c"gimp_dock_temp_remove\00", align 1
@gimp_dock_parent_class = internal global i8* null, align 8
@GimpDock_private_offset = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"book-added\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"book-removed\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"description-invalidated\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"geometry-invalidated\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"font-scale\00", align 1
@.str.20 = private unnamed_addr constant [102 x i8] c"style \22gimp-dock-style\22{  font_name = \22%s\22}widget \22*.gimp-internal-dock-%d.*\22 style \22gimp-dock-style\22\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"dock\04, \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"dock\04 - \00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"switch-page\00", align 1
@gimp_dock_init.dock_ID = internal global i32 1, align 4
@.str.24 = private unnamed_addr constant [22 x i8] c"gimp-internal-dock-%d\00", align 1
@global_menu_factory = external global %struct._GimpMenuFactory*, align 8
@__func__.gimp_dock_invalidate_description = private unnamed_addr constant [33 x i8] c"gimp_dock_invalidate_description\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dock_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dock_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dock_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_box_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 872, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dock_class_intern_init to void (i8*, i8*)*), i32 136, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDock*)* @gimp_dock_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dock_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dock_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dock_parent_class, align 8
  %1 = load i32, i32* @GimpDock_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDock_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDockClass*
  call void @gimp_dock_class_init(%struct._GimpDockClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_init(%struct._GimpDock* %dock) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i8* null, i8** %name, align 8
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %4 = bitcast %struct._GimpDock* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_dock_get_type() #5
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDockPrivate*
  %6 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %6, i32 0, i32 1
  store %struct._GimpDockPrivate* %5, %struct._GimpDockPrivate** %p, align 8
  %7 = load i32, i32* @gimp_dock_init.dock_ID, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @gimp_dock_init.dock_ID, align 4
  %8 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %8, i32 0, i32 1
  %9 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p4, align 8
  %ID = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %9, i32 0, i32 4
  store i32 %7, i32* %ID, align 4
  %10 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %10, i32 0, i32 1
  %11 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p5, align 8
  %ID6 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %11, i32 0, i32 4
  %12 = load i32, i32* %ID6, align 4
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i32 %12)
  store i8* %call7, i8** %name, align 8
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call8)
  %15 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  %16 = load i8*, i8** %name, align 8
  call void @gtk_widget_set_name(%struct._GtkWidget* %15, i8* %16)
  %17 = load i8*, i8** %name, align 8
  call void @g_free(i8* %17)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  %18 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p11 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %18, i32 0, i32 1
  %19 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p11, align 8
  %temp_vbox = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %19, i32 0, i32 0
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %temp_vbox, align 8
  %20 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %21 = bitcast %struct._GimpDock* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_box_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBox*
  %23 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p14 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %23, i32 0, i32 1
  %24 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p14, align 8
  %temp_vbox15 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %24, i32 0, i32 0
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %temp_vbox15, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %22, %struct._GtkWidget* %25, i32 0, i32 0, i32 0)
  %call16 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  %26 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p17 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %26, i32 0, i32 1
  %27 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p17, align 8
  %main_vbox = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %27, i32 0, i32 1
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %main_vbox, align 8
  %28 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %29 = bitcast %struct._GimpDock* %28 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_box_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call18)
  %30 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkBox*
  %31 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p20 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %31, i32 0, i32 1
  %32 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p20, align 8
  %main_vbox21 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %32, i32 0, i32 1
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox21, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %33, i32 1, i32 1, i32 0)
  %34 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p22 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %34, i32 0, i32 1
  %35 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p22, align 8
  %main_vbox23 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %35, i32 0, i32 1
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox23, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %36)
  %call24 = call %struct._GtkWidget* @gimp_paned_box_new(i32 0, i32 0, i32 1)
  %37 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p25 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %37, i32 0, i32 1
  %38 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p25, align 8
  %paned_vbox = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %38, i32 0, i32 2
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %paned_vbox, align 8
  %39 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p26 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %39, i32 0, i32 1
  %40 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p26, align 8
  %paned_vbox27 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %40, i32 0, i32 2
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_vbox27, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_paned_box_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call28)
  %43 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpPanedBox*
  %44 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %45 = bitcast %struct._GimpDock* %44 to i8*
  call void @gimp_paned_box_set_dropped_cb(%struct._GimpPanedBox* %43, i32 (%struct._GtkWidget*, i32, i8*)* @gimp_dock_dropped_cb, i8* %45)
  %46 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p30 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %46, i32 0, i32 1
  %47 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p30, align 8
  %main_vbox31 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %47, i32 0, i32 1
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox31, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call32)
  %50 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %51 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p34 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %51, i32 0, i32 1
  %52 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p34, align 8
  %paned_vbox35 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %52, i32 0, i32 2
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_vbox35, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %50, %struct._GtkWidget* %53, i32 1, i32 1, i32 0)
  %54 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p36 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %54, i32 0, i32 1
  %55 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p36, align 8
  %paned_vbox37 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %55, i32 0, i32 2
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_vbox37, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %56)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_dock_get_description(%struct._GimpDock* %dock, i32 %complete) #3 {
entry:
  %retval = alloca i8*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %complete.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i32 %complete, i32* %complete.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dock_get_description, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GimpDockClass*
  %get_description = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %16, i32 0, i32 1
  %17 = load i8* (%struct._GimpDock*, i32)*, i8* (%struct._GimpDock*, i32)** %get_description, align 8
  %tobool12 = icmp ne i8* (%struct._GimpDock*, i32)* %17, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %do.end
  %18 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %19 = bitcast %struct._GimpDock* %18 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %21 = bitcast %struct._GTypeClass* %20 to %struct._GimpDockClass*
  %get_description15 = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %21, i32 0, i32 1
  %22 = load i8* (%struct._GimpDock*, i32)*, i8* (%struct._GimpDock*, i32)** %get_description15, align 8
  %23 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %24 = load i32, i32* %complete.addr, align 4
  %call16 = call i8* %22(%struct._GimpDock* %23, i32 %24)
  store i8* %call16, i8** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.else.9
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_set_host_geometry_hints(%struct._GimpDock* %dock, %struct._GtkWindow* %window) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %window.addr = alloca %struct._GtkWindow*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_dock_set_host_geometry_hints, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.44

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  %14 = bitcast %struct._GtkWindow* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_window_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_dock_set_host_geometry_hints, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.44

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %27 = bitcast %struct._GimpDock* %26 to %struct._GTypeInstance*
  %g_class39 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class39, align 8
  %29 = bitcast %struct._GTypeClass* %28 to %struct._GimpDockClass*
  %set_host_geometry_hints = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %29, i32 0, i32 2
  %30 = load void (%struct._GimpDock*, %struct._GtkWindow*)*, void (%struct._GimpDock*, %struct._GtkWindow*)** %set_host_geometry_hints, align 8
  %tobool40 = icmp ne void (%struct._GimpDock*, %struct._GtkWindow*)* %30, null
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %do.end.38
  %31 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %32 = bitcast %struct._GimpDock* %31 to %struct._GTypeInstance*
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %34 = bitcast %struct._GTypeClass* %33 to %struct._GimpDockClass*
  %set_host_geometry_hints43 = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %34, i32 0, i32 2
  %35 = load void (%struct._GimpDock*, %struct._GtkWindow*)*, void (%struct._GimpDock*, %struct._GtkWindow*)** %set_host_geometry_hints43, align 8
  %36 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %37 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void %35(%struct._GimpDock* %36, %struct._GtkWindow* %37)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.9, %if.else.36, %if.then.41, %do.end.38
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_dock_invalidate_geometry(%struct._GimpDock* %dock) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_dock_invalidate_geometry, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dock_signals, i32 0, i64 3), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_update_with_context(%struct._GimpDock* %dock, %struct._GimpContext* %context) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %iter = alloca %struct._GList*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %0)
  store %struct._GList* %call, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_dockbook_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %5, %struct._GimpDockbook** %dockbook, align 8
  %6 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_dockbook_update_with_context(%struct._GimpDockbook* %6, %struct._GimpContext* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool3 = icmp ne %struct._GList* %8, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %9 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 1
  %10 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dock_get_dockbooks, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %13, i32 0, i32 1
  %14 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %dockbooks = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %14, i32 0, i32 3
  %15 = load %struct._GList*, %struct._GList** %dockbooks, align 8
  store %struct._GList* %15, %struct._GList** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %16
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #2

declare void @gimp_dockbook_update_with_context(%struct._GimpDockbook*, %struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca %struct._GimpContext*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpContext* null, %struct._GimpContext** %context, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dock_get_context, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContext* null, %struct._GimpContext** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool11 = icmp ne %struct._GimpContext* %13, null
  br i1 %tobool11, label %if.end.24, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %15 = bitcast %struct._GimpDock* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call i64 @gimp_dock_columns_get_type() #5
  %call17 = call %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget* %16, i64 %call16)
  %17 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_dock_columns_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %18, %struct._GimpDockColumns** %dock_columns, align 8
  %19 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %tobool20 = icmp ne %struct._GimpDockColumns* %19, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.12
  %20 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %call22 = call %struct._GimpContext* @gimp_dock_columns_get_context(%struct._GimpDockColumns* %20)
  store %struct._GimpContext* %call22, %struct._GimpContext** %context, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.12
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %do.end
  %21 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool25 = icmp ne %struct._GimpContext* %21, null
  br i1 %tobool25, label %if.end.33, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %22 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call28 = call %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock* %22)
  store %struct._GimpDockWindow* %call28, %struct._GimpDockWindow** %dock_window, align 8
  %23 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %tobool29 = icmp ne %struct._GimpDockWindow* %23, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.26
  %24 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %call31 = call %struct._GimpContext* @gimp_dock_window_get_context(%struct._GimpDockWindow* %24)
  store %struct._GimpContext* %call31, %struct._GimpContext** %context, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.24
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  store %struct._GimpContext* %25, %struct._GimpContext** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.else.9
  %26 = load %struct._GimpContext*, %struct._GimpContext** %retval
  ret %struct._GimpContext* %26
}

declare %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_columns_get_type() #2

declare %struct._GimpContext* @gimp_dock_columns_get_context(%struct._GimpDockColumns*) #1

declare %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock*) #1

declare %struct._GimpContext* @gimp_dock_window_get_context(%struct._GimpDockWindow*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca %struct._GimpDialogFactory*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dialog_factory = alloca %struct._GimpDialogFactory*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %dialog_factory, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dock_get_dialog_factory, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDialogFactory* null, %struct._GimpDialogFactory** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %tobool11 = icmp ne %struct._GimpDialogFactory* %13, null
  br i1 %tobool11, label %if.end.24, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %15 = bitcast %struct._GimpDock* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call i64 @gimp_dock_columns_get_type() #5
  %call17 = call %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget* %16, i64 %call16)
  %17 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_dock_columns_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %18, %struct._GimpDockColumns** %dock_columns, align 8
  %19 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %tobool20 = icmp ne %struct._GimpDockColumns* %19, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.12
  %20 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %call22 = call %struct._GimpDialogFactory* @gimp_dock_columns_get_dialog_factory(%struct._GimpDockColumns* %20)
  store %struct._GimpDialogFactory* %call22, %struct._GimpDialogFactory** %dialog_factory, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.12
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %do.end
  %21 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  %tobool25 = icmp ne %struct._GimpDialogFactory* %21, null
  br i1 %tobool25, label %if.end.33, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %22 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call28 = call %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock* %22)
  store %struct._GimpDockWindow* %call28, %struct._GimpDockWindow** %dock_window, align 8
  %23 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %tobool29 = icmp ne %struct._GimpDockWindow* %23, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.26
  %24 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %call31 = call %struct._GimpDialogFactory* @gimp_dock_window_get_dialog_factory(%struct._GimpDockWindow* %24)
  store %struct._GimpDialogFactory* %call31, %struct._GimpDialogFactory** %dialog_factory, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.24
  %25 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory, align 8
  store %struct._GimpDialogFactory* %25, %struct._GimpDialogFactory** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.else.9
  %26 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %retval
  ret %struct._GimpDialogFactory* %26
}

declare %struct._GimpDialogFactory* @gimp_dock_columns_get_dialog_factory(%struct._GimpDockColumns*) #1

declare %struct._GimpDialogFactory* @gimp_dock_window_get_dialog_factory(%struct._GimpDockWindow*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_dock_get_ui_manager(%struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %dock_container = alloca %struct._GimpDockContainer*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %ui_manager, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dock_get_ui_manager, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool11 = icmp ne %struct._GimpUIManager* %13, null
  br i1 %tobool11, label %if.end.24, label %if.then.12

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %15 = bitcast %struct._GimpDock* %14 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call14)
  %16 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call i64 @gimp_dock_columns_get_type() #5
  %call17 = call %struct._GtkWidget* @gtk_widget_get_ancestor(%struct._GtkWidget* %16, i64 %call16)
  %17 = bitcast %struct._GtkWidget* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_dock_columns_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDockColumns*
  store %struct._GimpDockColumns* %18, %struct._GimpDockColumns** %dock_columns, align 8
  %19 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %tobool20 = icmp ne %struct._GimpDockColumns* %19, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.12
  %20 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %call22 = call %struct._GimpUIManager* @gimp_dock_columns_get_ui_manager(%struct._GimpDockColumns* %20)
  store %struct._GimpUIManager* %call22, %struct._GimpUIManager** %ui_manager, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.12
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %do.end
  %21 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool25 = icmp ne %struct._GimpUIManager* %21, null
  br i1 %tobool25, label %if.end.36, label %if.then.26

if.then.26:                                       ; preds = %if.end.24
  %22 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call28 = call %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock* %22)
  store %struct._GimpDockWindow* %call28, %struct._GimpDockWindow** %dock_window, align 8
  %23 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %tobool29 = icmp ne %struct._GimpDockWindow* %23, null
  br i1 %tobool29, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.then.26
  %24 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %25 = bitcast %struct._GimpDockWindow* %24 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_dock_container_interface_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call32)
  %26 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpDockContainer*
  store %struct._GimpDockContainer* %26, %struct._GimpDockContainer** %dock_container, align 8
  %27 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container, align 8
  %call34 = call %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer* %27)
  store %struct._GimpUIManager* %call34, %struct._GimpUIManager** %ui_manager, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %if.then.26
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.24
  %28 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  store %struct._GimpUIManager* %28, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.else.9
  %29 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %29
}

declare %struct._GimpUIManager* @gimp_dock_columns_get_ui_manager(%struct._GimpDockColumns*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_container_interface_get_type() #2

declare %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_dock_get_n_dockables(%struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca i32, align 4
  %dock.addr = alloca %struct._GimpDock*, align 8
  %list = alloca %struct._GList*, align 8
  %n = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GList* null, %struct._GList** %list, align 8
  store i32 0, i32* %n, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dock_get_n_dockables, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %13, i32 0, i32 1
  %14 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %dockbooks = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %14, i32 0, i32 3
  %15 = load %struct._GList*, %struct._GList** %dockbooks, align 8
  store %struct._GList* %15, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool11 = icmp ne %struct._GList* %16, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_notebook_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkNotebook*
  %call14 = call i32 @gtk_notebook_get_n_pages(%struct._GtkNotebook* %20)
  %21 = load i32, i32* %n, align 4
  %add = add nsw i32 %21, %call14
  store i32 %add, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %23, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %n, align 4
  store i32 %24, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare i32 @gtk_notebook_get_n_pages(%struct._GtkNotebook*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dock_get_main_vbox(%struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dock_get_main_vbox, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %13, i32 0, i32 1
  %14 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %main_vbox = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %14, i32 0, i32 1
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %main_vbox, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dock_get_vbox(%struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_dock_get_vbox, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %13, i32 0, i32 1
  %14 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %paned_vbox = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %14, i32 0, i32 2
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_vbox, align 8
  store %struct._GtkWidget* %15, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dock_get_id(%struct._GimpDock* %dock) #3 {
entry:
  %retval = alloca i32, align 4
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_dock_get_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %13, i32 0, i32 1
  %14 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %ID = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %14, i32 0, i32 4
  %15 = load i32, i32* %ID, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dock_set_id(%struct._GimpDock* %dock, i32 %ID) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %ID.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i32 %ID, i32* %ID.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_dock_set_id, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %ID.addr, align 4
  %14 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %14, i32 0, i32 1
  %15 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %ID11 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %15, i32 0, i32 4
  store i32 %13, i32* %ID11, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dock_add(%struct._GimpDock* %dock, %struct._GimpDockable* %dockable, i32 %section, i32 %position) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %section.addr = alloca i32, align 4
  %position.addr = alloca i32, align 4
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 %section, i32* %section.addr, align 4
  store i32 %position, i32* %position.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_dock_add, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %14 = bitcast %struct._GimpDockable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dockable_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_dock_add, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call40 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %26)
  %cmp41 = icmp eq %struct._GimpDockbook* %call40, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_dock_add, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %27, i32 0, i32 1
  %28 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %dockbooks = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %28, i32 0, i32 3
  %29 = load %struct._GList*, %struct._GList** %dockbooks, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 0
  %30 = load i8*, i8** %data, align 8
  %31 = bitcast i8* %30 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_dockbook_get_type() #5
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call46)
  %32 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %32, %struct._GimpDockbook** %dockbook, align 8
  %33 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %34 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %35 = load i32, i32* %position.addr, align 4
  call void @gimp_dockbook_add(%struct._GimpDockbook* %33, %struct._GimpDockable* %34, i32 %35)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dockable_get_type() #2

declare %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable*) #1

declare void @gimp_dockbook_add(%struct._GimpDockbook*, %struct._GimpDockable*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_remove(%struct._GimpDock* %dock, %struct._GimpDockable* %dockable) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_dock_remove, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %14 = bitcast %struct._GimpDockable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dockable_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_dock_remove, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call40 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %26)
  %cmp41 = icmp ne %struct._GimpDockbook* %call40, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_dock_remove, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %27 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call47 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %27)
  %call48 = call %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %call47)
  %28 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %cmp49 = icmp eq %struct._GimpDock* %call48, %28
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body.46
  br label %if.end.52

if.else.51:                                       ; preds = %do.body.46
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_dock_remove, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.52:                                        ; preds = %if.then.50
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %29 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call54 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %29)
  %30 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockbook_remove(%struct._GimpDockbook* %call54, %struct._GimpDockable* %30)
  br label %return

return:                                           ; preds = %do.end.53, %if.else.51, %if.else.43, %if.else.36, %if.else.9
  ret void
}

declare %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook*) #1

declare void @gimp_dockbook_remove(%struct._GimpDockbook*, %struct._GimpDockable*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_add_book(%struct._GimpDock* %dock, %struct._GimpDockbook* %dockbook, i32 %index) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %index.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_dock_add_book, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %14 = bitcast %struct._GimpDockbook* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dockbook_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_dock_add_book, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %call40 = call %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %26)
  %cmp41 = icmp eq %struct._GimpDock* %call40, null
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_dock_add_book, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %27 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %28 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dockbook_set_dock(%struct._GimpDockbook* %27, %struct._GimpDock* %28)
  %29 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %30 = bitcast %struct._GimpDockbook* %29 to i8*
  %31 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %32 = bitcast %struct._GimpDock* %31 to i8*
  %call46 = call i64 @g_signal_connect_object(i8* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDock*)* @gimp_dock_invalidate_description to void ()*), i8* %32, i32 2)
  %33 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %34 = bitcast %struct._GimpDockbook* %33 to i8*
  %35 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %36 = bitcast %struct._GimpDock* %35 to i8*
  %call47 = call i64 @g_signal_connect_object(i8* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDock*)* @gimp_dock_invalidate_description to void ()*), i8* %36, i32 2)
  %37 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %38 = bitcast %struct._GimpDockbook* %37 to i8*
  %39 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %40 = bitcast %struct._GimpDock* %39 to i8*
  %call48 = call i64 @g_signal_connect_object(i8* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDock*)* @gimp_dock_invalidate_description to void ()*), i8* %40, i32 2)
  %41 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %41, i32 0, i32 1
  %42 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %dockbooks = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %42, i32 0, i32 3
  %43 = load %struct._GList*, %struct._GList** %dockbooks, align 8
  %44 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %45 = bitcast %struct._GimpDockbook* %44 to i8*
  %46 = load i32, i32* %index.addr, align 4
  %call49 = call %struct._GList* @g_list_insert(%struct._GList* %43, i8* %45, i32 %46)
  %47 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p50 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %47, i32 0, i32 1
  %48 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p50, align 8
  %dockbooks51 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %48, i32 0, i32 3
  store %struct._GList* %call49, %struct._GList** %dockbooks51, align 8
  %49 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p52 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %49, i32 0, i32 1
  %50 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p52, align 8
  %paned_vbox = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %50, i32 0, i32 2
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_vbox, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_paned_box_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call53)
  %53 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpPanedBox*
  %54 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %55 = bitcast %struct._GimpDockbook* %54 to %struct._GTypeInstance*
  %call55 = call i64 @gtk_widget_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call55)
  %56 = bitcast %struct._GTypeInstance* %call56 to %struct._GtkWidget*
  %57 = load i32, i32* %index.addr, align 4
  call void @gimp_paned_box_add_widget(%struct._GimpPanedBox* %53, %struct._GtkWidget* %56, i32 %57)
  %58 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %59 = bitcast %struct._GimpDockbook* %58 to %struct._GTypeInstance*
  %call57 = call i64 @gtk_widget_get_type() #5
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call57)
  %60 = bitcast %struct._GTypeInstance* %call58 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %60)
  %61 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dock_invalidate_description(%struct._GimpDock* %61)
  %62 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %63 = bitcast %struct._GimpDock* %62 to i8*
  %64 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dock_signals, i32 0, i64 0), align 4
  %65 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %63, i32 %64, i32 0, %struct._GimpDockbook* %65)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_dockbook_set_dock(%struct._GimpDockbook*, %struct._GimpDock*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_invalidate_description(%struct._GimpDock* %dock) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dock_invalidate_description, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %14 = bitcast %struct._GimpDock* %13 to i8*
  %15 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dock_signals, i32 0, i64 2), align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %14, i32 %15, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

declare void @gimp_paned_box_add_widget(%struct._GimpPanedBox*, %struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_paned_box_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_remove_book(%struct._GimpDock* %dock, %struct._GimpDockbook* %dockbook) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dock_remove_book, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %14 = bitcast %struct._GimpDockbook* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dockbook_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dock_remove_book, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %call40 = call %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %26)
  %27 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %cmp41 = icmp eq %struct._GimpDock* %call40, %27
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dock_remove_book, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %28 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void @gimp_dockbook_set_dock(%struct._GimpDockbook* %28, %struct._GimpDock* null)
  %29 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %30 = bitcast %struct._GimpDockbook* %29 to i8*
  %31 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %32 = bitcast %struct._GimpDock* %31 to i8*
  %call46 = call i32 @g_signal_handlers_disconnect_matched(i8* %30, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDock*)* @gimp_dock_invalidate_description to i8*), i8* %32)
  %33 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %34 = bitcast %struct._GimpDockbook* %33 to i8*
  %call47 = call i8* @g_object_ref(i8* %34)
  %35 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %35, i32 0, i32 1
  %36 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %dockbooks = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %36, i32 0, i32 3
  %37 = load %struct._GList*, %struct._GList** %dockbooks, align 8
  %38 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %39 = bitcast %struct._GimpDockbook* %38 to i8*
  %call48 = call %struct._GList* @g_list_remove(%struct._GList* %37, i8* %39)
  %40 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p49 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %40, i32 0, i32 1
  %41 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p49, align 8
  %dockbooks50 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %41, i32 0, i32 3
  store %struct._GList* %call48, %struct._GList** %dockbooks50, align 8
  %42 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p51 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %42, i32 0, i32 1
  %43 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p51, align 8
  %paned_vbox = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %43, i32 0, i32 2
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %paned_vbox, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_paned_box_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call52)
  %46 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpPanedBox*
  %47 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %48 = bitcast %struct._GimpDockbook* %47 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_widget_get_type() #5
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call54)
  %49 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkWidget*
  call void @gimp_paned_box_remove_widget(%struct._GimpPanedBox* %46, %struct._GtkWidget* %49)
  %50 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  call void @gimp_dock_invalidate_description(%struct._GimpDock* %50)
  %51 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %52 = bitcast %struct._GimpDock* %51 to i8*
  %53 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dock_signals, i32 0, i64 1), align 4
  %54 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %52, i32 %53, i32 0, %struct._GimpDockbook* %54)
  %55 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %56 = bitcast %struct._GimpDockbook* %55 to i8*
  call void @g_object_unref(i8* %56)
  br label %return

return:                                           ; preds = %do.end.45, %if.else.43, %if.else.36, %if.else.9
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gimp_paned_box_remove_widget(%struct._GimpPanedBox*, %struct._GtkWidget*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_temp_add(%struct._GimpDock* %dock, %struct._GtkWidget* %child) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_dock_temp_add, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_dock_temp_add, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %26, i32 0, i32 1
  %27 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %temp_vbox = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %27, i32 0, i32 0
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %temp_vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_box_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call39)
  %30 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkBox*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %30, %struct._GtkWidget* %31, i32 0, i32 0, i32 0)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_dock_temp_remove(%struct._GimpDock* %dock, %struct._GtkWidget* %child) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %child.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GtkWidget* %child, %struct._GtkWidget** %child.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %1 = bitcast %struct._GimpDock* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dock_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dock_temp_remove, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gtk_widget_get_type() #5
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_dock_temp_remove, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %26, i32 0, i32 1
  %27 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %temp_vbox = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %27, i32 0, i32 0
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %temp_vbox, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_container_get_type() #5
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call39)
  %30 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkContainer*
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %child.addr, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %30, %struct._GtkWidget* %31)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_class_init(%struct._GimpDockClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDockClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpDockClass* %klass, %struct._GimpDockClass** %klass.addr, align 8
  %0 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDockClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDockClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDockClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gimp_dockbook_get_type() #5
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i64 %8, i32 1, i32 840, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call3)
  store i32 %call4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dock_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpDockClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gimp_dockbook_get_type() #5
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i64 %11, i32 1, i32 848, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dock_signals, i32 0, i64 1), align 4
  %12 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpDockClass* %12 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type8, align 8
  %call9 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i64 %14, i32 1, i32 856, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call9, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dock_signals, i32 0, i64 2), align 4
  %15 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %16 = bitcast %struct._GimpDockClass* %15 to %struct._GTypeClass*
  %g_type10 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type10, align 8
  %call11 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i64 %17, i32 1, i32 864, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call11, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dock_signals, i32 0, i64 3), align 4
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %18, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_dock_dispose, void (%struct._GObject*)** %dispose, align 8
  %19 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %19, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_dock_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %20 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %get_description = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %20, i32 0, i32 1
  store i8* (%struct._GimpDock*, i32)* @gimp_dock_real_get_description, i8* (%struct._GimpDock*, i32)** %get_description, align 8
  %21 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %set_host_geometry_hints = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %21, i32 0, i32 2
  store void (%struct._GimpDock*, %struct._GtkWindow*)* null, void (%struct._GimpDock*, %struct._GtkWindow*)** %set_host_geometry_hints, align 8
  %22 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %book_added = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %22, i32 0, i32 3
  store void (%struct._GimpDock*, %struct._GimpDockbook*)* @gimp_dock_real_book_added, void (%struct._GimpDock*, %struct._GimpDockbook*)** %book_added, align 8
  %23 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %book_removed = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %23, i32 0, i32 4
  store void (%struct._GimpDock*, %struct._GimpDockbook*)* @gimp_dock_real_book_removed, void (%struct._GimpDock*, %struct._GimpDockbook*)** %book_removed, align 8
  %24 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %description_invalidated = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %24, i32 0, i32 5
  store void (%struct._GimpDock*)* null, void (%struct._GimpDock*)** %description_invalidated, align 8
  %25 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %geometry_invalidated = getelementptr inbounds %struct._GimpDockClass, %struct._GimpDockClass* %25, i32 0, i32 6
  store void (%struct._GimpDock*)* null, void (%struct._GimpDock*)** %geometry_invalidated, align 8
  %26 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0x3FEAAAAAAAAAA97E, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %26, %struct._GParamSpec* %call12)
  %27 = load %struct._GimpDockClass*, %struct._GimpDockClass** %klass.addr, align 8
  %28 = bitcast %struct._GimpDockClass* %27 to i8*
  call void @g_type_class_add_private(i8* %28, i64 40)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDock*
  store %struct._GimpDock* %2, %struct._GimpDock** %dock, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %3, i32 0, i32 1
  %4 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %dockbooks = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %4, i32 0, i32 3
  %5 = load %struct._GList*, %struct._GList** %dockbooks, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %p2 = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %6, i32 0, i32 1
  %7 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p2, align 8
  %dockbooks3 = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %7, i32 0, i32 3
  %8 = load %struct._GList*, %struct._GList** %dockbooks3, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %10, %struct._GimpDockbook** %dockbook, align 8
  %11 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %12 = bitcast %struct._GimpDockbook* %11 to i8*
  %call4 = call i8* @g_object_ref(i8* %12)
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %14 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  call void @gimp_dock_remove_book(%struct._GimpDock* %13, %struct._GimpDockbook* %14)
  %15 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %16 = bitcast %struct._GimpDockbook* %15 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call5)
  %17 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %17)
  %18 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %19 = bitcast %struct._GimpDockbook* %18 to i8*
  call void @g_object_unref(i8* %19)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i8*, i8** @gimp_dock_parent_class, align 8
  %21 = bitcast i8* %20 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %21, i64 80)
  %22 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %22, i32 0, i32 5
  %23 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %24 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %23(%struct._GObject* %24)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  %font_scale = alloca double, align 8
  %context = alloca %struct._PangoContext*, align 8
  %font_desc = alloca %struct._PangoFontDescription*, align 8
  %font_size = alloca i32, align 4
  %font_str = alloca i8*, align 8
  %rc_string = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDock*
  store %struct._GimpDock* %2, %struct._GimpDock** %dock, align 8
  store double 1.000000e+00, double* %font_scale, align 8
  %3 = load i8*, i8** @gimp_dock_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 17
  %6 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GtkStyle* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), double* %font_scale, i8* null)
  %10 = load double, double* %font_scale, align 8
  %cmp = fcmp une double %10, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call4 = call %struct._PangoContext* @gtk_widget_get_pango_context(%struct._GtkWidget* %11)
  store %struct._PangoContext* %call4, %struct._PangoContext** %context, align 8
  %12 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %call5 = call %struct._PangoFontDescription* @pango_context_get_font_description(%struct._PangoContext* %12)
  store %struct._PangoFontDescription* %call5, %struct._PangoFontDescription** %font_desc, align 8
  %13 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %call6 = call %struct._PangoFontDescription* @pango_font_description_copy(%struct._PangoFontDescription* %13)
  store %struct._PangoFontDescription* %call6, %struct._PangoFontDescription** %font_desc, align 8
  %14 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %call7 = call i32 @pango_font_description_get_size(%struct._PangoFontDescription* %14) #6
  store i32 %call7, i32* %font_size, align 4
  %15 = load double, double* %font_scale, align 8
  %16 = load i32, i32* %font_size, align 4
  %conv = sitofp i32 %16 to double
  %mul = fmul double %15, %conv
  %conv8 = fptosi double %mul to i32
  store i32 %conv8, i32* %font_size, align 4
  %17 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %18 = load i32, i32* %font_size, align 4
  call void @pango_font_description_set_size(%struct._PangoFontDescription* %17, i32 %18)
  %19 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %call9 = call i8* @pango_font_description_to_string(%struct._PangoFontDescription* %19)
  store i8* %call9, i8** %font_str, align 8
  %20 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %20)
  %21 = load i8*, i8** %font_str, align 8
  %22 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %p = getelementptr inbounds %struct._GimpDock, %struct._GimpDock* %22, i32 0, i32 1
  %23 = load %struct._GimpDockPrivate*, %struct._GimpDockPrivate** %p, align 8
  %ID = getelementptr inbounds %struct._GimpDockPrivate, %struct._GimpDockPrivate* %23, i32 0, i32 4
  %24 = load i32, i32* %ID, align 4
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.20, i32 0, i32 0), i8* %21, i32 %24)
  store i8* %call10, i8** %rc_string, align 8
  %25 = load i8*, i8** %font_str, align 8
  call void @g_free(i8* %25)
  %26 = load i8*, i8** %rc_string, align 8
  call void @gtk_rc_parse_string(i8* %26)
  %27 = load i8*, i8** %rc_string, align 8
  call void @g_free(i8* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_reset_rc_styles(%struct._GtkWidget* %28)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_dock_real_get_description(%struct._GimpDock* %dock, i32 %complete) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %complete.addr = alloca i32, align 4
  %desc = alloca %struct._GString*, align 8
  %list = alloca %struct._GList*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %children = alloca %struct._GList*, align 8
  %child = alloca %struct._GList*, align 8
  %dockable = alloca %struct._GtkWidget*, align 8
  %page_num = alloca i32, align 4
  %dockable16 = alloca %struct._GimpDockable*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store i32 %complete, i32* %complete.addr, align 4
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %desc, align 8
  %0 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %call1 = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %0)
  store %struct._GList* %call1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.44, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %4, %struct._GimpDockbook** %dockbook, align 8
  %5 = load i32, i32* %complete.addr, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %7 = bitcast %struct._GimpDockbook* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_container_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkContainer*
  %call5 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %8)
  store %struct._GList* %call5, %struct._GList** %children, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  store %struct._GtkWidget* null, %struct._GtkWidget** %dockable, align 8
  store i32 0, i32* %page_num, align 4
  %9 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %10 = bitcast %struct._GimpDockbook* %9 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_notebook_get_type() #5
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call6)
  %11 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkNotebook*
  %call8 = call i32 @gtk_notebook_get_current_page(%struct._GtkNotebook* %11)
  store i32 %call8, i32* %page_num, align 4
  %12 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %13 = bitcast %struct._GimpDockbook* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_notebook_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkNotebook*
  %15 = load i32, i32* %page_num, align 4
  %call11 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %14, i32 %15)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %dockable, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  %call12 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %17)
  store %struct._GList* %call12, %struct._GList** %children, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct._GList*, %struct._GList** %children, align 8
  store %struct._GList* %18, %struct._GList** %child, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %cond.end, %if.end
  %19 = load %struct._GList*, %struct._GList** %child, align 8
  %tobool14 = icmp ne %struct._GList* %19, null
  br i1 %tobool14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %20 = load %struct._GList*, %struct._GList** %child, align 8
  %data17 = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data17, align 8
  %22 = bitcast i8* %21 to %struct._GimpDockable*
  store %struct._GimpDockable* %22, %struct._GimpDockable** %dockable16, align 8
  %23 = load %struct._GString*, %struct._GString** %desc, align 8
  %24 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable16, align 8
  %call18 = call i8* @gimp_dockable_get_name(%struct._GimpDockable* %24)
  %call19 = call %struct._GString* @g_string_append(%struct._GString* %23, i8* %call18)
  %25 = load %struct._GList*, %struct._GList** %child, align 8
  %tobool20 = icmp ne %struct._GList* %25, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.15
  %26 = load %struct._GList*, %struct._GList** %child, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %26, i32 0, i32 1
  %27 = load %struct._GList*, %struct._GList** %next, align 8
  %tobool21 = icmp ne %struct._GList* %27, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

cond.false:                                       ; preds = %for.body.15
  br i1 false, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %cond.false, %cond.true
  %28 = load %struct._GString*, %struct._GString** %desc, align 8
  %call23 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i64 5)
  %call24 = call %struct._GString* @g_string_append(%struct._GString* %28, i8* %call23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %29 = load %struct._GList*, %struct._GList** %child, align 8
  %tobool26 = icmp ne %struct._GList* %29, null
  br i1 %tobool26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %for.inc
  %30 = load %struct._GList*, %struct._GList** %child, align 8
  %next28 = getelementptr inbounds %struct._GList, %struct._GList* %30, i32 0, i32 1
  %31 = load %struct._GList*, %struct._GList** %next28, align 8
  br label %cond.end

cond.false.29:                                    ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false.29, %cond.true.27
  %cond = phi %struct._GList* [ %31, %cond.true.27 ], [ null, %cond.false.29 ]
  store %struct._GList* %cond, %struct._GList** %child, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %32 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %32)
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool30 = icmp ne %struct._GList* %33, null
  br i1 %tobool30, label %cond.true.31, label %cond.false.34

cond.true.31:                                     ; preds = %for.end
  %34 = load %struct._GList*, %struct._GList** %list, align 8
  %next32 = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next32, align 8
  %tobool33 = icmp ne %struct._GList* %35, null
  br i1 %tobool33, label %if.then.35, label %if.end.38

cond.false.34:                                    ; preds = %for.end
  br i1 false, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %cond.false.34, %cond.true.31
  %36 = load %struct._GString*, %struct._GString** %desc, align 8
  %call36 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i64 5)
  %call37 = call %struct._GString* @g_string_append(%struct._GString* %36, i8* %call36)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %cond.false.34, %cond.true.31
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %37 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool40 = icmp ne %struct._GList* %37, null
  br i1 %tobool40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %for.inc.39
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %next42 = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 1
  %39 = load %struct._GList*, %struct._GList** %next42, align 8
  br label %cond.end.44

cond.false.43:                                    ; preds = %for.inc.39
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.41
  %cond45 = phi %struct._GList* [ %39, %cond.true.41 ], [ null, %cond.false.43 ]
  store %struct._GList* %cond45, %struct._GList** %list, align 8
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  %40 = load %struct._GString*, %struct._GString** %desc, align 8
  %call47 = call i8* @g_string_free(%struct._GString* %40, i32 0)
  ret i8* %call47
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_real_book_added(%struct._GimpDock* %dock, %struct._GimpDockbook* %dockbook) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to i8*
  %2 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %3 = bitcast %struct._GimpDock* %2 to i8*
  %call = call i64 @g_signal_connect_object(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDock*)* @gimp_dock_invalidate_description to void ()*), i8* %3, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dock_real_book_removed(%struct._GimpDock* %dock, %struct._GimpDockbook* %dockbook) #3 {
entry:
  %dock.addr = alloca %struct._GimpDock*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to i8*
  %2 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %3 = bitcast %struct._GimpDock* %2 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %1, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDock*)* @gimp_dock_invalidate_description to i8*), i8* %3)
  ret void
}

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare %struct._PangoContext* @gtk_widget_get_pango_context(%struct._GtkWidget*) #1

declare %struct._PangoFontDescription* @pango_context_get_font_description(%struct._PangoContext*) #1

declare %struct._PangoFontDescription* @pango_font_description_copy(%struct._PangoFontDescription*) #1

; Function Attrs: nounwind readonly
declare i32 @pango_font_description_get_size(%struct._PangoFontDescription*) #4

declare void @pango_font_description_set_size(%struct._PangoFontDescription*, i32) #1

declare i8* @pango_font_description_to_string(%struct._PangoFontDescription*) #1

declare void @pango_font_description_free(%struct._PangoFontDescription*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

declare void @gtk_rc_parse_string(i8*) #1

declare void @gtk_widget_reset_rc_styles(%struct._GtkWidget*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare i32 @gtk_notebook_get_current_page(%struct._GtkNotebook*) #1

declare %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook*, i32) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @gimp_dockable_get_name(%struct._GimpDockable*) #1

declare i8* @g_dpgettext(i8*, i8*, i64) #1

declare void @g_list_free(%struct._GList*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gtk_widget_set_name(%struct._GtkWidget*, i8*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare %struct._GtkWidget* @gimp_paned_box_new(i32, i32, i32) #1

declare void @gimp_paned_box_set_dropped_cb(%struct._GimpPanedBox*, i32 (%struct._GtkWidget*, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dock_dropped_cb(%struct._GtkWidget* %source, i32 %insert_index, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca %struct._GtkWidget*, align 8
  %insert_index.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %dockbook = alloca %struct._GtkWidget*, align 8
  %children = alloca %struct._GList*, align 8
  %n_books = alloca i32, align 4
  %n_dockables = alloca i32, align 4
  store %struct._GtkWidget* %source, %struct._GtkWidget** %source.addr, align 8
  store i32 %insert_index, i32* %insert_index.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dock_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDock*
  store %struct._GimpDock* %2, %struct._GimpDock** %dock, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %source.addr, align 8
  %call2 = call %struct._GimpDockable* @gimp_dockbook_drag_source_to_dockable(%struct._GtkWidget* %3)
  store %struct._GimpDockable* %call2, %struct._GimpDockable** %dockable, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dockbook, align 8
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool = icmp ne %struct._GimpDockable* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call3 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %5)
  %call4 = call %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %call3)
  %6 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %cmp = icmp eq %struct._GimpDock* %call4, %6
  br i1 %cmp, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end
  %7 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call6 = call %struct._GList* @gimp_dock_get_dockbooks(%struct._GimpDock* %7)
  %call7 = call i32 @g_list_length(%struct._GList* %call6)
  store i32 %call7, i32* %n_books, align 4
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call8 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %8)
  %9 = bitcast %struct._GimpDockbook* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call9)
  %10 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %call11 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %10)
  store %struct._GList* %call11, %struct._GList** %children, align 8
  %11 = load %struct._GList*, %struct._GList** %children, align 8
  %call12 = call i32 @g_list_length(%struct._GList* %11)
  store i32 %call12, i32* %n_dockables, align 4
  %12 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %12)
  %13 = load i32, i32* %n_books, align 4
  %cmp13 = icmp eq i32 %13, 1
  br i1 %cmp13, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.5
  %14 = load i32, i32* %n_dockables, align 4
  %cmp14 = icmp eq i32 %14, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.then.5
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %15 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %16 = bitcast %struct._GimpDockable* %15 to i8*
  %call18 = call i8* @g_object_ref(i8* %16)
  %17 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call19 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %17)
  %18 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_remove(%struct._GimpDockbook* %call19, %struct._GimpDockable* %18)
  %19 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %call20 = call %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory* %19)
  store %struct._GtkWidget* %call20, %struct._GtkWidget** %dockbook, align 8
  %20 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_dockbook_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call21)
  %23 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpDockbook*
  %24 = load i32, i32* %insert_index.addr, align 4
  call void @gimp_dock_add_book(%struct._GimpDock* %20, %struct._GimpDockbook* %23, i32 %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_dockbook_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call23)
  %27 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpDockbook*
  %28 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_add(%struct._GimpDockbook* %27, %struct._GimpDockable* %28, i32 -1)
  %29 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %30 = bitcast %struct._GimpDockable* %29 to i8*
  call void @g_object_unref(i8* %30)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.15, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare %struct._GimpDockable* @gimp_dockbook_drag_source_to_dockable(%struct._GtkWidget*) #1

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
