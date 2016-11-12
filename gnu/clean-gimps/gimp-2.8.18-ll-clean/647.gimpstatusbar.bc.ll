; ModuleID = './app/display/gimpstatusbar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._PangoLayout = type opaque
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpStatusbarClass = type { %struct._GtkStatusbarClass }
%struct._GtkStatusbarClass = type { %struct._GtkHBoxClass, i8*, void (%struct._GtkStatusbar*, i32, i8*)*, void (%struct._GtkStatusbar*, i32, i8*)*, void ()*, void ()*, void ()*, void ()* }
%struct._GtkHBoxClass = type { %struct._GtkBoxClass }
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
%struct._GtkStatusbar = type { %struct._GtkHBox, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GSList*, %struct._GSList*, i32, i32, %struct._GdkDrawable*, i8 }
%struct._GtkHBox = type { %struct._GtkBox }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpStatusbar = type { %struct._GtkStatusbar, %struct._GimpDisplayShell*, %struct._GSList*, %struct._GHashTable*, i32, %struct._GdkPixbuf*, i32, i32, i32, [32 x i8], [32 x i8], [32 x i8], %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, double }
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpTemplate = type opaque
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GHashTable = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpUnitStore = type { %struct._GObject }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GtkTreeModel = type opaque
%struct._GimpScaleComboBox = type { %struct._GtkComboBox, double, %struct._GtkTreePath*, %struct._GList* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GimpUnitComboBox = type { %struct._GtkComboBox }
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._PangoAttrList = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GtkLabelSelectionInfo = type opaque
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GimpStatusbarMsg = type { i32, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GtkProgressBar = type { %struct._GtkProgress, i32, i32, i32, i32, i32, i32, i32, double, i8 }
%struct._GtkProgress = type { %struct._GtkWidget, %struct._GtkAdjustment*, %struct._GdkDrawable*, i8*, float, float, i8 }
%struct._cairo = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._PangoAttribute = type { %struct._PangoAttrClass*, i32, i32 }
%struct._PangoAttrClass = type { i32, %struct._PangoAttribute* (%struct._PangoAttribute*)*, void (%struct._PangoAttribute*)*, i32 (%struct._PangoAttribute*, %struct._PangoAttribute*)* }

@gimp_statusbar_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpStatusbar\00", align 1
@gimp_statusbar_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_statusbar_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_statusbar_set_shell = private unnamed_addr constant [25 x i8] c"gimp_statusbar_set_shell\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"GIMP_IS_STATUSBAR (statusbar)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"scaled\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"notify::status\00", align 1
@__func__.gimp_statusbar_get_visible = private unnamed_addr constant [27 x i8] c"gimp_statusbar_get_visible\00", align 1
@__func__.gimp_statusbar_set_visible = private unnamed_addr constant [27 x i8] c"gimp_statusbar_set_visible\00", align 1
@__func__.gimp_statusbar_empty = private unnamed_addr constant [21 x i8] c"gimp_statusbar_empty\00", align 1
@__func__.gimp_statusbar_fill = private unnamed_addr constant [20 x i8] c"gimp_statusbar_fill\00", align 1
@__func__.gimp_statusbar_override_window_title = private unnamed_addr constant [37 x i8] c"gimp_statusbar_override_window_title\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@__func__.gimp_statusbar_restore_window_title = private unnamed_addr constant [36 x i8] c"gimp_statusbar_restore_window_title\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@__func__.gimp_statusbar_push = private unnamed_addr constant [20 x i8] c"gimp_statusbar_push\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"context != NULL\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1
@__func__.gimp_statusbar_push_valist = private unnamed_addr constant [27 x i8] c"gimp_statusbar_push_valist\00", align 1
@__func__.gimp_statusbar_push_coords = private unnamed_addr constant [27 x i8] c"gimp_statusbar_push_coords\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"title != NULL\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"separator != NULL\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.gimp_statusbar_push_length = private unnamed_addr constant [27 x i8] c"gimp_statusbar_push_length\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"file %s: line %d (%s): should not be reached\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"gimpstatusbar.c\00", align 1
@__func__.gimp_statusbar_replace = private unnamed_addr constant [23 x i8] c"gimp_statusbar_replace\00", align 1
@__func__.gimp_statusbar_replace_valist = private unnamed_addr constant [30 x i8] c"gimp_statusbar_replace_valist\00", align 1
@__func__.gimp_statusbar_peek = private unnamed_addr constant [20 x i8] c"gimp_statusbar_peek\00", align 1
@__func__.gimp_statusbar_pop = private unnamed_addr constant [19 x i8] c"gimp_statusbar_pop\00", align 1
@__func__.gimp_statusbar_push_temp_valist = private unnamed_addr constant [32 x i8] c"gimp_statusbar_push_temp_valist\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"severity <= GIMP_MESSAGE_WARNING\00", align 1
@__func__.gimp_statusbar_pop_temp = private unnamed_addr constant [24 x i8] c"gimp_statusbar_pop_temp\00", align 1
@__func__.gimp_statusbar_update_cursor = private unnamed_addr constant [29 x i8] c"gimp_statusbar_update_cursor\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@gimp_statusbar_parent_class = internal global i8* null, align 8
@GimpStatusbar_private_offset = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Cancel <i>%s</i>\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"gimp-statusbar-temp\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"size-request\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"8888, 8888\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"focus-on-click\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"entry-activated\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"expose-event\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"text-xalign\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"text-yalign\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"ellipsize\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c" \00", align 1
@gimp_statusbar_shell_scaled.layout = internal global %struct._PangoLayout* null, align 8
@.str.32 = private unnamed_addr constant [16 x i8] c"%%s%%d%%s%%d%%s\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"%%s%%.1f%%s%%.1f%%s\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"%%s%%d%%s\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"%%s%%.%df%%s%%.%df%%s\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"%%s%%.%df%%s\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_statusbar_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_statusbar_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_statusbar_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_statusbar_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 880, void (i8*, i8*)* bitcast (void (i8*)* @gimp_statusbar_class_intern_init to void (i8*, i8*)*), i32 400, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpStatusbar*)* @gimp_statusbar_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_progress_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_statusbar_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_statusbar_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_statusbar_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_statusbar_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_statusbar_parent_class, align 8
  %1 = load i32, i32* @GimpStatusbar_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpStatusbar_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpStatusbarClass*
  call void @gimp_statusbar_class_init(%struct._GimpStatusbarClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_init(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %store = alloca %struct._GimpUnitStore*, align 8
  %children = alloca %struct._GList*, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 1
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %shell, align 8
  %1 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %1, i32 0, i32 2
  store %struct._GSList* null, %struct._GSList** %messages, align 8
  %call = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* null)
  %2 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %context_ids = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %2, i32 0, i32 3
  store %struct._GHashTable* %call, %struct._GHashTable** %context_ids, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %seq_context_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 4
  store i32 1, i32* %seq_context_id, align 4
  %4 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %call1 = call i32 @gimp_statusbar_get_context_id(%struct._GimpStatusbar* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0))
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_context_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 6
  store i32 %call1, i32* %temp_context_id, align 4
  %6 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %6, i32 0, i32 9
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %7 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str_f = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %7, i32 0, i32 10
  %arrayidx2 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str_f, i32 0, i64 0
  store i8 0, i8* %arrayidx2, align 1
  %8 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %length_format_str = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %8, i32 0, i32 11
  %arrayidx3 = getelementptr inbounds [32 x i8], [32 x i8]* %length_format_str, i32 0, i64 0
  store i8 0, i8* %arrayidx3, align 1
  %9 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %9, i32 0, i32 18
  store i32 0, i32* %progress_active, align 4
  %10 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progress_shown = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %10, i32 0, i32 19
  store i32 0, i32* %progress_shown, align 4
  %11 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %12 = bitcast %struct._GimpStatusbar* %11 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_statusbar_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call4)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkStatusbar*
  %call6 = call %struct._GtkWidget* @gtk_statusbar_get_message_area(%struct._GtkStatusbar* %13)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %hbox, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_box_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %16, i32 1)
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_container_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call9)
  %19 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkContainer*
  %call11 = call %struct._GList* @gtk_container_get_children(%struct._GtkContainer* %19)
  store %struct._GList* %call11, %struct._GList** %children, align 8
  %20 = load %struct._GList*, %struct._GList** %children, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %call12 = call i8* @g_object_ref(i8* %21)
  %22 = bitcast i8* %call12 to %struct._GtkWidget*
  %23 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %23, i32 0, i32 15
  store %struct._GtkWidget* %22, %struct._GtkWidget** %label, align 8
  %24 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %24)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_container_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call13)
  %27 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkContainer*
  %28 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label15 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %28, i32 0, i32 15
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %label15, align 8
  call void @gtk_container_remove(%struct._GtkContainer* %27, %struct._GtkWidget* %29)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %32 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %33 = bitcast %struct._GimpStatusbar* %32 to i8*
  %call16 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GtkRequisition*, %struct._GimpStatusbar*)* @gimp_statusbar_hbox_size_request to void ()*), i8* %33, void (i8*, %struct._GClosure*)* null, i32 0)
  %call17 = call %struct._GtkWidget* @gtk_label_new(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0))
  %34 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %34, i32 0, i32 12
  store %struct._GtkWidget* %call17, %struct._GtkWidget** %cursor_label, align 8
  %35 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label18 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %35, i32 0, i32 12
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label18, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_misc_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call19)
  %38 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %38, float 5.000000e-01, float 5.000000e-01)
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_box_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call21)
  %41 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkBox*
  %42 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label23 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %42, i32 0, i32 12
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label23, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %41, %struct._GtkWidget* %43, i32 0, i32 0, i32 0)
  %44 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label24 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %44, i32 0, i32 12
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label24, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  %call25 = call %struct._GimpUnitStore* @gimp_unit_store_new(i32 2)
  store %struct._GimpUnitStore* %call25, %struct._GimpUnitStore** %store, align 8
  %46 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store, align 8
  %call26 = call %struct._GtkWidget* @gimp_unit_combo_box_new_with_model(%struct._GimpUnitStore* %46)
  %47 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %47, i32 0, i32 13
  store %struct._GtkWidget* %call26, %struct._GtkWidget** %unit_combo, align 8
  %48 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store, align 8
  %49 = bitcast %struct._GimpUnitStore* %48 to i8*
  call void @g_object_unref(i8* %49)
  %50 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo27 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %50, i32 0, i32 13
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo27, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %51, i32 0)
  %52 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo28 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %52, i32 0, i32 13
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo28, align 8
  %54 = bitcast %struct._GtkWidget* %53 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 0, i8* null)
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_box_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call29)
  %57 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkBox*
  %58 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo31 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %58, i32 0, i32 13
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo31, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %59, i32 0, i32 0, i32 0)
  %60 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo32 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %60, i32 0, i32 13
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo32, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %61)
  %62 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo33 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %62, i32 0, i32 13
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo33, align 8
  %64 = bitcast %struct._GtkWidget* %63 to i8*
  %65 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %66 = bitcast %struct._GimpStatusbar* %65 to i8*
  %call34 = call i64 @g_signal_connect_data(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpUnitComboBox*, %struct._GimpStatusbar*)* @gimp_statusbar_unit_changed to void ()*), i8* %66, void (i8*, %struct._GClosure*)* null, i32 0)
  %call35 = call %struct._GtkWidget* @gimp_scale_combo_box_new()
  %67 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %67, i32 0, i32 14
  store %struct._GtkWidget* %call35, %struct._GtkWidget** %scale_combo, align 8
  %68 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo36 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %68, i32 0, i32 14
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo36, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %69, i32 0)
  %70 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo37 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %70, i32 0, i32 14
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo37, align 8
  %72 = bitcast %struct._GtkWidget* %71 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 0, i8* null)
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %74 = bitcast %struct._GtkWidget* %73 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call38)
  %75 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %76 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo40 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %76, i32 0, i32 14
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo40, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %75, %struct._GtkWidget* %77, i32 0, i32 0, i32 0)
  %78 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo41 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %78, i32 0, i32 14
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo41, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %80 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo42 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %80, i32 0, i32 14
  %81 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo42, align 8
  %82 = bitcast %struct._GtkWidget* %81 to i8*
  %83 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %84 = bitcast %struct._GimpStatusbar* %83 to i8*
  %call43 = call i64 @g_signal_connect_data(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GimpScaleComboBox*, %struct._GimpStatusbar*)* @gimp_statusbar_scale_changed to void ()*), i8* %84, void (i8*, %struct._GClosure*)* null, i32 0)
  %85 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo44 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %85, i32 0, i32 14
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo44, align 8
  %87 = bitcast %struct._GtkWidget* %86 to i8*
  %88 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %89 = bitcast %struct._GimpStatusbar* %88 to i8*
  %call45 = call i64 @g_signal_connect_data(i8* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GimpScaleComboBox*, %struct._GimpStatusbar*)* @gimp_statusbar_scale_activated to void ()*), i8* %89, void (i8*, %struct._GClosure*)* null, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %91 = bitcast %struct._GtkWidget* %90 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %91, i64 %call46)
  %92 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %93 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label48 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %93, i32 0, i32 15
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %label48, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %92, %struct._GtkWidget* %94, i32 1, i32 1, i32 1)
  %95 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label49 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %95, i32 0, i32 15
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %label49, align 8
  %97 = bitcast %struct._GtkWidget* %96 to i8*
  call void @g_object_unref(i8* %97)
  %98 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label50 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %98, i32 0, i32 15
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %label50, align 8
  %100 = bitcast %struct._GtkWidget* %99 to i8*
  %101 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %102 = bitcast %struct._GimpStatusbar* %101 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventExpose*, %struct._GimpStatusbar*)* @gimp_statusbar_label_expose to void ()*), i8* %102, void (i8*, %struct._GClosure*)* null, i32 1)
  %call52 = call i64 @gtk_progress_bar_get_type() #7
  %call53 = call i8* (i64, i8*, ...) @g_object_new(i64 %call52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), double 0.000000e+00, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), double 5.000000e-01, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 3, i8* null)
  %103 = bitcast i8* %call53 to %struct._GtkWidget*
  %104 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progressbar = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %104, i32 0, i32 16
  store %struct._GtkWidget* %103, %struct._GtkWidget** %progressbar, align 8
  %105 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %106 = bitcast %struct._GtkWidget* %105 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_box_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %106, i64 %call54)
  %107 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkBox*
  %108 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progressbar56 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %108, i32 0, i32 16
  %109 = load %struct._GtkWidget*, %struct._GtkWidget** %progressbar56, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %107, %struct._GtkWidget* %109, i32 1, i32 1, i32 0)
  %call57 = call %struct._GtkWidget* @gtk_button_new()
  %110 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cancel_button = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %110, i32 0, i32 17
  store %struct._GtkWidget* %call57, %struct._GtkWidget** %cancel_button, align 8
  %111 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cancel_button58 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %111, i32 0, i32 17
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button58, align 8
  call void @gtk_widget_set_can_focus(%struct._GtkWidget* %112, i32 0)
  %113 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cancel_button59 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %113, i32 0, i32 17
  %114 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button59, align 8
  %115 = bitcast %struct._GtkWidget* %114 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_button_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call60)
  %116 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkButton*
  call void @gtk_button_set_relief(%struct._GtkButton* %116, i32 2)
  %117 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cancel_button62 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %117, i32 0, i32 17
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button62, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %118, i32 0)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call63 = call i64 @gtk_box_get_type() #7
  %call64 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call63)
  %121 = bitcast %struct._GTypeInstance* %call64 to %struct._GtkBox*
  %122 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cancel_button65 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %122, i32 0, i32 17
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button65, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %121, %struct._GtkWidget* %123, i32 0, i32 0, i32 0)
  %call66 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i32 1)
  store %struct._GtkWidget* %call66, %struct._GtkWidget** %image, align 8
  %124 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cancel_button67 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %124, i32 0, i32 17
  %125 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button67, align 8
  %126 = bitcast %struct._GtkWidget* %125 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_container_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %126, i64 %call68)
  %127 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkContainer*
  %128 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %127, %struct._GtkWidget* %128)
  %129 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %129)
  %130 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cancel_button70 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %130, i32 0, i32 17
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button70, align 8
  %132 = bitcast %struct._GtkWidget* %131 to i8*
  %133 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %134 = bitcast %struct._GimpStatusbar* %133 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpStatusbar*)* @gimp_statusbar_progress_canceled to void ()*), i8* %134, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_progress_iface_init(%struct._GimpProgressInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_statusbar_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_statusbar_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_statusbar_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_statusbar_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_statusbar_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_statusbar_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_statusbar_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  %7 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %message = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %7, i32 0, i32 9
  store i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)* @gimp_statusbar_progress_message, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)** %message, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_statusbar_new() #3 {
