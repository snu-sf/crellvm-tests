; ModuleID = './app/widgets/gimpdockbook.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDockbookClass = type { %struct._GtkNotebookClass, void (%struct._GimpDockbook*, %struct._GimpDockable*)*, void (%struct._GimpDockbook*, %struct._GimpDockable*)*, void (%struct._GimpDockbook*, %struct._GimpDockable*)* }
%struct._GtkNotebookClass = type { %struct._GtkContainerClass, void (%struct._GtkNotebook*, i8*, i32)*, i32 (%struct._GtkNotebook*, i32)*, i32 (%struct._GtkNotebook*, i32)*, i32 (%struct._GtkNotebook*, i32)*, void (%struct._GtkNotebook*, i32)*, i32 (%struct._GtkNotebook*, i32, i32)*, i32 (%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32)*, %struct._GtkNotebook* (%struct._GtkNotebook*, %struct._GtkWidget*, i32, i32)*, void ()* }
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
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GimpDockbookPrivate = type { %struct._GimpDock*, %struct._GimpUIManager*, i32, %struct._GimpDockable*, %struct._GimpPanedBox*, [3 x i32], %struct._GList*, %struct._GtkWidget* }
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDockPrivate = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpPanedBox = type { %struct._GtkBox, %struct._GimpPanedBoxPrivate* }
%struct._GimpPanedBoxPrivate = type opaque
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpDockablePrivate = type opaque
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpMenuFactory = type { %struct._GimpObject, %struct._GimpMenuFactoryPrivate* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpMenuFactoryPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpDockWindowPrivate = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GimpDockContainer = type opaque
%struct._GimpActionGroup = type opaque
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GimpStringAction = type { %struct._GimpAction, i8* }
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GtkEventBox = type { %struct._GtkBin }
%struct._GtkTargetList = type { %struct._GList*, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkIconTheme = type { %struct._GObject, %struct._GtkIconThemePrivate* }
%struct._GtkIconThemePrivate = type opaque
%struct._GtkImageMenuItem = type { %struct._GtkMenuItem, %struct._GtkWidget* }
%struct._GtkMenuItem = type { %struct._GtkItem, %struct._GtkWidget*, %struct._GdkDrawable*, i16, i16, i8*, i8, i32 }
%struct._GtkItem = type { %struct._GtkBin }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpDocked = type opaque
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }

@gimp_dockbook_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpDockbook\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dockbook_new = private unnamed_addr constant [18 x i8] c"gimp_dockbook_new\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"GIMP_IS_MENU_FACTORY (menu_factory)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"<Dockable>\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gimp-dock\00", align 1
@__func__.gimp_dockbook_get_dock = private unnamed_addr constant [23 x i8] c"gimp_dockbook_get_dock\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DOCKBOOK (dockbook)\00", align 1
@__func__.gimp_dockbook_set_dock = private unnamed_addr constant [23 x i8] c"gimp_dockbook_set_dock\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"dock == NULL || GIMP_IS_DOCK (dock)\00", align 1
@__func__.gimp_dockbook_get_ui_manager = private unnamed_addr constant [29 x i8] c"gimp_dockbook_get_ui_manager\00", align 1
@__func__.gimp_dockbook_add = private unnamed_addr constant [18 x i8] c"gimp_dockbook_add\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"dockbook->p->dock != NULL\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DOCKABLE (dockable)\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"gimp_dockable_get_dockbook (dockable) == NULL\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"Adding GimpDockable %p to GimpDockbook %p\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"GTK_IS_WIDGET (tab_widget)\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"GTK_IS_WIDGET (menu_widget)\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"notify::locked\00", align 1
@dockbook_signals = internal global [3 x i32] zeroinitializer, align 4
@__func__.gimp_dockbook_add_from_dialog_factory = private unnamed_addr constant [38 x i8] c"gimp_dockbook_add_from_dialog_factory\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"identifiers != NULL\00", align 1
@__func__.gimp_dockbook_remove = private unnamed_addr constant [21 x i8] c"gimp_dockbook_remove\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"gimp_dockable_get_dockbook (dockable) == dockbook\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Removing GimpDockable %p from GimpDockbook %p\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"gimp-dialog-identifier\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"dialogs\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"gimp-dockable\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"drag-begin\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"drag-end\00", align 1
@dialog_target_table = internal constant [1 x %struct._GtkTargetEntry] [%struct._GtkTargetEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 24 }], align 16
@.str.22 = private unnamed_addr constant [11 x i8] c"drag-leave\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"drag-motion\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"drag-drop\00", align 1
@__func__.gimp_dockbook_update_auto_tab_style = private unnamed_addr constant [36 x i8] c"gimp_dockbook_update_auto_tab_style\00", align 1
@__func__.gimp_dockbook_drop_dockable = private unnamed_addr constant [28 x i8] c"gimp_dockbook_drop_dockable\00", align 1
@__func__.gimp_dockbook_set_drag_handler = private unnamed_addr constant [31 x i8] c"gimp_dockbook_set_drag_handler\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"gimp-dock-drag-widget\00", align 1
@gimp_dockbook_parent_class = internal global i8* null, align 8
@GimpDockbook_private_offset = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [15 x i8] c"dockable-added\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"dockable-removed\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"dockable-reordered\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"tab-border\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"tab-icon-size\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"/dockable-popup/dockable-menu\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"%s: UI manager '%s' has now widget at path '%s'\00", align 1
@__func__.gimp_dockbook_show_menu = private unnamed_addr constant [24 x i8] c"gimp_dockbook_show_menu\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"%s: UI manager '%s' has no action at path '%s'\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"%s: child_menu_widget (%p) is not a GtkMenu\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"gimp-dockable-detach-ref\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"/dockable-popup\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"gimp-menu-left\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"Configure this tab\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"gimp-dock-tab-menu\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"application/x-gimp-dialog\00", align 1
@gimp_tab_style_candidates = internal constant [3 x i32] [i32 7, i32 6, i32 1], align 4
@__func__.gimp_dockbook_refresh_tab_layout_lut = private unnamed_addr constant [37 x i8] c"gimp_dockbook_refresh_tab_layout_lut\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"Total tab space taken for auto tab style %s = %d\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"tab-hborder\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"tab-curvature\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"focus-line-width\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"tab-overlap\00", align 1
@__func__.gimp_dockbook_update_automatic_tab_style = private unnamed_addr constant [41 x i8] c"gimp_dockbook_update_automatic_tab_style\00", align 1
@.str.50 = private unnamed_addr constant [218 x i8] c"\0A  available_space             = %d where\0A    dockbook_allocation.width = %d\0A    border_loss               = %d\0A    action_widget_size        = %d\0A    tab_padding               = %d\0A    tab_overlap               = %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Choosing tab style %s\00", align 1
@gdk_threads_lock = external global void ()*, align 8
@gdk_threads_unlock = external global void ()*, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dockbook_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dockbook_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dockbook_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_notebook_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 920, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dockbook_class_intern_init to void (i8*, i8*)*), i32 184, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDockbook*)* @gimp_dockbook_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dockbook_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_dockbook_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_notebook_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dockbook_parent_class, align 8
  %1 = load i32, i32* @GimpDockbook_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDockbook_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDockbookClass*
  call void @gimp_dockbook_class_init(%struct._GimpDockbookClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_init(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %notebook = alloca %struct._GtkNotebook*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkNotebook*
  store %struct._GtkNotebook* %2, %struct._GtkNotebook** %notebook, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %image, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %4 = bitcast %struct._GimpDockbook* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_dockbook_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDockbookPrivate*
  %6 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %6, i32 0, i32 1
  store %struct._GimpDockbookPrivate* %5, %struct._GimpDockbookPrivate** %p, align 8
  %7 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook, align 8
  call void @gtk_notebook_popup_enable(%struct._GtkNotebook* %7)
  %8 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook, align 8
  call void @gtk_notebook_set_scrollable(%struct._GtkNotebook* %8, i32 1)
  %9 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook, align 8
  call void @gtk_notebook_set_show_border(%struct._GtkNotebook* %9, i32 0)
  %10 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook, align 8
  call void @gtk_notebook_set_show_tabs(%struct._GtkNotebook* %10, i32 1)
  %11 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %12 = bitcast %struct._GimpDockbook* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %13, i32 0, %struct._GtkTargetEntry* getelementptr inbounds ([1 x %struct._GtkTargetEntry], [1 x %struct._GtkTargetEntry]* @dialog_target_table, i32 0, i32 0), i32 1, i32 4)
  %call6 = call %struct._GtkWidget* @gtk_button_new()
  %14 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p7 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %14, i32 0, i32 1
  %15 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p7, align 8
  %menu_button = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %15, i32 0, i32 7
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %menu_button, align 8
  %16 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p8 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %16, i32 0, i32 1
  %17 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p8, align 8
  %menu_button9 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %17, i32 0, i32 7
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_button9, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %18, i32 0)
  %19 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p10 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %19, i32 0, i32 1
  %20 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p10, align 8
  %menu_button11 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %20, i32 0, i32 7
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_button11, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_button_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call12)
  %23 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %23, i32 2)
  %24 = load %struct._GtkNotebook*, %struct._GtkNotebook** %notebook, align 8
  %25 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p14 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %25, i32 0, i32 1
  %26 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p14, align 8
  %menu_button15 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %26, i32 0, i32 7
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_button15, align 8
  call void @gtk_notebook_set_action_widget(%struct._GtkNotebook* %24, %struct._GtkWidget* %27, i32 1)
  %28 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p16 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %28, i32 0, i32 1
  %29 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p16, align 8
  %menu_button17 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %29, i32 0, i32 7
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_button17, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %30)
  %call18 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %image, align 8
  %31 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p19 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %31, i32 0, i32 1
  %32 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p19, align 8
  %menu_button20 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %32, i32 0, i32 7
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_button20, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_container_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call21)
  %35 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkContainer*
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %35, %struct._GtkWidget* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %37)
  %38 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p23 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %38, i32 0, i32 1
  %39 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p23, align 8
  %menu_button24 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %39, i32 0, i32 7
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_button24, align 8
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0)) #5
  call void @gimp_help_set_help_data(%struct._GtkWidget* %40, i8* %call25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0))
  %41 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p26 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %41, i32 0, i32 1
  %42 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p26, align 8
  %menu_button27 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %42, i32 0, i32 7
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_button27, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %45 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %46 = bitcast %struct._GimpDockbook* %45 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpDockbook*, %struct._GdkEventButton*, %struct._GtkWidget*)* @gimp_dockbook_menu_button_press to void ()*), i8* %46, void (i8*, %struct._GClosure*)* null, i32 2)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory* %menu_factory) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %1 = bitcast %struct._GimpMenuFactory* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_menu_factory_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockbook_new, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_dockbook_get_type() #7
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %13, %struct._GimpDockbook** %dockbook, align 8
  %14 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %15 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %16 = bitcast %struct._GimpDockbook* %15 to i8*
  %call13 = call %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* %16, i32 0)
  %17 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %17, i32 0, i32 1
  %18 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %18, i32 0, i32 1
  store %struct._GimpUIManager* %call13, %struct._GimpUIManager** %ui_manager, align 8
  %19 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %20 = bitcast %struct._GimpDockbook* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %22 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %23 = bitcast %struct._GimpDockbook* %22 to i8*
  call void @gimp_help_connect(%struct._GtkWidget* %21, void (i8*, i8*)* @gimp_dockbook_help_func, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* %23)
  %24 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %25 = bitcast %struct._GimpDockbook* %24 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_widget_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call16)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkWidget*
  store %struct._GtkWidget* %26, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %27
}

; Function Attrs: nounwind readnone
declare i64 @gimp_menu_factory_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GimpUIManager* @gimp_menu_factory_manager_new(%struct._GimpMenuFactory*, i8*, i8*, i32) #1

declare void @gimp_help_connect(%struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_help_func(i8* %help_id, i8* %help_data) #3 {
entry:
  %help_id.addr = alloca i8*, align 8
  %help_data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dockable = alloca %struct._GtkWidget*, align 8
  %page_num = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %help_id, i8** %help_id.addr, align 8
  store i8* %help_data, i8** %help_data.addr, align 8
  %0 = load i8*, i8** %help_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %4 = bitcast %struct._GimpDockbook* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_notebook_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkNotebook*
  %call4 = call i32 @gtk_notebook_get_current_page(%struct._GtkNotebook* %5)
  store i32 %call4, i32* %page_num, align 4
  %6 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %7 = bitcast %struct._GimpDockbook* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_notebook_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkNotebook*
  %9 = load i32, i32* %page_num, align 4
  %call7 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %8, i32 %9)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %dockable, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %11, %struct._GTypeInstance** %__inst, align 8
  %call8 = call i64 @gimp_dockable_get_type() #7
  store i64 %call8, i64* %__t, align 8
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %12, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.14

if.else:                                          ; preds = %entry
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool9 = icmp ne %struct._GTypeClass* %14, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class10 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class10, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %18 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %17, %18
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.12:                                       ; preds = %land.lhs.true, %if.else
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %20 = load i64, i64* %__t, align 8
  %call13 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %19, i64 %20) #8
  store i32 %call13, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %21 = load i32, i32* %__r, align 4
  store i32 %21, i32* %tmp
  %22 = load i32, i32* %tmp
  %tobool15 = icmp ne i32 %22, 0
  br i1 %tobool15, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %if.end.14
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_dockable_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDockable*
  %call19 = call i8* @gimp_dockable_get_help_id(%struct._GimpDockable* %25)
  call void @gimp_standard_help_func(i8* %call19, i8* null)
  br label %if.end.21

