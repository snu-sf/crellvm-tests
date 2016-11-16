; ModuleID = './app/widgets/gimpdockable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpMenuFactory = type opaque
%struct._GtkTargetEntry = type { i8*, i32, i32 }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDockableClass = type { %struct._GtkBinClass }
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
%struct._GimpDockable = type { %struct._GtkBin, %struct._GimpDockablePrivate* }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpDockablePrivate = type { i8*, i8*, i8*, i8*, i32, i32, i32, %struct._GimpDockbook*, %struct._GimpContext*, i32, i32, %struct._GimpPanedBox*, i32, i32 }
%struct._GimpDockbook = type { %struct._GtkNotebook, %struct._GimpDockbookPrivate* }
%struct._GtkNotebook = type { %struct._GtkContainer, i8*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GtkWidget*, %struct._GdkDrawable*, i32, i16, i16, i24 }
%struct._GimpDockbookPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
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
%struct._GimpPanedBox = type { %struct._GtkBox, %struct._GimpPanedBoxPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpPanedBoxPrivate = type opaque
%struct._GimpSessionManagedInterface = type { %struct._GTypeInterface, %struct._GList* (%struct._GimpSessionManaged*)*, void (%struct._GimpSessionManaged*, %struct._GList*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpSessionManaged = type opaque
%struct._GtkIconTheme = type { %struct._GObject, %struct._GtkIconThemePrivate* }
%struct._GtkIconThemePrivate = type opaque
%struct._GimpDockedInterface = type { %struct._GTypeInterface, void (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GList*)*, %struct._GList* (%struct._GimpDocked*)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, i32 (%struct._GimpDocked*)*, %struct._GimpUIManager* (%struct._GimpDocked*, i8**, i8**)*, i8* (%struct._GimpDocked*)*, void (%struct._GimpDocked*, %struct._GimpContext*)*, i32 (%struct._GimpDocked*)*, void (%struct._GimpDocked*, i32)*, i32 (%struct._GimpDocked*)* }
%struct._GimpDocked = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GtkFrame = type { %struct._GtkBin, %struct._GtkWidget*, i16, float, float, %struct._GdkRectangle }
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GimpDockWindowPrivate = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GimpDockPrivate = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_dockable_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpDockable\00", align 1
@gimp_dockable_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpSessionManagedInterface*)* @gimp_dockable_session_managed_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_dockable_new = private unnamed_addr constant [18 x i8] c"gimp_dockable_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"stock_id != NULL\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"help_id != NULL\00", align 1
@__func__.gimp_dockable_set_dockbook = private unnamed_addr constant [27 x i8] c"gimp_dockable_set_dockbook\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DOCKABLE (dockable)\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"dockbook == NULL || GIMP_IS_DOCKBOOK (dockbook)\00", align 1
@__func__.gimp_dockable_get_dockbook = private unnamed_addr constant [27 x i8] c"gimp_dockable_get_dockbook\00", align 1
@__func__.gimp_dockable_get_tab_style = private unnamed_addr constant [28 x i8] c"gimp_dockable_get_tab_style\00", align 1
@__func__.gimp_dockable_get_actual_tab_style = private unnamed_addr constant [35 x i8] c"gimp_dockable_get_actual_tab_style\00", align 1
@__func__.gimp_dockable_get_name = private unnamed_addr constant [23 x i8] c"gimp_dockable_get_name\00", align 1
@__func__.gimp_dockable_get_blurb = private unnamed_addr constant [24 x i8] c"gimp_dockable_get_blurb\00", align 1
@__func__.gimp_dockable_get_help_id = private unnamed_addr constant [26 x i8] c"gimp_dockable_get_help_id\00", align 1
@__func__.gimp_dockable_get_stock_id = private unnamed_addr constant [27 x i8] c"gimp_dockable_get_stock_id\00", align 1
@__func__.gimp_dockable_get_locked = private unnamed_addr constant [25 x i8] c"gimp_dockable_get_locked\00", align 1
@__func__.gimp_dockable_set_drag_pos = private unnamed_addr constant [27 x i8] c"gimp_dockable_set_drag_pos\00", align 1
@__func__.gimp_dockable_get_drag_pos = private unnamed_addr constant [27 x i8] c"gimp_dockable_get_drag_pos\00", align 1
@__func__.gimp_dockable_get_drag_handler = private unnamed_addr constant [31 x i8] c"gimp_dockable_get_drag_handler\00", align 1
@__func__.gimp_dockable_set_locked = private unnamed_addr constant [25 x i8] c"gimp_dockable_set_locked\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@__func__.gimp_dockable_is_locked = private unnamed_addr constant [24 x i8] c"gimp_dockable_is_locked\00", align 1
@__func__.gimp_dockable_set_tab_style = private unnamed_addr constant [28 x i8] c"gimp_dockable_set_tab_style\00", align 1
@__func__.gimp_dockable_set_actual_tab_style = private unnamed_addr constant [35 x i8] c"gimp_dockable_set_actual_tab_style\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"tab_style != GIMP_TAB_STYLE_AUTOMATIC\00", align 1
@__func__.gimp_dockable_create_tab_widget = private unnamed_addr constant [32 x i8] c"gimp_dockable_create_tab_widget\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@__func__.gimp_dockable_create_drag_widget = private unnamed_addr constant [33 x i8] c"gimp_dockable_create_drag_widget\00", align 1
@__func__.gimp_dockable_set_context = private unnamed_addr constant [26 x i8] c"gimp_dockable_set_context\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@__func__.gimp_dockable_get_menu = private unnamed_addr constant [23 x i8] c"gimp_dockable_get_menu\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"ui_path != NULL\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"popup_data != NULL\00", align 1
@__func__.gimp_dockable_set_drag_handler = private unnamed_addr constant [31 x i8] c"gimp_dockable_set_drag_handler\00", align 1
@__func__.gimp_dockable_detach = private unnamed_addr constant [21 x i8] c"gimp_dockable_detach\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"GIMP_IS_DOCKBOOK (dockable->p->dockbook)\00", align 1
@global_menu_factory = external global %struct._GimpMenuFactory*, align 8
@__func__.gimp_dockable_blink = private unnamed_addr constant [20 x i8] c"gimp_dockable_blink\00", align 1
@__func__.gimp_dockable_blink_cancel = private unnamed_addr constant [27 x i8] c"gimp_dockable_blink_cancel\00", align 1
@gimp_dockable_parent_class = internal global i8* null, align 8
@GimpDockable_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"content-border\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"gimpdockable.c\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_dockable_add = private unnamed_addr constant [18 x i8] c"gimp_dockable_add\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"gtk_bin_get_child (GTK_BIN (container)) == NULL\00", align 1
@dialog_target_table = internal constant [1 x %struct._GtkTargetEntry] [%struct._GtkTargetEntry { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i32 1, i32 24 }], align 16
@.str.19 = private unnamed_addr constant [26 x i8] c"application/x-gimp-dialog\00", align 1
@__func__.gimp_dockable_get_aux_info = private unnamed_addr constant [27 x i8] c"gimp_dockable_get_aux_info\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"GIMP_IS_DOCKABLE (session_managed)\00", align 1
@__func__.gimp_dockable_set_aux_info = private unnamed_addr constant [27 x i8] c"gimp_dockable_set_aux_info\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Tab style error, unexpected code path taken, fix!\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dockable_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_dockable_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_dockable_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_bin_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_dockable_class_intern_init to void (i8*, i8*)*), i32 128, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDockable*)* @gimp_dockable_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_session_managed_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_dockable_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_dockable_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_dockable_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_dockable_parent_class, align 8
  %1 = load i32, i32* @GimpDockable_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDockable_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDockableClass*
  call void @gimp_dockable_class_init(%struct._GimpDockableClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_init(%struct._GimpDockable* %dockable) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockable_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDockablePrivate*
  %3 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %3, i32 0, i32 1
  store %struct._GimpDockablePrivate* %2, %struct._GimpDockablePrivate** %p, align 8
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %4, i32 0, i32 1
  %5 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p2, align 8
  %tab_style = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %5, i32 0, i32 4
  store i32 9, i32* %tab_style, align 4
  %6 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p3 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %6, i32 0, i32 1
  %7 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p3, align 8
  %actual_tab_style = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %7, i32 0, i32 5
  store i32 8, i32* %actual_tab_style, align 4
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %8, i32 0, i32 1
  %9 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p4, align 8
  %drag_x = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %9, i32 0, i32 12
  store i32 -6, i32* %drag_x, align 4
  %10 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %10, i32 0, i32 1
  %11 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p5, align 8
  %drag_y = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %11, i32 0, i32 13
  store i32 -6, i32* %drag_y, align 4
  %12 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %13 = bitcast %struct._GimpDockable* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_widget_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkWidget*
  call void @gtk_drag_dest_set(%struct._GtkWidget* %14, i32 0, %struct._GtkTargetEntry* getelementptr inbounds ([1 x %struct._GtkTargetEntry], [1 x %struct._GtkTargetEntry]* @dialog_target_table, i32 0, i32 0), i32 1, i32 4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_session_managed_iface_init(%struct._GimpSessionManagedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpSessionManagedInterface*, align 8
  store %struct._GimpSessionManagedInterface* %iface, %struct._GimpSessionManagedInterface** %iface.addr, align 8
  %0 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface.addr, align 8
  %get_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %0, i32 0, i32 1
  store %struct._GList* (%struct._GimpSessionManaged*)* @gimp_dockable_get_aux_info, %struct._GList* (%struct._GimpSessionManaged*)** %get_aux_info, align 8
  %1 = load %struct._GimpSessionManagedInterface*, %struct._GimpSessionManagedInterface** %iface.addr, align 8
  %set_aux_info = getelementptr inbounds %struct._GimpSessionManagedInterface, %struct._GimpSessionManagedInterface* %1, i32 0, i32 2
  store void (%struct._GimpSessionManaged*, %struct._GList*)* @gimp_dockable_set_aux_info, void (%struct._GimpSessionManaged*, %struct._GList*)** %set_aux_info, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_session_managed_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dockable_new(i8* %name, i8* %blurb, i8* %stock_id, i8* %help_id) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %name.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %help_id.addr = alloca i8*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %help_id, i8** %help_id.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockable_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %stock_id.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockable_new, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i8*, i8** %help_id.addr, align 8
  %cmp8 = icmp ne i8* %2, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockable_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %call = call i64 @gimp_dockable_get_type() #6
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %3 = bitcast i8* %call13 to %struct._GimpDockable*
  store %struct._GimpDockable* %3, %struct._GimpDockable** %dockable, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %call14 = call noalias i8* @g_strdup(i8* %4)
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %5, i32 0, i32 1
  %6 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %name15 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %6, i32 0, i32 0
  store i8* %call14, i8** %name15, align 8
  %7 = load i8*, i8** %stock_id.addr, align 8
  %call16 = call noalias i8* @g_strdup(i8* %7)
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p17 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %8, i32 0, i32 1
  %9 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p17, align 8
  %stock_id18 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %9, i32 0, i32 2
  store i8* %call16, i8** %stock_id18, align 8
  %10 = load i8*, i8** %help_id.addr, align 8
  %call19 = call noalias i8* @g_strdup(i8* %10)
  %11 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p20 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %11, i32 0, i32 1
  %12 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p20, align 8
  %help_id21 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %12, i32 0, i32 3
  store i8* %call19, i8** %help_id21, align 8
  %13 = load i8*, i8** %blurb.addr, align 8
  %tobool = icmp ne i8* %13, null
  br i1 %tobool, label %if.then.22, label %if.else.26

if.then.22:                                       ; preds = %do.end.12
  %14 = load i8*, i8** %blurb.addr, align 8
  %call23 = call noalias i8* @g_strdup(i8* %14)
  %15 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p24 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %15, i32 0, i32 1
  %16 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p24, align 8
  %blurb25 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %16, i32 0, i32 1
  store i8* %call23, i8** %blurb25, align 8
  br label %if.end.31

if.else.26:                                       ; preds = %do.end.12
  %17 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p27 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %17, i32 0, i32 1
  %18 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p27, align 8
  %name28 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %18, i32 0, i32 0
  %19 = load i8*, i8** %name28, align 8
  %20 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p29 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %20, i32 0, i32 1
  %21 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p29, align 8
  %blurb30 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %21, i32 0, i32 1
  store i8* %19, i8** %blurb30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.26, %if.then.22
  %22 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %23 = bitcast %struct._GimpDockable* %22 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_widget_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call32)
  %24 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkWidget*
  %25 = load i8*, i8** %help_id.addr, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %24, i8* null, i8* %25)
  %26 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %27 = bitcast %struct._GimpDockable* %26 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_widget_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call34)
  %28 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkWidget*
  store %struct._GtkWidget* %28, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.else.10, %if.else.4, %if.else
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %29
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_dockable_set_dockbook(%struct._GimpDockable* %dockable, %struct._GimpDockbook* %dockbook) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %dockbook.addr = alloca %struct._GimpDockbook*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store %struct._GimpDockbook* %dockbook, %struct._GimpDockbook** %dockbook.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dockable_set_dockbook, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %cmp12 = icmp eq %struct._GimpDockbook* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %15 = bitcast %struct._GimpDockbook* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_dockbook_get_type() #6
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dockable_set_dockbook, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook.addr, align 8
  %28 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %28, i32 0, i32 1
  %29 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %dockbook40 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %29, i32 0, i32 7
  store %struct._GimpDockbook* %27, %struct._GimpDockbook** %dockbook40, align 8
  br label %return

return:                                           ; preds = %do.end.39, %if.else.37, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_dockbook_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpDockbook* @gimp_dockable_get_dockbook(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca %struct._GimpDockbook*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dockable_get_dockbook, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpDockbook* null, %struct._GimpDockbook** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %dockbook = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 7
  %15 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  store %struct._GimpDockbook* %15, %struct._GimpDockbook** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpDockbook*, %struct._GimpDockbook** %retval
  ret %struct._GimpDockbook* %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dockable_get_tab_style(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dockable_get_tab_style, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %tab_style = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 4
  %15 = load i32, i32* %tab_style, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dockable_get_actual_tab_style(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_dockable_get_actual_tab_style, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %actual_tab_style = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 5
  %15 = load i32, i32* %actual_tab_style, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i8* @gimp_dockable_get_name(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i8*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dockable_get_name, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %name = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 0
  %15 = load i8*, i8** %name, align 8
  store i8* %15, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i8* @gimp_dockable_get_blurb(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i8*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dockable_get_blurb, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %blurb = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 1
  %15 = load i8*, i8** %blurb, align 8
  store i8* %15, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i8* @gimp_dockable_get_help_id(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i8*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dockable_get_help_id, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %help_id = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 3
  %15 = load i8*, i8** %help_id, align 8
  store i8* %15, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define i8* @gimp_dockable_get_stock_id(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i8*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dockable_get_stock_id, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %stock_id = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 2
  %15 = load i8*, i8** %stock_id, align 8
  store i8* %15, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dockable_get_icon(%struct._GimpDockable* %dockable, i32 %size) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %size.addr = alloca i32, align 4
  %screen = alloca %struct._GdkScreen*, align 8
  %theme = alloca %struct._GtkIconTheme*, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %2)
  store %struct._GdkScreen* %call2, %struct._GdkScreen** %screen, align 8
  %3 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %call3 = call %struct._GtkIconTheme* @gtk_icon_theme_get_for_screen(%struct._GdkScreen* %3)
  store %struct._GtkIconTheme* %call3, %struct._GtkIconTheme** %theme, align 8
  %4 = load %struct._GtkIconTheme*, %struct._GtkIconTheme** %theme, align 8
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %5, i32 0, i32 1
  %6 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %stock_id = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %6, i32 0, i32 2
  %7 = load i8*, i8** %stock_id, align 8
  %call4 = call i32 @gtk_icon_theme_has_icon(%struct._GtkIconTheme* %4, i8* %7)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p5 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %8, i32 0, i32 1
  %9 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p5, align 8
  %stock_id6 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %9, i32 0, i32 2
  %10 = load i8*, i8** %stock_id6, align 8
  %11 = load i32, i32* %size.addr, align 4
  %call7 = call %struct._GtkWidget* @gtk_image_new_from_icon_name(i8* %10, i32 %11)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p8 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %12, i32 0, i32 1
  %13 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p8, align 8
  %stock_id9 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %13, i32 0, i32 2
  %14 = load i8*, i8** %stock_id9, align 8
  %15 = load i32, i32* %size.addr, align 4
  %call10 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* %14, i32 %15)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %16
}

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare %struct._GtkIconTheme* @gtk_icon_theme_get_for_screen(%struct._GdkScreen*) #1

declare i32 @gtk_icon_theme_has_icon(%struct._GtkIconTheme*, i8*) #1

declare %struct._GtkWidget* @gtk_image_new_from_icon_name(i8*, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_dockable_get_locked(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dockable_get_locked, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %locked = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 6
  %15 = load i32, i32* %locked, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dockable_set_drag_pos(%struct._GimpDockable* %dockable, i32 %drag_x, i32 %drag_y) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %drag_x.addr = alloca i32, align 4
  %drag_y.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 %drag_x, i32* %drag_x.addr, align 4
  store i32 %drag_y, i32* %drag_y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dockable_set_drag_pos, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %drag_x.addr, align 4
  %14 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %14, i32 0, i32 1
  %15 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %drag_x11 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %15, i32 0, i32 12
  store i32 %13, i32* %drag_x11, align 4
  %16 = load i32, i32* %drag_y.addr, align 4
  %17 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p12 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %17, i32 0, i32 1
  %18 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p12, align 8
  %drag_y13 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %18, i32 0, i32 13
  store i32 %16, i32* %drag_y13, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dockable_get_drag_pos(%struct._GimpDockable* %dockable, i32* %drag_x, i32* %drag_y) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %drag_x.addr = alloca i32*, align 8
  %drag_y.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32* %drag_x, i32** %drag_x.addr, align 8
  store i32* %drag_y, i32** %drag_y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dockable_get_drag_pos, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %drag_x.addr, align 8
  %cmp11 = icmp ne i32* %13, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %14, i32 0, i32 1
  %15 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %drag_x13 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %15, i32 0, i32 12
  %16 = load i32, i32* %drag_x13, align 4
  %17 = load i32*, i32** %drag_x.addr, align 8
  store i32 %16, i32* %17, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %18 = load i32*, i32** %drag_y.addr, align 8
  %cmp15 = icmp ne i32* %18, null
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %19 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p17 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %19, i32 0, i32 1
  %20 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p17, align 8
  %drag_y18 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %20, i32 0, i32 13
  %21 = load i32, i32* %drag_y18, align 4
  %22 = load i32*, i32** %drag_y.addr, align 8
  store i32 %21, i32* %22, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.then.16, %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpPanedBox* @gimp_dockable_get_drag_handler(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca %struct._GimpPanedBox*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dockable_get_drag_handler, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpPanedBox* null, %struct._GimpPanedBox** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 11
  %15 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %drag_handler, align 8
  store %struct._GimpPanedBox* %15, %struct._GimpPanedBox** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %retval
  ret %struct._GimpPanedBox* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dockable_set_locked(%struct._GimpDockable* %dockable, i32 %lock) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %lock.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 %lock, i32* %lock.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_dockable_set_locked, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.17

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %locked = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 6
  %15 = load i32, i32* %locked, align 4
  %16 = load i32, i32* %lock.addr, align 4
  %cmp11 = icmp ne i32 %15, %16
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %do.end
  %17 = load i32, i32* %lock.addr, align 4
  %tobool13 = icmp ne i32 %17, 0
  %cond = select i1 %tobool13, i32 1, i32 0
  %18 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p14 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %18, i32 0, i32 1
  %19 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p14, align 8
  %locked15 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %19, i32 0, i32 6
  store i32 %cond, i32* %locked15, align 4
  %20 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %21 = bitcast %struct._GimpDockable* %20 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_dockable_is_locked(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_dockable_is_locked, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %locked = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 6
  %15 = load i32, i32* %locked, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define void @gimp_dockable_set_tab_style(%struct._GimpDockable* %dockable, i32 %tab_style) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %tab_style.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 %tab_style, i32* %tab_style.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_dockable_set_tab_style, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.24

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %14 = load i32, i32* %tab_style.addr, align 4
  %call11 = call i32 @gimp_dockable_convert_tab_style(%struct._GimpDockable* %13, i32 %14)
  %15 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %15, i32 0, i32 1
  %16 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %tab_style12 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %16, i32 0, i32 4
  store i32 %call11, i32* %tab_style12, align 4
  %17 = load i32, i32* %tab_style.addr, align 4
  %cmp13 = icmp eq i32 %17, 9
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %do.end
  %18 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %call15 = call i32 @gimp_dockable_set_actual_tab_style(%struct._GimpDockable* %18, i32 8)
  br label %if.end.18

if.else.16:                                       ; preds = %do.end
  %19 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %20 = load i32, i32* %tab_style.addr, align 4
  %call17 = call i32 @gimp_dockable_set_actual_tab_style(%struct._GimpDockable* %19, i32 %20)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  %21 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p19 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %21, i32 0, i32 1
  %22 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p19, align 8
  %dockbook = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %22, i32 0, i32 7
  %23 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %tobool20 = icmp ne %struct._GimpDockbook* %23, null
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %24 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p22 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %24, i32 0, i32 1
  %25 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p22, align 8
  %dockbook23 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %25, i32 0, i32 7
  %26 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook23, align 8
  call void @gimp_dockbook_update_auto_tab_style(%struct._GimpDockbook* %26)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.9, %if.then.21, %if.end.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockable_convert_tab_style(%struct._GimpDockable* %dockable, i32 %tab_style) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %tab_style.addr = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 %tab_style, i32* %tab_style.addr, align 4
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_bin_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkBin*
  %call2 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %2)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %child, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %7 = bitcast %struct._GTypeClass* %6 to i8*
  %call3 = call i64 @gimp_docked_interface_get_type() #6
  %call4 = call i8* @g_type_interface_peek(i8* %7, i64 %call3)
  %8 = bitcast i8* %call4 to %struct._GimpDockedInterface*
  %get_preview = getelementptr inbounds %struct._GimpDockedInterface, %struct._GimpDockedInterface* %8, i32 0, i32 4
  %9 = load %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)*, %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)** %get_preview, align 8
  %tobool5 = icmp ne %struct._GtkWidget* (%struct._GimpDocked*, %struct._GimpContext*, i32)* %9, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %tab_style.addr, align 4
  %call6 = call i32 @gimp_preview_tab_style_to_icon(i32 %10)
  store i32 %call6, i32* %tab_style.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load i32, i32* %tab_style.addr, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gimp_dockable_set_actual_tab_style(%struct._GimpDockable* %dockable, i32 %tab_style) #3 {
entry:
  %retval = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %tab_style.addr = alloca i32, align 4
  %new_tab_style = alloca i32, align 4
  %old_tab_style = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i32 %tab_style, i32* %tab_style.addr, align 4
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = load i32, i32* %tab_style.addr, align 4
  %call = call i32 @gimp_dockable_convert_tab_style(%struct._GimpDockable* %0, i32 %1)
  store i32 %call, i32* %new_tab_style, align 4
  %2 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %2, i32 0, i32 1
  %3 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %actual_tab_style = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %3, i32 0, i32 5
  %4 = load i32, i32* %actual_tab_style, align 4
  store i32 %4, i32* %old_tab_style, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %6 = bitcast %struct._GimpDockable* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call1 = call i64 @gimp_dockable_get_type() #6
  store i64 %call1, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_dockable_set_actual_tab_style, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %18 = load i32, i32* %tab_style.addr, align 4
  %cmp13 = icmp ne i32 %18, 9
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_dockable_set_actual_tab_style, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %19 = load i32, i32* %new_tab_style, align 4
  %20 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p18 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %20, i32 0, i32 1
  %21 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p18, align 8
  %actual_tab_style19 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %21, i32 0, i32 5
  store i32 %19, i32* %actual_tab_style19, align 4
  %22 = load i32, i32* %new_tab_style, align 4
  %23 = load i32, i32* %old_tab_style, align 4
  %cmp20 = icmp ne i32 %22, %23
  %conv = zext i1 %cmp20 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.else.15, %if.else.10
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @gimp_dockbook_update_auto_tab_style(%struct._GimpDockbook*) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dockable_create_tab_widget(%struct._GimpDockable* %dockable, %struct._GimpContext* %context, i32 %tab_style, i32 %size) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %tab_style.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %tab_style, i32* %tab_style.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dockable_create_tab_widget, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
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
  %call16 = call i64 @gimp_context_get_type() #6
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
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dockable_create_tab_widget, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = load i32, i32* %tab_style.addr, align 4
  %29 = load i32, i32* %size.addr, align 4
  %call39 = call %struct._GtkWidget* @gimp_dockable_new_tab_widget_internal(%struct._GimpDockable* %26, %struct._GimpContext* %27, i32 %28, i32 %29, i32 0)
  store %struct._GtkWidget* %call39, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %30
}

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_dockable_new_tab_widget_internal(%struct._GimpDockable* %dockable, %struct._GimpContext* %context, i32 %tab_style, i32 %size, i32 %dnd) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %tab_style.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %dnd.addr = alloca i32, align 4
  %tab_widget = alloca %struct._GtkWidget*, align 8
  %label = alloca %struct._GtkWidget*, align 8
  %icon = alloca %struct._GtkWidget*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %tab_style, i32* %tab_style.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %dnd, i32* %dnd.addr, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %tab_widget, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %label, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %icon, align 8
  %0 = load i32, i32* %tab_style.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 3, label %sw.bb.1
    i32 5, label %sw.bb.1
    i32 7, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %1 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %1, i32 0, i32 1
  %2 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %name = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call = call %struct._GtkWidget* @gtk_label_new(i8* %3)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %label, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry, %entry
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %4, i32 0, i32 1
  %5 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p2, align 8
  %blurb = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %5, i32 0, i32 1
  %6 = load i8*, i8** %blurb, align 8
  %call3 = call %struct._GtkWidget* @gtk_label_new(i8* %6)
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %label, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  %7 = load i32, i32* %tab_style.addr, align 4
  switch i32 %7, label %sw.default.17 [
    i32 0, label %sw.bb.4
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.4
    i32 1, label %sw.bb.6
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.6
  ]

sw.bb.4:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %9 = load i32, i32* %size.addr, align 4
  %call5 = call %struct._GtkWidget* @gimp_dockable_get_icon(%struct._GimpDockable* %8, i32 %9)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %icon, align 8
  br label %sw.epilog.18

sw.bb.6:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %10 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %11 = bitcast %struct._GimpDockable* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_bin_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBin*
  %call9 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %12)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %child, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool = icmp ne %struct._GtkWidget* %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.6
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_docked_interface_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call10)
  %16 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpDocked*
  %17 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %18 = load i32, i32* %size.addr, align 4
  %call12 = call %struct._GtkWidget* @gimp_docked_get_preview(%struct._GimpDocked* %16, %struct._GimpContext* %17, i32 %18)
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %icon, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.6
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  %tobool13 = icmp ne %struct._GtkWidget* %19, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %20 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %21 = load i32, i32* %size.addr, align 4
  %call15 = call %struct._GtkWidget* @gimp_dockable_get_icon(%struct._GimpDockable* %20, i32 %21)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %icon, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end
  br label %sw.epilog.18

sw.default.17:                                    ; preds = %sw.epilog
  br label %sw.epilog.18

sw.epilog.18:                                     ; preds = %sw.default.17, %if.end.16, %sw.bb.4
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %tobool19 = icmp ne %struct._GtkWidget* %22, null
  br i1 %tobool19, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %sw.epilog.18
  %23 = load i32, i32* %dnd.addr, align 4
  %tobool20 = icmp ne i32 %23, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %land.lhs.true
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_label_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call22)
  %26 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %26, i32 4, i32 600, i32 -1)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %land.lhs.true, %sw.epilog.18
  %27 = load i32, i32* %tab_style.addr, align 4
  switch i32 %27, label %sw.epilog.35 [
    i32 0, label %sw.bb.25
    i32 1, label %sw.bb.25
    i32 2, label %sw.bb.26
    i32 3, label %sw.bb.26
    i32 4, label %sw.bb.27
    i32 5, label %sw.bb.27
    i32 6, label %sw.bb.27
    i32 7, label %sw.bb.27
    i32 8, label %sw.bb.34
    i32 9, label %sw.bb.34
  ]

sw.bb.25:                                         ; preds = %if.end.24, %if.end.24
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  store %struct._GtkWidget* %28, %struct._GtkWidget** %tab_widget, align 8
  br label %sw.epilog.35

sw.bb.26:                                         ; preds = %if.end.24, %if.end.24
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  store %struct._GtkWidget* %29, %struct._GtkWidget** %tab_widget, align 8
  br label %sw.epilog.35

sw.bb.27:                                         ; preds = %if.end.24, %if.end.24, %if.end.24, %if.end.24
  %30 = load i32, i32* %dnd.addr, align 4
  %tobool28 = icmp ne i32 %30, 0
  %cond = select i1 %tobool28, i32 6, i32 2
  %call29 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 %cond)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %tab_widget, align 8
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_box_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call30)
  %33 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkBox*
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %33, %struct._GtkWidget* %34, i32 0, i32 0, i32 0)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %icon, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %35)
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call32 = call i64 @gtk_box_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call32)
  %38 = bitcast %struct._GTypeInstance* %call33 to %struct._GtkBox*
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %38, %struct._GtkWidget* %39, i32 0, i32 0, i32 0)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  br label %sw.epilog.35