entry:
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GtkWidget*
  ret %struct._GtkWidget* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_set_shell(%struct._GimpStatusbar* %statusbar, %struct._GimpDisplayShell* %shell) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_statusbar_set_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %14 = bitcast %struct._GimpDisplayShell* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_display_shell_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_statusbar_set_shell, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %27 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell39 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %27, i32 0, i32 1
  %28 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell39, align 8
  %cmp40 = icmp eq %struct._GimpDisplayShell* %26, %28
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.38
  br label %return

if.end.42:                                        ; preds = %do.end.38
  %29 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell43 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %29, i32 0, i32 1
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell43, align 8
  %tobool44 = icmp ne %struct._GimpDisplayShell* %30, null
  br i1 %tobool44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.42
  %31 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell46 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %31, i32 0, i32 1
  %32 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell46, align 8
  %33 = bitcast %struct._GimpDisplayShell* %32 to i8*
  %34 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %35 = bitcast %struct._GimpStatusbar* %34 to i8*
  %call47 = call i32 @g_signal_handlers_disconnect_matched(i8* %33, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpStatusbar*)* @gimp_statusbar_shell_scaled to i8*), i8* %35)
  %36 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell48 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %36, i32 0, i32 1
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell48, align 8
  %38 = bitcast %struct._GimpDisplayShell* %37 to i8*
  %39 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %40 = bitcast %struct._GimpStatusbar* %39 to i8*
  %call49 = call i32 @g_signal_handlers_disconnect_matched(i8* %38, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpDisplayShell*, %struct._GParamSpec*, %struct._GimpStatusbar*)* @gimp_statusbar_shell_status_notify to i8*), i8* %40)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end.42
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %42 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell51 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %42, i32 0, i32 1
  store %struct._GimpDisplayShell* %41, %struct._GimpDisplayShell** %shell51, align 8
  %43 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell52 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %43, i32 0, i32 1
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell52, align 8
  %45 = bitcast %struct._GimpDisplayShell* %44 to i8*
  %46 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %47 = bitcast %struct._GimpStatusbar* %46 to i8*
  %call53 = call i64 @g_signal_connect_object(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GimpStatusbar*)* @gimp_statusbar_shell_scaled to void ()*), i8* %47, i32 0)
  %48 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell54 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %48, i32 0, i32 1
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell54, align 8
  %50 = bitcast %struct._GimpDisplayShell* %49 to i8*
  %51 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %52 = bitcast %struct._GimpStatusbar* %51 to i8*
  %call55 = call i64 @g_signal_connect_object(i8* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpDisplayShell*, %struct._GParamSpec*, %struct._GimpStatusbar*)* @gimp_statusbar_shell_status_notify to void ()*), i8* %52, i32 0)
  br label %return

return:                                           ; preds = %if.end.50, %if.then.41, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_shell_scaled(%struct._GimpDisplayShell* %shell, %struct._GimpStatusbar* %statusbar) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %text = alloca i8*, align 8
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %image_xres = alloca double, align 8
  %image_yres = alloca double, align 8
  %width = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_get_width(%struct._GimpImage* %3)
  store i32 %call1, i32* %image_width, align 4
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_get_height(%struct._GimpImage* %4)
  store i32 %call2, i32* %image_height, align 4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %5, double* %image_xres, double* %image_yres)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_width = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 28
  %7 = load i32, i32* %disp_width, align 4
  store i32 %7, i32* %image_width, align 4
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %disp_height = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %8, i32 0, i32 29
  %9 = load i32, i32* %disp_height, align 4
  store i32 %9, i32* %image_height, align 4
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %10, i32 0, i32 1
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %11, i32 0, i32 2
  %12 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %12, i32 0, i32 16
  %13 = load double, double* %monitor_xres, align 8
  store double %13, double* %image_xres, align 8
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display4 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 1
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %config5 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %15, i32 0, i32 2
  %16 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config5, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %16, i32 0, i32 17
  %17 = load double, double* %monitor_yres, align 8
  store double %17, double* %image_yres, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %18, i32 0, i32 14
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %22 = bitcast %struct._GimpStatusbar* %21 to i8*
  %call6 = call i32 @g_signal_handlers_block_matched(i8* %20, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpScaleComboBox*, %struct._GimpStatusbar*)* @gimp_statusbar_scale_changed to i8*), i8* %22)
  %23 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo7 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %23, i32 0, i32 14
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo7, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_scale_combo_box_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call8)
  %26 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpScaleComboBox*
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %zoom = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 22
  %28 = load %struct._GimpZoomModel*, %struct._GimpZoomModel** %zoom, align 8
  %call10 = call double @gimp_zoom_model_get_factor(%struct._GimpZoomModel* %28)
  call void @gimp_scale_combo_box_set_scale(%struct._GimpScaleComboBox* %26, double %call10)
  %29 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo11 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %29, i32 0, i32 14
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo11, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %32 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %33 = bitcast %struct._GimpStatusbar* %32 to i8*
  %call12 = call i32 @g_signal_handlers_unblock_matched(i8* %31, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpScaleComboBox*, %struct._GimpStatusbar*)* @gimp_statusbar_scale_changed to i8*), i8* %33)
  %34 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %34, i32 0, i32 13
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_combo_box_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call13)
  %37 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkComboBox*
  %call15 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %37)
  store %struct._GtkTreeModel* %call15, %struct._GtkTreeModel** %model, align 8
  %38 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %39 = bitcast %struct._GtkTreeModel* %38 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_unit_store_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call16)
  %40 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpUnitStore*
  %41 = load double, double* %image_xres, align 8
  %42 = load double, double* %image_yres, align 8
  call void (%struct._GimpUnitStore*, double, ...) @gimp_unit_store_set_resolutions(%struct._GimpUnitStore* %40, double %41, double %42)
  %43 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo18 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %43, i32 0, i32 13
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo18, align 8
  %45 = bitcast %struct._GtkWidget* %44 to i8*
  %46 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %47 = bitcast %struct._GimpStatusbar* %46 to i8*
  %call19 = call i32 @g_signal_handlers_block_matched(i8* %45, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpUnitComboBox*, %struct._GimpStatusbar*)* @gimp_statusbar_unit_changed to i8*), i8* %47)
  %48 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo20 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %48, i32 0, i32 13
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo20, align 8
  %50 = bitcast %struct._GtkWidget* %49 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_unit_combo_box_get_type() #7
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call21)
  %51 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpUnitComboBox*
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 10
  %53 = load i32, i32* %unit, align 4
  call void @gimp_unit_combo_box_set_active(%struct._GimpUnitComboBox* %51, i32 %53)
  %54 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo23 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %54, i32 0, i32 13
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo23, align 8
  %56 = bitcast %struct._GtkWidget* %55 to i8*
  %57 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %58 = bitcast %struct._GimpStatusbar* %57 to i8*
  %call24 = call i32 @g_signal_handlers_unblock_matched(i8* %56, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpUnitComboBox*, %struct._GimpStatusbar*)* @gimp_statusbar_unit_changed to i8*), i8* %58)
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %59, i32 0, i32 10
  %60 = load i32, i32* %unit25, align 4
  %cmp = icmp eq i32 %60, 0
  br i1 %cmp, label %if.then.26, label %if.else.32

if.then.26:                                       ; preds = %if.end
  %61 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %61, i32 0, i32 9
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str, i32 0, i32 0
  %call27 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0))
  %62 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str_f = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %62, i32 0, i32 10
  %arraydecay28 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str_f, i32 0, i32 0
  %call29 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay28, i64 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0))
  %63 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %length_format_str = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %63, i32 0, i32 11
  %arraydecay30 = getelementptr inbounds [32 x i8], [32 x i8]* %length_format_str, i32 0, i32 0
  %call31 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay30, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.50

if.else.32:                                       ; preds = %if.end
  %64 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str33 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %64, i32 0, i32 9
  %arraydecay34 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str33, i32 0, i32 0
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit35 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %65, i32 0, i32 10
  %66 = load i32, i32* %unit35, align 4
  %call36 = call i32 @gimp_unit_get_digits(i32 %66)
  %67 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit37 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %67, i32 0, i32 10
  %68 = load i32, i32* %unit37, align 4
  %call38 = call i32 @gimp_unit_get_digits(i32 %68)
  %call39 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay34, i64 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i32 %call36, i32 %call38)
  %69 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str_f40 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %69, i32 0, i32 10
  %arraydecay41 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str_f40, i32 0, i32 0
  %70 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str42 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %70, i32 0, i32 9
  %arraydecay43 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str42, i32 0, i32 0
  %call44 = call i8* @strcpy(i8* %arraydecay41, i8* %arraydecay43) #5
  %71 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %length_format_str45 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %71, i32 0, i32 11
  %arraydecay46 = getelementptr inbounds [32 x i8], [32 x i8]* %length_format_str45, i32 0, i32 0
  %72 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %unit47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %72, i32 0, i32 10
  %73 = load i32, i32* %unit47, align 4
  %call48 = call i32 @gimp_unit_get_digits(i32 %73)
  %call49 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay46, i64 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i32 %call48)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.32, %if.then.26
  %74 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %75 = load i32, i32* %image_width, align 4
  %sub = sub nsw i32 0, %75
  %conv = sitofp i32 %sub to double
  %76 = load i32, i32* %image_height, align 4
  %sub51 = sub nsw i32 0, %76
  %conv52 = sitofp i32 %sub51 to double
  call void @gimp_statusbar_update_cursor(%struct._GimpStatusbar* %74, i32 2, double %conv, double %conv52)
  %77 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %77, i32 0, i32 12
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_label_get_type() #7
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call53)
  %80 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkLabel*
  %call55 = call i8* @gtk_label_get_text(%struct._GtkLabel* %80)
  store i8* %call55, i8** %text, align 8
  %81 = load %struct._PangoLayout*, %struct._PangoLayout** @gimp_statusbar_shell_scaled.layout, align 8
  %tobool56 = icmp ne %struct._PangoLayout* %81, null
  br i1 %tobool56, label %if.end.60, label %if.then.57