if.else.20:                                       ; preds = %if.end.14
  call void @gimp_standard_help_func(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.16
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %retval = alloca %struct._GimpDock*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dockbook_get_dock, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpDock* null, %struct._GimpDock** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %13, i32 0, i32 1
  %14 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %dock = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  store %struct._GimpDock* %15, %struct._GimpDock** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpDock*, %struct._GimpDock** %retval
  ret %struct._GimpDock* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dockbook_set_dock(%struct._GimpDockbook* %dockbook, %struct._GimpDock* %dock) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dock.addr = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpDock* %dock, %struct._GimpDock** %dock.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dockbook_set_dock, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %cmp12 = icmp eq %struct._GimpDock* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %15 = bitcast %struct._GimpDock* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_dock_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dockbook_set_dock, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpDock*, %struct._GimpDock** %dock.addr, align 8
  %28 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %28, i32 0, i32 1
  %29 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %dock40 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %29, i32 0, i32 0
  store %struct._GimpDock* %27, %struct._GimpDock** %dock40, align 8
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_dockbook_get_ui_manager(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_dockbook_get_ui_manager, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %13, i32 0, i32 1
  %14 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %14, i32 0, i32 1
  %15 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  store %struct._GimpUIManager* %15, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dockbook_add(%struct._GimpDockbook* %dockbook, %struct._GimpDockable* %dockable, i32 %position) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %position.addr = alloca i32, align 4
  %tab_widget = alloca %struct._GtkWidget*, align 8
  %menu_widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %__inst64 = alloca %struct._GTypeInstance*, align 8
  %__t66 = alloca i64, align 8
  %__r69 = alloca i32, align 4
  %tmp84 = alloca i32, align 4
  %__inst97 = alloca %struct._GTypeInstance*, align 8
  %__t99 = alloca i64, align 8
  %__r102 = alloca i32, align 4
  %tmp117 = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockbook_add, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %13, i32 0, i32 1
  %14 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %dock = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %14, i32 0, i32 0
  %15 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %cmp12 = icmp ne %struct._GimpDock* %15, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockbook_add, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %17 = bitcast %struct._GimpDockable* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst19, align 8
  %call22 = call i64 @gimp_dockable_get_type() #7
  store i64 %call22, i64* %__t21, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %do.body.17
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %do.body.17
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type32, align 8
  %24 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %23, %24
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %26 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #8
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %27 = load i32, i32* %__r24, align 4
  store i32 %27, i32* %tmp39
  %28 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %if.end.38
  br label %if.end.43

if.else.42:                                       ; preds = %if.end.38
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockbook_add, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.43:                                        ; preds = %if.then.41
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %29 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call46 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %29)
  %cmp47 = icmp eq %struct._GimpDockbook* %call46, null
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.45
  br label %if.end.50

if.else.49:                                       ; preds = %do.body.45
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockbook_add, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.50:                                        ; preds = %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %30 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %30, 4
  %tobool53 = icmp ne i32 %and, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %do.body.52
  %31 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %32 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockbook_add, i32 0, i32 0), i32 933, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), %struct._GimpDockable* %31, %struct._GimpDockbook* %32)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %do.body.52
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %33 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p57 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %33, i32 0, i32 1
  %34 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p57, align 8
  %dockables = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %34, i32 0, i32 6
  %35 = load %struct._GList*, %struct._GList** %dockables, align 8
  %36 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %37 = bitcast %struct._GimpDockable* %36 to i8*
  %38 = load i32, i32* %position.addr, align 4
  %call58 = call %struct._GList* @g_list_insert(%struct._GList* %35, i8* %37, i32 %38)
  %39 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p59 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %39, i32 0, i32 1
  %40 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p59, align 8
  %dockables60 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %40, i32 0, i32 6
  store %struct._GList* %call58, %struct._GList** %dockables60, align 8
  %41 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void @gimp_dockbook_update_auto_tab_style(%struct._GimpDockbook* %41)
  %42 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %43 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call61 = call %struct._GtkWidget* @gimp_dockbook_create_tab_widget(%struct._GimpDockbook* %42, %struct._GimpDockable* %43)
  store %struct._GtkWidget* %call61, %struct._GtkWidget** %tab_widget, align 8
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.56
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %45, %struct._GTypeInstance** %__inst64, align 8
  %call67 = call i64 @gtk_widget_get_type() #7
  store i64 %call67, i64* %__t66, align 8
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst64, align 8
  %tobool70 = icmp ne %struct._GTypeInstance* %46, null
  br i1 %tobool70, label %if.else.72, label %if.then.71

if.then.71:                                       ; preds = %do.body.62
  store i32 0, i32* %__r69, align 4
  br label %if.end.83

if.else.72:                                       ; preds = %do.body.62
  %47 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst64, align 8
  %g_class73 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %47, i32 0, i32 0
  %48 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class73, align 8
  %tobool74 = icmp ne %struct._GTypeClass* %48, null
  br i1 %tobool74, label %land.lhs.true.75, label %if.else.80

land.lhs.true.75:                                 ; preds = %if.else.72
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst64, align 8
  %g_class76 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class76, align 8
  %g_type77 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %50, i32 0, i32 0
  %51 = load i64, i64* %g_type77, align 8
  %52 = load i64, i64* %__t66, align 8
  %cmp78 = icmp eq i64 %51, %52
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %land.lhs.true.75
  store i32 1, i32* %__r69, align 4
  br label %if.end.82

if.else.80:                                       ; preds = %land.lhs.true.75, %if.else.72
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst64, align 8
  %54 = load i64, i64* %__t66, align 8
  %call81 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %53, i64 %54) #8
  store i32 %call81, i32* %__r69, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.80, %if.then.79
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.71
  %55 = load i32, i32* %__r69, align 4
  store i32 %55, i32* %tmp84
  %56 = load i32, i32* %tmp84
  %tobool85 = icmp ne i32 %56, 0
  br i1 %tobool85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.end.83
  br label %if.end.88

if.else.87:                                       ; preds = %if.end.83
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockbook_add, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.88:                                        ; preds = %if.then.86
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  %57 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %58 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p90 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %58, i32 0, i32 1
  %59 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p90, align 8
  %drag_handler = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %59, i32 0, i32 4
  %60 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  call void @gimp_dockable_set_drag_handler(%struct._GimpDockable* %57, %struct._GimpPanedBox* %60)
  %61 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %62 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p91 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %62, i32 0, i32 1
  %63 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p91, align 8
  %dock92 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %63, i32 0, i32 0
  %64 = load %struct._GimpDock*, %struct._GimpDock** %dock92, align 8
  %call93 = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %64)
  %call94 = call %struct._GtkWidget* @gimp_dockable_create_tab_widget(%struct._GimpDockable* %61, %struct._GimpContext* %call93, i32 5, i32 1)
  store %struct._GtkWidget* %call94, %struct._GtkWidget** %menu_widget, align 8
  br label %do.body.95

do.body.95:                                       ; preds = %do.end.89
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_widget, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %66, %struct._GTypeInstance** %__inst97, align 8
  %call100 = call i64 @gtk_widget_get_type() #7
  store i64 %call100, i64* %__t99, align 8
  %67 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %tobool103 = icmp ne %struct._GTypeInstance* %67, null
  br i1 %tobool103, label %if.else.105, label %if.then.104

if.then.104:                                      ; preds = %do.body.95
  store i32 0, i32* %__r102, align 4
  br label %if.end.116

if.else.105:                                      ; preds = %do.body.95
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %g_class106 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %68, i32 0, i32 0
  %69 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class106, align 8
  %tobool107 = icmp ne %struct._GTypeClass* %69, null
  br i1 %tobool107, label %land.lhs.true.108, label %if.else.113

land.lhs.true.108:                                ; preds = %if.else.105
  %70 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %g_class109 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %70, i32 0, i32 0
  %71 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class109, align 8
  %g_type110 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %71, i32 0, i32 0
  %72 = load i64, i64* %g_type110, align 8
  %73 = load i64, i64* %__t99, align 8
  %cmp111 = icmp eq i64 %72, %73
  br i1 %cmp111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %land.lhs.true.108
  store i32 1, i32* %__r102, align 4
  br label %if.end.115

if.else.113:                                      ; preds = %land.lhs.true.108, %if.else.105
  %74 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst97, align 8
  %75 = load i64, i64* %__t99, align 8
  %call114 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %74, i64 %75) #8
  store i32 %call114, i32* %__r102, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.113, %if.then.112
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.104
  %76 = load i32, i32* %__r102, align 4
  store i32 %76, i32* %tmp117
  %77 = load i32, i32* %tmp117
  %tobool118 = icmp ne i32 %77, 0
  br i1 %tobool118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.end.116
  br label %if.end.121

if.else.120:                                      ; preds = %if.end.116
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockbook_add, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0))
  br label %return

if.end.121:                                       ; preds = %if.then.119
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  %78 = load i32, i32* %position.addr, align 4
  %cmp123 = icmp eq i32 %78, -1
  br i1 %cmp123, label %if.then.124, label %if.else.130

if.then.124:                                      ; preds = %do.end.122
  %79 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %80 = bitcast %struct._GimpDockbook* %79 to %struct._GTypeInstance*
  %call125 = call i64 @gtk_notebook_get_type() #7
  %call126 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call125)
  %81 = bitcast %struct._GTypeInstance* %call126 to %struct._GtkNotebook*
  %82 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %83 = bitcast %struct._GimpDockable* %82 to %struct._GTypeInstance*
  %call127 = call i64 @gtk_widget_get_type() #7
  %call128 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call127)
  %84 = bitcast %struct._GTypeInstance* %call128 to %struct._GtkWidget*
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_widget, align 8
  %call129 = call i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook* %81, %struct._GtkWidget* %84, %struct._GtkWidget* %85, %struct._GtkWidget* %86)
  br label %if.end.136

if.else.130:                                      ; preds = %do.end.122
  %87 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %88 = bitcast %struct._GimpDockbook* %87 to %struct._GTypeInstance*
  %call131 = call i64 @gtk_notebook_get_type() #7
  %call132 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %88, i64 %call131)
  %89 = bitcast %struct._GTypeInstance* %call132 to %struct._GtkNotebook*
  %90 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %91 = bitcast %struct._GimpDockable* %90 to %struct._GTypeInstance*
  %call133 = call i64 @gtk_widget_get_type() #7
  %call134 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call133)
  %92 = bitcast %struct._GTypeInstance* %call134 to %struct._GtkWidget*
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_widget, align 8
  %95 = load i32, i32* %position.addr, align 4
  %call135 = call i32 @gtk_notebook_insert_page_menu(%struct._GtkNotebook* %89, %struct._GtkWidget* %92, %struct._GtkWidget* %93, %struct._GtkWidget* %94, i32 %95)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.130, %if.then.124
  %96 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %97 = bitcast %struct._GimpDockable* %96 to %struct._GTypeInstance*
  %call137 = call i64 @gtk_widget_get_type() #7
  %call138 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call137)
  %98 = bitcast %struct._GTypeInstance* %call138 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %98)
  %99 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %100 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void @gimp_dockable_set_dockbook(%struct._GimpDockable* %99, %struct._GimpDockbook* %100)
  %101 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %102 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p139 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %102, i32 0, i32 1
  %103 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p139, align 8
  %dock140 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %103, i32 0, i32 0
  %104 = load %struct._GimpDock*, %struct._GimpDock** %dock140, align 8
  %call141 = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %104)
  call void @gimp_dockable_set_context(%struct._GimpDockable* %101, %struct._GimpContext* %call141)
  %105 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %106 = bitcast %struct._GimpDockable* %105 to i8*
  %107 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %108 = bitcast %struct._GimpDockbook* %107 to i8*
  %call142 = call i64 @g_signal_connect_data(i8* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDockable*, %struct._GParamSpec*, %struct._GimpDockbook*)* @gimp_dockbook_tab_locked_notify to void ()*), i8* %108, void (i8*, %struct._GClosure*)* null, i32 0)
  %109 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %110 = bitcast %struct._GimpDockbook* %109 to i8*
  %111 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dockbook_signals, i32 0, i64 0), align 4
  %112 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %110, i32 %111, i32 0, %struct._GimpDockable* %112)
  br label %return

return:                                           ; preds = %if.end.136, %if.else.120, %if.else.87, %if.else.49, %if.else.42, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_dockable_get_type() #2

declare %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable*) #1

declare void @gimp_log(i32, i8*, i32, i8*, ...) #1

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_dockbook_update_auto_tab_style(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_dockbook_update_auto_tab_style, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void @gimp_dockbook_refresh_tab_layout_lut(%struct._GimpDockbook* %13)
  %14 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void @gimp_dockbook_update_automatic_tab_style(%struct._GimpDockbook* %14)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dockbook_create_tab_widget(%struct._GimpDockbook* %dockbook, %struct._GimpDockable* %dockable) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %tab_widget = alloca %struct._GtkWidget*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %dialog_id = alloca i8*, align 8
  %dock_container = alloca %struct._GimpDockContainer*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %actions = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store %struct._GtkAction* null, %struct._GtkAction** %action, align 8
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %1, i32 0, i32 1
  %2 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %dock = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %2, i32 0, i32 0
  %3 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %3)
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call1 = call i32 @gimp_dockable_get_actual_tab_style(%struct._GimpDockable* %4)
  %5 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %call2 = call i32 @gimp_dockbook_get_tab_icon_size(%struct._GimpDockbook* %5)
  %call3 = call %struct._GtkWidget* @gimp_dockable_create_event_box_tab_widget(%struct._GimpDockable* %0, %struct._GimpContext* %call, i32 %call1, i32 %call2)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %tab_widget, align 8
  %6 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %6, i32 0, i32 1
  %7 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p4, align 8
  %dock5 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpDock*, %struct._GimpDock** %dock5, align 8
  %call6 = call %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock* %8)
  store %struct._GimpDockWindow* %call6, %struct._GimpDockWindow** %dock_window, align 8
  %9 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %tobool = icmp ne %struct._GimpDockWindow* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %11 = bitcast %struct._GimpDockWindow* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_dock_container_interface_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpDockContainer*
  %call9 = call %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer* %12)
  %tobool10 = icmp ne %struct._GimpUIManager* %call9, null
  br i1 %tobool10, label %if.then, label %if.end.48

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %14 = bitcast %struct._GimpDockable* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0))
  store i8* %call12, i8** %dialog_id, align 8
  %16 = load i8*, i8** %dialog_id, align 8
  %tobool13 = icmp ne i8* %16, null
  br i1 %tobool13, label %if.then.14, label %if.end.47