sw.bb.34:                                         ; preds = %if.end.24, %if.end.24
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0))
  br label %sw.epilog.35

sw.epilog.35:                                     ; preds = %if.end.24, %sw.bb.34, %sw.bb.27, %sw.bb.26, %sw.bb.25
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %tab_widget, align 8
  ret %struct._GtkWidget* %41
}

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_dockable_create_drag_widget(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_dockable_create_drag_widget, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GtkWidget* @gtk_frame_new(i8* null)
  store %struct._GtkWidget* %call11, %struct._GtkWidget** %frame, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_frame_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call12)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkFrame*
  call void @gtk_frame_set_shadow_type(%struct._GtkFrame* %15, i32 2)
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %17 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %17, i32 0, i32 1
  %18 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %18, i32 0, i32 8
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call14 = call %struct._GtkWidget* @gimp_dockable_new_tab_widget_internal(%struct._GimpDockable* %16, %struct._GimpContext* %19, i32 5, i32 5, i32 1)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %widget, align 8
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %22, i32 6)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_container_add(%struct._GtkContainer* %25, %struct._GtkWidget* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  store %struct._GtkWidget* %28, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %29
}

declare %struct._GtkWidget* @gtk_frame_new(i8*) #1

declare void @gtk_frame_set_shadow_type(%struct._GtkFrame*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_frame_get_type() #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dockable_set_context(%struct._GimpDockable* %dockable, %struct._GimpContext* %context) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dockable_set_context, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.54

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp12 = icmp eq %struct._GimpContext* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %15 = bitcast %struct._GimpContext* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_context_get_type() #6
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
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_dockable_set_context, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.54

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %28 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %28, i32 0, i32 1
  %29 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %context40 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %29, i32 0, i32 8
  %30 = load %struct._GimpContext*, %struct._GimpContext** %context40, align 8
  %cmp41 = icmp ne %struct._GimpContext* %27, %30
  br i1 %cmp41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %do.end.39
  %31 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %32 = bitcast %struct._GimpDockable* %31 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_bin_get_type() #6
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call44)
  %33 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkBin*
  %call46 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %33)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %child, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool47 = icmp ne %struct._GtkWidget* %34, null
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.then.42
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_docked_interface_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call49)
  %37 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDocked*
  %38 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_docked_set_context(%struct._GimpDocked* %37, %struct._GimpContext* %38)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.then.42
  %39 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %40 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p52 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %40, i32 0, i32 1
  %41 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p52, align 8
  %context53 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %41, i32 0, i32 8
  store %struct._GimpContext* %39, %struct._GimpContext** %context53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.9, %if.else.37, %if.end.51, %do.end.39
  ret void
}

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