if.then.57:                                       ; preds = %if.end.50
  %82 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label58 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %82, i32 0, i32 12
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label58, align 8
  %call59 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %83, i8* null)
  store %struct._PangoLayout* %call59, %struct._PangoLayout** @gimp_statusbar_shell_scaled.layout, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.50
  %84 = load %struct._PangoLayout*, %struct._PangoLayout** @gimp_statusbar_shell_scaled.layout, align 8
  %85 = load i8*, i8** %text, align 8
  call void @pango_layout_set_text(%struct._PangoLayout* %84, i8* %85, i32 -1)
  %86 = load %struct._PangoLayout*, %struct._PangoLayout** @gimp_statusbar_shell_scaled.layout, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %86, i32* %width, i32* null)
  %87 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label61 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %87, i32 0, i32 12
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label61, align 8
  %89 = load i32, i32* %width, align 4
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %88, i32 %89, i32 -1)
  %90 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_clear_cursor(%struct._GimpStatusbar* %90)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_shell_status_notify(%struct._GimpDisplayShell* %shell, %struct._GParamSpec* %pspec, %struct._GimpStatusbar* %statusbar) #3 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %status = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %1, i32 0, i32 60
  %2 = load i8*, i8** %status, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_replace(%struct._GimpStatusbar* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %2)
  ret void
}

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_statusbar_get_visible(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %retval = alloca i32, align 4
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_get_visible, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progress_shown = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %13, i32 0, i32 19
  %14 = load i32, i32* %progress_shown, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %do.end
  %15 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %16 = bitcast %struct._GimpStatusbar* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %17)
  store i32 %call16, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gtk_widget_get_visible(%struct._GtkWidget*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_set_visible(%struct._GimpStatusbar* %statusbar, i32 %visible) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %visible.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i32 %visible, i32* %visible.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_set_visible, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progress_shown = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %13, i32 0, i32 19
  %14 = load i32, i32* %progress_shown, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %do.end
  %15 = load i32, i32* %visible.addr, align 4
  %tobool13 = icmp ne i32 %15, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.12
  %16 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progress_shown15 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %16, i32 0, i32 19
  store i32 0, i32* %progress_shown15, align 4
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %do.end
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %18 = bitcast %struct._GimpStatusbar* %17 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_widget_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call18)
  %19 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWidget*
  %20 = load i32, i32* %visible.addr, align 4
  call void @gtk_widget_set_visible(%struct._GtkWidget* %19, i32 %20)
  br label %return

return:                                           ; preds = %if.end.17, %if.then.14, %if.else.9
  ret void
}

declare void @gtk_widget_set_visible(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_empty(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_statusbar_empty, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %13, i32 0, i32 12
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %14)
  %15 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %15, i32 0, i32 13
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %16)
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %17, i32 0, i32 14
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %18)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_fill(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_statusbar_fill, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %13, i32 0, i32 12
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %14)
  %15 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %15, i32 0, i32 13
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %16)
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %17, i32 0, i32 14
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %18)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_override_window_title(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %message = alloca i8*, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.gimp_statusbar_override_window_title, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.26

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %14 = bitcast %struct._GimpStatusbar* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %call13 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %15)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %toplevel, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_image_window_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpImageWindow*
  %call16 = call i32 @gimp_image_window_is_iconified(%struct._GimpImageWindow* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %do.end
  %19 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %call20 = call i8* @gimp_statusbar_peek(%struct._GimpStatusbar* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  store i8* %call20, i8** %message, align 8
  %20 = load i8*, i8** %message, align 8
  %tobool21 = icmp ne i8* %20, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.18
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_window_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call23)
  %23 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWindow*
  %24 = load i8*, i8** %message, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %23, i8* %24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.18
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.9, %if.end.25, %do.end
  ret void
}

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare i32 @gimp_image_window_is_iconified(%struct._GimpImageWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #2

; Function Attrs: nounwind uwtable
define i8* @gimp_statusbar_peek(%struct._GimpStatusbar* %statusbar, i8* %context) #3 {
entry:
  %retval = alloca i8*, align 8
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %context.addr = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  %context_id = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %msg = alloca %struct._GimpStatusbarMsg*, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_statusbar_peek, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %context.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_statusbar_peek, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %15 = load i8*, i8** %context.addr, align 8
  %call17 = call i32 @gimp_statusbar_get_context_id(%struct._GimpStatusbar* %14, i8* %15)
  store i32 %call17, i32* %context_id, align 4
  %16 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %16, i32 0, i32 2
  %17 = load %struct._GSList*, %struct._GSList** %messages, align 8
  store %struct._GSList* %17, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %18 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool18 = icmp ne %struct._GSList* %18, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %21, %struct._GimpStatusbarMsg** %msg, align 8
  %22 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id20 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %22, i32 0, i32 0
  %23 = load i32, i32* %context_id20, align 4
  %24 = load i32, i32* %context_id, align 4
  %cmp21 = icmp eq i32 %23, %24
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body
  %25 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %25, i32 0, i32 2
  %26 = load i8*, i8** %text, align 8
  store i8* %26, i8** %retval
  br label %return

if.end.23:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %27 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 1
  %28 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %28, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.22, %if.else.14, %if.else.9
  %29 = load i8*, i8** %retval
  ret i8* %29
}

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_restore_window_title(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_statusbar_restore_window_title, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.20

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %14 = bitcast %struct._GimpStatusbar* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %call13 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %15)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %toplevel, align 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_image_window_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpImageWindow*
  %call16 = call i32 @gimp_image_window_is_iconified(%struct._GimpImageWindow* %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %do.end
  %19 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %19, i32 0, i32 1
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %21 = bitcast %struct._GimpDisplayShell* %20 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.9, %if.then.18, %do.end
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_push(%struct._GimpStatusbar* %statusbar, i8* %context, i8* %stock_id, i8* %format, ...) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %context.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_statusbar_push, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %context.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_statusbar_push, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %format.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_statusbar_push, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay23)
  %15 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %16 = load i8*, i8** %context.addr, align 8
  %17 = load i8*, i8** %stock_id.addr, align 8
  %18 = load i8*, i8** %format.addr, align 8
  %arraydecay24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_statusbar_push_valist(%struct._GimpStatusbar* %15, i8* %16, i8* %17, i8* %18, %struct.__va_list_tag* %arraydecay24)
  %arraydecay25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2526 = bitcast %struct.__va_list_tag* %arraydecay25 to i8*
  call void @llvm.va_end(i8* %arraydecay2526)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_push_valist(%struct._GimpStatusbar* %statusbar, i8* %context, i8* %stock_id, i8* %format, %struct.__va_list_tag* %args) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %context.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %msg = alloca %struct._GimpStatusbarMsg*, align 8
  %context_id = alloca i32, align 4
  %list = alloca %struct._GSList*, align 8
  %message = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_push_valist, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %context.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_push_valist, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %format.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_push_valist, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i8*, i8** %format.addr, align 8
  %16 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call23 = call i8* @gimp_statusbar_vprintf(i8* %15, %struct.__va_list_tag* %16)
  store i8* %call23, i8** %message, align 8
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %18 = load i8*, i8** %context.addr, align 8
  %call24 = call i32 @gimp_statusbar_get_context_id(%struct._GimpStatusbar* %17, i8* %18)
  store i32 %call24, i32* %context_id, align 4
  %19 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %19, i32 0, i32 2
  %20 = load %struct._GSList*, %struct._GSList** %messages, align 8
  %tobool25 = icmp ne %struct._GSList* %20, null
  br i1 %tobool25, label %if.then.26, label %if.end.35

if.then.26:                                       ; preds = %do.end.22
  %21 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages27 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %21, i32 0, i32 2
  %22 = load %struct._GSList*, %struct._GSList** %messages27, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %24, %struct._GimpStatusbarMsg** %msg, align 8
  %25 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id28 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %25, i32 0, i32 0
  %26 = load i32, i32* %context_id28, align 4
  %27 = load i32, i32* %context_id, align 4
  %cmp29 = icmp eq i32 %26, %27
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.34

land.lhs.true.30:                                 ; preds = %if.then.26
  %28 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %28, i32 0, i32 2
  %29 = load i8*, i8** %text, align 8
  %30 = load i8*, i8** %message, align 8
  %call31 = call i32 @strcmp(i8* %29, i8* %30) #8
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.30
  %31 = load i8*, i8** %message, align 8
  call void @g_free(i8* %31)
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.30, %if.then.26
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %do.end.22
  %32 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages36 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %32, i32 0, i32 2
  %33 = load %struct._GSList*, %struct._GSList** %messages36, align 8
  store %struct._GSList* %33, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.35
  %34 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool37 = icmp ne %struct._GSList* %34, null
  br i1 %tobool37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data38 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0
  %36 = load i8*, i8** %data38, align 8
  %37 = bitcast i8* %36 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %37, %struct._GimpStatusbarMsg** %msg, align 8
  %38 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id39 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %38, i32 0, i32 0
  %39 = load i32, i32* %context_id39, align 4
  %40 = load i32, i32* %context_id, align 4
  %cmp40 = icmp eq i32 %39, %40
  br i1 %cmp40, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %for.body
  %41 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages42 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %41, i32 0, i32 2
  %42 = load %struct._GSList*, %struct._GSList** %messages42, align 8
  %43 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %44 = bitcast %struct._GimpStatusbarMsg* %43 to i8*
  %call43 = call %struct._GSList* @g_slist_remove(%struct._GSList* %42, i8* %44)
  %45 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages44 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %45, i32 0, i32 2
  store %struct._GSList* %call43, %struct._GSList** %messages44, align 8
  %46 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  call void @gimp_statusbar_msg_free(%struct._GimpStatusbarMsg* %46)
  br label %for.end

if.end.45:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %47 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool46 = icmp ne %struct._GSList* %47, null
  br i1 %tobool46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %48 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1
  %49 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %49, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %for.cond
  %call47 = call noalias i8* @g_slice_alloc(i64 24)
  %50 = bitcast i8* %call47 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %50, %struct._GimpStatusbarMsg** %msg, align 8
  %51 = load i32, i32* %context_id, align 4
  %52 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id48 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %52, i32 0, i32 0
  store i32 %51, i32* %context_id48, align 4
  %53 = load i8*, i8** %stock_id.addr, align 8
  %call49 = call noalias i8* @g_strdup(i8* %53)
  %54 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %stock_id50 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %54, i32 0, i32 1
  store i8* %call49, i8** %stock_id50, align 8
  %55 = load i8*, i8** %message, align 8
  %56 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text51 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %56, i32 0, i32 2
  store i8* %55, i8** %text51, align 8
  %57 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %57, i32 0, i32 7
  %58 = load i32, i32* %temp_timeout_id, align 4
  %tobool52 = icmp ne i32 %58, 0
  br i1 %tobool52, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %for.end
  %59 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages54 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %59, i32 0, i32 2
  %60 = load %struct._GSList*, %struct._GSList** %messages54, align 8
  %61 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %62 = bitcast %struct._GimpStatusbarMsg* %61 to i8*
  %call55 = call %struct._GSList* @g_slist_insert(%struct._GSList* %60, i8* %62, i32 1)
  %63 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages56 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %63, i32 0, i32 2
  store %struct._GSList* %call55, %struct._GSList** %messages56, align 8
  br label %if.end.61

if.else.57:                                       ; preds = %for.end
  %64 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages58 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %64, i32 0, i32 2
  %65 = load %struct._GSList*, %struct._GSList** %messages58, align 8
  %66 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %67 = bitcast %struct._GimpStatusbarMsg* %66 to i8*
  %call59 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %65, i8* %67)
  %68 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages60 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %68, i32 0, i32 2
  store %struct._GSList* %call59, %struct._GSList** %messages60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57, %if.then.53
  %69 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_update(%struct._GimpStatusbar* %69)
  br label %return