if.then.14:                                       ; preds = %if.then
  %17 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %18 = bitcast %struct._GimpDockWindow* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_dock_container_interface_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDockContainer*
  store %struct._GimpDockContainer* %19, %struct._GimpDockContainer** %dock_container, align 8
  %20 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container, align 8
  %call17 = call %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer* %20)
  %call18 = call %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager* %call17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0))
  store %struct._GimpActionGroup* %call18, %struct._GimpActionGroup** %group, align 8
  %21 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %tobool19 = icmp ne %struct._GimpActionGroup* %21, null
  br i1 %tobool19, label %if.then.20, label %if.end.46

if.then.20:                                       ; preds = %if.then.14
  %22 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %23 = bitcast %struct._GimpActionGroup* %22 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_action_group_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call21)
  %24 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkActionGroup*
  %call23 = call %struct._GList* @gtk_action_group_list_actions(%struct._GtkActionGroup* %24)
  store %struct._GList* %call23, %struct._GList** %actions, align 8
  %25 = load %struct._GList*, %struct._GList** %actions, align 8
  store %struct._GList* %25, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then.20
  %26 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool24 = icmp ne %struct._GList* %26, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %27, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %29, %struct._GTypeInstance** %__inst, align 8
  %call25 = call i64 @gimp_string_action_get_type() #7
  store i64 %call25, i64* %__t, align 8
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %30, null
  br i1 %tobool26, label %if.else, label %if.then.27

if.then.27:                                       ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.34

if.else:                                          ; preds = %for.body
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool28 = icmp ne %struct._GTypeClass* %32, null
  br i1 %tobool28, label %land.lhs.true.29, label %if.else.32

land.lhs.true.29:                                 ; preds = %if.else
  %33 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type, align 8
  %36 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %35, %36
  br i1 %cmp, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.32:                                       ; preds = %land.lhs.true.29, %if.else
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %38 = load i64, i64* %__t, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %37, i64 %38) #8
  store i32 %call33, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.32, %if.then.31
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then.27
  %39 = load i32, i32* %__r, align 4
  store i32 %39, i32* %tmp
  %40 = load i32, i32* %tmp
  %tobool35 = icmp ne i32 %40, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.44

land.lhs.true.36:                                 ; preds = %if.end.34
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %data37 = getelementptr inbounds %struct._GList, %struct._GList* %41, i32 0, i32 0
  %42 = load i8*, i8** %data37, align 8
  %43 = bitcast i8* %42 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_string_action_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call38)
  %44 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpStringAction*
  %value = getelementptr inbounds %struct._GimpStringAction, %struct._GimpStringAction* %44, i32 0, i32 1
  %45 = load i8*, i8** %value, align 8
  %46 = load i8*, i8** %dialog_id, align 8
  %call40 = call i8* @strstr(i8* %45, i8* %46) #8
  %tobool41 = icmp ne i8* %call40, null
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true.36
  %47 = load %struct._GList*, %struct._GList** %list, align 8
  %data43 = getelementptr inbounds %struct._GList, %struct._GList* %47, i32 0, i32 0
  %48 = load i8*, i8** %data43, align 8
  %49 = bitcast i8* %48 to %struct._GtkAction*
  store %struct._GtkAction* %49, %struct._GtkAction** %action, align 8
  br label %for.end

if.end.44:                                        ; preds = %land.lhs.true.36, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool45 = icmp ne %struct._GList* %50, null
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %52, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.42, %for.cond
  %53 = load %struct._GList*, %struct._GList** %actions, align 8
  call void @g_list_free(%struct._GList* %53)
  br label %if.end.46

if.end.46:                                        ; preds = %for.end, %if.then.14
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true, %entry
  %54 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool49 = icmp ne %struct._GtkAction* %54, null
  br i1 %tobool49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.end.48
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %56 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  call void @gimp_widget_set_accel_help(%struct._GtkWidget* %55, %struct._GtkAction* %56)
  br label %if.end.54

if.else.51:                                       ; preds = %if.end.48
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %58 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call52 = call i8* @gimp_dockable_get_blurb(%struct._GimpDockable* %58)
  %59 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call53 = call i8* @gimp_dockable_get_help_id(%struct._GimpDockable* %59)
  call void @gimp_help_set_help_data(%struct._GtkWidget* %57, i8* %call52, i8* %call53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 80)
  %62 = bitcast %struct._GTypeInstance* %call55 to %struct._GObject*
  %63 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %64 = bitcast %struct._GimpDockable* %63 to i8*
  call void @g_object_set_data(%struct._GObject* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i8* %64)
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %66 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockbook_tab_drag_source_setup(%struct._GtkWidget* %65, %struct._GimpDockable* %66)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %68 = bitcast %struct._GtkWidget* %67 to i8*
  %69 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %70 = bitcast %struct._GimpDockable* %69 to i8*
  %call56 = call i64 @g_signal_connect_object(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GimpDockable*)* @gimp_dockbook_tab_drag_begin to void ()*), i8* %70, i32 0)
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  %73 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %74 = bitcast %struct._GimpDockable* %73 to i8*
  %call57 = call i64 @g_signal_connect_object(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GimpDockable*)* @gimp_dockbook_tab_drag_end to void ()*), i8* %74, i32 0)
  %75 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %76 = bitcast %struct._GimpDockable* %75 to i8*
  %77 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %78 = bitcast %struct._GimpDockable* %77 to i8*
  %call58 = call i64 @g_signal_connect_object(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GimpDockable*)* @gimp_dockbook_tab_drag_begin to void ()*), i8* %78, i32 0)
  %79 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %80 = bitcast %struct._GimpDockable* %79 to i8*
  %81 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %82 = bitcast %struct._GimpDockable* %81 to i8*
  %call59 = call i64 @g_signal_connect_object(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GimpDockable*)* @gimp_dockbook_tab_drag_end to void ()*), i8* %82, i32 0)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  call void @gtk_drag_dest_set(%struct._GtkWidget* %83, i32 0, %struct._GtkTargetEntry* getelementptr inbounds ([1 x %struct._GtkTargetEntry], [1 x %struct._GtkTargetEntry]* @dialog_target_table, i32 0, i32 0), i32 1, i32 4)
  %84 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %85 = bitcast %struct._GtkWidget* %84 to i8*
  %86 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %87 = bitcast %struct._GimpDockable* %86 to i8*
  %call60 = call i64 @g_signal_connect_object(i8* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, %struct._GimpDockable*)* @gimp_dockbook_tab_drag_leave to void ()*), i8* %87, i32 0)
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %89 = bitcast %struct._GtkWidget* %88 to i8*
  %90 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %91 = bitcast %struct._GimpDockable* %90 to i8*
  %call61 = call i64 @g_signal_connect_object(i8* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32, %struct._GimpDockable*)* @gimp_dockbook_tab_drag_motion to void ()*), i8* %91, i32 0)
  %92 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %93 = bitcast %struct._GtkWidget* %92 to i8*
  %94 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %95 = bitcast %struct._GimpDockbook* %94 to i8*
  %call62 = call i64 @g_signal_connect_object(i8* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)* @gimp_dockbook_tab_drag_drop to void ()*), i8* %95, i32 0)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  ret %struct._GtkWidget* %96
}

declare void @gimp_dockable_set_drag_handler(%struct._GimpDockable*, %struct._GimpPanedBox*) #1

declare %struct._GtkWidget* @gimp_dockable_create_tab_widget(%struct._GimpDockable*, %struct._GimpContext*, i32, i32) #1

declare %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock*) #1

declare i32 @gtk_notebook_append_page_menu(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare i32 @gtk_notebook_insert_page_menu(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_dockable_set_dockbook(%struct._GimpDockable*, %struct._GimpDockbook*) #1

declare void @gimp_dockable_set_context(%struct._GimpDockable*, %struct._GimpContext*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_tab_locked_notify(%struct._GimpDockable* %dockable, %struct._GParamSpec* %pspec, %struct._GimpDockbook* %dockbook) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %tab_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkNotebook*
  %3 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %4 = bitcast %struct._GimpDockable* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  %call4 = call %struct._GtkWidget* @gtk_notebook_get_tab_label(%struct._GtkNotebook* %2, %struct._GtkWidget* %5)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %tab_widget, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %7 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockbook_tab_drag_source_setup(%struct._GtkWidget* %6, %struct._GimpDockable* %7)
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dockbook_add_from_dialog_factory(%struct._GimpDockbook* %dockbook, i8* %identifiers, i32 %position) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %identifiers.addr = alloca i8*, align 8
  %position.addr = alloca i32, align 4
  %dockable = alloca %struct._GtkWidget*, align 8
  %dock = alloca %struct._GimpDock*, align 8
  %identifier = alloca i8*, align 8
  %p = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store i8* %identifiers, i8** %identifiers.addr, align 8
  store i32 %position, i32* %position.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_dockbook_add_from_dialog_factory, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %identifiers.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_dockbook_add_from_dialog_factory, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %identifiers.addr, align 8
  %call17 = call noalias i8* @g_strdup(i8* %14)
  store i8* %call17, i8** %identifier, align 8
  %15 = load i8*, i8** %identifier, align 8
  %call18 = call i8* @strchr(i8* %15, i32 124) #8
  store i8* %call18, i8** %p, align 8
  %16 = load i8*, i8** %p, align 8
  %tobool19 = icmp ne i8* %16, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end.16
  %17 = load i8*, i8** %p, align 8
  store i8 0, i8* %17, align 1
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %do.end.16
  %18 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %call22 = call %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %18)
  store %struct._GimpDock* %call22, %struct._GimpDock** %dock, align 8
  %19 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call23 = call %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock* %19)
  %20 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %21 = load i8*, i8** %identifier, align 8
  %call24 = call %struct._GtkWidget* @gimp_dialog_factory_dockable_new(%struct._GimpDialogFactory* %call23, %struct._GimpDock* %20, i8* %21, i32 -1)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %dockable, align 8
  %22 = load i8*, i8** %identifier, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %tobool25 = icmp ne %struct._GtkWidget* %23, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.34

land.lhs.true.26:                                 ; preds = %if.end.21
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_dockable_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call27)
  %26 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpDockable*
  %call29 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %26)
  %tobool30 = icmp ne %struct._GimpDockbook* %call29, null
  br i1 %tobool30, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.26
  %27 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %29 = bitcast %struct._GtkWidget* %28 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_dockable_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call32)
  %30 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpDockable*
  %31 = load i32, i32* %position.addr, align 4
  call void @gimp_dockbook_add(%struct._GimpDockbook* %27, %struct._GimpDockable* %30, i32 %31)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %land.lhs.true.26, %if.end.21
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  store %struct._GtkWidget* %32, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.else.14, %if.else.9
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %33
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare %struct._GtkWidget* @gimp_dialog_factory_dockable_new(%struct._GimpDialogFactory*, %struct._GimpDock*, i8*, i32) #1

declare %struct._GimpDialogFactory* @gimp_dock_get_dialog_factory(%struct._GimpDock*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dockbook_remove(%struct._GimpDockbook* %dockbook, %struct._GimpDockable* %dockable) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %children = alloca %struct._GList*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_dockbook_remove, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.77

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %14 = bitcast %struct._GimpDockable* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_dockable_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_dockbook_remove, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.77

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call40 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %26)
  %27 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %cmp41 = icmp eq %struct._GimpDockbook* %call40, %27
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.44

if.else.43:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_dockbook_remove, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.77

if.end.44:                                        ; preds = %if.then.42
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %28 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %28, 4
  %tobool47 = icmp ne i32 %and, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.body.46
  %29 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %30 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_dockbook_remove, i32 0, i32 0), i32 1042, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0), %struct._GimpDockable* %29, %struct._GimpDockbook* %30)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %do.body.46
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %31 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockable_set_drag_handler(%struct._GimpDockable* %31, %struct._GimpPanedBox* null)
  %32 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %33 = bitcast %struct._GimpDockable* %32 to i8*
  %call51 = call i8* @g_object_ref(i8* %33)
  %34 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %35 = bitcast %struct._GimpDockable* %34 to i8*
  %36 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %37 = bitcast %struct._GimpDockbook* %36 to i8*
  %call52 = call i32 @g_signal_handlers_disconnect_matched(i8* %35, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDockable*, %struct._GParamSpec*, %struct._GimpDockbook*)* @gimp_dockbook_tab_locked_notify to i8*), i8* %37)
  %38 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %38, i32 0, i32 1
  %39 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %tab_hover_dockable = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %39, i32 0, i32 3
  %40 = load %struct._GimpDockable*, %struct._GimpDockable** %tab_hover_dockable, align 8
  %41 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %cmp53 = icmp eq %struct._GimpDockable* %40, %41
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %do.end.50
  %42 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void @gimp_dockbook_remove_tab_timeout(%struct._GimpDockbook* %42)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %do.end.50
  %43 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockable_set_dockbook(%struct._GimpDockable* %43, %struct._GimpDockbook* null)
  %44 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockable_set_context(%struct._GimpDockable* %44, %struct._GimpContext* null)
  %45 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %46 = bitcast %struct._GimpDockbook* %45 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_container_get_type() #7
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call56)
  %47 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkContainer*
  %48 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %49 = bitcast %struct._GimpDockable* %48 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_widget_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call58)
  %50 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkWidget*
  call void @gtk_container_remove(%struct._GtkContainer* %47, %struct._GtkWidget* %50)
  %51 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p60 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %51, i32 0, i32 1
  %52 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p60, align 8
  %dockables = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %52, i32 0, i32 6
  %53 = load %struct._GList*, %struct._GList** %dockables, align 8
  %54 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %55 = bitcast %struct._GimpDockable* %54 to i8*
  %call61 = call %struct._GList* @g_list_remove(%struct._GList* %53, i8* %55)
  %56 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p62 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %56, i32 0, i32 1
  %57 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p62, align 8
  %dockables63 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %57, i32 0, i32 6
  store %struct._GList* %call61, %struct._GList** %dockables63, align 8
  %58 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %59 = bitcast %struct._GimpDockbook* %58 to i8*
  %60 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dockbook_signals, i32 0, i64 1), align 4
  %61 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %59, i32 %60, i32 0, %struct._GimpDockable* %61)
  %62 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %63 = bitcast %struct._GimpDockable* %62 to i8*
  call void @g_object_unref(i8* %63)
  %64 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p64 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %64, i32 0, i32 1
  %65 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p64, align 8
  %dock = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %65, i32 0, i32 0
  %66 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %tobool65 = icmp ne %struct._GimpDock* %66, null
  br i1 %tobool65, label %if.then.66, label %if.end.77