declare void @gimp_docked_set_context(%struct._GimpDocked*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_dockable_get_menu(%struct._GimpDockable* %dockable, i8** %ui_path, i8** %popup_data) #3 {
entry:
  %retval = alloca %struct._GimpUIManager*, align 8
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %ui_path.addr = alloca i8**, align 8
  %popup_data.addr = alloca i8**, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store i8** %ui_path, i8*** %ui_path.addr, align 8
  store i8** %popup_data, i8*** %popup_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dockable_get_menu, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8**, i8*** %ui_path.addr, align 8
  %cmp12 = icmp ne i8** %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dockable_get_menu, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8**, i8*** %popup_data.addr, align 8
  %cmp18 = icmp ne i8** %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_dockable_get_menu, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %16 = bitcast %struct._GimpDockable* %15 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_bin_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call23)
  %17 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkBin*
  %call25 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %17)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %child, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool26 = icmp ne %struct._GtkWidget* %18, null
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %do.end.22
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_docked_interface_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call28)
  %21 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDocked*
  %22 = load i8**, i8*** %ui_path.addr, align 8
  %23 = load i8**, i8*** %popup_data.addr, align 8
  %call30 = call %struct._GimpUIManager* @gimp_docked_get_menu(%struct._GimpDocked* %21, i8** %22, i8** %23)
  store %struct._GimpUIManager* %call30, %struct._GimpUIManager** %retval
  br label %return