return:                                           ; preds = %if.end.61, %if.then.33, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define internal i8* @gimp_statusbar_vprintf(i8* %format, %struct.__va_list_tag* %args) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %message = alloca i8*, align 8
  %newline = alloca i8*, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %0 = load i8*, i8** %format.addr, align 8
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call noalias i8* @g_strdup_vprintf(i8* %0, %struct.__va_list_tag* %1)
  store i8* %call, i8** %message, align 8
  %2 = load i8*, i8** %message, align 8
  %call1 = call i8* @strchr(i8* %2, i32 13) #8
  store i8* %call1, i8** %newline, align 8
  %3 = load i8*, i8** %newline, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %newline, align 8
  store i8 0, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %message, align 8
  %call2 = call i8* @strchr(i8* %5, i32 10) #8
  store i8* %call2, i8** %newline, align 8
  %6 = load i8*, i8** %newline, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** %newline, align 8
  store i8 0, i8* %7, align 1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load i8*, i8** %message, align 8
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_statusbar_get_context_id(%struct._GimpStatusbar* %statusbar, i8* %context) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %context.addr = alloca i8*, align 8
  %id = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %context_ids = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 3
  %1 = load %struct._GHashTable*, %struct._GHashTable** %context_ids, align 8
  %2 = load i8*, i8** %context.addr, align 8
  %call = call i8* @g_hash_table_lookup(%struct._GHashTable* %1, i8* %2)
  %3 = ptrtoint i8* %call to i64
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %id, align 4
  %4 = load i32, i32* %id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %seq_context_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 4
  %6 = load i32, i32* %seq_context_id, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %seq_context_id, align 4
  store i32 %6, i32* %id, align 4
  %7 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %context_ids1 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %7, i32 0, i32 3
  %8 = load %struct._GHashTable*, %struct._GHashTable** %context_ids1, align 8
  %9 = load i8*, i8** %context.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %9)
  %10 = load i32, i32* %id, align 4
  %conv3 = zext i32 %10 to i64
  %11 = inttoptr i64 %conv3 to i8*
  %call4 = call i32 @g_hash_table_insert(%struct._GHashTable* %8, i8* %call2, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %id, align 4
  ret i32 %12
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_free(i8*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_msg_free(%struct._GimpStatusbarMsg* %msg) #3 {
entry:
  %msg.addr = alloca %struct._GimpStatusbarMsg*, align 8
  store %struct._GimpStatusbarMsg* %msg, %struct._GimpStatusbarMsg** %msg.addr, align 8
  %0 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg.addr, align 8
  %stock_id = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %0, i32 0, i32 1
  %1 = load i8*, i8** %stock_id, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg.addr, align 8
  %text = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %2, i32 0, i32 2
  %3 = load i8*, i8** %text, align 8
  call void @g_free(i8* %3)
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg.addr, align 8
  %5 = bitcast %struct._GimpStatusbarMsg* %4 to i8*
  call void @g_slice_free1(i64 24, i8* %5)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare noalias i8* @g_slice_alloc(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GSList* @g_slist_insert(%struct._GSList*, i8*, i32) #1

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_update(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %msg = alloca %struct._GimpStatusbarMsg*, align 8
  %context_id = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store %struct._GimpStatusbarMsg* null, %struct._GimpStatusbarMsg** %msg, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 2
  %1 = load %struct._GSList*, %struct._GSList** %messages, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages1 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %2, i32 0, i32 2
  %3 = load %struct._GSList*, %struct._GSList** %messages1, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %5, %struct._GimpStatusbarMsg** %msg, align 8
  %6 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %6, i32 0, i32 18
  %7 = load i32, i32* %progress_active, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.then
  %8 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %call = call i32 @gimp_statusbar_get_context_id(%struct._GimpStatusbar* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  store i32 %call, i32* %context_id, align 4
  %9 = load i32, i32* %context_id, align 4
  %10 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id4 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %10, i32 0, i32 0
  %11 = load i32, i32* %context_id4, align 4
  %cmp = icmp ne i32 %9, %11
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  br label %if.end.12

if.end:                                           ; preds = %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %12 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %tobool8 = icmp ne %struct._GimpStatusbarMsg* %12, null
  br i1 %tobool8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.7
  %13 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %13, i32 0, i32 2
  %14 = load i8*, i8** %text, align 8
  %tobool9 = icmp ne i8* %14, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %15 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %16 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %stock_id = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %16, i32 0, i32 1
  %17 = load i8*, i8** %stock_id, align 8
  %18 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text11 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %18, i32 0, i32 2
  %19 = load i8*, i8** %text11, align 8
  call void @gimp_statusbar_set_text(%struct._GimpStatusbar* %15, i8* %17, i8* %19)
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %if.end.7
  %20 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_set_text(%struct._GimpStatusbar* %20, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.5, %if.else, %if.then.10
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_push_coords(%struct._GimpStatusbar* %statusbar, i8* %context, i8* %stock_id, i32 %precision, i8* %title, double %x, i8* %separator, double %y, i8* %help) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %context.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %precision.addr = alloca i32, align 4
  %title.addr = alloca i8*, align 8
  %x.addr = alloca double, align 8
  %separator.addr = alloca i8*, align 8
  %y.addr = alloca double, align 8
  %help.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i32 %precision, i32* %precision.addr, align 4
  store i8* %title, i8** %title.addr, align 8
  store double %x, double* %x.addr, align 8
  store i8* %separator, i8** %separator.addr, align 8
  store double %y, double* %y.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_push_coords, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.57

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %title.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_push_coords, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.57

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %separator.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_push_coords, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.57

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i8*, i8** %help.addr, align 8
  %cmp23 = icmp eq i8* %15, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.end.22
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8** %help.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %do.end.22
  %16 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell26 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell26, align 8
  store %struct._GimpDisplayShell* %17, %struct._GimpDisplayShell** %shell, align 8
  %18 = load i32, i32* %precision.addr, align 4
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.30
    i32 2, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %if.end.25
  %19 = load double, double* %x.addr, align 8
  %conv = fptosi double %19 to i32
  %conv27 = sitofp i32 %conv to double
  store double %conv27, double* %x.addr, align 8
  %20 = load double, double* %y.addr, align 8
  %conv28 = fptosi double %20 to i32
  %conv29 = sitofp i32 %conv28 to double
  store double %conv29, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.25
  %21 = load double, double* %x.addr, align 8
  %call31 = call double @rint(double %21) #7
  store double %call31, double* %x.addr, align 8
  %22 = load double, double* %y.addr, align 8
  %call32 = call double @rint(double %22) #7
  store double %call32, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.25
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.25, %sw.bb.33, %sw.bb.30, %sw.bb
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 10
  %24 = load i32, i32* %unit, align 4
  %cmp34 = icmp eq i32 %24, 0
  br i1 %cmp34, label %if.then.36, label %if.else.47

if.then.36:                                       ; preds = %sw.epilog
  %25 = load i32, i32* %precision.addr, align 4
  %cmp37 = icmp eq i32 %25, 2
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.then.36
  %26 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %27 = load i8*, i8** %context.addr, align 8
  %28 = load i8*, i8** %stock_id.addr, align 8
  %29 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str_f = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %29, i32 0, i32 10
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str_f, i32 0, i32 0
  %30 = load i8*, i8** %title.addr, align 8
  %31 = load double, double* %x.addr, align 8
  %32 = load i8*, i8** %separator.addr, align 8
  %33 = load double, double* %y.addr, align 8
  %34 = load i8*, i8** %help.addr, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_push(%struct._GimpStatusbar* %26, i8* %27, i8* %28, i8* %arraydecay, i8* %30, double %31, i8* %32, double %33, i8* %34)
  br label %if.end.46

if.else.40:                                       ; preds = %if.then.36
  %35 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %36 = load i8*, i8** %context.addr, align 8
  %37 = load i8*, i8** %stock_id.addr, align 8
  %38 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %38, i32 0, i32 9
  %arraydecay41 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str, i32 0, i32 0
  %39 = load i8*, i8** %title.addr, align 8
  %40 = load double, double* %x.addr, align 8
  %call42 = call double @rint(double %40) #7
  %conv43 = fptosi double %call42 to i32
  %41 = load i8*, i8** %separator.addr, align 8
  %42 = load double, double* %y.addr, align 8
  %call44 = call double @rint(double %42) #7
  %conv45 = fptosi double %call44 to i32
  %43 = load i8*, i8** %help.addr, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_push(%struct._GimpStatusbar* %35, i8* %36, i8* %37, i8* %arraydecay41, i8* %39, i32 %conv43, i8* %41, i32 %conv45, i8* %43)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.40, %if.then.39
  br label %if.end.57

if.else.47:                                       ; preds = %sw.epilog
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %44, i32 0, i32 1
  %45 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call50 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %45)
  call void @gimp_image_get_resolution(%struct._GimpImage* %call50, double* %xres, double* %yres)
  %46 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %47 = load i8*, i8** %context.addr, align 8
  %48 = load i8*, i8** %stock_id.addr, align 8
  %49 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str51 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %49, i32 0, i32 9
  %arraydecay52 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str51, i32 0, i32 0
  %50 = load i8*, i8** %title.addr, align 8
  %51 = load double, double* %x.addr, align 8
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit53 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 10
  %53 = load i32, i32* %unit53, align 4
  %54 = load double, double* %xres, align 8
  %call54 = call double @gimp_pixels_to_units(double %51, i32 %53, double %54)
  %55 = load i8*, i8** %separator.addr, align 8
  %56 = load double, double* %y.addr, align 8
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit55 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %57, i32 0, i32 10
  %58 = load i32, i32* %unit55, align 4
  %59 = load double, double* %yres, align 8
  %call56 = call double @gimp_pixels_to_units(double %56, i32 %58, double %59)
  %60 = load i8*, i8** %help.addr, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_push(%struct._GimpStatusbar* %46, i8* %47, i8* %48, i8* %arraydecay52, i8* %50, double %call54, i8* %55, double %call56, i8* %60)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.9, %if.else.14, %if.else.20, %if.else.47, %if.end.46
  ret void
}

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare double @gimp_pixels_to_units(double, i32, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_push_length(%struct._GimpStatusbar* %statusbar, i8* %context, i8* %stock_id, i8* %title, i32 %axis, double %value, i8* %help) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %context.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %axis.addr = alloca i32, align 4
  %value.addr = alloca double, align 8
  %help.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %resolution = alloca double, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i32 %axis, i32* %axis.addr, align 4
  store double %value, double* %value.addr, align 8
  store i8* %help, i8** %help.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_push_length, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.36

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %title.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_push_length, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.36

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %help.addr, align 8
  %cmp17 = icmp eq i8* %14, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end.16
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i8** %help.addr, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %do.end.16
  %15 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell20 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell20, align 8
  store %struct._GimpDisplayShell* %16, %struct._GimpDisplayShell** %shell, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 10
  %18 = load i32, i32* %unit, align 4
  %cmp21 = icmp eq i32 %18, 0
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end.19
  %19 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %20 = load i8*, i8** %context.addr, align 8
  %21 = load i8*, i8** %stock_id.addr, align 8
  %22 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %length_format_str = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %22, i32 0, i32 11
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %length_format_str, i32 0, i32 0
  %23 = load i8*, i8** %title.addr, align 8
  %24 = load double, double* %value.addr, align 8
  %call23 = call double @rint(double %24) #7
  %conv = fptosi double %call23 to i32
  %25 = load i8*, i8** %help.addr, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_push(%struct._GimpStatusbar* %19, i8* %20, i8* %21, i8* %arraydecay, i8* %23, i32 %conv, i8* %25)
  br label %if.end.36

if.else.24:                                       ; preds = %if.end.19
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %26, i32 0, i32 1
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call28 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %27)
  call void @gimp_image_get_resolution(%struct._GimpImage* %call28, double* %xres, double* %yres)
  %28 = load i32, i32* %axis.addr, align 4
  switch i32 %28, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %if.else.24
  %29 = load double, double* %xres, align 8
  store double %29, double* %resolution, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.else.24
  %30 = load double, double* %yres, align 8
  store double %30, double* %resolution, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.24
  br label %do.body.30

do.body.30:                                       ; preds = %sw.default
  call void (i8*, i32, i8*, ...) @g_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 984, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_statusbar_push_length, i32 0, i32 0))
  br label %if.end.36

do.end.31:                                        ; No predecessors!
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.31, %sw.bb.29, %sw.bb
  %31 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %32 = load i8*, i8** %context.addr, align 8
  %33 = load i8*, i8** %stock_id.addr, align 8
  %34 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %length_format_str32 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %34, i32 0, i32 11
  %arraydecay33 = getelementptr inbounds [32 x i8], [32 x i8]* %length_format_str32, i32 0, i32 0
  %35 = load i8*, i8** %title.addr, align 8
  %36 = load double, double* %value.addr, align 8
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit34 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 10
  %38 = load i32, i32* %unit34, align 4
  %39 = load double, double* %resolution, align 8
  %call35 = call double @gimp_pixels_to_units(double %36, i32 %38, double %39)
  %40 = load i8*, i8** %help.addr, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_push(%struct._GimpStatusbar* %31, i8* %32, i8* %33, i8* %arraydecay33, i8* %35, double %call35, i8* %40)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.9, %if.else.14, %do.body.30, %sw.epilog, %if.then.22
  ret void
}

declare void @g_log(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_replace(%struct._GimpStatusbar* %statusbar, i8* %context, i8* %stock_id, i8* %format, ...) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %context.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_statusbar_replace, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %context.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_statusbar_replace, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %format.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_statusbar_replace, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay23 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay23)
  %15 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %16 = load i8*, i8** %context.addr, align 8
  %17 = load i8*, i8** %stock_id.addr, align 8
  %18 = load i8*, i8** %format.addr, align 8
  %arraydecay24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_statusbar_replace_valist(%struct._GimpStatusbar* %15, i8* %16, i8* %17, i8* %18, %struct.__va_list_tag* %arraydecay24)
  %arraydecay25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2526 = bitcast %struct.__va_list_tag* %arraydecay25 to i8*
  call void @llvm.va_end(i8* %arraydecay2526)
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_replace_valist(%struct._GimpStatusbar* %statusbar, i8* %context, i8* %stock_id, i8* %format, %struct.__va_list_tag* %args) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %context.addr = alloca i8*, align 8
  %stock_id.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %msg = alloca %struct._GimpStatusbarMsg*, align 8
  %list = alloca %struct._GSList*, align 8
  %context_id = alloca i32, align 4
  %message = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_statusbar_replace_valist, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %context.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_statusbar_replace_valist, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %format.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_statusbar_replace_valist, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i8*, i8** %format.addr, align 8
  %16 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call23 = call i8* @gimp_statusbar_vprintf(i8* %15, %struct.__va_list_tag* %16)
  store i8* %call23, i8** %message, align 8
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %18 = load i8*, i8** %context.addr, align 8
  %call24 = call i32 @gimp_statusbar_get_context_id(%struct._GimpStatusbar* %17, i8* %18)
  store i32 %call24, i32* %context_id, align 4
  %19 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %19, i32 0, i32 2
  %20 = load %struct._GSList*, %struct._GSList** %messages, align 8
  store %struct._GSList* %20, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.22
  %21 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool25 = icmp ne %struct._GSList* %21, null
  br i1 %tobool25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8
  %24 = bitcast i8* %23 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %24, %struct._GimpStatusbarMsg** %msg, align 8
  %25 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id26 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %25, i32 0, i32 0
  %26 = load i32, i32* %context_id26, align 4
  %27 = load i32, i32* %context_id, align 4
  %cmp27 = icmp eq i32 %26, %27
  br i1 %cmp27, label %if.then.28, label %if.end.42

if.then.28:                                       ; preds = %for.body
  %28 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %28, i32 0, i32 2
  %29 = load i8*, i8** %text, align 8
  %30 = load i8*, i8** %message, align 8
  %call29 = call i32 @strcmp(i8* %29, i8* %30) #8
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  %31 = load i8*, i8** %message, align 8
  call void @g_free(i8* %31)
  br label %return

if.end.32:                                        ; preds = %if.then.28
  %32 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %stock_id33 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %32, i32 0, i32 1
  %33 = load i8*, i8** %stock_id33, align 8
  call void @g_free(i8* %33)
  %34 = load i8*, i8** %stock_id.addr, align 8
  %call34 = call noalias i8* @g_strdup(i8* %34)
  %35 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %stock_id35 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %35, i32 0, i32 1
  store i8* %call34, i8** %stock_id35, align 8
  %36 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text36 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %36, i32 0, i32 2
  %37 = load i8*, i8** %text36, align 8
  call void @g_free(i8* %37)
  %38 = load i8*, i8** %message, align 8
  %39 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text37 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %39, i32 0, i32 2
  store i8* %38, i8** %text37, align 8
  %40 = load %struct._GSList*, %struct._GSList** %list, align 8
  %41 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages38 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %41, i32 0, i32 2
  %42 = load %struct._GSList*, %struct._GSList** %messages38, align 8
  %cmp39 = icmp eq %struct._GSList* %40, %42
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.32
  %43 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_update(%struct._GimpStatusbar* %43)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.32
  br label %return

if.end.42:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %44 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool43 = icmp ne %struct._GSList* %44, null
  br i1 %tobool43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %45 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 1
  %46 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %46, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call44 = call noalias i8* @g_slice_alloc(i64 24)
  %47 = bitcast i8* %call44 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %47, %struct._GimpStatusbarMsg** %msg, align 8
  %48 = load i32, i32* %context_id, align 4
  %49 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id45 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %49, i32 0, i32 0
  store i32 %48, i32* %context_id45, align 4
  %50 = load i8*, i8** %stock_id.addr, align 8
  %call46 = call noalias i8* @g_strdup(i8* %50)
  %51 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %stock_id47 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %51, i32 0, i32 1
  store i8* %call46, i8** %stock_id47, align 8
  %52 = load i8*, i8** %message, align 8
  %53 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text48 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %53, i32 0, i32 2
  store i8* %52, i8** %text48, align 8
  %54 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %54, i32 0, i32 7
  %55 = load i32, i32* %temp_timeout_id, align 4
  %tobool49 = icmp ne i32 %55, 0
  br i1 %tobool49, label %if.then.50, label %if.else.54

if.then.50:                                       ; preds = %for.end
  %56 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages51 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %56, i32 0, i32 2
  %57 = load %struct._GSList*, %struct._GSList** %messages51, align 8
  %58 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %59 = bitcast %struct._GimpStatusbarMsg* %58 to i8*
  %call52 = call %struct._GSList* @g_slist_insert(%struct._GSList* %57, i8* %59, i32 1)
  %60 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages53 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %60, i32 0, i32 2
  store %struct._GSList* %call52, %struct._GSList** %messages53, align 8
  br label %if.end.58

if.else.54:                                       ; preds = %for.end
  %61 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages55 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %61, i32 0, i32 2
  %62 = load %struct._GSList*, %struct._GSList** %messages55, align 8
  %63 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %64 = bitcast %struct._GimpStatusbarMsg* %63 to i8*
  %call56 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %62, i8* %64)
  %65 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages57 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %65, i32 0, i32 2
  store %struct._GSList* %call56, %struct._GSList** %messages57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.54, %if.then.50
  %66 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_update(%struct._GimpStatusbar* %66)
  br label %return