if.then.66:                                       ; preds = %if.end.55
  %67 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %68 = bitcast %struct._GimpDockbook* %67 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_container_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call68)
  %69 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkContainer*
  %call70 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %69)
  store %struct._GList* %call70, %struct._GList** %children, align 8
  %70 = load %struct._GList*, %struct._GList** %children, align 8
  %tobool71 = icmp ne %struct._GList* %70, null
  br i1 %tobool71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.then.66
  %71 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void @gimp_dockbook_update_auto_tab_style(%struct._GimpDockbook* %71)
  br label %if.end.76

if.else.73:                                       ; preds = %if.then.66
  %72 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p74 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %72, i32 0, i32 1
  %73 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p74, align 8
  %dock75 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %73, i32 0, i32 0
  %74 = load %struct._GimpDock*, %struct._GimpDock** %dock75, align 8
  %75 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void @gimp_dock_remove_book(%struct._GimpDock* %74, %struct._GimpDockbook* %75)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  %76 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.9, %if.else.36, %if.else.43, %if.end.76, %if.end.55
  ret void
}

declare i8* @g_object_ref(i8*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_remove_tab_timeout(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %0, i32 0, i32 1
  %1 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %tab_hover_timeout = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %1, i32 0, i32 2
  %2 = load i32, i32* %tab_hover_timeout, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %3, i32 0, i32 1
  %4 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p1, align 8
  %tab_hover_timeout2 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %4, i32 0, i32 2
  %5 = load i32, i32* %tab_hover_timeout2, align 4
  %call = call i32 @g_source_remove(i32 %5)
  %6 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p3 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %6, i32 0, i32 1
  %7 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p3, align 8
  %tab_hover_timeout4 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %7, i32 0, i32 2
  store i32 0, i32* %tab_hover_timeout4, align 4
  %8 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %8, i32 0, i32 1
  %9 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p5, align 8
  %tab_hover_dockable = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %9, i32 0, i32 3
  store %struct._GimpDockable* null, %struct._GimpDockable** %tab_hover_dockable, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare void @gimp_dock_remove_book(%struct._GimpDock*, %struct._GimpDockbook*) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dockbook_update_with_context(%struct._GimpDockbook* %dockbook, %struct._GimpContext* %context) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %children = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkContainer*
  %call2 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %2)
  store %struct._GList* %call2, %struct._GList** %children, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  %3 = load %struct._GList*, %struct._GList** %children, align 8
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
  %call3 = call i64 @gimp_dockable_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDockable*
  store %struct._GimpDockable* %8, %struct._GimpDockable** %dockable, align 8
  %9 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_dockable_set_context(%struct._GimpDockable* %9, %struct._GimpContext* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool5 = icmp ne %struct._GList* %11, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %12 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %13, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_dockable_create_event_box_tab_widget(%struct._GimpDockable* %dockable, %struct._GimpContext* %context, i32 %tab_style, i32 %size) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %tab_style.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %tab_widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %event_box = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %tab_style, i32* %tab_style.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = load i32, i32* %tab_style.addr, align 4
  %3 = load i32, i32* %size.addr, align 4
  %call = call %struct._GtkWidget* @gimp_dockable_create_tab_widget(%struct._GimpDockable* %0, %struct._GimpContext* %1, i32 %2, i32 %3)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %tab_widget, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %5, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_view_get_type() #7
  store i64 %call1, i64* %__t, align 8
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %8, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %9, i32 0, i32 0
  %10 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type, align 8
  %12 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %11, %12
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %14 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %13, i64 %14) #8
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %15 = load i32, i32* %__r, align 4
  store i32 %15, i32* %tmp
  %16 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.end.18, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %call11 = call %struct._GtkWidget* @gtk_event_box_new()
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %event_box, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_event_box_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call12)
  %19 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkEventBox*
  call void @gtk_event_box_set_visible_window(%struct._GtkEventBox* %19, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_event_box_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkEventBox*
  call void @gtk_event_box_set_above_child(%struct._GtkEventBox* %22, i32 1)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_container_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkContainer*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  call void @gtk_container_add(%struct._GtkContainer* %25, %struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %event_box, align 8
  store %struct._GtkWidget* %28, %struct._GtkWidget** %tab_widget, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.9, %if.end.7
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  ret %struct._GtkWidget* %29
}

declare i32 @gimp_dockable_get_actual_tab_style(%struct._GimpDockable*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_get_tab_icon_size(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %tab_size = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store i32 4, i32* %tab_size, align 4
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32* %tab_size, i8* null)
  %3 = load i32, i32* %tab_size, align 4
  ret i32 %3
}

declare %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock*) #1

declare %struct._GimpUIManager* @gimp_dock_container_get_ui_manager(%struct._GimpDockContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_container_interface_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare %struct._GimpActionGroup* @gimp_ui_manager_get_action_group(%struct._GimpUIManager*, i8*) #1

declare %struct._GList* @gtk_action_group_list_actions(%struct._GtkActionGroup*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_string_action_get_type() #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

declare void @gimp_widget_set_accel_help(%struct._GtkWidget*, %struct._GtkAction*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare i8* @gimp_dockable_get_blurb(%struct._GimpDockable*) #1

declare i8* @gimp_dockable_get_help_id(%struct._GimpDockable*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_tab_drag_source_setup(%struct._GtkWidget* %widget, %struct._GimpDockable* %dockable) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call = call i32 @gimp_dockable_is_locked(%struct._GimpDockable* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %tobool1 = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_drag_source_unset(%struct._GtkWidget* %2)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %4 = bitcast %struct._GimpDockable* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  call void @gtk_drag_source_unset(%struct._GtkWidget* %5)
  br label %if.end.10

if.else:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %tobool5 = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_drag_source_set(%struct._GtkWidget* %7, i32 768, %struct._GtkTargetEntry* getelementptr inbounds ([1 x %struct._GtkTargetEntry], [1 x %struct._GtkTargetEntry]* @dialog_target_table, i32 0, i32 0), i32 1, i32 4)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.else
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %9 = bitcast %struct._GimpDockable* %8 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call8)
  %10 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  call void @gtk_drag_source_set(%struct._GtkWidget* %10, i32 768, %struct._GtkTargetEntry* getelementptr inbounds ([1 x %struct._GtkTargetEntry], [1 x %struct._GtkTargetEntry]* @dialog_target_table, i32 0, i32 0), i32 1, i32 4)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.7, %if.end
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_tab_drag_begin(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, %struct._GimpDockable* %dockable) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %window = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %requisition = alloca %struct._GtkRequisition, align 4
  %drag_x = alloca i32, align 4
  %drag_y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %0, %struct._GdkRectangle* %allocation)
  %call = call %struct._GtkWidget* @gtk_window_new(i32 1)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %window, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  call void @gtk_window_set_type_hint(%struct._GtkWindow* %3, i32 13)
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_window_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWindow*
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call5 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %7)
  call void @gtk_window_set_screen(%struct._GtkWindow* %6, %struct._GdkScreen* %call5)
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call6 = call %struct._GtkWidget* @gimp_dockable_create_drag_widget(%struct._GimpDockable* %8)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %view, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_container_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkContainer*
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %11, %struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %14, %struct._GtkRequisition* %requisition)
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %requisition, i32 0, i32 0
  %15 = load i32, i32* %width, align 4
  %width9 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %16 = load i32, i32* %width9, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %width10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %18 = load i32, i32* %width10, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %17, i32 %18, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %19)
  %20 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %21 = bitcast %struct._GimpDockable* %20 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  call void @g_object_set_data_full(%struct._GObject* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* %24, void (i8*)* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void (i8*)*))
  %25 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockable_get_drag_pos(%struct._GimpDockable* %25, i32* %drag_x, i32* %drag_y)
  %26 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %window, align 8
  %28 = load i32, i32* %drag_x, align 4
  %29 = load i32, i32* %drag_y, align 4
  call void @gtk_drag_set_icon_widget(%struct._GdkDragContext* %26, %struct._GtkWidget* %27, i32 %28, i32 %29)
  %30 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %31 = bitcast %struct._GimpDockable* %30 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call12)
  %32 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %32, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_tab_drag_end(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, %struct._GimpDockable* %dockable) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %drag_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %drag_widget, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %drag_widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %6 = bitcast %struct._GimpDockable* %5 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* null)
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockable_detach(%struct._GimpDockable* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockable_set_drag_pos(%struct._GimpDockable* %9, i32 -6, i32 -6)
  %10 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %11 = bitcast %struct._GimpDockable* %10 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_widget_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call3)
  %12 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %12, i32 1)
  ret void
}

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_tab_drag_leave(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %time, %struct._GimpDockable* %dockable) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %time.addr = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %0)
  store %struct._GimpDockbook* %call, %struct._GimpDockbook** %dockbook, align 8
  %1 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  call void @gimp_dockbook_remove_tab_timeout(%struct._GimpDockbook* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_highlight_widget(%struct._GtkWidget* %2, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_tab_drag_motion(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time, %struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %target_list = alloca %struct._GtkTargetList*, align 8
  %target_atom = alloca %struct._GdkAtom*, align 8
  %handle = alloca i32, align 4
  %page_num = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %0)
  store %struct._GimpDockbook* %call, %struct._GimpDockbook** %dockbook, align 8
  %1 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %1, i32 0, i32 1
  %2 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %2, i32 0, i32 4
  %3 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %6 = load i32, i32* %x.addr, align 4
  %7 = load i32, i32* %y.addr, align 4
  %8 = load i32, i32* %time.addr, align 4
  %call1 = call i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %3, %struct._GtkWidget* %4, %struct._GdkDragContext* %5, i32 %6, i32 %7, i32 %8)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %10 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %9, i32 0, i32 %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_highlight_widget(%struct._GtkWidget* %11, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p2 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %12, i32 0, i32 1
  %13 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p2, align 8
  %tab_hover_timeout = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %13, i32 0, i32 2
  %14 = load i32, i32* %tab_hover_timeout, align 4
  %tobool3 = icmp ne i32 %14, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %15 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p4 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %15, i32 0, i32 1
  %16 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p4, align 8
  %tab_hover_dockable = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %16, i32 0, i32 3
  %17 = load %struct._GimpDockable*, %struct._GimpDockable** %tab_hover_dockable, align 8
  %18 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %cmp = icmp ne %struct._GimpDockable* %17, %18
  br i1 %cmp, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %19 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  call void @gimp_dockbook_remove_tab_timeout(%struct._GimpDockbook* %19)
  %20 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %21 = bitcast %struct._GimpDockbook* %20 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_notebook_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call6)
  %22 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkNotebook*
  %23 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %24 = bitcast %struct._GimpDockable* %23 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call8)
  %25 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  %call10 = call i32 @gtk_notebook_page_num(%struct._GtkNotebook* %22, %struct._GtkWidget* %25)
  store i32 %call10, i32* %page_num, align 4
  %26 = load i32, i32* %page_num, align 4
  %27 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %28 = bitcast %struct._GimpDockbook* %27 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_notebook_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call11)
  %29 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkNotebook*
  %call13 = call i32 @gtk_notebook_get_current_page(%struct._GtkNotebook* %29)
  %cmp14 = icmp ne i32 %26, %call13
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.5
  %30 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %31 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockbook_add_tab_timeout(%struct._GimpDockbook* %30, %struct._GimpDockable* %31)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.5
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %lor.lhs.false
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call18 = call %struct._GtkTargetList* @gtk_drag_dest_get_target_list(%struct._GtkWidget* %32)
  store %struct._GtkTargetList* %call18, %struct._GtkTargetList** %target_list, align 8
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %34 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %35 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %call19 = call %struct._GdkAtom* @gtk_drag_dest_find_target(%struct._GtkWidget* %33, %struct._GdkDragContext* %34, %struct._GtkTargetList* %35)
  store %struct._GdkAtom* %call19, %struct._GdkAtom** %target_atom, align 8
  %36 = load %struct._GtkTargetList*, %struct._GtkTargetList** %target_list, align 8
  %37 = load %struct._GdkAtom*, %struct._GdkAtom** %target_atom, align 8
  %call20 = call i32 @gtk_target_list_find(%struct._GtkTargetList* %36, %struct._GdkAtom* %37, i32* null)
  store i32 %call20, i32* %handle, align 4
  %38 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %39 = load i32, i32* %handle, align 4
  %tobool21 = icmp ne i32 %39, 0
  %cond = select i1 %tobool21, i32 4, i32 0
  %40 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %38, i32 %cond, i32 %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %42 = load i32, i32* %handle, align 4
  call void @gimp_highlight_widget(%struct._GtkWidget* %41, i32 %42)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_tab_drag_drop(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %dest_dockable = alloca %struct._GimpDockable*, align 8
  %source = alloca %struct._GtkWidget*, align 8
  %dropped = alloca i32, align 4
  %src_dockable = alloca %struct._GimpDockable*, align 8
  %dest_index = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store i32 0, i32* %dropped, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GimpDockable*
  store %struct._GimpDockable* %3, %struct._GimpDockable** %dest_dockable, align 8
  %4 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %call2 = call %struct._GtkWidget* @gtk_drag_get_source_widget(%struct._GdkDragContext* %4)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %source, align 8
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dest_dockable, align 8
  %call3 = call %struct._GimpPanedBox* @gimp_dockable_get_drag_handler(%struct._GimpDockable* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %time.addr, align 4
  %call4 = call i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %call3, %struct._GtkWidget* %6, %struct._GdkDragContext* %7, i32 %8, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpDockable*, %struct._GimpDockable** %dest_dockable, align 8
  %tobool5 = icmp ne %struct._GimpDockable* %11, null
  br i1 %tobool5, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %source, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.34

if.then.7:                                        ; preds = %land.lhs.true
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %source, align 8
  %call8 = call %struct._GimpDockable* @gimp_dockbook_drag_source_to_dockable(%struct._GtkWidget* %13)
  store %struct._GimpDockable* %call8, %struct._GimpDockable** %src_dockable, align 8
  %14 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %tobool9 = icmp ne %struct._GimpDockable* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.33

if.then.10:                                       ; preds = %if.then.7
  %15 = load %struct._GimpDockable*, %struct._GimpDockable** %dest_dockable, align 8
  %call11 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %15)
  %16 = bitcast %struct._GimpDockbook* %call11 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_notebook_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call12)
  %17 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkNotebook*
  %18 = load %struct._GimpDockable*, %struct._GimpDockable** %dest_dockable, align 8
  %19 = bitcast %struct._GimpDockable* %18 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call14)
  %20 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call i32 @gtk_notebook_page_num(%struct._GtkNotebook* %17, %struct._GtkWidget* %20)
  store i32 %call16, i32* %dest_index, align 4
  %21 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %call17 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %21)
  %22 = load %struct._GimpDockable*, %struct._GimpDockable** %dest_dockable, align 8
  %call18 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %22)
  %cmp = icmp ne %struct._GimpDockbook* %call17, %call18
  br i1 %cmp, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.10
  %23 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %24 = bitcast %struct._GimpDockable* %23 to i8*
  %call20 = call i8* @g_object_ref(i8* %24)
  %25 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %call21 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %25)
  %26 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  call void @gimp_dockbook_remove(%struct._GimpDockbook* %call21, %struct._GimpDockable* %26)
  %27 = load %struct._GimpDockable*, %struct._GimpDockable** %dest_dockable, align 8
  %call22 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %27)
  %28 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %29 = load i32, i32* %dest_index, align 4
  call void @gimp_dockbook_add(%struct._GimpDockbook* %call22, %struct._GimpDockable* %28, i32 %29)
  %30 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %31 = bitcast %struct._GimpDockable* %30 to i8*
  call void @g_object_unref(i8* %31)
  store i32 1, i32* %dropped, align 4
  br label %if.end.32