if.end.31:                                        ; preds = %do.end.22
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.27, %if.else.20, %if.else.14, %if.else.9
  %24 = load %struct._GimpUIManager*, %struct._GimpUIManager** %retval
  ret %struct._GimpUIManager* %24
}

declare %struct._GimpUIManager* @gimp_docked_get_menu(%struct._GimpDocked*, i8**, i8**) #1

; Function Attrs: nounwind uwtable
define void @gimp_dockable_set_drag_handler(%struct._GimpDockable* %dockable, %struct._GimpPanedBox* %handler) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %handler.addr = alloca %struct._GimpPanedBox*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store %struct._GimpPanedBox* %handler, %struct._GimpPanedBox** %handler.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_dockable_set_drag_handler, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPanedBox*, %struct._GimpPanedBox** %handler.addr, align 8
  %14 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %14, i32 0, i32 1
  %15 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %15, i32 0, i32 11
  store %struct._GimpPanedBox* %13, %struct._GimpPanedBox** %drag_handler, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_dockable_detach(%struct._GimpDockable* %dockable) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %src_dock_window = alloca %struct._GimpDockWindow*, align 8
  %src_dock = alloca %struct._GimpDock*, align 8
  %dock = alloca %struct._GtkWidget*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %dockbook = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  store %struct._GimpDockWindow* null, %struct._GimpDockWindow** %src_dock_window, align 8
  store %struct._GimpDock* null, %struct._GimpDock** %src_dock, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dock, align 8
  store %struct._GimpDockWindow* null, %struct._GimpDockWindow** %dock_window, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dockbook, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_dockable_detach, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %dockbook14 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 7
  %15 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook14, align 8
  %16 = bitcast %struct._GimpDockbook* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst13, align 8
  %call17 = call i64 @gimp_dockbook_get_type() #6
  store i64 %call17, i64* %__t16, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %do.body.11
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %do.body.11
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type27, align 8
  %23 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %22, %23
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %25 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #7
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %26 = load i32, i32* %__r19, align 4
  store i32 %26, i32* %tmp34
  %27 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %27, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_dockable_detach, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0))
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %28 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p40 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %28, i32 0, i32 1
  %29 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p40, align 8
  %dockbook41 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %29, i32 0, i32 7
  %30 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook41, align 8
  %call42 = call %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook* %30)
  store %struct._GimpDock* %call42, %struct._GimpDock** %src_dock, align 8
  %31 = load %struct._GimpDock*, %struct._GimpDock** %src_dock, align 8
  %call43 = call %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock* %31)
  store %struct._GimpDockWindow* %call43, %struct._GimpDockWindow** %src_dock_window, align 8
  %call44 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %32 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %33 = bitcast %struct._GimpDockable* %32 to %struct._GTypeInstance*
  %call45 = call i64 @gtk_widget_get_type() #6
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call45)
  %34 = bitcast %struct._GTypeInstance* %call46 to %struct._GtkWidget*
  %call47 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %34)
  %call48 = call %struct._GtkWidget* @gimp_dock_with_window_new(%struct._GimpDialogFactory* %call44, %struct._GdkScreen* %call47, i32 0)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %dock, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call49 = call i64 @gimp_dock_get_type() #6
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call49)
  %37 = bitcast %struct._GTypeInstance* %call50 to %struct._GimpDock*
  %call51 = call %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock* %37)
  store %struct._GimpDockWindow* %call51, %struct._GimpDockWindow** %dock_window, align 8
  %38 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %39 = bitcast %struct._GimpDockWindow* %38 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_window_get_type() #6
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call52)
  %40 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %40, i32 2)
  %41 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %src_dock_window, align 8
  %tobool54 = icmp ne %struct._GimpDockWindow* %41, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.end.39
  %42 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %43 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %src_dock_window, align 8
  call void @gimp_dock_window_setup(%struct._GimpDockWindow* %42, %struct._GimpDockWindow* %43)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %do.end.39
  %44 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %call57 = call %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory* %44)
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %dockbook, align 8
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call58 = call i64 @gimp_dock_get_type() #6
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call58)
  %47 = bitcast %struct._GTypeInstance* %call59 to %struct._GimpDock*
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %49 = bitcast %struct._GtkWidget* %48 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_dockbook_get_type() #6
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call60)
  %50 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpDockbook*
  call void @gimp_dock_add_book(%struct._GimpDock* %47, %struct._GimpDockbook* %50, i32 0)
  %51 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %52 = bitcast %struct._GimpDockable* %51 to i8*
  %call62 = call i8* @g_object_ref(i8* %52)
  %53 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p63 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %53, i32 0, i32 1
  %54 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p63, align 8
  %dockbook64 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %54, i32 0, i32 7
  %55 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook64, align 8
  %56 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockbook_remove(%struct._GimpDockbook* %55, %struct._GimpDockable* %56)
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %dockbook, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_dockbook_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call65)
  %59 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpDockbook*
  %60 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  call void @gimp_dockbook_add(%struct._GimpDockbook* %59, %struct._GimpDockable* %60, i32 0)
  %61 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %62 = bitcast %struct._GimpDockable* %61 to i8*
  call void @g_object_unref(i8* %62)
  %63 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %64 = bitcast %struct._GimpDockWindow* %63 to %struct._GTypeInstance*
  %call67 = call i64 @gtk_widget_get_type() #6
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call67)
  %65 = bitcast %struct._GTypeInstance* %call68 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %65)
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %dock, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  br label %return