return:                                           ; preds = %if.end.58, %if.end.41, %if.then.31, %if.else.20, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_pop(%struct._GimpStatusbar* %statusbar, i8* %context) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %context.addr = alloca i8*, align 8
  %list = alloca %struct._GSList*, align 8
  %context_id = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %msg = alloca %struct._GimpStatusbarMsg*, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_statusbar_pop, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %context.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_statusbar_pop, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %15 = load i8*, i8** %context.addr, align 8
  %call17 = call i32 @gimp_statusbar_get_context_id(%struct._GimpStatusbar* %14, i8* %15)
  store i32 %call17, i32* %context_id, align 4
  %16 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %16, i32 0, i32 2
  %17 = load %struct._GSList*, %struct._GSList** %messages, align 8
  store %struct._GSList* %17, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %18 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool18 = icmp ne %struct._GSList* %18, null
  br i1 %tobool18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = bitcast i8* %20 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %21, %struct._GimpStatusbarMsg** %msg, align 8
  %22 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id20 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %22, i32 0, i32 0
  %23 = load i32, i32* %context_id20, align 4
  %24 = load i32, i32* %context_id, align 4
  %cmp21 = icmp eq i32 %23, %24
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %for.body
  %25 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages23 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %25, i32 0, i32 2
  %26 = load %struct._GSList*, %struct._GSList** %messages23, align 8
  %27 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %28 = bitcast %struct._GimpStatusbarMsg* %27 to i8*
  %call24 = call %struct._GSList* @g_slist_remove(%struct._GSList* %26, i8* %28)
  %29 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages25 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %29, i32 0, i32 2
  store %struct._GSList* %call24, %struct._GSList** %messages25, align 8
  %30 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  call void @gimp_statusbar_msg_free(%struct._GimpStatusbarMsg* %30)
  br label %for.end

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %31 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1
  %32 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %32, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.22, %for.cond
  %33 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_update(%struct._GimpStatusbar* %33)
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_push_temp(%struct._GimpStatusbar* %statusbar, i32 %severity, i8* %stock_id, i8* %format, ...) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %severity.addr = alloca i32, align 4
  %stock_id.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = load i32, i32* %severity.addr, align 4
  %2 = load i8*, i8** %stock_id.addr, align 8
  %3 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @gimp_statusbar_push_temp_valist(%struct._GimpStatusbar* %0, i32 %1, i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_push_temp_valist(%struct._GimpStatusbar* %statusbar, i32 %severity, i8* %stock_id, i8* %format, %struct.__va_list_tag* %args) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %severity.addr = alloca i32, align 4
  %stock_id.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %msg = alloca %struct._GimpStatusbarMsg*, align 8
  %message = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  store %struct._GimpStatusbarMsg* null, %struct._GimpStatusbarMsg** %msg, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_statusbar_push_temp_valist, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %severity.addr, align 4
  %cmp12 = icmp ule i32 %13, 1
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_statusbar_push_temp_valist, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load i8*, i8** %format.addr, align 8
  %cmp18 = icmp ne i8* %14, null
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.17
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_statusbar_push_temp_valist, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %15, i32 0, i32 7
  %16 = load i32, i32* %temp_timeout_id, align 4
  %tobool23 = icmp ne i32 %16, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.27

land.lhs.true.24:                                 ; preds = %do.end.22
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_severity = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %17, i32 0, i32 8
  %18 = load i32, i32* %temp_severity, align 4
  %19 = load i32, i32* %severity.addr, align 4
  %cmp25 = icmp ugt i32 %18, %19
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.24
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.24, %do.end.22
  %20 = load i8*, i8** %format.addr, align 8
  %21 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call28 = call i8* @gimp_statusbar_vprintf(i8* %20, %struct.__va_list_tag* %21)
  store i8* %call28, i8** %message, align 8
  %22 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id29 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %22, i32 0, i32 7
  %23 = load i32, i32* %temp_timeout_id29, align 4
  %tobool30 = icmp ne i32 %23, 0
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.27
  %24 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id32 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %24, i32 0, i32 7
  %25 = load i32, i32* %temp_timeout_id32, align 4
  %call33 = call i32 @g_source_remove(i32 %25)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.27
  %26 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %27 = bitcast %struct._GimpStatusbar* %26 to i8*
  %call35 = call i32 @g_timeout_add(i32 8000, i32 (i8*)* bitcast (i32 (%struct._GimpStatusbar*)* @gimp_statusbar_temp_timeout to i32 (i8*)*), i8* %27)
  %28 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id36 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %28, i32 0, i32 7
  store i32 %call35, i32* %temp_timeout_id36, align 4
  %29 = load i32, i32* %severity.addr, align 4
  %30 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_severity37 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %30, i32 0, i32 8
  store i32 %29, i32* %temp_severity37, align 4
  %31 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %31, i32 0, i32 2
  %32 = load %struct._GSList*, %struct._GSList** %messages, align 8
  %tobool38 = icmp ne %struct._GSList* %32, null
  br i1 %tobool38, label %if.then.39, label %if.end.53

if.then.39:                                       ; preds = %if.end.34
  %33 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages40 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %33, i32 0, i32 2
  %34 = load %struct._GSList*, %struct._GSList** %messages40, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data, align 8
  %36 = bitcast i8* %35 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %36, %struct._GimpStatusbarMsg** %msg, align 8
  %37 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %37, i32 0, i32 0
  %38 = load i32, i32* %context_id, align 4
  %39 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_context_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %39, i32 0, i32 6
  %40 = load i32, i32* %temp_context_id, align 4
  %cmp41 = icmp eq i32 %38, %40
  br i1 %cmp41, label %if.then.42, label %if.end.52

if.then.42:                                       ; preds = %if.then.39
  %41 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %41, i32 0, i32 2
  %42 = load i8*, i8** %text, align 8
  %43 = load i8*, i8** %message, align 8
  %call43 = call i32 @strcmp(i8* %42, i8* %43) #8
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  %44 = load i8*, i8** %message, align 8
  call void @g_free(i8* %44)
  br label %return

if.end.46:                                        ; preds = %if.then.42
  %45 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %stock_id47 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %45, i32 0, i32 1
  %46 = load i8*, i8** %stock_id47, align 8
  call void @g_free(i8* %46)
  %47 = load i8*, i8** %stock_id.addr, align 8
  %call48 = call noalias i8* @g_strdup(i8* %47)
  %48 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %stock_id49 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %48, i32 0, i32 1
  store i8* %call48, i8** %stock_id49, align 8
  %49 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text50 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %49, i32 0, i32 2
  %50 = load i8*, i8** %text50, align 8
  call void @g_free(i8* %50)
  %51 = load i8*, i8** %message, align 8
  %52 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text51 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %52, i32 0, i32 2
  store i8* %51, i8** %text51, align 8
  %53 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_update(%struct._GimpStatusbar* %53)
  br label %return

if.end.52:                                        ; preds = %if.then.39
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.34
  %call54 = call noalias i8* @g_slice_alloc(i64 24)
  %54 = bitcast i8* %call54 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %54, %struct._GimpStatusbarMsg** %msg, align 8
  %55 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_context_id55 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %55, i32 0, i32 6
  %56 = load i32, i32* %temp_context_id55, align 4
  %57 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id56 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %57, i32 0, i32 0
  store i32 %56, i32* %context_id56, align 4
  %58 = load i8*, i8** %stock_id.addr, align 8
  %call57 = call noalias i8* @g_strdup(i8* %58)
  %59 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %stock_id58 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %59, i32 0, i32 1
  store i8* %call57, i8** %stock_id58, align 8
  %60 = load i8*, i8** %message, align 8
  %61 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %text59 = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %61, i32 0, i32 2
  store i8* %60, i8** %text59, align 8
  %62 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages60 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %62, i32 0, i32 2
  %63 = load %struct._GSList*, %struct._GSList** %messages60, align 8
  %64 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %65 = bitcast %struct._GimpStatusbarMsg* %64 to i8*
  %call61 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %63, i8* %65)
  %66 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages62 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %66, i32 0, i32 2
  store %struct._GSList* %call61, %struct._GSList** %messages62, align 8
  %67 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_update(%struct._GimpStatusbar* %67)
  br label %return

return:                                           ; preds = %if.end.53, %if.end.46, %if.then.45, %if.then.26, %if.else.20, %if.else.14, %if.else.9
  ret void
}