if.else:                                          ; preds = %if.then.10
  %32 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %33 = load %struct._GimpDockable*, %struct._GimpDockable** %dest_dockable, align 8
  %cmp23 = icmp ne %struct._GimpDockable* %32, %33
  br i1 %cmp23, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.else
  %34 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %call25 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %34)
  %35 = bitcast %struct._GimpDockbook* %call25 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_notebook_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkNotebook*
  %37 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %38 = bitcast %struct._GimpDockable* %37 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_widget_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call28)
  %39 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkWidget*
  %40 = load i32, i32* %dest_index, align 4
  call void @gtk_notebook_reorder_child(%struct._GtkNotebook* %36, %struct._GtkWidget* %39, i32 %40)
  %41 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  %call30 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %41)
  %42 = bitcast %struct._GimpDockbook* %call30 to i8*
  %43 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dockbook_signals, i32 0, i64 2), align 4
  %44 = load %struct._GimpDockable*, %struct._GimpDockable** %src_dockable, align 8
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %42, i32 %43, i32 0, %struct._GimpDockable* %44)
  store i32 1, i32* %dropped, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.19
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.7
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true, %if.end
  %45 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %46 = load i32, i32* %dropped, align 4
  %47 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %45, i32 %46, i32 1, i32 %47)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_refresh_tab_layout_lut(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %auto_dockables = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %fixed_tab_style_space = alloca i32, align 4
  %i = alloca i32, align 4
  %dockable = alloca %struct._GimpDockable*, align 8
  %tab_style = alloca i32, align 4
  %size_with_candidate = alloca i32, align 4
  %candidate = alloca i32, align 4
  %dockable13 = alloca %struct._GimpDockable*, align 8
  %style_to_use = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GList* null, %struct._GList** %auto_dockables, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  store i32 0, i32* %fixed_tab_style_space, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %fixed_tab_style_space, align 4
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %0, i32 0, i32 1
  %1 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %dockables = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %1, i32 0, i32 6
  %2 = load %struct._GList*, %struct._GList** %dockables, align 8
  store %struct._GList* %2, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %3 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockable_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call)
  %7 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockable*
  store %struct._GimpDockable* %7, %struct._GimpDockable** %dockable, align 8
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call2 = call i32 @gimp_dockable_get_tab_style(%struct._GimpDockable* %8)
  store i32 %call2, i32* %tab_style, align 4
  %9 = load i32, i32* %tab_style, align 4
  %cmp = icmp eq i32 %9, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load %struct._GList*, %struct._GList** %auto_dockables, align 8
  %11 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %12 = bitcast %struct._GimpDockable* %11 to i8*
  %call3 = call %struct._GList* @g_list_prepend(%struct._GList* %10, i8* %12)
  store %struct._GList* %call3, %struct._GList** %auto_dockables, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %14 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %15 = load i32, i32* %tab_style, align 4
  %call4 = call i32 @gimp_dockbook_get_dockable_tab_width(%struct._GimpDockbook* %13, %struct._GimpDockable* %14, i32 %15)
  %16 = load i32, i32* %fixed_tab_style_space, align 4
  %add = add nsw i32 %16, %call4
  store i32 %add, i32* %fixed_tab_style_space, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool5 = icmp ne %struct._GList* %17, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %18 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.40, %for.end
  %20 = load i32, i32* %i, align 4
  %conv = sext i32 %20 to i64
  %cmp7 = icmp ult i64 %conv, 3
  br i1 %cmp7, label %for.body.9, label %for.end.41

for.body.9:                                       ; preds = %for.cond.6
  store i32 0, i32* %size_with_candidate, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @gimp_tab_style_candidates, i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  store i32 %22, i32* %candidate, align 4
  %23 = load %struct._GList*, %struct._GList** %auto_dockables, align 8
  store %struct._GList* %23, %struct._GList** %iter, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %cond.end.25, %for.body.9
  %24 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool11 = icmp ne %struct._GList* %24, null
  br i1 %tobool11, label %for.body.12, label %for.end.27

for.body.12:                                      ; preds = %for.cond.10
  %25 = load %struct._GList*, %struct._GList** %iter, align 8
  %data14 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 0
  %26 = load i8*, i8** %data14, align 8
  %27 = bitcast i8* %26 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_dockable_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call15)
  %28 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDockable*
  store %struct._GimpDockable* %28, %struct._GimpDockable** %dockable13, align 8
  %29 = load i32, i32* %candidate, align 4
  %30 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable13, align 8
  %call17 = call i32 @gimp_dockbook_tab_style_to_prefered(i32 %29, %struct._GimpDockable* %30)
  store i32 %call17, i32* %style_to_use, align 4
  %31 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %32 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable13, align 8
  %33 = load i32, i32* %style_to_use, align 4
  %call18 = call i32 @gimp_dockbook_get_dockable_tab_width(%struct._GimpDockbook* %31, %struct._GimpDockable* %32, i32 %33)
  %34 = load i32, i32* %size_with_candidate, align 4
  %add19 = add nsw i32 %34, %call18
  store i32 %add19, i32* %size_with_candidate, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.12
  %35 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool21 = icmp ne %struct._GList* %35, null
  br i1 %tobool21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %for.inc.20
  %36 = load %struct._GList*, %struct._GList** %iter, align 8
  %next23 = getelementptr inbounds %struct._GList, %struct._GList* %36, i32 0, i32 1
  %37 = load %struct._GList*, %struct._GList** %next23, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %for.inc.20
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond26 = phi %struct._GList* [ %37, %cond.true.22 ], [ null, %cond.false.24 ]
  store %struct._GList* %cond26, %struct._GList** %iter, align 8
  br label %for.cond.10

for.end.27:                                       ; preds = %for.cond.10
  %38 = load i32, i32* %fixed_tab_style_space, align 4
  %39 = load i32, i32* %size_with_candidate, align 4
  %add28 = add nsw i32 %38, %39
  %40 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %40 to i64
  %41 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p30 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %41, i32 0, i32 1
  %42 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p30, align 8
  %min_width_for_style = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %42, i32 0, i32 5
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %min_width_for_style, i32 0, i64 %idxprom29
  store i32 %add28, i32* %arrayidx31, align 4
  br label %do.body

do.body:                                          ; preds = %for.end.27
  %43 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %43, 32768
  %tobool32 = icmp ne i32 %and, 0
  br i1 %tobool32, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %do.body
  %44 = load i32, i32* %candidate, align 4
  %call34 = call i8* @gimp_dockbook_get_tab_style_name(i32 %44)
  %45 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %45 to i64
  %46 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p36 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %46, i32 0, i32 1
  %47 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p36, align 8
  %min_width_for_style37 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %47, i32 0, i32 5
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %min_width_for_style37, i32 0, i64 %idxprom35
  %48 = load i32, i32* %arrayidx38, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 32768, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_dockbook_refresh_tab_layout_lut, i32 0, i32 0), i32 756, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.45, i32 0, i32 0), i8* %call34, i32 %48)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.33, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.39
  br label %for.inc.40

for.inc.40:                                       ; preds = %do.end
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end.41:                                       ; preds = %for.cond.6
  %50 = load %struct._GList*, %struct._GList** %auto_dockables, align 8
  call void @g_list_free(%struct._GList* %50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_update_automatic_tab_style(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %changed = alloca i32, align 4
  %iter = alloca %struct._GList*, align 8
  %dockbook_allocation = alloca %struct._GdkRectangle, align 4
  %button_allocation = alloca %struct._GdkRectangle, align 4
  %tab_style = alloca i32, align 4
  %i = alloca i32, align 4
  %available_space = alloca i32, align 4
  %tab_hborder = alloca i32, align 4
  %xthickness = alloca i32, align 4
  %tab_curvature = alloca i32, align 4
  %focus_width = alloca i32, align 4
  %tab_overlap = alloca i32, align 4
  %tab_padding = alloca i32, align 4
  %border_loss = alloca i32, align 4
  %action_widget_size = alloca i32, align 4
  %dockable = alloca %struct._GimpDockable*, align 8
  %actual_tab_style = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %2, %struct._GtkWidget** %widget, align 8
  store i32 0, i32* %changed, align 4
  store %struct._GList* null, %struct._GList** %iter, align 8
  %3 = bitcast %struct._GdkRectangle* %dockbook_allocation to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 4, i1 false)
  %4 = bitcast %struct._GdkRectangle* %button_allocation to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 4, i1 false)
  store i32 0, i32* %tab_style, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %available_space, align 4
  store i32 0, i32* %tab_hborder, align 4
  store i32 0, i32* %xthickness, align 4
  store i32 0, i32* %tab_curvature, align 4
  store i32 0, i32* %focus_width, align 4
  store i32 0, i32* %tab_overlap, align 4
  store i32 0, i32* %tab_padding, align 4
  store i32 0, i32* %border_loss, align 4
  store i32 0, i32* %action_widget_size, align 4
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %5)
  %xthickness3 = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %call2, i32 0, i32 12
  %6 = load i32, i32* %xthickness3, align 4
  store i32 %6, i32* %xthickness, align 4
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %8 = bitcast %struct._GtkWidget* %7 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32* %tab_hborder, i8* null)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i32* %tab_curvature, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i32* %focus_width, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32* %tab_overlap, i8* null)
  %10 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %10, i32 0, i32 1
  %11 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %menu_button = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %11, i32 0, i32 7
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_button, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %12, %struct._GdkRectangle* %button_allocation)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %13, %struct._GdkRectangle* %dockbook_allocation)
  %14 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %15 = bitcast %struct._GimpDockbook* %14 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_container_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call4)
  %16 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkContainer*
  %call6 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %16)
  %mul = mul i32 %call6, 2
  store i32 %mul, i32* %border_loss, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %button_allocation, i32 0, i32 2
  %17 = load i32, i32* %width, align 4
  %18 = load i32, i32* %xthickness, align 4
  %add = add nsw i32 %17, %18
  store i32 %add, i32* %action_widget_size, align 4
  %19 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %20 = bitcast %struct._GimpDockbook* %19 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_notebook_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call7)
  %21 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkNotebook*
  %call9 = call i32 @gtk_notebook_get_n_pages(%struct._GtkNotebook* %21)
  %22 = load i32, i32* %xthickness, align 4
  %23 = load i32, i32* %tab_curvature, align 4
  %add10 = add nsw i32 %22, %23
  %24 = load i32, i32* %focus_width, align 4
  %add11 = add nsw i32 %add10, %24
  %25 = load i32, i32* %tab_hborder, align 4
  %add12 = add i32 %add11, %25
  %mul13 = mul i32 2, %add12
  %26 = load i32, i32* %tab_overlap, align 4
  %sub = sub i32 %mul13, %26
  %mul14 = mul i32 %call9, %sub
  store i32 %mul14, i32* %tab_padding, align 4
  %width15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dockbook_allocation, i32 0, i32 2
  %27 = load i32, i32* %width15, align 4
  %28 = load i32, i32* %border_loss, align 4
  %sub16 = sub nsw i32 %27, %28
  %29 = load i32, i32* %action_widget_size, align 4
  %sub17 = sub nsw i32 %sub16, %29
  %30 = load i32, i32* %tab_padding, align 4
  %sub18 = sub nsw i32 %sub17, %30
  %31 = load i32, i32* %tab_overlap, align 4
  %sub19 = sub nsw i32 %sub18, %31
  store i32 %sub19, i32* %available_space, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %32 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %32, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %33 = load i32, i32* %available_space, align 4
  %width20 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %dockbook_allocation, i32 0, i32 2
  %34 = load i32, i32* %width20, align 4
  %35 = load i32, i32* %border_loss, align 4
  %36 = load i32, i32* %action_widget_size, align 4
  %37 = load i32, i32* %tab_padding, align 4
  %38 = load i32, i32* %tab_overlap, align 4
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 32768, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_dockbook_update_automatic_tab_style, i32 0, i32 0), i32 837, i8* getelementptr inbounds ([218 x i8], [218 x i8]* @.str.50, i32 0, i32 0), i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %39 = load i32, i32* %i, align 4
  %conv = sext i32 %39 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @gimp_tab_style_candidates, i32 0, i64 %idxprom
  %41 = load i32, i32* %arrayidx, align 4
  store i32 %41, i32* %tab_style, align 4
  %42 = load i32, i32* %available_space, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %43 to i64
  %44 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p23 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %44, i32 0, i32 1
  %45 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p23, align 8
  %min_width_for_style = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %45, i32 0, i32 5
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %min_width_for_style, i32 0, i64 %idxprom22
  %46 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp sgt i32 %42, %46
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %for.body
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %47 = load i32, i32* @gimp_log_flags, align 4
  %and29 = and i32 %47, 32768
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %do.body.28
  %48 = load i32, i32* %tab_style, align 4
  %call32 = call i8* @gimp_dockbook_get_tab_style_name(i32 %48)
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 32768, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_dockbook_update_automatic_tab_style, i32 0, i32 0), i32 849, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), i8* %call32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %do.body.28
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %for.end