return:                                           ; preds = %if.end.56, %if.else.37, %if.else.9
  ret void
}

declare %struct._GimpDock* @gimp_dockbook_get_dock(%struct._GimpDockbook*) #1

declare %struct._GimpDockWindow* @gimp_dock_window_from_dock(%struct._GimpDock*) #1

declare %struct._GtkWidget* @gimp_dock_with_window_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, i32) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @gimp_dock_window_setup(%struct._GimpDockWindow*, %struct._GimpDockWindow*) #1

declare %struct._GtkWidget* @gimp_dockbook_new(%struct._GimpMenuFactory*) #1

declare void @gimp_dock_add_book(%struct._GimpDock*, %struct._GimpDockbook*, i32) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_dockbook_remove(%struct._GimpDockbook*, %struct._GimpDockable*) #1

declare void @gimp_dockbook_add(%struct._GimpDockbook*, %struct._GimpDockable*, i32) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dockable_blink(%struct._GimpDockable* %dockable) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_dockable_blink, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %blink_timeout_id = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 9
  %15 = load i32, i32* %blink_timeout_id, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p13 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %16, i32 0, i32 1
  %17 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p13, align 8
  %blink_timeout_id14 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %17, i32 0, i32 9
  %18 = load i32, i32* %blink_timeout_id14, align 4
  %call15 = call i32 @g_source_remove(i32 %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.end
  %19 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %20 = bitcast %struct._GimpDockable* %19 to i8*
  %call17 = call i32 @g_timeout_add(i32 150, i32 (i8*)* bitcast (i32 (%struct._GimpDockable*)* @gimp_dockable_blink_timeout to i32 (i8*)*), i8* %20)
  %21 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p18 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %21, i32 0, i32 1
  %22 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p18, align 8
  %blink_timeout_id19 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %22, i32 0, i32 9
  store i32 %call17, i32* %blink_timeout_id19, align 4
  %23 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %24 = bitcast %struct._GimpDockable* %23 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_widget_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWidget*
  call void @gimp_highlight_widget(%struct._GtkWidget* %25, i32 1)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

declare i32 @g_source_remove(i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_dockable_blink_timeout(%struct._GimpDockable* %dockable) #3 {
entry:
  %retval = alloca i32, align 4
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %3 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %3, i32 0, i32 1
  %4 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %blink_counter = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %4, i32 0, i32 10
  %5 = load i32, i32* %blink_counter, align 4
  %rem = srem i32 %5, 2
  %cmp = icmp eq i32 %rem, 1
  %conv = zext i1 %cmp to i32
  call void @gimp_highlight_widget(%struct._GtkWidget* %2, i32 %conv)
  %6 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p2 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %6, i32 0, i32 1
  %7 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p2, align 8
  %blink_counter3 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %7, i32 0, i32 10
  %8 = load i32, i32* %blink_counter3, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %blink_counter3, align 4
  %9 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p4 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %9, i32 0, i32 1
  %10 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p4, align 8
  %blink_counter5 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %10, i32 0, i32 10
  %11 = load i32, i32* %blink_counter5, align 4
  %cmp6 = icmp eq i32 %11, 3
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p8 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %12, i32 0, i32 1
  %13 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p8, align 8
  %blink_timeout_id = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %13, i32 0, i32 9
  store i32 0, i32* %blink_timeout_id, align 4
  %14 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p9 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %14, i32 0, i32 1
  %15 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p9, align 8
  %blink_counter10 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %15, i32 0, i32 10
  store i32 0, i32* %blink_counter10, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @gimp_highlight_widget(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_dockable_blink_cancel(%struct._GimpDockable* %dockable) #3 {
entry:
  %dockable.addr = alloca %struct._GimpDockable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDockable* %dockable, %struct._GimpDockable** %dockable.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %1 = bitcast %struct._GimpDockable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dockable_blink_cancel, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.21

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %blink_timeout_id = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 9
  %15 = load i32, i32* %blink_timeout_id, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p13 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %16, i32 0, i32 1
  %17 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p13, align 8
  %blink_timeout_id14 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %17, i32 0, i32 9
  %18 = load i32, i32* %blink_timeout_id14, align 4
  %call15 = call i32 @g_source_remove(i32 %18)
  %19 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p16 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %19, i32 0, i32 1
  %20 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p16, align 8
  %blink_timeout_id17 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %20, i32 0, i32 9
  store i32 0, i32* %blink_timeout_id17, align 4
  %21 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %p18 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %21, i32 0, i32 1
  %22 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p18, align 8
  %blink_counter = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %22, i32 0, i32 10
  store i32 0, i32* %blink_counter, align 4
  %23 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable.addr, align 8
  %24 = bitcast %struct._GimpDockable* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  call void @gimp_highlight_widget(%struct._GtkWidget* %25, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_class_init(%struct._GimpDockableClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDockableClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %container_class = alloca %struct._GtkContainerClass*, align 8
  store %struct._GimpDockableClass* %klass, %struct._GimpDockableClass** %klass.addr, align 8
  %0 = load %struct._GimpDockableClass*, %struct._GimpDockableClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDockableClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDockableClass*, %struct._GimpDockableClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDockableClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GimpDockableClass*, %struct._GimpDockableClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDockableClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GtkContainerClass*
  store %struct._GtkContainerClass* %8, %struct._GtkContainerClass** %container_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_dockable_dispose, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dockable_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_dockable_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %12 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_request = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %12, i32 0, i32 12
  store void (%struct._GtkWidget*, %struct._GtkRequisition*)* @gimp_dockable_size_request, void (%struct._GtkWidget*, %struct._GtkRequisition*)** %size_request, align 8
  %13 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %size_allocate = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 13
  store void (%struct._GtkWidget*, %struct._GdkRectangle*)* @gimp_dockable_size_allocate, void (%struct._GtkWidget*, %struct._GdkRectangle*)** %size_allocate, align 8
  %14 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %14, i32 0, i32 17
  store void (%struct._GtkWidget*, %struct._GtkStyle*)* @gimp_dockable_style_set, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %15 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_leave = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %15, i32 0, i32 57
  store void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)* @gimp_dockable_drag_leave, void (%struct._GtkWidget*, %struct._GdkDragContext*, i32)** %drag_leave, align 8
  %16 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_motion = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %16, i32 0, i32 58
  store i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)* @gimp_dockable_drag_motion, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)** %drag_motion, align 8
  %17 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %drag_drop = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %17, i32 0, i32 59
  store i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)* @gimp_dockable_drag_drop, i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32)** %drag_drop, align 8
  %18 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %add = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %18, i32 0, i32 1
  store void (%struct._GtkContainer*, %struct._GtkWidget*)* @gimp_dockable_add, void (%struct._GtkContainer*, %struct._GtkWidget*)** %add, align 8
  %19 = load %struct._GtkContainerClass*, %struct._GtkContainerClass** %container_class, align 8
  %child_type = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %19, i32 0, i32 6
  store i64 (%struct._GtkContainer*)* @gimp_dockable_child_type, i64 (%struct._GtkContainer*)** %child_type, align 8
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 0, i32 227)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 1, %struct._GParamSpec* %call5)
  %21 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 225)
  call void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass* %21, %struct._GParamSpec* %call6)
  %22 = load %struct._GimpDockableClass*, %struct._GimpDockableClass** %klass.addr, align 8
  %23 = bitcast %struct._GimpDockableClass* %22 to i8*
  call void @g_type_class_add_private(i8* %23, i64 88)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockable*
  store %struct._GimpDockable* %2, %struct._GimpDockable** %dockable, align 8
  %3 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockable_blink_cancel(%struct._GimpDockable* %3)
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %4, i32 0, i32 1
  %5 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %context = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %5, i32 0, i32 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool = icmp ne %struct._GimpContext* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  call void @gimp_dockable_set_context(%struct._GimpDockable* %7, %struct._GimpContext* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p2 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %8, i32 0, i32 1
  %9 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p2, align 8
  %blurb = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %9, i32 0, i32 1
  %10 = load i8*, i8** %blurb, align 8
  %tobool3 = icmp ne i8* %10, null
  br i1 %tobool3, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.end
  %11 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p5 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %11, i32 0, i32 1
  %12 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p5, align 8
  %blurb6 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %12, i32 0, i32 1
  %13 = load i8*, i8** %blurb6, align 8
  %14 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p7 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %14, i32 0, i32 1
  %15 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p7, align 8
  %name = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %13, %16
  br i1 %cmp, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.then.4
  %17 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p9 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %17, i32 0, i32 1
  %18 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p9, align 8
  %blurb10 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %18, i32 0, i32 1
  %19 = load i8*, i8** %blurb10, align 8
  call void @g_free(i8* %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.then.4
  %20 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p12 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %20, i32 0, i32 1
  %21 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p12, align 8
  %blurb13 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %21, i32 0, i32 1
  store i8* null, i8** %blurb13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.11, %if.end
  %22 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p15 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %22, i32 0, i32 1
  %23 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p15, align 8
  %name16 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %23, i32 0, i32 0
  %24 = load i8*, i8** %name16, align 8
  %tobool17 = icmp ne i8* %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.14
  %25 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p19 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %25, i32 0, i32 1
  %26 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p19, align 8
  %name20 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %26, i32 0, i32 0
  %27 = load i8*, i8** %name20, align 8
  call void @g_free(i8* %27)
  %28 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p21 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %28, i32 0, i32 1
  %29 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p21, align 8
  %name22 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %29, i32 0, i32 0
  store i8* null, i8** %name22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.14
  %30 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p24 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %30, i32 0, i32 1
  %31 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p24, align 8
  %stock_id = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %31, i32 0, i32 2
  %32 = load i8*, i8** %stock_id, align 8
  %tobool25 = icmp ne i8* %32, null
  br i1 %tobool25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.end.23
  %33 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p27 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %33, i32 0, i32 1
  %34 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p27, align 8
  %stock_id28 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %34, i32 0, i32 2
  %35 = load i8*, i8** %stock_id28, align 8
  call void @g_free(i8* %35)
  %36 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p29 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %36, i32 0, i32 1
  %37 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p29, align 8
  %stock_id30 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %37, i32 0, i32 2
  store i8* null, i8** %stock_id30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %if.end.23
  %38 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p32 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %38, i32 0, i32 1
  %39 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p32, align 8
  %help_id = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %39, i32 0, i32 3
  %40 = load i8*, i8** %help_id, align 8
  %tobool33 = icmp ne i8* %40, null
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.31
  %41 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p35 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %41, i32 0, i32 1
  %42 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p35, align 8
  %help_id36 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %42, i32 0, i32 3
  %43 = load i8*, i8** %help_id36, align 8
  call void @g_free(i8* %43)
  %44 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p37 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %44, i32 0, i32 1
  %45 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p37, align 8
  %help_id38 = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %45, i32 0, i32 3
  store i8* null, i8** %help_id38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.end.31
  %46 = load i8*, i8** @gimp_dockable_parent_class, align 8
  %47 = bitcast i8* %46 to %struct._GTypeClass*
  %call40 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %47, i64 80)
  %48 = bitcast %struct._GTypeClass* %call40 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %48, i32 0, i32 5
  %49 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %50 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %49(%struct._GObject* %50)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockable*
  store %struct._GimpDockable* %2, %struct._GimpDockable** %dockable, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %5 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %5)
  call void @gimp_dockable_set_locked(%struct._GimpDockable* %4, i32 %call2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %6, %struct._GObject** %_glib__object, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %7, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = load i32, i32* %property_id.addr, align 4
  store i32 %8, i32* %_glib__property_id, align 4
  %9 = load i32, i32* %_glib__property_id, align 4
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %13 = bitcast %struct._GParamSpec* %12 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %15)
  %16 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %17 = bitcast %struct._GObject* %16 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %19)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %9, i8* %11, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockable*
  store %struct._GimpDockable* %2, %struct._GimpDockable** %dockable, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %5, i32 0, i32 1
  %6 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %locked = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %6, i32 0, i32 6
  %7 = load i32, i32* %locked, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %container = alloca %struct._GtkContainer*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkContainer*
  store %struct._GtkContainer* %2, %struct._GtkContainer** %container, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_bin_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBin*
  %call4 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %5)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %child, align 8
  %6 = load %struct._GtkContainer*, %struct._GtkContainer** %container, align 8
  %call5 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %6)
  store i32 %call5, i32* %border_width, align 4
  %7 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 %7, 2
  %8 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %8, i32 0, i32 0
  store i32 %mul, i32* %width, align 4
  %9 = load i32, i32* %border_width, align 4
  %mul6 = mul nsw i32 %9, 2
  %10 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %10, i32 0, i32 1
  store i32 %mul6, i32* %height, align 4
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool = icmp ne %struct._GtkWidget* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %call7 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %13, %struct._GtkRequisition* %child_requisition)
  %width9 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %14 = load i32, i32* %width9, align 4
  %15 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width10 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %15, i32 0, i32 0
  %16 = load i32, i32* %width10, align 4
  %add = add nsw i32 %16, %14
  store i32 %add, i32* %width10, align 4
  %height11 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %17 = load i32, i32* %height11, align 4
  %18 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height12 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %18, i32 0, i32 1
  %19 = load i32, i32* %height12, align 4
  %add13 = add nsw i32 %19, %17
  store i32 %add13, i32* %height12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_size_allocate(%struct._GtkWidget* %widget, %struct._GdkRectangle* %allocation) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %allocation.addr = alloca %struct._GdkRectangle*, align 8
  %container = alloca %struct._GtkContainer*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %button_requisition = alloca %struct._GtkRequisition, align 4
  %child_allocation = alloca %struct._GdkRectangle, align 4
  %border_width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkRectangle* %allocation, %struct._GdkRectangle** %allocation.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_container_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkContainer*
  store %struct._GtkContainer* %2, %struct._GtkContainer** %container, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_bin_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBin*
  %call4 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %5)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %child, align 8
  %6 = bitcast %struct._GtkRequisition* %button_requisition to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 8, i32 4, i1 false)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  call void @gtk_widget_set_allocation(%struct._GtkWidget* %7, %struct._GdkRectangle* %8)
  %9 = load %struct._GtkContainer*, %struct._GtkContainer** %container, align 8
  %call5 = call i32 @gtk_container_get_border_width(%struct._GtkContainer* %9)
  store i32 %call5, i32* %border_width, align 4
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool = icmp ne %struct._GtkWidget* %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %call6 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %11)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %x = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %12, i32 0, i32 0
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %border_width, align 4
  %add = add nsw i32 %13, %14
  %x8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 0
  store i32 %add, i32* %x8, align 4
  %15 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %y = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %15, i32 0, i32 1
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %border_width, align 4
  %add9 = add nsw i32 %16, %17
  %y10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  store i32 %add9, i32* %y10, align 4
  %18 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %18, i32 0, i32 2
  %19 = load i32, i32* %width, align 4
  %20 = load i32, i32* %border_width, align 4
  %mul = mul nsw i32 %20, 2
  %sub = sub nsw i32 %19, %mul
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %21 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %width11 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %21, i32 0, i32 2
  %22 = load i32, i32* %width11, align 4
  %23 = load i32, i32* %border_width, align 4
  %mul12 = mul nsw i32 %23, 2
  %sub13 = sub nsw i32 %22, %mul12
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub13, %cond.true ], [ 0, %cond.false ]
  %width14 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 2
  store i32 %cond, i32* %width14, align 4
  %24 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %24, i32 0, i32 3
  %25 = load i32, i32* %height, align 4
  %26 = load i32, i32* %border_width, align 4
  %mul15 = mul nsw i32 %26, 2
  %sub16 = sub nsw i32 %25, %mul15
  %height17 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %button_requisition, i32 0, i32 1
  %27 = load i32, i32* %height17, align 4
  %sub18 = sub nsw i32 %sub16, %27
  %cmp19 = icmp sgt i32 %sub18, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.26