declare i32 @g_source_remove(i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_statusbar_temp_timeout(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_pop_temp(%struct._GimpStatusbar* %0)
  %1 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %1, i32 0, i32 7
  store i32 0, i32* %temp_timeout_id, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_pop_temp(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %msg = alloca %struct._GimpStatusbarMsg*, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_statusbar_pop_temp, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.27

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %13, i32 0, i32 7
  %14 = load i32, i32* %temp_timeout_id, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id13 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %15, i32 0, i32 7
  %16 = load i32, i32* %temp_timeout_id13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_timeout_id15 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %17, i32 0, i32 7
  store i32 0, i32* %temp_timeout_id15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %18, i32 0, i32 2
  %19 = load %struct._GSList*, %struct._GSList** %messages, align 8
  %tobool17 = icmp ne %struct._GSList* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %if.end.16
  %20 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages20 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %20, i32 0, i32 2
  %21 = load %struct._GSList*, %struct._GSList** %messages20, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0
  %22 = load i8*, i8** %data, align 8
  %23 = bitcast i8* %22 to %struct._GimpStatusbarMsg*
  store %struct._GimpStatusbarMsg* %23, %struct._GimpStatusbarMsg** %msg, align 8
  %24 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %context_id = getelementptr inbounds %struct._GimpStatusbarMsg, %struct._GimpStatusbarMsg* %24, i32 0, i32 0
  %25 = load i32, i32* %context_id, align 4
  %26 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %temp_context_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %26, i32 0, i32 6
  %27 = load i32, i32* %temp_context_id, align 4
  %cmp21 = icmp eq i32 %25, %27
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.then.18
  %28 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages23 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %28, i32 0, i32 2
  %29 = load %struct._GSList*, %struct._GSList** %messages23, align 8
  %30 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  %31 = bitcast %struct._GimpStatusbarMsg* %30 to i8*
  %call24 = call %struct._GSList* @g_slist_remove(%struct._GSList* %29, i8* %31)
  %32 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %messages25 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %32, i32 0, i32 2
  store %struct._GSList* %call24, %struct._GSList** %messages25, align 8
  %33 = load %struct._GimpStatusbarMsg*, %struct._GimpStatusbarMsg** %msg, align 8
  call void @gimp_statusbar_msg_free(%struct._GimpStatusbarMsg* %33)
  %34 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  call void @gimp_statusbar_update(%struct._GimpStatusbar* %34)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.9, %if.end.26, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_update_cursor(%struct._GimpStatusbar* %statusbar, i32 %precision, double %x, double %y) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %precision.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %buffer = alloca [256 x i8], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %store = alloca %struct._GimpUnitStore*, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i32 %precision, i32* %precision.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %1 = bitcast %struct._GimpStatusbar* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_statusbar_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_statusbar_update_cursor, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell11 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %13, i32 0, i32 1
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell11, align 8
  store %struct._GimpDisplayShell* %14, %struct._GimpDisplayShell** %shell, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call12 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %16)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool13 = icmp ne %struct._GimpImage* %17, null
  br i1 %tobool13, label %lor.lhs.false, label %if.then.26

lor.lhs.false:                                    ; preds = %do.end
  %18 = load double, double* %x.addr, align 8
  %cmp14 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp14, label %if.then.26, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %19 = load double, double* %y.addr, align 8
  %cmp16 = fcmp olt double %19, 0.000000e+00
  br i1 %cmp16, label %if.then.26, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.15
  %20 = load double, double* %x.addr, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_get_width(%struct._GimpImage* %21)
  %conv = sitofp i32 %call18 to double
  %cmp19 = fcmp oge double %20, %conv
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.17
  %22 = load double, double* %y.addr, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call22 = call i32 @gimp_image_get_height(%struct._GimpImage* %23)
  %conv23 = sitofp i32 %call22 to double
  %cmp24 = fcmp oge double %22, %conv23
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.17, %lor.lhs.false.15, %lor.lhs.false, %do.end
  %24 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %24, i32 0, i32 12
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %25, i32 0)
  br label %if.end.29

if.else.27:                                       ; preds = %lor.lhs.false.21
  %26 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label28 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %26, i32 0, i32 12
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label28, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %27, i32 1)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.26
  %28 = load i32, i32* %precision.addr, align 4
  switch i32 %28, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.34
    i32 2, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %if.end.29
  %29 = load double, double* %x.addr, align 8
  %conv30 = fptosi double %29 to i32
  %conv31 = sitofp i32 %conv30 to double
  store double %conv31, double* %x.addr, align 8
  %30 = load double, double* %y.addr, align 8
  %conv32 = fptosi double %30 to i32
  %conv33 = sitofp i32 %conv32 to double
  store double %conv33, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.29
  %31 = load double, double* %x.addr, align 8
  %call35 = call double @rint(double %31) #7
  store double %call35, double* %x.addr, align 8
  %32 = load double, double* %y.addr, align 8
  %call36 = call double @rint(double %32) #7
  store double %call36, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.29
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %sw.bb.37, %sw.bb.34, %sw.bb
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 10
  %34 = load i32, i32* %unit, align 4
  %cmp38 = icmp eq i32 %34, 0
  br i1 %cmp38, label %if.then.40, label %if.else.55

if.then.40:                                       ; preds = %sw.epilog
  %35 = load i32, i32* %precision.addr, align 4
  %cmp41 = icmp eq i32 %35, 2
  br i1 %cmp41, label %if.then.43, label %if.else.46

if.then.43:                                       ; preds = %if.then.40
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %36 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str_f = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %36, i32 0, i32 10
  %arraydecay44 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str_f, i32 0, i32 0
  %37 = load double, double* %x.addr, align 8
  %38 = load double, double* %y.addr, align 8
  %call45 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 256, i8* %arraydecay44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), double %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), double %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.54

if.else.46:                                       ; preds = %if.then.40
  %arraydecay47 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %39 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %39, i32 0, i32 9
  %arraydecay48 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str, i32 0, i32 0
  %40 = load double, double* %x.addr, align 8
  %call49 = call double @rint(double %40) #7
  %conv50 = fptosi double %call49 to i32
  %41 = load double, double* %y.addr, align 8
  %call51 = call double @rint(double %41) #7
  %conv52 = fptosi double %call51 to i32
  %call53 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay47, i64 256, i8* %arraydecay48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i32 %conv50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %conv52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.46, %if.then.43
  br label %if.end.68

if.else.55:                                       ; preds = %sw.epilog
  %42 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %42, i32 0, i32 13
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_combo_box_get_type() #7
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call58)
  %45 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkComboBox*
  %call60 = call %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox* %45)
  store %struct._GtkTreeModel* %call60, %struct._GtkTreeModel** %model, align 8
  %46 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %47 = bitcast %struct._GtkTreeModel* %46 to %struct._GTypeInstance*
  %call61 = call i64 @gimp_unit_store_get_type() #7
  %call62 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call61)
  %48 = bitcast %struct._GTypeInstance* %call62 to %struct._GimpUnitStore*
  store %struct._GimpUnitStore* %48, %struct._GimpUnitStore** %store, align 8
  %49 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store, align 8
  %50 = load double, double* %x.addr, align 8
  %51 = load double, double* %y.addr, align 8
  call void (%struct._GimpUnitStore*, double, ...) @gimp_unit_store_set_pixel_values(%struct._GimpUnitStore* %49, double %50, double %51)
  %52 = load %struct._GimpUnitStore*, %struct._GimpUnitStore** %store, align 8
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %unit63 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 10
  %54 = load i32, i32* %unit63, align 4
  call void (%struct._GimpUnitStore*, i32, double*, ...) @gimp_unit_store_get_values(%struct._GimpUnitStore* %52, i32 %54, double* %x.addr, double* %y.addr)
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  %55 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_format_str65 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %55, i32 0, i32 9
  %arraydecay66 = getelementptr inbounds [32 x i8], [32 x i8]* %cursor_format_str65, i32 0, i32 0
  %56 = load double, double* %x.addr, align 8
  %57 = load double, double* %y.addr, align 8
  %call67 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay64, i64 256, i8* %arraydecay66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), double %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), double %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.55, %if.end.54
  %58 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label69 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %58, i32 0, i32 12
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label69, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call70 = call i64 @gtk_label_get_type() #7
  %call71 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call70)
  %61 = bitcast %struct._GTypeInstance* %call71 to %struct._GtkLabel*
  %arraydecay72 = getelementptr inbounds [256 x i8], [256 x i8]* %buffer, i32 0, i32 0
  call void @gtk_label_set_text(%struct._GtkLabel* %61, i8* %arraydecay72)
  br label %return

return:                                           ; preds = %if.end.68, %if.else.9
  ret void
}

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare %struct._GtkTreeModel* @gtk_combo_box_get_model(%struct._GtkComboBox*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_store_get_type() #2

declare void @gimp_unit_store_set_pixel_values(%struct._GimpUnitStore*, double, ...) #1

declare void @gimp_unit_store_get_values(%struct._GimpUnitStore*, i32, double*, ...) #1

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_statusbar_clear_cursor(%struct._GimpStatusbar* %statusbar) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 12
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_label_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0))
  %4 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label2 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %4, i32 0, i32 12
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label2, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %5, i32 1)
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_class_init(%struct._GimpStatusbarClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpStatusbarClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpStatusbarClass* %klass, %struct._GimpStatusbarClass** %klass.addr, align 8
  %0 = load %struct._GimpStatusbarClass*, %struct._GimpStatusbarClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpStatusbarClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_statusbar_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_statusbar_finalize, void (%struct._GObject*)** %finalize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %temp_timeout_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 7
  %4 = load i32, i32* %temp_timeout_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %temp_timeout_id2 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 7
  %6 = load i32, i32* %temp_timeout_id2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %temp_timeout_id4 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %7, i32 0, i32 7
  store i32 0, i32* %temp_timeout_id4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_statusbar_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %icon = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 5
  %4 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %icon2 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 5
  %6 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon2, align 8
  %7 = bitcast %struct._GdkPixbuf* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %icon3 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %8, i32 0, i32 5
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %icon3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %messages = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %9, i32 0, i32 2
  %10 = load %struct._GSList*, %struct._GSList** %messages, align 8
  call void @g_slist_free_full(%struct._GSList* %10, void (i8*)* bitcast (void (%struct._GimpStatusbarMsg*)* @gimp_statusbar_msg_free to void (i8*)*))
  %11 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %messages4 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %11, i32 0, i32 2
  store %struct._GSList* null, %struct._GSList** %messages4, align 8
  %12 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %context_ids = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %12, i32 0, i32 3
  %13 = load %struct._GHashTable*, %struct._GHashTable** %context_ids, align 8
  %tobool5 = icmp ne %struct._GHashTable* %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %14 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %context_ids7 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %14, i32 0, i32 3
  %15 = load %struct._GHashTable*, %struct._GHashTable** %context_ids7, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %15)
  %16 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %context_ids8 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %16, i32 0, i32 3
  store %struct._GHashTable* null, %struct._GHashTable** %context_ids8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %17 = load i8*, i8** @gimp_statusbar_parent_class, align 8
  %18 = bitcast i8* %17 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %18, i64 80)
  %19 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %19, i32 0, i32 6
  %20 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %20(%struct._GObject* %21)
  ret void
}

declare void @g_object_unref(i8*) #1

declare void @g_slist_free_full(%struct._GSList*, void (i8*)*) #1

declare void @g_hash_table_destroy(%struct._GHashTable*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_statusbar_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #3 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %bar = alloca %struct._GtkWidget*, align 8
  %tooltip = alloca i8*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 18
  %4 = load i32, i32* %progress_active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.25, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progressbar = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 16
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progressbar, align 8
  store %struct._GtkWidget* %6, %struct._GtkWidget** %bar, align 8
  %7 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_active2 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %7, i32 0, i32 18
  store i32 1, i32* %progress_active2, align 4
  %8 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_value = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %8, i32 0, i32 20
  store double 0.000000e+00, double* %progress_value, align 8
  %9 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %10 = load i8*, i8** %message.addr, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_push(%struct._GimpStatusbar* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_progress_bar_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %13, double 0.000000e+00)
  %14 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %cancel_button = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %14, i32 0, i32 17
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button, align 8
  %16 = load i32, i32* %cancelable.addr, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %15, i32 %16)
  %17 = load i32, i32* %cancelable.addr, align 4
  %tobool5 = icmp ne i32 %17, 0
  br i1 %tobool5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.then
  %18 = load i8*, i8** %message.addr, align 8
  %tobool7 = icmp ne i8* %18, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.6
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0)) #5
  %19 = load i8*, i8** %message.addr, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call9, i8* %19)
  store i8* %call10, i8** %tooltip, align 8
  %20 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %cancel_button11 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %20, i32 0, i32 17
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button11, align 8
  %22 = load i8*, i8** %tooltip, align 8
  call void @gimp_help_set_help_data_with_markup(%struct._GtkWidget* %21, i8* %22, i8* null)
  %23 = load i8*, i8** %tooltip, align 8
  call void @g_free(i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.6
  %24 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %cancel_button12 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %24, i32 0, i32 17
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button12, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %25)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %26 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progressbar14 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %26, i32 0, i32 16
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %progressbar14, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %27)
  %28 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %28, i32 0, i32 15
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %29)
  %30 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %31 = bitcast %struct._GimpStatusbar* %30 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_container_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call15)
  %32 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkContainer*
  call void @gtk_container_resize_children(%struct._GtkContainer* %32)
  %33 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %34 = bitcast %struct._GimpStatusbar* %33 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_widget_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call17)
  %35 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWidget*
  %call19 = call i32 @gtk_widget_get_visible(%struct._GtkWidget* %35)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.24, label %if.then.21

if.then.21:                                       ; preds = %if.end.13
  %36 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %37 = bitcast %struct._GimpStatusbar* %36 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_widget_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call22)
  %38 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %39 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_shown = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %39, i32 0, i32 19
  store i32 1, i32* %progress_shown, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.13
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gimp_widget_flush_expose(%struct._GtkWidget* %40)
  %41 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  call void @gimp_statusbar_override_window_title(%struct._GimpStatusbar* %41)
  %42 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpProgress* %42, %struct._GimpProgress** %retval
  br label %return