if.end.35:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %49 = load i32, i32* %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %do.end.34, %for.cond
  %50 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p36 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %50, i32 0, i32 1
  %51 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p36, align 8
  %dockables = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %51, i32 0, i32 6
  %52 = load %struct._GList*, %struct._GList** %dockables, align 8
  store %struct._GList* %52, %struct._GList** %iter, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %cond.end, %for.end
  %53 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool38 = icmp ne %struct._GList* %53, null
  br i1 %tobool38, label %for.body.39, label %for.end.54

for.body.39:                                      ; preds = %for.cond.37
  %54 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %54, i32 0, i32 0
  %55 = load i8*, i8** %data, align 8
  %56 = bitcast i8* %55 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_dockable_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call40)
  %57 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpDockable*
  store %struct._GimpDockable* %57, %struct._GimpDockable** %dockable, align 8
  %58 = load i32, i32* %tab_style, align 4
  store i32 %58, i32* %actual_tab_style, align 4
  %59 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call42 = call i32 @gimp_dockable_get_tab_style(%struct._GimpDockable* %59)
  %cmp43 = icmp ne i32 %call42, 9
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.body.39
  br label %for.inc.52

if.end.46:                                        ; preds = %for.body.39
  %60 = load i32, i32* %tab_style, align 4
  %61 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call47 = call i32 @gimp_dockbook_tab_style_to_prefered(i32 %60, %struct._GimpDockable* %61)
  store i32 %call47, i32* %actual_tab_style, align 4
  %62 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %63 = load i32, i32* %actual_tab_style, align 4
  %call48 = call i32 @gimp_dockable_set_actual_tab_style(%struct._GimpDockable* %62, i32 %63)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  store i32 1, i32* %changed, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.46
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51, %if.then.45
  %64 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool53 = icmp ne %struct._GList* %64, null
  br i1 %tobool53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.52
  %65 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %65, i32 0, i32 1
  %66 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.52
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %66, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond.37

for.end.54:                                       ; preds = %for.cond.37
  %67 = load i32, i32* %changed, align 4
  %tobool55 = icmp ne i32 %67, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.end.54
  %68 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  call void @gimp_dockbook_recreate_tab_widgets(%struct._GimpDockbook* %68, i32 1)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %for.end.54
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dockbook_drop_dockable(%struct._GimpDockbook* %dockbook, %struct._GtkWidget* %drag_source) #3 {
entry:
  %retval = alloca i32, align 4
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %drag_source.addr = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dockable = alloca %struct._GimpDockable*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GtkWidget* %drag_source, %struct._GtkWidget** %drag_source.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dockbook_drop_dockable, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %drag_source.addr, align 8
  %tobool11 = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.29

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %drag_source.addr, align 8
  %call14 = call %struct._GimpDockable* @gimp_dockbook_drag_source_to_dockable(%struct._GtkWidget* %14)
  store %struct._GimpDockable* %call14, %struct._GimpDockable** %dockable, align 8
  %15 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool15 = icmp ne %struct._GimpDockable* %15, null
  br i1 %tobool15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %if.then.12
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call17 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %16)
  %17 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %cmp18 = icmp eq %struct._GimpDockbook* %call17, %17
  br i1 %cmp18, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %if.then.16
  %18 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %19 = bitcast %struct._GimpDockbook* %18 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_notebook_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call20)
  %20 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkNotebook*
  %21 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %22 = bitcast %struct._GimpDockable* %21 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call22)
  %23 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  call void @gtk_notebook_reorder_child(%struct._GtkNotebook* %20, %struct._GtkWidget* %23, i32 -1)
  br label %if.end.27

if.else.24:                                       ; preds = %if.then.16
  %24 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %25 = bitcast %struct._GimpDockable* %24 to i8*
  %call25 = call i8* @g_object_ref(i8* %25)
  %26 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call26 = call %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %26)
  %27 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_remove(%struct._GimpDockbook* %call26, %struct._GimpDockable* %27)
  %28 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %29 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_add(%struct._GimpDockbook* %28, %struct._GimpDockable* %29, i32 -1)
  %30 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %31 = bitcast %struct._GimpDockable* %30 to i8*
  call void @g_object_unref(i8* %31)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.19
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.12
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.end.27, %if.else.9
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define %struct._GimpDockable* @gimp_dockbook_drag_source_to_dockable(%struct._GtkWidget* %drag_source) #3 {
entry:
  %drag_source.addr = alloca %struct._GtkWidget*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %drag_source, %struct._GtkWidget** %drag_source.addr, align 8
  store %struct._GimpDockable* null, %struct._GimpDockable** %dockable, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %drag_source.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #7
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  br i1 %tobool7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %drag_source.addr, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_dockable_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpDockable*
  store %struct._GimpDockable* %15, %struct._GimpDockable** %dockable, align 8
  br label %if.end.14

if.else.11:                                       ; preds = %if.end.6
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %drag_source.addr, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call i8* @g_object_get_data(%struct._GObject* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0))
  %19 = bitcast i8* %call13 to %struct._GimpDockable*
  store %struct._GimpDockable* %19, %struct._GimpDockable** %dockable, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.11, %if.then.8
  %20 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool15 = icmp ne %struct._GimpDockable* %20, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %21 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %22 = bitcast %struct._GimpDockable* %21 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i8* null)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %24 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  ret %struct._GimpDockable* %24
}

declare void @gtk_notebook_reorder_child(%struct._GtkNotebook*, %struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_dockbook_set_drag_handler(%struct._GimpDockbook* %dockbook, %struct._GimpPanedBox* %drag_handler) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %drag_handler.addr = alloca %struct._GimpPanedBox*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpPanedBox* %drag_handler, %struct._GimpPanedBox** %drag_handler.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockbook_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dockbook_set_drag_handler, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler.addr, align 8
  %14 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %14, i32 0, i32 1
  %15 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %drag_handler11 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %15, i32 0, i32 4
  store %struct._GimpPanedBox* %13, %struct._GimpPanedBox** %drag_handler11, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_class_init(%struct._GimpDockbookClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDockbookClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpDockbookClass* %klass, %struct._GimpDockbookClass** %klass.addr, align 8
  %0 = load %struct._GimpDockbookClass*, %struct._GimpDockbookClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDockbookClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDockbookClass*, %struct._GimpDockbookClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDockbookClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpDockbookClass*, %struct._GimpDockbookClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDockbookClass* %6 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %call3 = call i64 @gimp_dockable_get_type() #7
  %call4 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i64 %8, i32 1, i32 896, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call3)
  store i32 %call4, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dockbook_signals, i32 0, i64 0), align 4
  %9 = load %struct._GimpDockbookClass*, %struct._GimpDockbookClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpDockbookClass* %9 to %struct._GTypeClass*
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %10, i32 0, i32 0
  %11 = load i64, i64* %g_type5, align 8
  %call6 = call i64 @gimp_dockable_get_type() #7
  %call7 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i64 %11, i32 1, i32 904, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call6)
  store i32 %call7, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dockbook_signals, i32 0, i64 1), align 4
  %12 = load %struct._GimpDockbookClass*, %struct._GimpDockbookClass** %klass.addr, align 8
  %13 = bitcast %struct._GimpDockbookClass* %12 to %struct._GTypeClass*
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type8, align 8
  %call9 = call i64 @gimp_dockable_get_type() #7
  %call10 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i64 %14, i32 1, i32 912, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__OBJECT, i64 4, i32 1, i64 %call9)
  store i32 %call10, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dockbook_signals, i32 0, i64 2), align 4
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_dockbook_dispose, void (%struct._GObject*)** %dispose, align 8
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %16, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_dockbook_finalize, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_dockbook_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %18 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %18, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_dockbook_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %19 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_leave = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %19, i32 0, i32 57
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)* @gimp_dockbook_drag_leave, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)** %drag_leave, align 8
  %20 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_motion = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %20, i32 0, i32 58
  store i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)* @gimp_dockbook_drag_motion, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)** %drag_motion, align 8
  %21 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_drop = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %21, i32 0, i32 59
  store i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)* @gimp_dockbook_drag_drop, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)** %drag_drop, align 8
  %22 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %popup_menu = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %22, i32 0, i32 61
  store i32 (%struct._GtkWidget*)* @gimp_dockbook_popup_menu, i32 (%struct._GtkWidget*)** %popup_menu, align 8
  %23 = load %struct._GimpDockbookClass*, %struct._GimpDockbookClass** %klass.addr, align 8
  %dockable_added = getelementptr inbounds %struct._GimpDockbookClass, %struct._GimpDockbookClass* %23, i32 0, i32 1
  store void (%struct._GimpDockbook*, %struct._GimpDockable*)* @gimp_dockbook_dockable_added, void (%struct._GimpDockbook*, %struct._GimpDockable*)** %dockable_added, align 8
  %24 = load %struct._GimpDockbookClass*, %struct._GimpDockbookClass** %klass.addr, align 8
  %dockable_removed = getelementptr inbounds %struct._GimpDockbookClass, %struct._GimpDockbookClass* %24, i32 0, i32 2
  store void (%struct._GimpDockbook*, %struct._GimpDockable*)* @gimp_dockbook_dockable_removed, void (%struct._GimpDockbook*, %struct._GimpDockable*)** %dockable_removed, align 8
  %25 = load %struct._GimpDockbookClass*, %struct._GimpDockbookClass** %klass.addr, align 8
  %dockable_reordered = getelementptr inbounds %struct._GimpDockbookClass, %struct._GimpDockbookClass* %25, i32 0, i32 3
  store void (%struct._GimpDockbook*, %struct._GimpDockable*)* null, void (%struct._GimpDockbook*, %struct._GimpDockable*)** %dockable_reordered, align 8
  %26 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %26, %struct._GParamSpec* %call11)
  %27 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call12 = call i64 @gtk_icon_size_get_type() #7
  %call13 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* null, i64 %call12, i32 4, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %27, %struct._GParamSpec* %call13)
  %28 = load %struct._GimpDockbookClass*, %struct._GimpDockbookClass** %klass.addr, align 8
  %29 = bitcast %struct._GimpDockbookClass* %28 to i8*
  call void @g_type_class_add_private(i8* %29, i64 72)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__OBJECT(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  call void @gimp_dockbook_remove_tab_timeout(%struct._GimpDockbook* %3)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %4, i32 0, i32 1
  %5 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %dockables = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %5, i32 0, i32 6
  %6 = load %struct._GList*, %struct._GList** %dockables, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p2 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %7, i32 0, i32 1
  %8 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p2, align 8
  %dockables3 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %8, i32 0, i32 6
  %9 = load %struct._GList*, %struct._GList** %dockables3, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpDockable*
  store %struct._GimpDockable* %11, %struct._GimpDockable** %dockable, align 8
  %12 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %13 = bitcast %struct._GimpDockable* %12 to i8*
  %call4 = call i8* @g_object_ref(i8* %13)
  %14 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %15 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockbook_remove(%struct._GimpDockbook* %14, %struct._GimpDockable* %15)
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %17 = bitcast %struct._GimpDockable* %16 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call5)
  %18 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %18)
  %19 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %20 = bitcast %struct._GimpDockable* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i8*, i8** @gimp_dockbook_parent_class, align 8
  %22 = bitcast i8* %21 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %22, i64 80)
  %23 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %23, i32 0, i32 5
  %24 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %24(%struct._GObject* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %3, i32 0, i32 1
  %4 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %ui_manager = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %4, i32 0, i32 1
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %tobool = icmp ne %struct._GimpUIManager* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p2 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %6, i32 0, i32 1
  %7 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p2, align 8
  %ui_manager3 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %7, i32 0, i32 1
  %8 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager3, align 8
  %9 = bitcast %struct._GimpUIManager* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p4 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %10, i32 0, i32 1
  %11 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p4, align 8
  %ui_manager5 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %11, i32 0, i32 1
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %ui_manager5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** @gimp_dockbook_parent_class, align 8
  %13 = bitcast i8* %12 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %13, i64 80)
  %14 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %14, i32 0, i32 6
  %15 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %15(%struct._GObject* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load i8*, i8** @gimp_dockbook_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GtkWidgetClass*
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %5, i32 0, i32 13
  %6 = load void (%struct._GtkWidget*, %struct._GdkRectangle*)*, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void %6(%struct._GtkWidget* %7, %struct._GdkRectangle* %8)
  %9 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  call void @gimp_dockbook_update_automatic_tab_style(%struct._GimpDockbook* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %tab_border = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load i8*, i8** @gimp_dockbook_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 17
  %3 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %3(%struct._GtkWidget* %4, %struct._GtkStyle* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %6)
  %call3 = call i32 @gtk_widget_is_toplevel(%struct._GtkWidget* %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32* %tab_border, i8* null)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  %10 = load i32, i32* %tab_border, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 %10, i8* null)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_dockbook_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDockbook*
  call void @gimp_dockbook_recreate_tab_widgets(%struct._GimpDockbook* %13, i32 0)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_drag_leave(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %time) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %time.addr = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_highlight_widget(%struct._GtkWidget* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_drag_motion(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %dockbook = alloca %struct._GimpDockbook*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %3, i32 0, i32 1
  %4 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %4, i32 0, i32 4
  %5 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %time.addr, align 4
  %call2 = call i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %5, %struct._GtkWidget* %6, %struct._GdkDragContext* %7, i32 %8, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %12 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %11, i32 0, i32 %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_highlight_widget(%struct._GtkWidget* %13, i32 0)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %14 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %15 = load i32, i32* %time.addr, align 4
  call void @gdk_drag_status(%struct._GdkDragContext* %14, i32 4, i32 %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gimp_highlight_widget(%struct._GtkWidget* %16, i32 1)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_drag_drop(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %dockbook = alloca %struct._GimpDockbook*, align 8
  %dropped = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %3, i32 0, i32 1
  %4 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %4, i32 0, i32 4
  %5 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %7 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %10 = load i32, i32* %time.addr, align 4
  %call2 = call i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox* %5, %struct._GtkWidget* %6, %struct._GdkDragContext* %7, i32 %8, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %12 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %call3 = call %struct._GtkWidget* @gtk_drag_get_source_widget(%struct._GdkDragContext* %12)
  %call4 = call i32 @gimp_dockbook_drop_dockable(%struct._GimpDockbook* %11, %struct._GtkWidget* %call3)
  store i32 %call4, i32* %dropped, align 4
  %13 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %14 = load i32, i32* %dropped, align 4
  %15 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %13, i32 %14, i32 1, i32 %15)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_popup_menu(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  %call2 = call i32 @gimp_dockbook_show_menu(%struct._GimpDockbook* %2)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_dockable_added(%struct._GimpDockbook* %dockbook, %struct._GimpDockable* %dockable) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkNotebook*
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %4 = bitcast %struct._GimpDockbook* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_notebook_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkNotebook*
  %6 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %7 = bitcast %struct._GimpDockable* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call i32 @gtk_notebook_page_num(%struct._GtkNotebook* %5, %struct._GtkWidget* %8)
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %2, i32 %call6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_dockable_removed(%struct._GimpDockbook* %dockbook, %struct._GimpDockable* %dockable) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  ret void
}

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_icon_size_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i32 @gtk_widget_is_toplevel(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_recreate_tab_widgets(%struct._GimpDockbook* %dockbook, i32 %only_auto) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %only_auto.addr = alloca i32, align 4
  %dockables = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %tab_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store i32 %only_auto, i32* %only_auto.addr, align 4
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_container_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkContainer*
  %call2 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %2)
  store %struct._GList* %call2, %struct._GList** %dockables, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  %3 = load %struct._GList*, %struct._GList** %dockables, align 8
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
  %call3 = call i64 @gimp_dockable_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDockable*
  store %struct._GimpDockable* %8, %struct._GimpDockable** %dockable, align 8
  %9 = load i32, i32* %only_auto.addr, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call6 = call i32 @gimp_dockable_get_tab_style(%struct._GimpDockable* %10)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp = icmp eq i32 %lnot.ext, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %11 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %12 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call8 = call %struct._GtkWidget* @gimp_dockbook_create_tab_widget(%struct._GimpDockbook* %11, %struct._GimpDockable* %12)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %tab_widget, align 8
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %14 = bitcast %struct._GimpDockbook* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_notebook_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkNotebook*
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %17 = bitcast %struct._GimpDockable* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  call void @gtk_notebook_set_tab_label(%struct._GtkNotebook* %15, %struct._GtkWidget* %18, %struct._GtkWidget* %19)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %20 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool13 = icmp ne %struct._GList* %20, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %21 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %21, i32 0, i32 1
  %22 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %22, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GList*, %struct._GList** %dockables, align 8
  call void @g_list_free(%struct._GList* %23)
  ret void
}

declare i32 @gimp_dockable_get_tab_style(%struct._GimpDockable*) #1

declare void @gtk_notebook_set_tab_label(%struct._GtkNotebook*, %struct._GtkWidget*, %struct._GtkWidget*) #1

declare void @gimp_highlight_widget(%struct._GtkWidget*, i32) #1

declare i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox*, %struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32) #1

declare void @gdk_drag_status(%struct._GdkDragContext*, i32, i32) #1

declare %struct._GtkWidget* @gtk_drag_get_source_widget(%struct._GdkDragContext*) #1

declare void @gtk_drag_finish(%struct._GdkDragContext*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_show_menu(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %retval = alloca i32, align 4
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dockbook_ui_manager = alloca %struct._GimpUIManager*, align 8
  %dialog_ui_manager = alloca %struct._GimpUIManager*, align 8
  %dialog_ui_path = alloca i8*, align 8
  %dialog_popup_data = alloca i8*, align 8
  %parent_menu_widget = alloca %struct._GtkWidget*, align 8
  %parent_menu_action = alloca %struct._GtkAction*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %page_num = alloca i32, align 4
  %child_menu_widget = alloca %struct._GtkWidget*, align 8
  %child_menu_action = alloca %struct._GtkAction*, align 8
  %label = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %image = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %dockbook_ui_manager, align 8
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %dialog_ui_manager, align 8
  store i8* null, i8** %dialog_ui_path, align 8
  store i8* null, i8** %dialog_popup_data, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %parent_menu_widget, align 8
  store %struct._GtkAction* null, %struct._GtkAction** %parent_menu_action, align 8
  store %struct._GimpDockable* null, %struct._GimpDockable** %dockable, align 8
  store i32 -1, i32* %page_num, align 4
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %call = call %struct._GimpUIManager* @gimp_dockbook_get_ui_manager(%struct._GimpDockbook* %0)
  store %struct._GimpUIManager* %call, %struct._GimpUIManager** %dockbook_ui_manager, align 8
  %1 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dockbook_ui_manager, align 8
  %tobool = icmp ne %struct._GimpUIManager* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dockbook_ui_manager, align 8
  %3 = bitcast %struct._GimpUIManager* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_ui_manager_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkUIManager*
  %call3 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0))
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %parent_menu_widget, align 8
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dockbook_ui_manager, align 8
  %6 = bitcast %struct._GimpUIManager* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_ui_manager_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkUIManager*
  %call6 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i32 0, i32 0))
  store %struct._GtkAction* %call6, %struct._GtkAction** %parent_menu_action, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %parent_menu_widget, align 8
  %tobool7 = icmp ne %struct._GtkWidget* %8, null
  br i1 %tobool7, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct._GtkAction*, %struct._GtkAction** %parent_menu_action, align 8
  %tobool8 = icmp ne %struct._GtkAction* %9, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %10 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %11 = bitcast %struct._GimpDockbook* %10 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_notebook_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call11)
  %12 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkNotebook*
  %call13 = call i32 @gtk_notebook_get_current_page(%struct._GtkNotebook* %12)
  store i32 %call13, i32* %page_num, align 4
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %14 = bitcast %struct._GimpDockbook* %13 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_notebook_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call14)
  %15 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkNotebook*
  %16 = load i32, i32* %page_num, align 4
  %call16 = call %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook* %15, i32 %16)
  %17 = bitcast %struct._GtkWidget* %call16 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_dockable_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call17)
  %18 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpDockable*
  store %struct._GimpDockable* %18, %struct._GimpDockable** %dockable, align 8
  %19 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %tobool19 = icmp ne %struct._GimpDockable* %19, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.10
  %20 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call22 = call %struct._GimpUIManager* @gimp_dockable_get_menu(%struct._GimpDockable* %20, i8** %dialog_ui_path, i8** %dialog_popup_data)
  store %struct._GimpUIManager* %call22, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %21 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %tobool23 = icmp ne %struct._GimpUIManager* %21, null
  br i1 %tobool23, label %land.lhs.true, label %if.else.71