cond.true.20:                                     ; preds = %cond.end
  %28 = load %struct._GdkRectangle*, %struct._GdkRectangle** %allocation.addr, align 8
  %height21 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %28, i32 0, i32 3
  %29 = load i32, i32* %height21, align 4
  %30 = load i32, i32* %border_width, align 4
  %mul22 = mul nsw i32 %30, 2
  %sub23 = sub nsw i32 %29, %mul22
  %height24 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %button_requisition, i32 0, i32 1
  %31 = load i32, i32* %height24, align 4
  %sub25 = sub nsw i32 %sub23, %31
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.20
  %cond28 = phi i32 [ %sub25, %cond.true.20 ], [ 0, %cond.false.26 ]
  %height29 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 3
  store i32 %cond28, i32* %height29, align 4
  %height30 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %button_requisition, i32 0, i32 1
  %32 = load i32, i32* %height30, align 4
  %y31 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %child_allocation, i32 0, i32 1
  %33 = load i32, i32* %y31, align 4
  %add32 = add nsw i32 %33, %32
  store i32 %add32, i32* %y31, align 4
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  call void @gtk_widget_size_allocate(%struct._GtkWidget* %34, %struct._GdkRectangle* %child_allocation)
  br label %if.end

if.end:                                           ; preds = %cond.end.27, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_style_set(%struct._GtkWidget* %widget, %struct._GtkStyle* %prev_style) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %prev_style.addr = alloca %struct._GtkStyle*, align 8
  %content_border = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkStyle* %prev_style, %struct._GtkStyle** %prev_style.addr, align 8
  %0 = load i8*, i8** @gimp_dockable_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gtk_widget_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GtkWidgetClass*
  %style_set = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %2, i32 0, i32 17
  %3 = load void (%struct._GtkWidget*, %struct._GtkStyle*)*, void (%struct._GtkWidget*, %struct._GtkStyle*)** %style_set, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = load %struct._GtkStyle*, %struct._GtkStyle** %prev_style.addr, align 8
  call void %3(%struct._GtkWidget* %4, %struct._GtkStyle* %5)
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void (%struct._GtkWidget*, i8*, ...) @gtk_widget_style_get(%struct._GtkWidget* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32* %content_border, i8* null)
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_container_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkContainer*
  %10 = load i32, i32* %content_border, align 4
  call void @gtk_container_set_border_width(%struct._GtkContainer* %9, i32 %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_drag_leave(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %time) #3 {
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
define internal i32 @gimp_dockable_drag_motion(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %dockable = alloca %struct._GimpDockable*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockable*
  store %struct._GimpDockable* %2, %struct._GimpDockable** %dockable, align 8
  %3 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %3, i32 0, i32 1
  %4 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %4, i32 0, i32 11
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
define internal i32 @gimp_dockable_drag_drop(%struct._GtkWidget* %widget, %struct._GdkDragContext* %context, i32 %x, i32 %y, i32 %time) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GdkDragContext*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %dockable = alloca %struct._GimpDockable*, align 8
  %dropped = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkDragContext* %context, %struct._GdkDragContext** %context.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_dockable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDockable*
  store %struct._GimpDockable* %2, %struct._GimpDockable** %dockable, align 8
  %3 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %3, i32 0, i32 1
  %4 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %drag_handler = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %4, i32 0, i32 11
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
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_dockable_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpDockable*
  %p5 = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p5, align 8
  %dockbook = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 7
  %15 = load %struct._GimpDockbook*, %struct._GimpDockbook** %dockbook, align 8
  %16 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %call6 = call %struct._GtkWidget* @gtk_drag_get_source_widget(%struct._GdkDragContext* %16)
  %call7 = call i32 @gimp_dockbook_drop_dockable(%struct._GimpDockbook* %15, %struct._GtkWidget* %call6)
  store i32 %call7, i32* %dropped, align 4
  %17 = load %struct._GdkDragContext*, %struct._GdkDragContext** %context.addr, align 8
  %18 = load i32, i32* %dropped, align 4
  %19 = load i32, i32* %time.addr, align 4
  call void @gtk_drag_finish(%struct._GdkDragContext* %17, i32 %18, i32 1, i32 %19)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_add(%struct._GtkContainer* %container, %struct._GtkWidget* %widget) #3 {
entry:
  %container.addr = alloca %struct._GtkContainer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_bin_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkBin*
  %call2 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %2)
  %cmp = icmp eq %struct._GtkWidget* %call2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_dockable_add, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i8*, i8** @gimp_dockable_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call3 = call i64 @gtk_container_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call3)
  %5 = bitcast %struct._GTypeClass* %call4 to %struct._GtkContainerClass*
  %add = getelementptr inbounds %struct._GtkContainerClass, %struct._GtkContainerClass* %5, i32 0, i32 1
  %6 = load void (%struct._GtkContainer*, %struct._GtkWidget*)*, void (%struct._GtkContainer*, %struct._GtkWidget*)** %add, align 8
  %7 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %6(%struct._GtkContainer* %7, %struct._GtkWidget* %8)
  %9 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %10 = bitcast %struct._GtkContainer* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_dockable_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpDockable*
  store %struct._GimpDockable* %11, %struct._GimpDockable** %dockable, align 8
  %12 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %13 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %p = getelementptr inbounds %struct._GimpDockable, %struct._GimpDockable* %13, i32 0, i32 1
  %14 = load %struct._GimpDockablePrivate*, %struct._GimpDockablePrivate** %p, align 8
  %tab_style = getelementptr inbounds %struct._GimpDockablePrivate, %struct._GimpDockablePrivate* %14, i32 0, i32 4
  %15 = load i32, i32* %tab_style, align 4
  call void @gimp_dockable_set_tab_style(%struct._GimpDockable* %12, i32 %15)
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_dockable_child_type(%struct._GtkContainer* %container) #3 {
entry:
  %retval = alloca i64, align 8
  %container.addr = alloca %struct._GtkContainer*, align 8
  store %struct._GtkContainer* %container, %struct._GtkContainer** %container.addr, align 8
  %0 = load %struct._GtkContainer*, %struct._GtkContainer** %container.addr, align 8
  %1 = bitcast %struct._GtkContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_bin_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkBin*
  %call2 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %2)
  %tobool = icmp ne %struct._GtkWidget* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 4, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i64 @gimp_docked_interface_get_type() #6
  store i64 %call3, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare void @gtk_widget_class_install_style_property(%struct._GtkWidgetClass*, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare void @g_free(i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare i32 @gtk_container_get_border_width(%struct._GtkContainer*) #1

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @gtk_widget_set_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gtk_widget_size_allocate(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare void @gtk_widget_style_get(%struct._GtkWidget*, i8*, ...) #1

declare i32 @gimp_paned_box_will_handle_drag(%struct._GimpPanedBox*, %struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32) #1

declare void @gdk_drag_status(%struct._GdkDragContext*, i32, i32) #1

declare i32 @gimp_dockbook_drop_dockable(%struct._GimpDockbook*, %struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_drag_get_source_widget(%struct._GdkDragContext*) #1

declare void @gtk_drag_finish(%struct._GdkDragContext*, i32, i32, i32) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gtk_drag_dest_set(%struct._GtkWidget*, i32, %struct._GtkTargetEntry*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._GList* @gimp_dockable_get_aux_info(%struct._GimpSessionManaged* %session_managed) #3 {
entry:
  %retval = alloca %struct._GList*, align 8
  %session_managed.addr = alloca %struct._GimpSessionManaged*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionManaged* %session_managed, %struct._GimpSessionManaged** %session_managed.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %1 = bitcast %struct._GimpSessionManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dockable_get_aux_info, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0))
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %14 = bitcast %struct._GimpSessionManaged* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dockable_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDockable*
  store %struct._GimpDockable* %15, %struct._GimpDockable** %dockable, align 8
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %17 = bitcast %struct._GimpDockable* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_bin_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBin*
  %call15 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %18)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %child, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %do.end
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_docked_interface_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDocked*
  %call20 = call %struct._GList* @gimp_docked_get_aux_info(%struct._GimpDocked* %22)
  store %struct._GList* %call20, %struct._GList** %retval
  br label %return

if.end.21:                                        ; preds = %do.end
  store %struct._GList* null, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.17, %if.else.9
  %23 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %23
}

; Function Attrs: nounwind uwtable
define internal void @gimp_dockable_set_aux_info(%struct._GimpSessionManaged* %session_managed, %struct._GList* %aux_info) #3 {
entry:
  %session_managed.addr = alloca %struct._GimpSessionManaged*, align 8
  %aux_info.addr = alloca %struct._GList*, align 8
  %dockable = alloca %struct._GimpDockable*, align 8
  %child = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSessionManaged* %session_managed, %struct._GimpSessionManaged** %session_managed.addr, align 8
  store %struct._GList* %aux_info, %struct._GList** %aux_info.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %1 = bitcast %struct._GimpSessionManaged* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_dockable_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_dockable_set_aux_info, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpSessionManaged*, %struct._GimpSessionManaged** %session_managed.addr, align 8
  %14 = bitcast %struct._GimpSessionManaged* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_dockable_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDockable*
  store %struct._GimpDockable* %15, %struct._GimpDockable** %dockable, align 8
  %16 = load %struct._GimpDockable*, %struct._GimpDockable** %dockable, align 8
  %17 = bitcast %struct._GimpDockable* %16 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_bin_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call13)
  %18 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkBin*
  %call15 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %18)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %child, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %19, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_docked_interface_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call18)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpDocked*
  %23 = load %struct._GList*, %struct._GList** %aux_info.addr, align 8
  call void @gimp_docked_set_aux_info(%struct._GimpDocked* %22, %struct._GList* %23)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.17, %do.end
  ret void
}

declare %struct._GList* @gimp_docked_get_aux_info(%struct._GimpDocked*) #1

declare void @gimp_docked_set_aux_info(%struct._GimpDocked*, %struct._GList*) #1

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare %struct._GtkWidget* @gimp_docked_get_preview(%struct._GimpDocked*, %struct._GimpContext*, i32) #1

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_type_interface_peek(i8*, i64) #1

declare i32 @gimp_preview_tab_style_to_icon(i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