if.end.25:                                        ; preds = %entry
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.end.24
  %43 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %43
}

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_progress_end(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %bar = alloca %struct._GtkWidget*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 18
  %4 = load i32, i32* %progress_active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progressbar = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 16
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progressbar, align 8
  store %struct._GtkWidget* %6, %struct._GtkWidget** %bar, align 8
  %7 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_shown = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %7, i32 0, i32 19
  %8 = load i32, i32* %progress_shown, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %10 = bitcast %struct._GimpStatusbar* %9 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call4)
  %11 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  call void @gtk_widget_hide(%struct._GtkWidget* %11)
  %12 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_shown6 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %12, i32 0, i32 19
  store i32 0, i32* %progress_shown6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_active7 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %13, i32 0, i32 18
  store i32 0, i32* %progress_active7, align 4
  %14 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_value = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %14, i32 0, i32 20
  store double 0.000000e+00, double* %progress_value, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %15)
  %16 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %16, i32 0, i32 15
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %17)
  %18 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  call void @gimp_statusbar_pop(%struct._GimpStatusbar* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_progress_bar_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call8)
  %21 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %21, double 0.000000e+00)
  %22 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %cancel_button = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %22, i32 0, i32 17
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %23, i32 0)
  %24 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %cancel_button10 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %24, i32 0, i32 17
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button10, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %25)
  %26 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  call void @gimp_statusbar_restore_window_title(%struct._GimpStatusbar* %26)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_statusbar_progress_is_active(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 18
  %4 = load i32, i32* %progress_active, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %bar = alloca %struct._GtkWidget*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 18
  %4 = load i32, i32* %progress_active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progressbar = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 16
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progressbar, align 8
  store %struct._GtkWidget* %6, %struct._GtkWidget** %bar, align 8
  %7 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %8 = load i8*, i8** %message.addr, align 8
  call void (%struct._GimpStatusbar*, i8*, i8*, i8*, ...) @gimp_statusbar_replace(%struct._GimpStatusbar* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %8)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gimp_widget_flush_expose(%struct._GtkWidget* %9)
  %10 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  call void @gimp_statusbar_override_window_title(%struct._GimpStatusbar* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %bar = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 18
  %4 = load i32, i32* %progress_active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progressbar = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 16
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progressbar, align 8
  store %struct._GtkWidget* %6, %struct._GtkWidget** %bar, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %7, %struct._GdkRectangle* %allocation)
  %8 = load double, double* %percentage.addr, align 8
  %9 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_value = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %9, i32 0, i32 20
  store double %8, double* %progress_value, align 8
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %10 = load i32, i32* %width, align 4
  %conv = sitofp i32 %10 to double
  %11 = load double, double* %percentage.addr, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_progress_bar_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call2)
  %14 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkProgressBar*
  %call4 = call double @gtk_progress_bar_get_fraction(%struct._GtkProgressBar* %14)
  %sub = fsub double %11, %call4
  %mul = fmul double %conv, %sub
  %call5 = call double @fabs(double %mul) #7
  %cmp = fcmp ogt double %call5, 1.000000e+00
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_progress_bar_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkProgressBar*
  %18 = load double, double* %percentage.addr, align 8
  call void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar* %17, double %18)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gimp_widget_flush_expose(%struct._GtkWidget* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_statusbar_progress_get_value(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 18
  %4 = load i32, i32* %progress_active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_value = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 20
  %6 = load double, double* %progress_value, align 8
  store double %6, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load double, double* %retval
  ret double %7
}

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_progress_pulse(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %bar = alloca %struct._GtkWidget*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 18
  %4 = load i32, i32* %progress_active, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %progressbar = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 16
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %progressbar, align 8
  store %struct._GtkWidget* %6, %struct._GtkWidget** %bar, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_progress_bar_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkProgressBar*
  call void @gtk_progress_bar_pulse(%struct._GtkProgressBar* %9)
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %bar, align 8
  call void @gimp_widget_flush_expose(%struct._GtkWidget* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_statusbar_progress_message(%struct._GimpProgress* %progress, %struct._Gimp* %gimp, i32 %severity, i8* %domain, i8* %message) #3 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %statusbar = alloca %struct._GimpStatusbar*, align 8
  %layout = alloca %struct._PangoLayout*, align 8
  %stock_id = alloca i8*, align 8
  %handle_msg = alloca i32, align 4
  %label_allocation = alloca %struct._GdkRectangle, align 4
  %width = alloca i32, align 4
  %pixbuf = alloca %struct._GdkPixbuf*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_statusbar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpStatusbar*
  store %struct._GimpStatusbar* %2, %struct._GimpStatusbar** %statusbar, align 8
  store i32 0, i32* %handle_msg, align 4
  %3 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %temp_timeout_id = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %3, i32 0, i32 7
  %4 = load i32, i32* %temp_timeout_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %temp_severity = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %5, i32 0, i32 8
  %6 = load i32, i32* %temp_severity, align 4
  %7 = load i32, i32* %severity.addr, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %8, i32 0, i32 15
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %10 = load i8*, i8** %message.addr, align 8
  %call2 = call %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget* %9, i8* %10)
  store %struct._PangoLayout* %call2, %struct._PangoLayout** %layout, align 8
  %11 = load i32, i32* %severity.addr, align 4
  %call3 = call i8* @gimp_get_message_stock_id(i32 %11)
  store i8* %call3, i8** %stock_id, align 8
  %12 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %call4 = call i32 @pango_layout_get_line_count(%struct._PangoLayout* %12)
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %if.then.6, label %if.end.21

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %label7 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %13, i32 0, i32 15
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label7, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %14, %struct._GdkRectangle* %label_allocation)
  %15 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %15, i32* %width, i32* null)
  %16 = load i32, i32* %width, align 4
  %width8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %label_allocation, i32 0, i32 2
  %17 = load i32, i32* %width8, align 4
  %cmp9 = icmp slt i32 %16, %17
  br i1 %cmp9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.then.6
  %18 = load i8*, i8** %stock_id, align 8
  %tobool11 = icmp ne i8* %18, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  %19 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %label13 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %19, i32 0, i32 15
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %label13, align 8
  %21 = load i8*, i8** %stock_id, align 8
  %call14 = call %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget* %20, i8* %21, i32 1, i8* null)
  store %struct._GdkPixbuf* %call14, %struct._GdkPixbuf** %pixbuf, align 8
  %22 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %call15 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %22)
  %add = add nsw i32 2, %call15
  %23 = load i32, i32* %width, align 4
  %add16 = add nsw i32 %23, %add
  store i32 %add16, i32* %width, align 4
  %24 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf, align 8
  %25 = bitcast %struct._GdkPixbuf* %24 to i8*
  call void @g_object_unref(i8* %25)
  %26 = load i32, i32* %width, align 4
  %width17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %label_allocation, i32 0, i32 2
  %27 = load i32, i32* %width17, align 4
  %cmp18 = icmp slt i32 %26, %27
  %conv = zext i1 %cmp18 to i32
  store i32 %conv, i32* %handle_msg, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.then.10
  store i32 1, i32* %handle_msg, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.6
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  %28 = load %struct._PangoLayout*, %struct._PangoLayout** %layout, align 8
  %29 = bitcast %struct._PangoLayout* %28 to i8*
  call void @g_object_unref(i8* %29)
  %30 = load i32, i32* %handle_msg, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %31 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar, align 8
  %32 = load i32, i32* %severity.addr, align 4
  %33 = load i8*, i8** %stock_id, align 8
  %34 = load i8*, i8** %message.addr, align 8
  call void (%struct._GimpStatusbar*, i32, i8*, i8*, ...) @gimp_statusbar_push_temp(%struct._GimpStatusbar* %31, i32 %32, i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* %34)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.21
  %35 = load i32, i32* %handle_msg, align 4
  store i32 %35, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @gtk_progress_bar_set_fraction(%struct._GtkProgressBar*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_progress_bar_get_type() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare void @gimp_help_set_help_data_with_markup(%struct._GtkWidget*, i8*, i8*) #1

declare void @gtk_container_resize_children(%struct._GtkContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gimp_widget_flush_expose(%struct._GtkWidget*) #1

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare double @gtk_progress_bar_get_fraction(%struct._GtkProgressBar*) #1

declare void @gtk_progress_bar_pulse(%struct._GtkProgressBar*) #1

declare %struct._PangoLayout* @gtk_widget_create_pango_layout(%struct._GtkWidget*, i8*) #1

declare i8* @gimp_get_message_stock_id(i32) #1

declare i32 @pango_layout_get_line_count(%struct._PangoLayout*) #1

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #1

declare %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget*, i8*, i32, i8*) #1

declare i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf*) #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #1

declare i32 @g_str_hash(i8*) #1

declare i32 @g_str_equal(i8*, i8*) #1

declare %struct._GtkWidget* @gtk_statusbar_get_message_area(%struct._GtkStatusbar*) #1

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare %struct._GList* @gtk_container_get_children(%struct._GtkContainer*) #1

declare i8* @g_object_ref(i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gtk_container_remove(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_hbox_size_request(%struct._GtkWidget* %widget, %struct._GtkRequisition* %requisition, %struct._GimpStatusbar* %statusbar) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %requisition.addr = alloca %struct._GtkRequisition*, align 8
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %child_requisition = alloca %struct._GtkRequisition, align 4
  %width = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GtkRequisition* %requisition, %struct._GtkRequisition** %requisition.addr, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i32 0, i32* %width, align 4
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cursor_label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 12
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %cursor_label, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %1, %struct._GtkRequisition* %child_requisition)
  %width1 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %2 = load i32, i32* %width1, align 4
  %3 = load i32, i32* %width, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %width, align 4
  %4 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4
  %height2 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %6 = load i32, i32* %height2, align 4
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height3 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %7, i32 0, i32 1
  %8 = load i32, i32* %height3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %height4 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %9 = load i32, i32* %height4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  %10 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height5 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %10, i32 0, i32 1
  store i32 %cond, i32* %height5, align 4
  %11 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %unit_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %11, i32 0, i32 13
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %unit_combo, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %12, %struct._GtkRequisition* %child_requisition)
  %width6 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %13 = load i32, i32* %width6, align 4
  %14 = load i32, i32* %width, align 4
  %add7 = add nsw i32 %14, %13
  store i32 %add7, i32* %width, align 4
  %15 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height8 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %15, i32 0, i32 1
  %16 = load i32, i32* %height8, align 4
  %height9 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %17 = load i32, i32* %height9, align 4
  %cmp10 = icmp sgt i32 %16, %17
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %cond.end
  %18 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height12 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %18, i32 0, i32 1
  %19 = load i32, i32* %height12, align 4
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.end
  %height14 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %20 = load i32, i32* %height14, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.11
  %cond16 = phi i32 [ %19, %cond.true.11 ], [ %20, %cond.false.13 ]
  %21 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height17 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %21, i32 0, i32 1
  store i32 %cond16, i32* %height17, align 4
  %22 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %scale_combo = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %22, i32 0, i32 14
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %scale_combo, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %23, %struct._GtkRequisition* %child_requisition)
  %width18 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 0
  %24 = load i32, i32* %width18, align 4
  %25 = load i32, i32* %width, align 4
  %add19 = add nsw i32 %25, %24
  store i32 %add19, i32* %width, align 4
  %26 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height20 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %26, i32 0, i32 1
  %27 = load i32, i32* %height20, align 4
  %height21 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %28 = load i32, i32* %height21, align 4
  %cmp22 = icmp sgt i32 %27, %28
  br i1 %cmp22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.end.15
  %29 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height24 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %29, i32 0, i32 1
  %30 = load i32, i32* %height24, align 4
  br label %cond.end.27

cond.false.25:                                    ; preds = %cond.end.15
  %height26 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %31 = load i32, i32* %height26, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.23
  %cond28 = phi i32 [ %30, %cond.true.23 ], [ %31, %cond.false.25 ]
  %32 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height29 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %32, i32 0, i32 1
  store i32 %cond28, i32* %height29, align 4
  %33 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progressbar = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %33, i32 0, i32 16
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %progressbar, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %34, %struct._GtkRequisition* %child_requisition)
  %35 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height30 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %35, i32 0, i32 1
  %36 = load i32, i32* %height30, align 4
  %height31 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %37 = load i32, i32* %height31, align 4
  %cmp32 = icmp sgt i32 %36, %37
  br i1 %cmp32, label %cond.true.33, label %cond.false.35

cond.true.33:                                     ; preds = %cond.end.27
  %38 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height34 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %38, i32 0, i32 1
  %39 = load i32, i32* %height34, align 4
  br label %cond.end.37

cond.false.35:                                    ; preds = %cond.end.27
  %height36 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %40 = load i32, i32* %height36, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.33
  %cond38 = phi i32 [ %39, %cond.true.33 ], [ %40, %cond.false.35 ]
  %41 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height39 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %41, i32 0, i32 1
  store i32 %cond38, i32* %height39, align 4
  %42 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %cancel_button = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %42, i32 0, i32 17
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %cancel_button, align 8
  call void @gtk_widget_size_request(%struct._GtkWidget* %43, %struct._GtkRequisition* %child_requisition)
  %44 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height40 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %44, i32 0, i32 1
  %45 = load i32, i32* %height40, align 4
  %height41 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %46 = load i32, i32* %height41, align 4
  %cmp42 = icmp sgt i32 %45, %46
  br i1 %cmp42, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.end.37
  %47 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height44 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %47, i32 0, i32 1
  %48 = load i32, i32* %height44, align 4
  br label %cond.end.47

cond.false.45:                                    ; preds = %cond.end.37
  %height46 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %child_requisition, i32 0, i32 1
  %49 = load i32, i32* %height46, align 4
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.43
  %cond48 = phi i32 [ %48, %cond.true.43 ], [ %49, %cond.false.45 ]
  %50 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %height49 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %50, i32 0, i32 1
  store i32 %cond48, i32* %height49, align 4
  %51 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width50 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %51, i32 0, i32 0
  %52 = load i32, i32* %width50, align 4
  %53 = load i32, i32* %width, align 4
  %add51 = add nsw i32 %53, 32
  %cmp52 = icmp sgt i32 %52, %add51
  br i1 %cmp52, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %cond.end.47
  %54 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width54 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %54, i32 0, i32 0
  %55 = load i32, i32* %width54, align 4
  br label %cond.end.57