land.lhs.true:                                    ; preds = %if.end.21
  %22 = load i8*, i8** %dialog_ui_path, align 8
  %tobool24 = icmp ne i8* %22, null
  br i1 %tobool24, label %if.then.25, label %if.else.71

if.then.25:                                       ; preds = %land.lhs.true
  %23 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %24 = bitcast %struct._GimpUIManager* %23 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_ui_manager_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call26)
  %25 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkUIManager*
  %26 = load i8*, i8** %dialog_ui_path, align 8
  %call28 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %25, i8* %26)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %child_menu_widget, align 8
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %child_menu_widget, align 8
  %tobool29 = icmp ne %struct._GtkWidget* %27, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.then.25
  %28 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %name = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %28, i32 0, i32 1
  %29 = load i8*, i8** %name, align 8
  %30 = load i8*, i8** %dialog_ui_path, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dockbook_show_menu, i32 0, i32 0), i8* %29, i8* %30)
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.25
  %31 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %32 = bitcast %struct._GimpUIManager* %31 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_ui_manager_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call32)
  %33 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkUIManager*
  %34 = load i8*, i8** %dialog_ui_path, align 8
  %call34 = call %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager* %33, i8* %34)
  store %struct._GtkAction* %call34, %struct._GtkAction** %child_menu_action, align 8
  %35 = load %struct._GtkAction*, %struct._GtkAction** %child_menu_action, align 8
  %tobool35 = icmp ne %struct._GtkAction* %35, null
  br i1 %tobool35, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.end.31
  %36 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %name37 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %36, i32 0, i32 1
  %37 = load i8*, i8** %name37, align 8
  %38 = load i8*, i8** %dialog_ui_path, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dockbook_show_menu, i32 0, i32 0), i8* %37, i8* %38)
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.31
  %39 = load %struct._GtkAction*, %struct._GtkAction** %child_menu_action, align 8
  %40 = bitcast %struct._GtkAction* %39 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8** %label, i8* null)
  %41 = load %struct._GtkAction*, %struct._GtkAction** %parent_menu_action, align 8
  %42 = bitcast %struct._GtkAction* %41 to i8*
  %43 = load i8*, i8** %label, align 8
  %44 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call39 = call i8* @gimp_dockable_get_stock_id(%struct._GimpDockable* %44)
  call void (i8*, i8*, ...) @g_object_set(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* %call39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 1, i8* null)
  %45 = load i8*, i8** %label, align 8
  call void @g_free(i8* %45)
  %46 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call40 = call i8* @gimp_dockable_get_stock_id(%struct._GimpDockable* %46)
  %tobool41 = icmp ne i8* %call40, null
  br i1 %tobool41, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %if.end.38
  %call43 = call %struct._GtkIconTheme* @gtk_icon_theme_get_default()
  %47 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call44 = call i8* @gimp_dockable_get_stock_id(%struct._GimpDockable* %47)
  %call45 = call i32 @gtk_icon_theme_has_icon(%struct._GtkIconTheme* %call43, i8* %call44)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.then.42
  %48 = load %struct._GtkAction*, %struct._GtkAction** %parent_menu_action, align 8
  %49 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call48 = call i8* @gimp_dockable_get_stock_id(%struct._GimpDockable* %49)
  call void @gtk_action_set_icon_name(%struct._GtkAction* %48, i8* %call48)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.42
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.38
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %child_menu_widget, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %51, %struct._GTypeInstance** %__inst, align 8
  %call51 = call i64 @gtk_menu_get_type() #7
  store i64 %call51, i64* %__t, align 8
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool52 = icmp ne %struct._GTypeInstance* %52, null
  br i1 %tobool52, label %if.else, label %if.then.53

if.then.53:                                       ; preds = %if.end.50
  store i32 0, i32* %__r, align 4
  br label %if.end.61

if.else:                                          ; preds = %if.end.50
  %53 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %53, i32 0, i32 0
  %54 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool54 = icmp ne %struct._GTypeClass* %54, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.58

land.lhs.true.55:                                 ; preds = %if.else
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class56 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %55, i32 0, i32 0
  %56 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class56, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %56, i32 0, i32 0
  %57 = load i64, i64* %g_type, align 8
  %58 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %57, %58
  br i1 %cmp, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %__r, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.55, %if.else
  %59 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %60 = load i64, i64* %__t, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %59, i64 %60) #8
  store i32 %call59, i32* %__r, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.53
  %61 = load i32, i32* %__r, align 4
  store i32 %61, i32* %tmp
  %62 = load i32, i32* %tmp
  %tobool62 = icmp ne i32 %62, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.end.61
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %child_menu_widget, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dockbook_show_menu, i32 0, i32 0), %struct._GtkWidget* %63)
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.61
  %64 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %call66 = call %struct._GtkWidget* @gimp_dockable_get_icon(%struct._GimpDockable* %64, i32 1)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %image, align 8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %parent_menu_widget, align 8
  %66 = bitcast %struct._GtkWidget* %65 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_image_menu_item_get_type() #7
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %66, i64 %call67)
  %67 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkImageMenuItem*
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem* %67, %struct._GtkWidget* %68)
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %69)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %parent_menu_widget, align 8
  %71 = bitcast %struct._GtkWidget* %70 to %struct._GTypeInstance*
  %call69 = call i64 @gtk_menu_item_get_type() #7
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call69)
  %72 = bitcast %struct._GTypeInstance* %call70 to %struct._GtkMenuItem*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %child_menu_widget, align 8
  call void @gtk_menu_item_set_submenu(%struct._GtkMenuItem* %72, %struct._GtkWidget* %73)
  %74 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %75 = load i8*, i8** %dialog_popup_data, align 8
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %74, i8* %75)
  br label %if.end.72

if.else.71:                                       ; preds = %land.lhs.true, %if.end.21
  %76 = load %struct._GtkAction*, %struct._GtkAction** %parent_menu_action, align 8
  %77 = bitcast %struct._GtkAction* %76 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i8* null)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.end.64
  %78 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %79 = bitcast %struct._GimpDockable* %78 to i8*
  %call73 = call i8* @g_object_ref(i8* %79)
  %80 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %81 = bitcast %struct._GimpDockable* %80 to %struct._GTypeInstance*
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 80)
  %82 = bitcast %struct._GTypeInstance* %call74 to %struct._GObject*
  %83 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %84 = bitcast %struct._GimpDockbook* %83 to i8*
  %call75 = call i8* @g_object_ref(i8* %84)
  call void @g_object_set_data_full(%struct._GObject* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* %call75, void (i8*)* @g_object_unref)
  %85 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dockbook_ui_manager, align 8
  %86 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %87 = bitcast %struct._GimpDockable* %86 to i8*
  call void @gimp_ui_manager_update(%struct._GimpUIManager* %85, i8* %87)
  %88 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dockbook_ui_manager, align 8
  %89 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %90 = bitcast %struct._GimpDockable* %89 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_widget_get_type() #7
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call76)
  %91 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkWidget*
  %92 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %93 = bitcast %struct._GimpDockbook* %92 to i8*
  %94 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %95 = bitcast %struct._GimpDockable* %94 to i8*
  call void @gimp_ui_manager_ui_popup(%struct._GimpUIManager* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), %struct._GtkWidget* %91, void (%struct._GtkMenu*, i32*, i32*, i8*)* @gimp_dockbook_menu_position, i8* %93, void (i8*)* bitcast (void (%struct._GimpDockable*)* @gimp_dockbook_menu_end to void (i8*)*), i8* %95)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.72, %if.then.63, %if.then.36, %if.then.30, %if.then.20, %if.then.9, %if.then
  %96 = load i32, i32* %retval
  ret i32 %96
}

declare %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare %struct._GtkAction* @gtk_ui_manager_get_action(%struct._GtkUIManager*, i8*) #1

declare i32 @gtk_notebook_get_current_page(%struct._GtkNotebook*) #1

declare %struct._GtkWidget* @gtk_notebook_get_nth_page(%struct._GtkNotebook*, i32) #1

declare %struct._GimpUIManager* @gimp_dockable_get_menu(%struct._GimpDockable*, i8**, i8**) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_object_get(i8*, i8*, ...) #1

declare i8* @gimp_dockable_get_stock_id(%struct._GimpDockable*) #1

declare i32 @gtk_icon_theme_has_icon(%struct._GtkIconTheme*, i8*) #1

declare %struct._GtkIconTheme* @gtk_icon_theme_get_default() #1

declare void @gtk_action_set_icon_name(%struct._GtkAction*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_get_type() #2

declare %struct._GtkWidget* @gimp_dockable_get_icon(%struct._GimpDockable*, i32) #1

declare void @gtk_image_menu_item_set_image(%struct._GtkImageMenuItem*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_image_menu_item_get_type() #2

declare void @gtk_menu_item_set_submenu(%struct._GtkMenuItem*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_menu_item_get_type() #2

declare void @gimp_ui_manager_update(%struct._GimpUIManager*, i8*) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare void @gimp_ui_manager_ui_popup(%struct._GimpUIManager*, i8*, %struct._GtkWidget*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*, void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_menu_position(%struct._GtkMenu* %menu, i32* %x, i32* %y, i8* %data) #3 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %dockbook = alloca %struct._GimpDockbook*, align 8
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockbook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockbook*
  store %struct._GimpDockbook* %2, %struct._GimpDockbook** %dockbook, align 8
  %3 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %3, i32 0, i32 1
  %4 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %menu_button = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %4, i32 0, i32 7
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %menu_button, align 8
  %6 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %7 = load i32*, i32** %x.addr, align 8
  %8 = load i32*, i32** %y.addr, align 8
  call void @gimp_button_menu_position(%struct._GtkWidget* %5, %struct._GtkMenu* %6, i32 0, i32* %7, i32* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_menu_end(%struct._GimpDockable* %dockable) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %dialog_ui_manager = alloca %struct._GimpUIManager*, align 8
  %dialog_ui_path = alloca i8*, align 8
  %dialog_popup_data = alloca i8*, align 8
  %child_menu_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call = call %struct._GimpUIManager* @gimp_dockable_get_menu(%struct._GimpDockable* %0, i8** %dialog_ui_path, i8** %dialog_popup_data)
  store %struct._GimpUIManager* %call, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %1 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %tobool = icmp ne %struct._GimpUIManager* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %dialog_ui_path, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._GimpUIManager*, %struct._GimpUIManager** %dialog_ui_manager, align 8
  %4 = bitcast %struct._GimpUIManager* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_ui_manager_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkUIManager*
  %6 = load i8*, i8** %dialog_ui_path, align 8
  %call4 = call %struct._GtkWidget* @gtk_ui_manager_get_widget(%struct._GtkUIManager* %5, i8* %6)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %child_menu_widget, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %child_menu_widget, align 8
  %tobool5 = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %child_menu_widget, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_menu_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkMenu*
  call void @gtk_menu_detach(%struct._GtkMenu* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %entry
  %11 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %12 = bitcast %struct._GimpDockable* %11 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* null)
  %14 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %15 = bitcast %struct._GimpDockable* %14 to i8*
  call void @g_object_unref(i8* %15)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gimp_button_menu_position(%struct._GtkWidget*, %struct._GtkMenu*, i32, i32*, i32*) #1

declare void @gtk_menu_detach(%struct._GtkMenu*) #1

declare void @gtk_notebook_set_current_page(%struct._GtkNotebook*, i32) #1

declare i32 @gtk_notebook_page_num(%struct._GtkNotebook*, %struct._GtkWidget*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gtk_notebook_popup_enable(%struct._GtkNotebook*) #1

declare void @gtk_notebook_set_scrollable(%struct._GtkNotebook*, i32) #1

declare void @gtk_notebook_set_show_border(%struct._GtkNotebook*, i32) #1

declare void @gtk_notebook_set_show_tabs(%struct._GtkNotebook*, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gtk_notebook_set_action_widget(%struct._GtkNotebook*, %struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_menu_button_press(%struct._GimpDockbook* %dockbook, %struct._GdkEventButton* %bevent, %struct._GtkWidget* %button) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %button.addr = alloca %struct._GtkWidget*, align 8
  %handled = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store i32 0, i32* %handled, align 4
  %0 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button1 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %0, i32 0, i32 8
  %1 = load i32, i32* %button1, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %2, i32 0, i32 0
  %3 = load i32, i32* %type, align 4
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %call = call i32 @gimp_dockbook_show_menu(%struct._GimpDockbook* %4)
  store i32 %call, i32* %handled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, i32* %handled, align 4
  ret i32 %5
}

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_get_dockable_tab_width(%struct._GimpDockbook* %dockbook, %struct._GimpDockable* %dockable, i32 %tab_style) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %tab_style.addr = alloca i32, align 4
  %dockable_request = alloca %struct._GtkRequisition, align 4
  %tab_widget = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 %tab_style, i32* %tab_style.addr, align 4
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %1, i32 0, i32 1
  %2 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %dock = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %2, i32 0, i32 0
  %3 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %call = call %struct._GimpContext* @gimp_dock_get_context(%struct._GimpDock* %3)
  %4 = load i32, i32* %tab_style.addr, align 4
  %5 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %call1 = call i32 @gimp_dockbook_get_tab_icon_size(%struct._GimpDockbook* %5)
  %call2 = call %struct._GtkWidget* @gimp_dockable_create_event_box_tab_widget(%struct._GimpDockable* %0, %struct._GimpContext* %call, i32 %4, i32 %call1)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %tab_widget, align 8
  %6 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p3 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %6, i32 0, i32 1
  %7 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p3, align 8
  %dock4 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %7, i32 0, i32 0
  %8 = load %struct._GimpDock*, %struct._GimpDock** %dock4, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  call void @gimp_dock_temp_add(%struct._GimpDock* %8, %struct._GtkWidget* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %10, %struct._GtkRequisition* %dockable_request)
  %11 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %11, i32 0, i32 1
  %12 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p5, align 8
  %dock6 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %12, i32 0, i32 0
  %13 = load %struct._GimpDock*, %struct._GimpDock** %dock6, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  call void @gimp_dock_temp_remove(%struct._GimpDock* %13, %struct._GtkWidget* %14)
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %dockable_request, i32 0, i32 0
  %15 = load i32, i32* %width, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_tab_style_to_prefered(i32 %tab_style, %struct._GimpDockable* %dockable) #3 {
entry:
  %tab_style.addr = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %docked = alloca %struct._GimpDocked*, align 8
  store i32 %tab_style, i32* %tab_style.addr, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_bin_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkBin*
  %call2 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %2)
  %3 = bitcast %struct._GtkWidget* %call2 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_docked_interface_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call3)
  %4 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDocked*
  store %struct._GimpDocked* %4, %struct._GimpDocked** %docked, align 8
  %5 = load %struct._GimpDocked*, %struct._GimpDocked** %docked, align 8
  %call5 = call i32 @gimp_docked_get_prefer_icon(%struct._GimpDocked* %5)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %tab_style.addr, align 4
  %call6 = call i32 @gimp_preview_tab_style_to_icon(i32 %6)
  store i32 %call6, i32* %tab_style.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %tab_style.addr, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_dockbook_get_tab_style_name(i32 %tab_style) #3 {
entry:
  %tab_style.addr = alloca i32, align 4
  store i32 %tab_style, i32* %tab_style.addr, align 4
  %call = call i64 @gimp_tab_style_get_type() #7
  %call1 = call i8* @g_type_class_peek(i64 %call)
  %0 = bitcast i8* %call1 to %struct._GEnumClass*
  %1 = load i32, i32* %tab_style.addr, align 4
  %call2 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %0, i32 %1)
  %value_name = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %call2, i32 0, i32 1
  %2 = load i8*, i8** %value_name, align 8
  ret i8* %2
}

declare void @gimp_dock_temp_add(%struct._GimpDock*, %struct._GtkWidget*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @gimp_dock_temp_remove(%struct._GimpDock*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare i32 @gimp_docked_get_prefer_icon(%struct._GimpDocked*) #1

declare i32 @gimp_preview_tab_style_to_icon(i32) #1

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #1

declare i8* @g_type_class_peek(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tab_style_get_type() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

declare i32 @gtk_notebook_get_n_pages(%struct._GtkNotebook*) #1

declare i32 @gimp_dockable_set_actual_tab_style(%struct._GimpDockable*, i32) #1

declare i32 @gimp_dockable_is_locked(%struct._GimpDockable*) #1

declare void @gtk_drag_source_unset(%struct._GtkWidget*) #1

declare void @gtk_drag_source_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

declare %struct._GtkWidget* @gtk_window_new(i32) #1

declare void @gtk_window_set_type_hint(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gtk_window_set_screen(%struct._GtkWindow*, %struct._GdkScreen*) #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_dockable_create_drag_widget(%struct._GimpDockable*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gimp_dockable_get_drag_pos(%struct._GimpDockable*, i32*, i32*) #1

declare void @gtk_drag_set_icon_widget(%struct._GdkDragContext*, %struct._GtkWidget*, i32, i32) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare void @gimp_dockable_detach(%struct._GimpDockable*) #1

declare void @gimp_dockable_set_drag_pos(%struct._GimpDockable*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockbook_add_tab_timeout(%struct._GimpDockbook* %dockbook, %struct._GimpDockable* %dockable) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %1 = bitcast %struct._GimpDockbook* %0 to i8*
  %call = call i32 @g_timeout_add(i32 500, i32 (i8*)* bitcast (i32 (%struct._GimpDockbook*)* @gimp_dockbook_tab_timeout to i32 (i8*)*), i8* %1)
  %2 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %2, i32 0, i32 1
  %3 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %tab_hover_timeout = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %3, i32 0, i32 2
  store i32 %call, i32* %tab_hover_timeout, align 4
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %5 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p1 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %5, i32 0, i32 1
  %6 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p1, align 8
  %tab_hover_dockable = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %6, i32 0, i32 3
  store %struct._GimpDockable* %4, %struct._GimpDockable** %tab_hover_dockable, align 8
  ret void
}

declare %struct._GtkTargetList* @gtk_drag_dest_get_target_list(%struct._GtkWidget*) #1

declare %struct._GdkAtom* @gtk_drag_dest_find_target(%struct._GtkWidget*, %struct._GdkDragContext*, %struct._GtkTargetList*) #1

declare i32 @gtk_target_list_find(%struct._GtkTargetList*, %struct._GdkAtom*, i32*) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockbook_tab_timeout(%struct._GimpDockbook* %dockbook) #3 {
entry:
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %page_num = alloca i32, align 4
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
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
  %2 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %3 = bitcast %struct._GimpDockbook* %2 to %struct._GTypeInstance*
  %call = call i64 @gtk_notebook_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkNotebook*
  %5 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %5, i32 0, i32 1
  %6 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p, align 8
  %tab_hover_dockable = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %6, i32 0, i32 3
  %7 = load %struct._GimpDockable*, %struct._GimpDockable** %tab_hover_dockable, align 8
  %8 = bitcast %struct._GimpDockable* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  %call4 = call i32 @gtk_notebook_page_num(%struct._GtkNotebook* %4, %struct._GtkWidget* %9)
  store i32 %call4, i32* %page_num, align 4
  %10 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %11 = bitcast %struct._GimpDockbook* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_notebook_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkNotebook*
  %13 = load i32, i32* %page_num, align 4
  call void @gtk_notebook_set_current_page(%struct._GtkNotebook* %12, i32 %13)
  %14 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p7 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %14, i32 0, i32 1
  %15 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p7, align 8
  %tab_hover_timeout = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %15, i32 0, i32 2
  store i32 0, i32* %tab_hover_timeout, align 4
  %16 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %p8 = getelementptr inbounds %struct._GimpDockbook, %struct._GimpDockbook* %16, i32 0, i32 1
  %17 = load %struct._GimpDockbookPrivate*, %struct._GimpDockbookPrivate** %p8, align 8
  %tab_hover_dockable9 = getelementptr inbounds %struct._GimpDockbookPrivate, %struct._GimpDockbookPrivate* %17, i32 0, i32 3
  store %struct._GimpDockable* null, %struct._GimpDockable** %tab_hover_dockable9, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end
  %18 = load void ()*, void ()** @gdk_threads_unlock, align 8
  %tobool11 = icmp ne void ()* %18, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.body.10
  %19 = load void ()*, void ()** @gdk_threads_unlock, align 8
  call void %19()
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.body.10
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  ret i32 0
}

declare %struct._GimpPanedBox* @gimp_dockable_get_drag_handler(%struct._GimpDockable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_get_type() #2

declare %struct._GtkWidget* @gtk_event_box_new() #1

declare void @gtk_event_box_set_visible_window(%struct._GtkEventBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_event_box_get_type() #2

declare void @gtk_event_box_set_above_child(%struct._GtkEventBox*, i32) #1

declare i32 @g_source_remove(i32) #1

declare %struct._GtkWidget* @gtk_notebook_get_tab_label(%struct._GtkNotebook*, %struct._GtkWidget*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