cond.false.55:                                    ; preds = %cond.end.47
  %56 = load i32, i32* %width, align 4
  %add56 = add nsw i32 %56, 32
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.53
  %cond58 = phi i32 [ %55, %cond.true.53 ], [ %add56, %cond.false.55 ]
  %57 = load %struct._GtkRequisition*, %struct._GtkRequisition** %requisition.addr, align 8
  %width59 = getelementptr inbounds %struct._GtkRequisition, %struct._GtkRequisition* %57, i32 0, i32 0
  store i32 %cond58, i32* %width59, align 4
  ret void
}

declare %struct._GtkWidget* @gtk_label_new(i8*) #1

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #2

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GimpUnitStore* @gimp_unit_store_new(i32) #1

declare %struct._GtkWidget* @gimp_unit_combo_box_new_with_model(%struct._GimpUnitStore*) #1

declare void @gtk_widget_set_can_focus(%struct._GtkWidget*, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_unit_changed(%struct._GimpUnitComboBox* %combo, %struct._GimpStatusbar* %statusbar) #3 {
entry:
  %combo.addr = alloca %struct._GimpUnitComboBox*, align 8
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpUnitComboBox* %combo, %struct._GimpUnitComboBox** %combo.addr, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %2 = load %struct._GimpUnitComboBox*, %struct._GimpUnitComboBox** %combo.addr, align 8
  %call = call i32 @gimp_unit_combo_box_get_active(%struct._GimpUnitComboBox* %2)
  call void @gimp_display_shell_set_unit(%struct._GimpDisplayShell* %1, i32 %call)
  ret void
}

declare %struct._GtkWidget* @gimp_scale_combo_box_new() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_scale_changed(%struct._GimpScaleComboBox* %combo, %struct._GimpStatusbar* %statusbar) #3 {
entry:
  %combo.addr = alloca %struct._GimpScaleComboBox*, align 8
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpScaleComboBox* %combo, %struct._GimpScaleComboBox** %combo.addr, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %2 = load %struct._GimpScaleComboBox*, %struct._GimpScaleComboBox** %combo.addr, align 8
  %call = call double @gimp_scale_combo_box_get_scale(%struct._GimpScaleComboBox* %2)
  call void @gimp_display_shell_scale(%struct._GimpDisplayShell* %1, i32 6, double %call, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_scale_activated(%struct._GimpScaleComboBox* %combo, %struct._GimpStatusbar* %statusbar) #3 {
entry:
  %combo.addr = alloca %struct._GimpScaleComboBox*, align 8
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  store %struct._GimpScaleComboBox* %combo, %struct._GimpScaleComboBox** %combo.addr, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %shell = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %1, i32 0, i32 33
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_statusbar_label_expose(%struct._GtkWidget* %widget, %struct._GdkEventExpose* %event, %struct._GimpStatusbar* %statusbar) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventExpose*, align 8
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %cr = alloca %struct._cairo*, align 8
  %rect = alloca %struct._PangoRectangle, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventExpose* %event, %struct._GdkEventExpose** %event.addr, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %icon = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 5
  %1 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon, align 8
  %tobool = icmp ne %struct._GdkPixbuf* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %2, i32 0, i32 1
  %3 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call = call %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable* %3)
  store %struct._cairo* %call, %struct._cairo** %cr, align 8
  %4 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %5 = load %struct._GdkEventExpose*, %struct._GdkEventExpose** %event.addr, align 8
  %region = getelementptr inbounds %struct._GdkEventExpose, %struct._GdkEventExpose* %5, i32 0, i32 4
  %6 = load %struct._GdkRegion*, %struct._GdkRegion** %region, align 8
  call void @gdk_cairo_region(%struct._cairo* %4, %struct._GdkRegion* %6)
  %7 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_clip(%struct._cairo* %7)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_label_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call1)
  %10 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkLabel*
  call void @gtk_label_get_layout_offsets(%struct._GtkLabel* %10, i32* %x, i32* %y)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_label_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call3)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkLabel*
  %call5 = call %struct._PangoLayout* @gtk_label_get_layout(%struct._GtkLabel* %13)
  call void @pango_layout_index_to_pos(%struct._PangoLayout* %call5, i32 0, %struct._PangoRectangle* %rect)
  %x6 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 0
  %14 = load i32, i32* %x6, align 4
  %add = add nsw i32 %14, 512
  %shr = ashr i32 %add, 10
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 2
  %15 = load i32, i32* %width, align 4
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %width7 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 2
  %16 = load i32, i32* %width7, align 4
  %add8 = add nsw i32 %16, 512
  %shr9 = ashr i32 %add8, 10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr9, %cond.true ], [ 0, %cond.false ]
  %add10 = add nsw i32 %shr, %cond
  %17 = load i32, i32* %x, align 4
  %add11 = add nsw i32 %17, %add10
  store i32 %add11, i32* %x, align 4
  %y12 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  %18 = load i32, i32* %y12, align 4
  %add13 = add nsw i32 %18, 512
  %shr14 = ashr i32 %add13, 10
  %19 = load i32, i32* %y, align 4
  %add15 = add nsw i32 %19, %shr14
  store i32 %add15, i32* %y, align 4
  %20 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %21 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %icon16 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %21, i32 0, i32 5
  %22 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon16, align 8
  %23 = load i32, i32* %x, align 4
  %conv = sitofp i32 %23 to double
  %24 = load i32, i32* %y, align 4
  %conv17 = sitofp i32 %24 to double
  call void @gdk_cairo_set_source_pixbuf(%struct._cairo* %20, %struct._GdkPixbuf* %22, double %conv, double %conv17)
  %25 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_paint(%struct._cairo* %25)
  %26 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %26)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  ret i32 0
}

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_button_set_relief(%struct._GtkButton*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_progress_canceled(%struct._GtkWidget* %button, %struct._GimpStatusbar* %statusbar) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 18
  %1 = load i32, i32* %progress_active, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %3 = bitcast %struct._GimpStatusbar* %2 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgress*
  call void @gimp_progress_cancel(%struct._GimpProgress* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_widget_size_request(%struct._GtkWidget*, %struct._GtkRequisition*) #1

declare void @gimp_display_shell_set_unit(%struct._GimpDisplayShell*, i32) #1

declare i32 @gimp_unit_combo_box_get_active(%struct._GimpUnitComboBox*) #1

declare void @gimp_display_shell_scale(%struct._GimpDisplayShell*, i32, double, i32) #1

declare double @gimp_scale_combo_box_get_scale(%struct._GimpScaleComboBox*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare %struct._cairo* @gdk_cairo_create(%struct._GdkDrawable*) #1

declare void @gdk_cairo_region(%struct._cairo*, %struct._GdkRegion*) #1

declare void @cairo_clip(%struct._cairo*) #1

declare void @gtk_label_get_layout_offsets(%struct._GtkLabel*, i32*, i32*) #1

declare void @pango_layout_index_to_pos(%struct._PangoLayout*, i32, %struct._PangoRectangle*) #1

declare %struct._PangoLayout* @gtk_label_get_layout(%struct._GtkLabel*) #1

declare void @gdk_cairo_set_source_pixbuf(%struct._cairo*, %struct._GdkPixbuf*, double, double) #1

declare void @cairo_paint(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @gimp_progress_cancel(%struct._GimpProgress*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_statusbar_set_text(%struct._GimpStatusbar* %statusbar, i8* %stock_id, i8* %text) #3 {
entry:
  %statusbar.addr = alloca %struct._GimpStatusbar*, align 8
  %stock_id.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %attrs = alloca %struct._PangoAttrList*, align 8
  %attr = alloca %struct._PangoAttribute*, align 8
  %rect = alloca %struct._PangoRectangle, align 4
  %tmp = alloca i8*, align 8
  store %struct._GimpStatusbar* %statusbar, %struct._GimpStatusbar** %statusbar.addr, align 8
  store i8* %stock_id, i8** %stock_id.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  %0 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progress_active = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %0, i32 0, i32 18
  %1 = load i32, i32* %progress_active, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %progressbar = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %2, i32 0, i32 16
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %progressbar, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call = call i64 @gtk_progress_bar_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkProgressBar*
  %6 = load i8*, i8** %text.addr, align 8
  call void @gtk_progress_bar_set_text(%struct._GtkProgressBar* %5, i8* %6)
  br label %if.end.34

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %icon = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %7, i32 0, i32 5
  %8 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon, align 8
  %tobool2 = icmp ne %struct._GdkPixbuf* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %9 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %icon4 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %9, i32 0, i32 5
  %10 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon4, align 8
  %11 = bitcast %struct._GdkPixbuf* %10 to i8*
  call void @g_object_unref(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %12 = load i8*, i8** %stock_id.addr, align 8
  %tobool5 = icmp ne i8* %12, null
  br i1 %tobool5, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %13, i32 0, i32 15
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %label, align 8
  %15 = load i8*, i8** %stock_id.addr, align 8
  %call7 = call %struct._GdkPixbuf* @gtk_widget_render_icon(%struct._GtkWidget* %14, i8* %15, i32 1, i8* null)
  %16 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %icon8 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %16, i32 0, i32 5
  store %struct._GdkPixbuf* %call7, %struct._GdkPixbuf** %icon8, align 8
  br label %if.end.11

if.else.9:                                        ; preds = %if.end
  %17 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %icon10 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %17, i32 0, i32 5
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %icon10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.6
  %18 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %icon12 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %18, i32 0, i32 5
  %19 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon12, align 8
  %tobool13 = icmp ne %struct._GdkPixbuf* %19, null
  br i1 %tobool13, label %if.then.14, label %if.else.26

if.then.14:                                       ; preds = %if.end.11
  %20 = load i8*, i8** %text.addr, align 8
  %call15 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* %20, i8* null)
  store i8* %call15, i8** %tmp, align 8
  %21 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label16 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %21, i32 0, i32 15
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %label16, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_label_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkLabel*
  %25 = load i8*, i8** %tmp, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %24, i8* %25)
  %26 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %26)
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 0
  store i32 0, i32* %x, align 4
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 1
  store i32 0, i32* %y, align 4
  %27 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %icon19 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %27, i32 0, i32 5
  %28 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %icon19, align 8
  %call20 = call i32 @gdk_pixbuf_get_width(%struct._GdkPixbuf* %28)
  %add = add nsw i32 %call20, 2
  %mul = mul nsw i32 1024, %add
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 2
  store i32 %mul, i32* %width, align 4
  %height = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %rect, i32 0, i32 3
  store i32 0, i32* %height, align 4
  %call21 = call %struct._PangoAttrList* @pango_attr_list_new()
  store %struct._PangoAttrList* %call21, %struct._PangoAttrList** %attrs, align 8
  %call22 = call %struct._PangoAttribute* @pango_attr_shape_new(%struct._PangoRectangle* %rect, %struct._PangoRectangle* %rect)
  store %struct._PangoAttribute* %call22, %struct._PangoAttribute** %attr, align 8
  %29 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %start_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %29, i32 0, i32 1
  store i32 0, i32* %start_index, align 4
  %30 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  %end_index = getelementptr inbounds %struct._PangoAttribute, %struct._PangoAttribute* %30, i32 0, i32 2
  store i32 1, i32* %end_index, align 4
  %31 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  %32 = load %struct._PangoAttribute*, %struct._PangoAttribute** %attr, align 8
  call void @pango_attr_list_insert(%struct._PangoAttrList* %31, %struct._PangoAttribute* %32)
  %33 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label23 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %33, i32 0, i32 15
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %label23, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_label_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkLabel*
  %37 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @gtk_label_set_attributes(%struct._GtkLabel* %36, %struct._PangoAttrList* %37)
  %38 = load %struct._PangoAttrList*, %struct._PangoAttrList** %attrs, align 8
  call void @pango_attr_list_unref(%struct._PangoAttrList* %38)
  br label %if.end.33

if.else.26:                                       ; preds = %if.end.11
  %39 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label27 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %39, i32 0, i32 15
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %label27, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_label_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call28)
  %42 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkLabel*
  %43 = load i8*, i8** %text.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %42, i8* %43)
  %44 = load %struct._GimpStatusbar*, %struct._GimpStatusbar** %statusbar.addr, align 8
  %label30 = getelementptr inbounds %struct._GimpStatusbar, %struct._GimpStatusbar* %44, i32 0, i32 15
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %label30, align 8
  %46 = bitcast %struct._GtkWidget* %45 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_label_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call31)
  %47 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkLabel*
  call void @gtk_label_set_attributes(%struct._GtkLabel* %47, %struct._PangoAttrList* null)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.26, %if.then.14
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  ret void
}

declare void @gtk_progress_bar_set_text(%struct._GtkProgressBar*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare %struct._PangoAttrList* @pango_attr_list_new() #1

declare %struct._PangoAttribute* @pango_attr_shape_new(%struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare void @pango_attr_list_insert(%struct._PangoAttrList*, %struct._PangoAttribute*) #1

declare void @gtk_label_set_attributes(%struct._GtkLabel*, %struct._PangoAttrList*) #1

declare void @pango_attr_list_unref(%struct._PangoAttrList*) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_scale_combo_box_set_scale(%struct._GimpScaleComboBox*, double) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_scale_combo_box_get_type() #2

declare double @gimp_zoom_model_get_factor(%struct._GimpZoomModel*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare void @gimp_unit_store_set_resolutions(%struct._GimpUnitStore*, double, ...) #1

declare void @gimp_unit_combo_box_set_active(%struct._GimpUnitComboBox*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_unit_combo_box_get_type() #2

declare i32 @gimp_unit_get_digits(i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #6

declare i8* @gtk_label_get_text(%struct._GtkLabel*) #1

declare void @pango_layout_set_text(%struct._PangoLayout*, i8*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

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
