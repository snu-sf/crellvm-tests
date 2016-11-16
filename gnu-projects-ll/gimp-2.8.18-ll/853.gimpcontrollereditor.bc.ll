; ModuleID = './app/widgets/gimpcontrollereditor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpControllerEditorClass = type { %struct._GtkBoxClass }
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
%struct._GimpControllerEditor = type { %struct._GtkBox, %struct._GimpControllerInfo*, %struct._GimpContext*, %struct._GtkTreeSelection*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkTreeSelection* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpControllerInfo = type { %struct._GimpViewable, i32, i32, %struct._GimpController*, %struct._GHashTable*, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpController = type { %struct._GObject, i8*, i8* }
%struct._GHashTable = type opaque
%union._GimpControllerEvent = type { %struct._GimpControllerEventValue }
%struct._GimpControllerEventValue = type { i32, %struct._GimpController*, i32, %struct._GValue }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
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
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreePath = type opaque
%struct._GtkOrientable = type opaque
%struct._GimpControllerClass = type { %struct._GObjectClass, i8*, i8*, i8*, i32 (%struct._GimpController*)*, i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)*, i32 (%struct._GimpController*, %union._GimpControllerEvent*)*, i8*, void ()*, void ()*, void ()* }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpIntStore = type { %struct._GtkListStore, %struct._GtkTreeIter* }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpActionEditor = type { %struct._GtkBox, %struct._GtkWidget* }
%struct._GimpControllerEventAny = type { i32, %struct._GimpController*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_controller_editor_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpControllerEditor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_controller_editor_new = private unnamed_addr constant [27 x i8] c"gimp_controller_editor_new\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_CONTROLLER_INFO (info)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"controller-info\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@gimp_controller_editor_parent_class = internal global i8* null, align 8
@GimpControllerEditor_private_offset = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"gimpcontrollereditor.c\00", align 1
@__func__.gimp_controller_editor_constructed = private unnamed_addr constant [35 x i8] c"gimp_controller_editor_constructed\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"GIMP_IS_CONTROLLER_INFO (editor->info)\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"debug-events\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"_Dump events from this controller\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"_Enable this controller\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Name:\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"State:\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@g_param_spec_types = external global i64*, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"row-activated\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"<Image>\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Event\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"_Grab event\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"Select the next event arriving from the controller\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"gtk-edit\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@__func__.gimp_controller_string_view_new = private unnamed_addr constant [32 x i8] c"gimp_controller_string_view_new\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"G_IS_PARAM_SPEC_STRING (pspec)\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"%s-values\00", align 1
@__func__.gimp_controller_int_view_new = private unnamed_addr constant [29 x i8] c"gimp_controller_int_view_new\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"G_IS_PARAM_SPEC_INT (pspec)\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Remove the action assigned to '%s'\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Assign an action to '%s'\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Select Action for Event '%s'\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Select Controller Event Action\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"gimp-controller-action-dialog\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"gimp-prefs-input-controllers\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_controller_editor_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_controller_editor_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_controller_editor_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_controller_editor_class_intern_init to void (i8*, i8*)*), i32 192, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpControllerEditor*)* @gimp_controller_editor_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_controller_editor_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_controller_editor_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_controller_editor_parent_class, align 8
  %1 = load i32, i32* @GimpControllerEditor_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpControllerEditor_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpControllerEditorClass*
  call void @gimp_controller_editor_class_init(%struct._GimpControllerEditorClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_init(%struct._GimpControllerEditor* %editor) #3 {
entry:
  %editor.addr = alloca %struct._GimpControllerEditor*, align 8
  store %struct._GimpControllerEditor* %editor, %struct._GimpControllerEditor** %editor.addr, align 8
  %0 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpControllerEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %4 = bitcast %struct._GimpControllerEditor* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_box_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkBox*
  call void @gtk_box_set_spacing(%struct._GtkBox* %5, i32 12)
  %6 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %info = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %6, i32 0, i32 1
  store %struct._GimpControllerInfo* null, %struct._GimpControllerInfo** %info, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_controller_editor_new(%struct._GimpControllerInfo* %info, %struct._GimpContext* %context) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpControllerInfo* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_controller_info_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_controller_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
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
  %call16 = call i64 @gimp_context_get_type() #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_controller_editor_new, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call i64 @gimp_controller_editor_get_type() #8
  %26 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %27 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call40 = call i8* (i64, i8*, ...) @g_object_new(i64 %call39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct._GimpControllerInfo* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct._GimpContext* %27, i8* null)
  %28 = bitcast i8* %call40 to %struct._GtkWidget*
  store %struct._GtkWidget* %28, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %29
}

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_info_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_class_init(%struct._GimpControllerEditorClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpControllerEditorClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  store %struct._GimpControllerEditorClass* %klass, %struct._GimpControllerEditorClass** %klass.addr, align 8
  %0 = load %struct._GimpControllerEditorClass*, %struct._GimpControllerEditorClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpControllerEditorClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpControllerEditorClass*, %struct._GimpControllerEditorClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpControllerEditorClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_controller_editor_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_controller_editor_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_controller_editor_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_controller_editor_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %10 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %10, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gimp_controller_editor_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_controller_info_get_type() #8
  %call4 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call3, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call4)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call i64 @gimp_context_get_type() #8
  %call6 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i64 %call5, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call6)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpControllerEditor*, align 8
  %info = alloca %struct._GimpControllerInfo*, align 8
  %controller = alloca %struct._GimpController*, align 8
  %controller_class = alloca %struct._GimpControllerClass*, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %store = alloca %struct._GtkListStore*, align 8
  %frame = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %table = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %tv = alloca %struct._GtkWidget*, align 8
  %sw = alloca %struct._GtkWidget*, align 8
  %entry2 = alloca %struct._GtkWidget*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %n_property_specs = alloca i32, align 4
  %n_events = alloca i32, align 4
  %row = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst81 = alloca %struct._GTypeInstance*, align 8
  %__t83 = alloca i64, align 8
  %__r86 = alloca i32, align 4
  %tmp101 = alloca i32, align 4
  %__inst112 = alloca %struct._GTypeInstance*, align 8
  %__t114 = alloca i64, align 8
  %__r117 = alloca i32, align 4
  %tmp132 = alloca i32, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %event_name = alloca i8*, align 8
  %event_blurb = alloca i8*, align 8
  %event_action = alloca i8*, align 8
  %stock_id = alloca i8*, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerEditor*
  store %struct._GimpControllerEditor* %2, %struct._GimpControllerEditor** %editor, align 8
  %3 = load i8*, i8** @gimp_controller_editor_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_controller_editor_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed5 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  %10 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed5, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %10(%struct._GObject* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %info6 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info6, align 8
  %14 = bitcast %struct._GimpControllerInfo* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call7 = call i64 @gimp_controller_info_get_type() #8
  store i64 %call7, i64* %__t, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool8 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool10 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %21 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %20, %21
  br i1 %cmp, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %land.lhs.true, %if.else
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %23 = load i64, i64* %__t, align 8
  %call14 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #9
  store i32 %call14, i32* %__r, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %24 = load i32, i32* %__r, align 4
  store i32 %24, i32* %tmp
  %25 = load i32, i32* %tmp
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.16
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.16
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_controller_editor_constructed, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0)) #10
  unreachable

if.end.20:                                        ; preds = %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %26 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %info21 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %26, i32 0, i32 1
  %27 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info21, align 8
  store %struct._GimpControllerInfo* %27, %struct._GimpControllerInfo** %info, align 8
  %28 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %controller22 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %28, i32 0, i32 3
  %29 = load %struct._GimpController*, %struct._GimpController** %controller22, align 8
  store %struct._GimpController* %29, %struct._GimpController** %controller, align 8
  %30 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %31 = bitcast %struct._GimpController* %30 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %33 = bitcast %struct._GTypeClass* %32 to %struct._GimpControllerClass*
  store %struct._GimpControllerClass* %33, %struct._GimpControllerClass** %controller_class, align 8
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)) #7
  %call25 = call %struct._GtkWidget* @gimp_frame_new(i8* %call24)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %frame, align 8
  %34 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %35 = bitcast %struct._GimpControllerEditor* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_box_get_type() #8
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkBox*
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %36, %struct._GtkWidget* %37, i32 0, i32 0, i32 0)
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %38)
  %call28 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 4)
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %vbox, align 8
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_container_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call29)
  %41 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkContainer*
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %41, %struct._GtkWidget* %42)
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %43)
  %44 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %45 = bitcast %struct._GimpControllerInfo* %44 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %call32 = call %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 -1)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %entry2, align 8
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_box_get_type() #8
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkBox*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %49, %struct._GtkWidget* %50, i32 0, i32 0, i32 0)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %entry2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %53 = bitcast %struct._GimpControllerInfo* %52 to %struct._GTypeInstance*
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 80)
  %54 = bitcast %struct._GTypeInstance* %call35 to %struct._GObject*
  %call36 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0)) #7
  %call37 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* %call36)
  store %struct._GtkWidget* %call37, %struct._GtkWidget** %button, align 8
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #8
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call38)
  %57 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %57, %struct._GtkWidget* %58, i32 0, i32 0, i32 0)
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %59)
  %60 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %61 = bitcast %struct._GimpControllerInfo* %60 to %struct._GTypeInstance*
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 80)
  %62 = bitcast %struct._GTypeInstance* %call40 to %struct._GObject*
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0)) #7
  %call42 = call %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* %call41)
  store %struct._GtkWidget* %call42, %struct._GtkWidget** %button, align 8
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %64 = bitcast %struct._GtkWidget* %63 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_box_get_type() #8
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call43)
  %65 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkBox*
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %65, %struct._GtkWidget* %66, i32 0, i32 0, i32 0)
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %67)
  %68 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %68, i32 0, i32 1
  %69 = load i8*, i8** %name, align 8
  %call45 = call %struct._GtkWidget* @gimp_frame_new(i8* %69)
  store %struct._GtkWidget* %call45, %struct._GtkWidget** %frame, align 8
  %70 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %71 = bitcast %struct._GimpControllerEditor* %70 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_box_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call46)
  %72 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkBox*
  %73 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %72, %struct._GtkWidget* %73, i32 1, i32 1, i32 0)
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %74)
  %call48 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 4)
  store %struct._GtkWidget* %call48, %struct._GtkWidget** %vbox, align 8
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %frame, align 8
  %76 = bitcast %struct._GtkWidget* %75 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_container_get_type() #8
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 %call49)
  %77 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkContainer*
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_container_add(%struct._GtkContainer* %77, %struct._GtkWidget* %78)
  %79 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %79)
  %call51 = call %struct._GtkWidget* @gtk_table_new(i32 2, i32 2, i32 0)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %table, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_table_get_type() #8
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call52)
  %82 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %82, i32 6)
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_table_get_type() #8
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call54)
  %85 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %85, i32 6)
  %86 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %87 = bitcast %struct._GtkWidget* %86 to %struct._GTypeInstance*
  %call56 = call i64 @gtk_box_get_type() #8
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %87, i64 %call56)
  %88 = bitcast %struct._GTypeInstance* %call57 to %struct._GtkBox*
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %88, %struct._GtkWidget* %89, i32 0, i32 0, i32 0)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %90)
  store i32 0, i32* %row, align 4
  %91 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %92 = bitcast %struct._GtkWidget* %91 to %struct._GTypeInstance*
  %call58 = call i64 @gtk_table_get_type() #8
  %call59 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %92, i64 %call58)
  %93 = bitcast %struct._GTypeInstance* %call59 to %struct._GtkTable*
  %94 = load i32, i32* %row, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %row, align 4
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #7
  %95 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %96 = bitcast %struct._GimpController* %95 to %struct._GTypeInstance*
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %96, i64 80)
  %97 = bitcast %struct._GTypeInstance* %call61 to %struct._GObject*
  %call62 = call %struct._GtkWidget* @gimp_prop_label_new(%struct._GObject* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  %call63 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %93, i32 0, i32 %94, i8* %call60, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %call62, i32 1, i32 1)
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %99 = bitcast %struct._GtkWidget* %98 to %struct._GTypeInstance*
  %call64 = call i64 @gtk_table_get_type() #8
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call64)
  %100 = bitcast %struct._GTypeInstance* %call65 to %struct._GtkTable*
  %101 = load i32, i32* %row, align 4
  %inc66 = add nsw i32 %101, 1
  store i32 %inc66, i32* %row, align 4
  %call67 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #7
  %102 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %103 = bitcast %struct._GimpController* %102 to %struct._GTypeInstance*
  %call68 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 80)
  %104 = bitcast %struct._GTypeInstance* %call68 to %struct._GObject*
  %call69 = call %struct._GtkWidget* @gimp_prop_label_new(%struct._GObject* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %call70 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %100, i32 0, i32 %101, i8* %call67, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %call69, i32 1, i32 1)
  %105 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %106 = bitcast %struct._GimpControllerClass* %105 to %struct._GTypeClass*
  %call71 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %106, i64 80)
  %107 = bitcast %struct._GTypeClass* %call71 to %struct._GObjectClass*
  %call72 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %107, i32* %n_property_specs)
  store %struct._GParamSpec** %call72, %struct._GParamSpec*** %property_specs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %108 = load i32, i32* %i, align 4
  %109 = load i32, i32* %n_property_specs, align 4
  %cmp73 = icmp ult i32 %108, %109
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %110 = load i32, i32* %i, align 4
  %idxprom = sext i32 %110 to i64
  %111 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %111, i64 %idxprom
  %112 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %112, %struct._GParamSpec** %pspec, align 8
  %113 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %113, i32 0, i32 4
  %114 = load i64, i64* %owner_type, align 8
  %call76 = call i64 @gimp_controller_get_type() #8
  %cmp77 = icmp eq i64 %114, %call76
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.body
  br label %for.inc

if.end.79:                                        ; preds = %for.body
  %115 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %116 = bitcast %struct._GParamSpec* %115 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %116, %struct._GTypeInstance** %__inst81, align 8
  %117 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx84 = getelementptr inbounds i64, i64* %117, i64 14
  %118 = load i64, i64* %arrayidx84, align 8
  store i64 %118, i64* %__t83, align 8
  %119 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %tobool87 = icmp ne %struct._GTypeInstance* %119, null
  br i1 %tobool87, label %if.else.89, label %if.then.88

if.then.88:                                       ; preds = %if.end.79
  store i32 0, i32* %__r86, align 4
  br label %if.end.100

if.else.89:                                       ; preds = %if.end.79
  %120 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %g_class90 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %120, i32 0, i32 0
  %121 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class90, align 8
  %tobool91 = icmp ne %struct._GTypeClass* %121, null
  br i1 %tobool91, label %land.lhs.true.92, label %if.else.97

land.lhs.true.92:                                 ; preds = %if.else.89
  %122 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %g_class93 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %122, i32 0, i32 0
  %123 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class93, align 8
  %g_type94 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %123, i32 0, i32 0
  %124 = load i64, i64* %g_type94, align 8
  %125 = load i64, i64* %__t83, align 8
  %cmp95 = icmp eq i64 %124, %125
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %land.lhs.true.92
  store i32 1, i32* %__r86, align 4
  br label %if.end.99

if.else.97:                                       ; preds = %land.lhs.true.92, %if.else.89
  %126 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %127 = load i64, i64* %__t83, align 8
  %call98 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %126, i64 %127) #9
  store i32 %call98, i32* %__r86, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.88
  %128 = load i32, i32* %__r86, align 4
  store i32 %128, i32* %tmp101
  %129 = load i32, i32* %tmp101
  %tobool102 = icmp ne i32 %129, 0
  br i1 %tobool102, label %if.then.103, label %if.else.110

if.then.103:                                      ; preds = %if.end.100
  %130 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %131 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call104 = call %struct._GtkWidget* @gimp_controller_string_view_new(%struct._GimpController* %130, %struct._GParamSpec* %131)
  store %struct._GtkWidget* %call104, %struct._GtkWidget** %widget, align 8
  %132 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %133 = bitcast %struct._GtkWidget* %132 to %struct._GTypeInstance*
  %call105 = call i64 @gtk_table_get_type() #8
  %call106 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %133, i64 %call105)
  %134 = bitcast %struct._GTypeInstance* %call106 to %struct._GtkTable*
  %135 = load i32, i32* %row, align 4
  %inc107 = add nsw i32 %135, 1
  store i32 %inc107, i32* %row, align 4
  %136 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call108 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %136)
  %137 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call109 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %134, i32 0, i32 %135, i8* %call108, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %137, i32 1, i32 0)
  br label %if.end.142

if.else.110:                                      ; preds = %if.end.100
  %138 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %139 = bitcast %struct._GParamSpec* %138 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %139, %struct._GTypeInstance** %__inst112, align 8
  %140 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx115 = getelementptr inbounds i64, i64* %140, i64 3
  %141 = load i64, i64* %arrayidx115, align 8
  store i64 %141, i64* %__t114, align 8
  %142 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %tobool118 = icmp ne %struct._GTypeInstance* %142, null
  br i1 %tobool118, label %if.else.120, label %if.then.119

if.then.119:                                      ; preds = %if.else.110
  store i32 0, i32* %__r117, align 4
  br label %if.end.131

if.else.120:                                      ; preds = %if.else.110
  %143 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class121 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %143, i32 0, i32 0
  %144 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class121, align 8
  %tobool122 = icmp ne %struct._GTypeClass* %144, null
  br i1 %tobool122, label %land.lhs.true.123, label %if.else.128

land.lhs.true.123:                                ; preds = %if.else.120
  %145 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %g_class124 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %145, i32 0, i32 0
  %146 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class124, align 8
  %g_type125 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %146, i32 0, i32 0
  %147 = load i64, i64* %g_type125, align 8
  %148 = load i64, i64* %__t114, align 8
  %cmp126 = icmp eq i64 %147, %148
  br i1 %cmp126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %land.lhs.true.123
  store i32 1, i32* %__r117, align 4
  br label %if.end.130

if.else.128:                                      ; preds = %land.lhs.true.123, %if.else.120
  %149 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst112, align 8
  %150 = load i64, i64* %__t114, align 8
  %call129 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %149, i64 %150) #9
  store i32 %call129, i32* %__r117, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.127
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.119
  %151 = load i32, i32* %__r117, align 4
  store i32 %151, i32* %tmp132
  %152 = load i32, i32* %tmp132
  %tobool133 = icmp ne i32 %152, 0
  br i1 %tobool133, label %if.then.134, label %if.end.141

if.then.134:                                      ; preds = %if.end.131
  %153 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %154 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call135 = call %struct._GtkWidget* @gimp_controller_int_view_new(%struct._GimpController* %153, %struct._GParamSpec* %154)
  store %struct._GtkWidget* %call135, %struct._GtkWidget** %widget, align 8
  %155 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  %156 = bitcast %struct._GtkWidget* %155 to %struct._GTypeInstance*
  %call136 = call i64 @gtk_table_get_type() #8
  %call137 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %156, i64 %call136)
  %157 = bitcast %struct._GTypeInstance* %call137 to %struct._GtkTable*
  %158 = load i32, i32* %row, align 4
  %inc138 = add nsw i32 %158, 1
  store i32 %inc138, i32* %row, align 4
  %159 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %call139 = call i8* @g_param_spec_get_nick(%struct._GParamSpec* %159)
  %160 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call140 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %157, i32 0, i32 %158, i8* %call139, float 0.000000e+00, float 5.000000e-01, %struct._GtkWidget* %160, i32 1, i32 1)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.134, %if.end.131
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.103
  br label %for.inc

for.inc:                                          ; preds = %if.end.142, %if.then.78
  %161 = load i32, i32* %i, align 4
  %inc143 = add nsw i32 %161, 1
  store i32 %inc143, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %162 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %163 = bitcast %struct._GParamSpec** %162 to i8*
  call void @g_free(i8* %163)
  %call144 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 4, i64 64, i64 64, i64 64, i64 64)
  store %struct._GtkListStore* %call144, %struct._GtkListStore** %store, align 8
  %164 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %165 = bitcast %struct._GtkListStore* %164 to %struct._GTypeInstance*
  %call145 = call i64 @gtk_tree_model_get_type() #8
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call145)
  %166 = bitcast %struct._GTypeInstance* %call146 to %struct._GtkTreeModel*
  %call147 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %166)
  store %struct._GtkWidget* %call147, %struct._GtkWidget** %tv, align 8
  %167 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %168 = bitcast %struct._GtkListStore* %167 to i8*
  call void @g_object_unref(i8* %168)
  %call148 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call148, %struct._GtkWidget** %sw, align 8
  %169 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %170 = bitcast %struct._GtkWidget* %169 to %struct._GTypeInstance*
  %call149 = call i64 @gtk_scrolled_window_get_type() #8
  %call150 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %170, i64 %call149)
  %171 = bitcast %struct._GTypeInstance* %call150 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %171, i32 1)
  %172 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %173 = bitcast %struct._GtkWidget* %172 to %struct._GTypeInstance*
  %call151 = call i64 @gtk_container_get_type() #8
  %call152 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %173, i64 %call151)
  %174 = bitcast %struct._GTypeInstance* %call152 to %struct._GtkContainer*
  %175 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_container_add(%struct._GtkContainer* %174, %struct._GtkWidget* %175)
  %176 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %176)
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %178 = bitcast %struct._GtkWidget* %177 to %struct._GTypeInstance*
  %call153 = call i64 @gtk_box_get_type() #8
  %call154 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %178, i64 %call153)
  %179 = bitcast %struct._GTypeInstance* %call154 to %struct._GtkBox*
  %180 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %179, %struct._GtkWidget* %180, i32 1, i32 1, i32 0)
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %181)
  %182 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %183 = bitcast %struct._GtkWidget* %182 to i8*
  %184 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %185 = bitcast %struct._GimpControllerEditor* %184 to i8*
  %call155 = call i64 @g_signal_connect_data(i8* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, %struct._GimpControllerEditor*)* @gimp_controller_editor_row_activated to void ()*), i8* %185, void (i8*, %struct._GClosure*)* null, i32 0)
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call156 = call i64 @gtk_tree_view_get_type() #8
  %call157 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call156)
  %188 = bitcast %struct._GTypeInstance* %call157 to %struct._GtkTreeView*
  %call158 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %188)
  %189 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %sel = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %189, i32 0, i32 3
  store %struct._GtkTreeSelection* %call158, %struct._GtkTreeSelection** %sel, align 8
  %190 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %sel159 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %190, i32 0, i32 3
  %191 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel159, align 8
  %192 = bitcast %struct._GtkTreeSelection* %191 to i8*
  %193 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %194 = bitcast %struct._GimpControllerEditor* %193 to i8*
  %call160 = call i64 @g_signal_connect_data(i8* %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpControllerEditor*)* @gimp_controller_editor_sel_changed to void ()*), i8* %194, void (i8*, %struct._GClosure*)* null, i32 0)
  %call161 = call %struct._GList* @gimp_ui_managers_from_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call161, i32 0, i32 0
  %195 = load i8*, i8** %data, align 8
  %196 = bitcast i8* %195 to %struct._GimpUIManager*
  store %struct._GimpUIManager* %196, %struct._GimpUIManager** %ui_manager, align 8
  %197 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %call162 = call i32 @gimp_controller_get_n_events(%struct._GimpController* %197)
  store i32 %call162, i32* %n_events, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.183, %for.end
  %198 = load i32, i32* %i, align 4
  %199 = load i32, i32* %n_events, align 4
  %cmp164 = icmp slt i32 %198, %199
  br i1 %cmp164, label %for.body.165, label %for.end.185

for.body.165:                                     ; preds = %for.cond.163
  store i8* null, i8** %stock_id, align 8
  %200 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %201 = load i32, i32* %i, align 4
  %call171 = call i8* @gimp_controller_get_event_name(%struct._GimpController* %200, i32 %201)
  store i8* %call171, i8** %event_name, align 8
  %202 = load %struct._GimpController*, %struct._GimpController** %controller, align 8
  %203 = load i32, i32* %i, align 4
  %call172 = call i8* @gimp_controller_get_event_blurb(%struct._GimpController* %202, i32 %203)
  store i8* %call172, i8** %event_blurb, align 8
  %204 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %mapping = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %204, i32 0, i32 4
  %205 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %206 = load i8*, i8** %event_name, align 8
  %call173 = call i8* @g_hash_table_lookup(%struct._GHashTable* %205, i8* %206)
  store i8* %call173, i8** %event_action, align 8
  %207 = load i8*, i8** %event_action, align 8
  %tobool174 = icmp ne i8* %207, null
  br i1 %tobool174, label %if.then.175, label %if.end.182

if.then.175:                                      ; preds = %for.body.165
  %208 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %209 = load i8*, i8** %event_action, align 8
  %call177 = call %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager* %208, i8* null, i8* %209)
  store %struct._GtkAction* %call177, %struct._GtkAction** %action, align 8
  %210 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool178 = icmp ne %struct._GtkAction* %210, null
  br i1 %tobool178, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %if.then.175
  %211 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call180 = call i8* @gtk_action_get_stock_id(%struct._GtkAction* %211)
  store i8* %call180, i8** %stock_id, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %if.then.175
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %for.body.165
  %212 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %212, %struct._GtkTreeIter* %iter)
  %213 = load %struct._GtkListStore*, %struct._GtkListStore** %store, align 8
  %214 = load i8*, i8** %event_name, align 8
  %215 = load i8*, i8** %event_blurb, align 8
  %216 = load i8*, i8** %stock_id, align 8
  %217 = load i8*, i8** %event_action, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %213, %struct._GtkTreeIter* %iter, i32 0, i8* %214, i32 1, i8* %215, i32 2, i8* %216, i32 3, i8* %217, i32 -1)
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.182
  %218 = load i32, i32* %i, align 4
  %inc184 = add nsw i32 %218, 1
  store i32 %inc184, i32* %i, align 4
  br label %for.cond.163

for.end.185:                                      ; preds = %for.cond.163
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %220 = bitcast %struct._GtkWidget* %219 to %struct._GTypeInstance*
  %call186 = call i64 @gtk_tree_view_get_type() #8
  %call187 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %220, i64 %call186)
  %221 = bitcast %struct._GTypeInstance* %call187 to %struct._GtkTreeView*
  %call188 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #7
  %call189 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %call190 = call i32 (%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView* %221, i32 0, i8* %call188, %struct._GtkCellRenderer* %call189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 1, i8* null)
  %call191 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call191, %struct._GtkTreeViewColumn** %column, align 8
  %222 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call192 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #7
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %222, i8* %call192)
  %223 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %224 = bitcast %struct._GtkWidget* %223 to %struct._GTypeInstance*
  %call193 = call i64 @gtk_tree_view_get_type() #8
  %call194 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %224, i64 %call193)
  %225 = bitcast %struct._GTypeInstance* %call194 to %struct._GtkTreeView*
  %226 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call195 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %225, %struct._GtkTreeViewColumn* %226)
  %call196 = call %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new()
  store %struct._GtkCellRenderer* %call196, %struct._GtkCellRenderer** %cell, align 8
  %227 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %228 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %227, %struct._GtkCellRenderer* %228, i32 0)
  %229 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %230 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %229, %struct._GtkCellRenderer* %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 2, i8* null)
  %call197 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call197, %struct._GtkCellRenderer** %cell, align 8
  %231 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %232 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %231, %struct._GtkCellRenderer* %232, i32 1)
  %233 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %234 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %233, %struct._GtkCellRenderer* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 3, i8* null)
  %call198 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call198, %struct._GtkWidget** %hbox, align 8
  %235 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %236 = bitcast %struct._GtkWidget* %235 to %struct._GTypeInstance*
  %call199 = call i64 @gtk_box_get_type() #8
  %call200 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %236, i64 %call199)
  %237 = bitcast %struct._GTypeInstance* %call200 to %struct._GtkBox*
  %238 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %237, %struct._GtkWidget* %238, i32 0, i32 0, i32 0)
  %239 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %239)
  %call201 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #7
  %call202 = call %struct._GtkWidget* @gtk_toggle_button_new_with_mnemonic(i8* %call201)
  %240 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %grab_button = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %240, i32 0, i32 4
  store %struct._GtkWidget* %call202, %struct._GtkWidget** %grab_button, align 8
  %241 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %242 = bitcast %struct._GtkWidget* %241 to %struct._GTypeInstance*
  %call203 = call i64 @gtk_box_get_type() #8
  %call204 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %242, i64 %call203)
  %243 = bitcast %struct._GTypeInstance* %call204 to %struct._GtkBox*
  %244 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %grab_button205 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %244, i32 0, i32 4
  %245 = load %struct._GtkWidget*, %struct._GtkWidget** %grab_button205, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %243, %struct._GtkWidget* %245, i32 1, i32 1, i32 0)
  %246 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %grab_button206 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %246, i32 0, i32 4
  %247 = load %struct._GtkWidget*, %struct._GtkWidget** %grab_button206, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %247)
  %248 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %grab_button207 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %248, i32 0, i32 4
  %249 = load %struct._GtkWidget*, %struct._GtkWidget** %grab_button207, align 8
  %250 = bitcast %struct._GtkWidget* %249 to i8*
  %251 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %252 = bitcast %struct._GimpControllerEditor* %251 to i8*
  %call208 = call i64 @g_signal_connect_data(i8* %250, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpControllerEditor*)* @gimp_controller_editor_grab_toggled to void ()*), i8* %252, void (i8*, %struct._GClosure*)* null, i32 0)
  %253 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %grab_button209 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %253, i32 0, i32 4
  %254 = load %struct._GtkWidget*, %struct._GtkWidget** %grab_button209, align 8
  %call210 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i32 0, i32 0)) #7
  call void @gimp_help_set_help_data(%struct._GtkWidget* %254, i8* %call210, i8* null)
  %call211 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0))
  %255 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %edit_button = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %255, i32 0, i32 5
  store %struct._GtkWidget* %call211, %struct._GtkWidget** %edit_button, align 8
  %256 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %257 = bitcast %struct._GtkWidget* %256 to %struct._GTypeInstance*
  %call212 = call i64 @gtk_box_get_type() #8
  %call213 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %257, i64 %call212)
  %258 = bitcast %struct._GTypeInstance* %call213 to %struct._GtkBox*
  %259 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %edit_button214 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %259, i32 0, i32 5
  %260 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button214, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %258, %struct._GtkWidget* %260, i32 1, i32 1, i32 0)
  %261 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %edit_button215 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %261, i32 0, i32 5
  %262 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button215, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %262)
  %263 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %edit_button216 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %263, i32 0, i32 5
  %264 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button216, align 8
  %265 = bitcast %struct._GtkWidget* %264 to i8*
  %266 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %267 = bitcast %struct._GimpControllerEditor* %266 to i8*
  %call217 = call i64 @g_signal_connect_data(i8* %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpControllerEditor*)* @gimp_controller_editor_edit_clicked to void ()*), i8* %267, void (i8*, %struct._GClosure*)* null, i32 0)
  %call218 = call %struct._GtkWidget* @gtk_button_new_from_stock(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0))
  %268 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %delete_button = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %268, i32 0, i32 6
  store %struct._GtkWidget* %call218, %struct._GtkWidget** %delete_button, align 8
  %269 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %270 = bitcast %struct._GtkWidget* %269 to %struct._GTypeInstance*
  %call219 = call i64 @gtk_box_get_type() #8
  %call220 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %270, i64 %call219)
  %271 = bitcast %struct._GTypeInstance* %call220 to %struct._GtkBox*
  %272 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %delete_button221 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %272, i32 0, i32 6
  %273 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button221, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %271, %struct._GtkWidget* %273, i32 1, i32 1, i32 0)
  %274 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %delete_button222 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %274, i32 0, i32 6
  %275 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button222, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %275)
  %276 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %delete_button223 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %276, i32 0, i32 6
  %277 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button223, align 8
  %278 = bitcast %struct._GtkWidget* %277 to i8*
  %279 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %280 = bitcast %struct._GimpControllerEditor* %279 to i8*
  %call224 = call i64 @g_signal_connect_data(i8* %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpControllerEditor*)* @gimp_controller_editor_delete_clicked to void ()*), i8* %280, void (i8*, %struct._GClosure*)* null, i32 0)
  %281 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %edit_button225 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %281, i32 0, i32 5
  %282 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button225, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %282, i32 0)
  %283 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %delete_button226 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %283, i32 0, i32 6
  %284 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button226, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %284, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpControllerEditor*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerEditor*
  store %struct._GimpControllerEditor* %2, %struct._GimpControllerEditor** %editor, align 8
  %3 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %info = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %tobool = icmp ne %struct._GimpControllerInfo* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %info2 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info2, align 8
  call void @gimp_controller_info_set_event_snooper(%struct._GimpControllerInfo* %6, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* null, i8* null)
  %7 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %info3 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info3, align 8
  %9 = bitcast %struct._GimpControllerInfo* %8 to i8*
  call void @g_object_unref(i8* %9)
  %10 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %info4 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %10, i32 0, i32 1
  store %struct._GimpControllerInfo* null, %struct._GimpControllerInfo** %info4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %11, i32 0, i32 2
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %tobool5 = icmp ne %struct._GimpContext* %12, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %context7 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %13, i32 0, i32 2
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context7, align 8
  %15 = bitcast %struct._GimpContext* %14 to i8*
  call void @g_object_unref(i8* %15)
  %16 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %context8 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %16, i32 0, i32 2
  store %struct._GimpContext* null, %struct._GimpContext** %context8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %17 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %edit_dialog = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %17, i32 0, i32 7
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog, align 8
  %tobool10 = icmp ne %struct._GtkWidget* %18, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %19 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %edit_dialog12 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %19, i32 0, i32 7
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog12, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %21 = load i8*, i8** @gimp_controller_editor_parent_class, align 8
  %22 = bitcast i8* %21 to %struct._GTypeClass*
  %call14 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %22, i64 80)
  %23 = bitcast %struct._GTypeClass* %call14 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %23, i32 0, i32 6
  %24 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %24(%struct._GObject* %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpControllerEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerEditor*
  store %struct._GimpControllerEditor* %2, %struct._GimpControllerEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._GimpControllerInfo*
  %6 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %info = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %6, i32 0, i32 1
  store %struct._GimpControllerInfo* %5, %struct._GimpControllerInfo** %info, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._GimpContext*
  %9 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %9, i32 0, i32 2
  store %struct._GimpContext* %8, %struct._GimpContext** %context, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %10, %struct._GObject** %_glib__object, align 8
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %11, %struct._GParamSpec** %_glib__pspec, align 8
  %12 = load i32, i32* %property_id.addr, align 4
  store i32 %12, i32* %_glib__property_id, align 4
  %13 = load i32, i32* %_glib__property_id, align 4
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %17 = bitcast %struct._GParamSpec* %16 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %18, i32 0, i32 0
  %19 = load i64, i64* %g_type, align 8
  %call5 = call i8* @g_type_name(i64 %19)
  %20 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %21 = bitcast %struct._GObject* %20 to %struct._GTypeInstance*
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type7 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type7, align 8
  %call8 = call i8* @g_type_name(i64 %23)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 437, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %13, i8* %15, i8* %call5, i8* %call8)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %editor = alloca %struct._GimpControllerEditor*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerEditor*
  store %struct._GimpControllerEditor* %2, %struct._GimpControllerEditor** %editor, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %info = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %7 = bitcast %struct._GimpControllerInfo* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %9 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %context = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %9, i32 0, i32 2
  %10 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %11 = bitcast %struct._GimpContext* %10 to i8*
  call void @g_value_set_object(%struct._GValue* %8, i8* %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %12, %struct._GObject** %_glib__object, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = load i32, i32* %property_id.addr, align 4
  store i32 %14, i32* %_glib__property_id, align 4
  %15 = load i32, i32* %_glib__property_id, align 4
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 1
  %17 = load i8*, i8** %name, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = bitcast %struct._GParamSpec* %18 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %21)
  %22 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %23 = bitcast %struct._GObject* %22 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %25)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 461, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %15, i8* %17, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_unmap(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %editor = alloca %struct._GimpControllerEditor*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerEditor*
  store %struct._GimpControllerEditor* %2, %struct._GimpControllerEditor** %editor, align 8
  %3 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %edit_dialog = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %3, i32 0, i32 7
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %edit_dialog2 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %5, i32 0, i32 7
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #8
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %8, i32 -6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_controller_editor_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call5 = call i64 @gtk_widget_get_type() #8
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GtkWidgetClass*
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %11, i32 0, i32 9
  %12 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unmap, align 8
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %12(%struct._GtkWidget* %13)
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare %struct._GtkWidget* @gimp_frame_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #6

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject*, i8*, i32) #1

declare %struct._GtkWidget* @gimp_prop_check_button_new(%struct._GObject*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #1

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #1

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #1

declare %struct._GtkWidget* @gimp_prop_label_new(%struct._GObject*, i8*) #1

declare %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass*, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_controller_string_view_new(%struct._GimpController* %controller, %struct._GParamSpec* %pspec) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %model = alloca %struct._GtkTreeModel*, align 8
  %model_name = alloca i8*, align 8
  %model_spec = alloca %struct._GParamSpec*, align 8
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %widget, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 14
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #9
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.end.5
  br label %if.end.9

if.else.8:                                        ; preds = %if.end.5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_controller_string_view_new, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 2
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 2
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then.11, label %if.else.57

if.then.11:                                       ; preds = %do.end
  store %struct._GtkTreeModel* null, %struct._GtkTreeModel** %model, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %call14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* %18)
  store i8* %call14, i8** %model_name, align 8
  %19 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %20 = bitcast %struct._GimpController* %19 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %22 = bitcast %struct._GTypeClass* %21 to %struct._GObjectClass*
  %23 = load i8*, i8** %model_name, align 8
  %call17 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %22, i8* %23)
  store %struct._GParamSpec* %call17, %struct._GParamSpec** %model_spec, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %model_spec, align 8
  %25 = bitcast %struct._GParamSpec* %24 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %25, %struct._GTypeInstance** %__inst19, align 8
  %26 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %26, i64 19
  %27 = load i64, i64* %arrayidx22, align 8
  store i64 %27, i64* %__t21, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.11
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %if.then.11
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type32, align 8
  %34 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %33, %34
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %36 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #9
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %37 = load i32, i32* %__r24, align 4
  store i32 %37, i32* %tmp39
  %38 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %38, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.46

land.lhs.true.41:                                 ; preds = %if.end.38
  %39 = load %struct._GParamSpec*, %struct._GParamSpec** %model_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %39, i32 0, i32 3
  %40 = load i64, i64* %value_type, align 8
  %call42 = call i64 @gtk_list_store_get_type() #8
  %call43 = call i32 @g_type_is_a(i64 %40, i64 %call42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.41
  %41 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %42 = bitcast %struct._GimpController* %41 to i8*
  %43 = load i8*, i8** %model_name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %42, i8* %43, %struct._GtkTreeModel** %model, i8* null)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.41, %if.end.38
  %44 = load i8*, i8** %model_name, align 8
  call void @g_free(i8* %44)
  %45 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool47 = icmp ne %struct._GtkTreeModel* %45, null
  br i1 %tobool47, label %if.then.48, label %if.else.52

if.then.48:                                       ; preds = %if.end.46
  %46 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %47 = bitcast %struct._GimpController* %46 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  %49 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name50 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %49, i32 0, i32 1
  %50 = load i8*, i8** %name50, align 8
  %51 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call51 = call %struct._GtkWidget* @gimp_prop_string_combo_box_new(%struct._GObject* %48, i8* %50, %struct._GtkTreeModel* %51, i32 0, i32 1)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %widget, align 8
  %52 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %53 = bitcast %struct._GtkTreeModel* %52 to i8*
  call void @g_object_unref(i8* %53)
  br label %if.end.56

if.else.52:                                       ; preds = %if.end.46
  %54 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %55 = bitcast %struct._GimpController* %54 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 80)
  %56 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  %57 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name54 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %57, i32 0, i32 1
  %58 = load i8*, i8** %name54, align 8
  %call55 = call %struct._GtkWidget* @gimp_prop_entry_new(%struct._GObject* %56, i8* %58, i32 -1)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %widget, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.52, %if.then.48
  br label %if.end.61

if.else.57:                                       ; preds = %do.end
  %59 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %60 = bitcast %struct._GimpController* %59 to %struct._GTypeInstance*
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 80)
  %61 = bitcast %struct._GTypeInstance* %call58 to %struct._GObject*
  %62 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name59 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %62, i32 0, i32 1
  %63 = load i8*, i8** %name59, align 8
  %call60 = call %struct._GtkWidget* @gimp_prop_label_new(%struct._GObject* %61, i8* %63)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %widget, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57, %if.end.56
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  store %struct._GtkWidget* %64, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.else.8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %65
}

declare i8* @g_param_spec_get_nick(%struct._GParamSpec*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_controller_int_view_new(%struct._GimpController* %controller, %struct._GParamSpec* %pspec) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %model = alloca %struct._GimpIntStore*, align 8
  %model_name = alloca i8*, align 8
  %model_spec = alloca %struct._GParamSpec*, align 8
  %__inst19 = alloca %struct._GTypeInstance*, align 8
  %__t21 = alloca i64, align 8
  %__r24 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %widget, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %2 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 3
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #9
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.end.5
  br label %if.end.9

if.else.8:                                        ; preds = %if.end.5
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_controller_int_view_new, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 2
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 2
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then.11, label %if.else.57

if.then.11:                                       ; preds = %do.end
  store %struct._GimpIntStore* null, %struct._GimpIntStore** %model, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %call14 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* %18)
  store i8* %call14, i8** %model_name, align 8
  %19 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %20 = bitcast %struct._GimpController* %19 to %struct._GTypeInstance*
  %g_class16 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class16, align 8
  %22 = bitcast %struct._GTypeClass* %21 to %struct._GObjectClass*
  %23 = load i8*, i8** %model_name, align 8
  %call17 = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %22, i8* %23)
  store %struct._GParamSpec* %call17, %struct._GParamSpec** %model_spec, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %model_spec, align 8
  %25 = bitcast %struct._GParamSpec* %24 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %25, %struct._GTypeInstance** %__inst19, align 8
  %26 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %26, i64 19
  %27 = load i64, i64* %arrayidx22, align 8
  store i64 %27, i64* %__t21, align 8
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %tobool25 = icmp ne %struct._GTypeInstance* %28, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.11
  store i32 0, i32* %__r24, align 4
  br label %if.end.38

if.else.27:                                       ; preds = %if.then.11
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %tobool29 = icmp ne %struct._GTypeClass* %30, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.35

land.lhs.true.30:                                 ; preds = %if.else.27
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %g_type32 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type32, align 8
  %34 = load i64, i64* %__t21, align 8
  %cmp33 = icmp eq i64 %33, %34
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %__r24, align 4
  br label %if.end.37

if.else.35:                                       ; preds = %land.lhs.true.30, %if.else.27
  %35 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst19, align 8
  %36 = load i64, i64* %__t21, align 8
  %call36 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %35, i64 %36) #9
  store i32 %call36, i32* %__r24, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.26
  %37 = load i32, i32* %__r24, align 4
  store i32 %37, i32* %tmp39
  %38 = load i32, i32* %tmp39
  %tobool40 = icmp ne i32 %38, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.46

land.lhs.true.41:                                 ; preds = %if.end.38
  %39 = load %struct._GParamSpec*, %struct._GParamSpec** %model_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %39, i32 0, i32 3
  %40 = load i64, i64* %value_type, align 8
  %call42 = call i64 @gimp_int_store_get_type() #8
  %call43 = call i32 @g_type_is_a(i64 %40, i64 %call42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.41
  %41 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %42 = bitcast %struct._GimpController* %41 to i8*
  %43 = load i8*, i8** %model_name, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %42, i8* %43, %struct._GimpIntStore** %model, i8* null)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.41, %if.end.38
  %44 = load i8*, i8** %model_name, align 8
  call void @g_free(i8* %44)
  %45 = load %struct._GimpIntStore*, %struct._GimpIntStore** %model, align 8
  %tobool47 = icmp ne %struct._GimpIntStore* %45, null
  br i1 %tobool47, label %if.then.48, label %if.else.52

if.then.48:                                       ; preds = %if.end.46
  %46 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %47 = bitcast %struct._GimpController* %46 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  %49 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name50 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %49, i32 0, i32 1
  %50 = load i8*, i8** %name50, align 8
  %51 = load %struct._GimpIntStore*, %struct._GimpIntStore** %model, align 8
  %call51 = call %struct._GtkWidget* @gimp_prop_int_combo_box_new(%struct._GObject* %48, i8* %50, %struct._GimpIntStore* %51)
  store %struct._GtkWidget* %call51, %struct._GtkWidget** %widget, align 8
  %52 = load %struct._GimpIntStore*, %struct._GimpIntStore** %model, align 8
  %53 = bitcast %struct._GimpIntStore* %52 to i8*
  call void @g_object_unref(i8* %53)
  br label %if.end.56

if.else.52:                                       ; preds = %if.end.46
  %54 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %55 = bitcast %struct._GimpController* %54 to %struct._GTypeInstance*
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 80)
  %56 = bitcast %struct._GTypeInstance* %call53 to %struct._GObject*
  %57 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name54 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %57, i32 0, i32 1
  %58 = load i8*, i8** %name54, align 8
  %call55 = call %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject* %56, i8* %58, double 1.000000e+00, double 8.000000e+00, i32 0)
  store %struct._GtkWidget* %call55, %struct._GtkWidget** %widget, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.52, %if.then.48
  br label %if.end.61

if.else.57:                                       ; preds = %do.end
  %59 = load %struct._GimpController*, %struct._GimpController** %controller.addr, align 8
  %60 = bitcast %struct._GimpController* %59 to %struct._GTypeInstance*
  %call58 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 80)
  %61 = bitcast %struct._GTypeInstance* %call58 to %struct._GObject*
  %62 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name59 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %62, i32 0, i32 1
  %63 = load i8*, i8** %name59, align 8
  %call60 = call %struct._GtkWidget* @gimp_prop_label_new(%struct._GObject* %61, i8* %63)
  store %struct._GtkWidget* %call60, %struct._GtkWidget** %widget, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.57, %if.end.56
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  store %struct._GtkWidget* %64, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.else.8
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %65
}

declare void @g_free(i8*) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_object_unref(i8*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_row_activated(%struct._GtkTreeView* %tv, %struct._GtkTreePath* %path, %struct._GtkTreeViewColumn* %column, %struct._GimpControllerEditor* %editor) #3 {
entry:
  %tv.addr = alloca %struct._GtkTreeView*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %editor.addr = alloca %struct._GimpControllerEditor*, align 8
  store %struct._GtkTreeView* %tv, %struct._GtkTreeView** %tv.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GimpControllerEditor* %editor, %struct._GimpControllerEditor** %editor.addr, align 8
  %0 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_button = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %0, i32 0, i32 5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  %call = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_button1 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %2, i32 0, i32 5
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button1, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_button_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkButton*
  call void @gtk_button_clicked(%struct._GtkButton* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_sel_changed(%struct._GtkTreeSelection* %sel, %struct._GimpControllerEditor* %editor) #3 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %editor.addr = alloca %struct._GimpControllerEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %edit_help = alloca i8*, align 8
  %delete_help = alloca i8*, align 8
  %edit_sensitive = alloca i32, align 4
  %delete_sensitive = alloca i32, align 4
  %event = alloca i8*, align 8
  %action = alloca i8*, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._GimpControllerEditor* %editor, %struct._GimpControllerEditor** %editor.addr, align 8
  store i8* null, i8** %edit_help, align 8
  store i8* null, i8** %delete_help, align 8
  store i32 0, i32* %edit_sensitive, align 4
  store i32 0, i32* %delete_sensitive, align 4
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  store i8* null, i8** %event, align 8
  store i8* null, i8** %action, align 8
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, i32 1, i8** %event, i32 3, i8** %action, i32 -1)
  %2 = load i8*, i8** %action, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %3 = load i8*, i8** %action, align 8
  call void @g_free(i8* %3)
  store i32 1, i32* %delete_sensitive, align 4
  %4 = load i8*, i8** %event, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0)) #7
  %5 = load i8*, i8** %event, align 8
  %call6 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call5, i8* %5)
  store i8* %call6, i8** %delete_help, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  store i32 1, i32* %edit_sensitive, align 4
  %6 = load i8*, i8** %event, align 8
  %tobool8 = icmp ne i8* %6, null
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0)) #7
  %7 = load i8*, i8** %event, align 8
  %call11 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call10, i8* %7)
  store i8* %call11, i8** %edit_help, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  %8 = load i8*, i8** %event, align 8
  call void @g_free(i8* %8)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %9 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_button = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %9, i32 0, i32 5
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  %11 = load i8*, i8** %edit_help, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %10, i8* %11, i8* null)
  %12 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_button14 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %12, i32 0, i32 5
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button14, align 8
  %14 = load i32, i32* %edit_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %13, i32 %14)
  %15 = load i8*, i8** %edit_help, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %delete_button = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %16, i32 0, i32 6
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button, align 8
  %18 = load i8*, i8** %delete_help, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %17, i8* %18, i8* null)
  %19 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %delete_button15 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %19, i32 0, i32 6
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %delete_button15, align 8
  %21 = load i32, i32* %delete_sensitive, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %20, i32 %21)
  %22 = load i8*, i8** %delete_help, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %info = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %23, i32 0, i32 1
  %24 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  call void @gimp_controller_info_set_event_snooper(%struct._GimpControllerInfo* %24, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* null, i8* null)
  ret void
}

declare %struct._GList* @gimp_ui_managers_from_name(i8*) #1

declare i32 @gimp_controller_get_n_events(%struct._GimpController*) #1

declare i8* @gimp_controller_get_event_name(%struct._GimpController*, i32) #1

declare i8* @gimp_controller_get_event_blurb(%struct._GimpController*, i32) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare %struct._GtkAction* @gimp_ui_manager_find_action(%struct._GimpUIManager*, i8*, i8*) #1

declare i8* @gtk_action_get_stock_id(%struct._GtkAction*) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare i32 @gtk_tree_view_insert_column_with_attributes(%struct._GtkTreeView*, i32, i8*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn*, i8*) #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new() #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #1

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_toggle_button_new_with_mnemonic(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_grab_toggled(%struct._GtkWidget* %button, %struct._GimpControllerEditor* %editor) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpControllerEditor*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpControllerEditor* %editor, %struct._GimpControllerEditor** %editor.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_toggle_button_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkToggleButton*
  %call2 = call i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %info = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %5 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %6 = bitcast %struct._GimpControllerEditor* %5 to i8*
  call void @gimp_controller_info_set_event_snooper(%struct._GimpControllerInfo* %4, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* @gimp_controller_editor_snooper, i8* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %info3 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info3, align 8
  call void @gimp_controller_info_set_event_snooper(%struct._GimpControllerInfo* %8, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* null, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

declare %struct._GtkWidget* @gtk_button_new_from_stock(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_edit_clicked(%struct._GtkWidget* %button, %struct._GimpControllerEditor* %editor) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpControllerEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %event_name = alloca i8*, align 8
  %event_blurb = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %title = alloca i8*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpControllerEditor* %editor, %struct._GimpControllerEditor** %editor.addr, align 8
  store i8* null, i8** %event_name, align 8
  store i8* null, i8** %event_blurb, align 8
  store i8* null, i8** %action_name, align 8
  %0 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %info = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  call void @gimp_controller_info_set_event_snooper(%struct._GimpControllerInfo* %1, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* null, i8* null)
  %2 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %sel = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %2, i32 0, i32 3
  %3 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %3, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, i32 0, i8** %event_name, i32 1, i8** %event_blurb, i32 3, i8** %action_name, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %event_name, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.49

if.then.2:                                        ; preds = %if.end
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i32 0, i32 0)) #7
  %6 = load i8*, i8** %event_blurb, align 8
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call3, i8* %6)
  store i8* %call4, i8** %title, align 8
  %7 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %info5 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %7, i32 0, i32 1
  %8 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info5, align 8
  %9 = bitcast %struct._GimpControllerInfo* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_viewable_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpViewable*
  %11 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %context = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %11, i32 0, i32 2
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0)) #7
  %13 = load i8*, i8** %title, align 8
  %14 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %15 = bitcast %struct._GimpControllerEditor* %14 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call9)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  %call11 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %16)
  %call12 = call %struct._GtkWidget* (%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) @gimp_viewable_dialog_new(%struct._GimpViewable* %10, %struct._GimpContext* %12, i8* %call8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* %13, %struct._GtkWidget* %call11, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 -5, i8* null)
  %17 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_dialog = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %17, i32 0, i32 7
  store %struct._GtkWidget* %call12, %struct._GtkWidget** %edit_dialog, align 8
  %18 = load i8*, i8** %title, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_dialog13 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %19, i32 0, i32 7
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog13, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_dialog_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %22, i32 -5, i32 -6, i32 -1)
  %23 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_dialog16 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %23, i32 0, i32 7
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog16, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %27 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_dialog18 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %27, i32 0, i32 7
  %28 = bitcast %struct._GtkWidget** %edit_dialog18 to i8*
  %29 = bitcast i8* %28 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %26, i8** %29)
  %call19 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %30 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_dialog20 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %30, i32 0, i32 7
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog20, align 8
  call void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory* %call19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0), %struct._GtkWidget* %31)
  %32 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_dialog21 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %32, i32 0, i32 7
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog21, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  %35 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %36 = bitcast %struct._GimpControllerEditor* %35 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpControllerEditor*)* @gimp_controller_editor_edit_response to void ()*), i8* %36, void (i8*, %struct._GClosure*)* null, i32 0)
  %call23 = call %struct._GList* @gimp_ui_managers_from_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call23, i32 0, i32 0
  %37 = load i8*, i8** %data, align 8
  %38 = bitcast i8* %37 to %struct._GimpUIManager*
  %39 = load i8*, i8** %action_name, align 8
  %call24 = call %struct._GtkWidget* @gimp_action_editor_new(%struct._GimpUIManager* %38, i8* %39, i32 0)
  store %struct._GtkWidget* %call24, %struct._GtkWidget** %view, align 8
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_container_get_type() #8
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call25)
  %42 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %42, i32 12)
  %43 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_dialog27 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %43, i32 0, i32 7
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog27, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_dialog_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call28)
  %46 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkDialog*
  %call30 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %46)
  %47 = bitcast %struct._GtkWidget* %call30 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_box_get_type() #8
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call31)
  %48 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkBox*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %48, %struct._GtkWidget* %49, i32 1, i32 1, i32 0)
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_action_editor_get_type() #8
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call33)
  %53 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpActionEditor*
  %view35 = getelementptr inbounds %struct._GimpActionEditor, %struct._GimpActionEditor* %53, i32 0, i32 1
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %view35, align 8
  %55 = bitcast %struct._GtkWidget* %54 to i8*
  %56 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %57 = bitcast %struct._GimpControllerEditor* %56 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, %struct._GimpControllerEditor*)* @gimp_controller_editor_edit_activated to void ()*), i8* %57, void (i8*, %struct._GClosure*)* null, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_action_editor_get_type() #8
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call37)
  %60 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpActionEditor*
  %view39 = getelementptr inbounds %struct._GimpActionEditor, %struct._GimpActionEditor* %60, i32 0, i32 1
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %view39, align 8
  %62 = bitcast %struct._GtkWidget* %61 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_tree_view_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call40)
  %63 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkTreeView*
  %call42 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %63)
  %64 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_sel = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %64, i32 0, i32 8
  store %struct._GtkTreeSelection* %call42, %struct._GtkTreeSelection** %edit_sel, align 8
  %65 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_sel43 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %65, i32 0, i32 8
  %66 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %edit_sel43, align 8
  %67 = bitcast %struct._GtkTreeSelection* %66 to %struct._GTypeInstance*
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 80)
  %68 = bitcast %struct._GTypeInstance* %call44 to %struct._GObject*
  %69 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_sel45 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %69, i32 0, i32 8
  %70 = bitcast %struct._GtkTreeSelection** %edit_sel45 to i8*
  %71 = bitcast i8* %70 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %68, i8** %71)
  %72 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %73 = bitcast %struct._GimpControllerEditor* %72 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_widget_get_type() #8
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call46)
  %74 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %74, i32 0)
  %75 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_dialog48 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %75, i32 0, i32 7
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog48, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %77 = load i8*, i8** %event_name, align 8
  call void @g_free(i8* %77)
  %78 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %78)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_delete_clicked(%struct._GtkWidget* %button, %struct._GimpControllerEditor* %editor) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %editor.addr = alloca %struct._GimpControllerEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %event_name = alloca i8*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpControllerEditor* %editor, %struct._GimpControllerEditor** %editor.addr, align 8
  store i8* null, i8** %event_name, align 8
  %0 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %info = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %0, i32 0, i32 1
  %1 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  call void @gimp_controller_info_set_event_snooper(%struct._GimpControllerInfo* %1, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)* null, i8* null)
  %2 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %sel = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %2, i32 0, i32 3
  %3 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %3, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %4, %struct._GtkTreeIter* %iter, i32 0, i8** %event_name, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %event_name, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %info3 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info3, align 8
  %mapping = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %7, i32 0, i32 4
  %8 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %9 = load i8*, i8** %event_name, align 8
  %call4 = call i32 @g_hash_table_remove(%struct._GHashTable* %8, i8* %9)
  %10 = load i8*, i8** %event_name, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %12 = bitcast %struct._GtkTreeModel* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_list_store_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkListStore*
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %13, %struct._GtkTreeIter* %iter, i32 2, i8* null, i32 3, i8* null, i32 -1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #1

declare i32 @g_type_is_a(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_list_store_get_type() #2

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GtkWidget* @gimp_prop_string_combo_box_new(%struct._GObject*, i8*, %struct._GtkTreeModel*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_int_store_get_type() #2

declare %struct._GtkWidget* @gimp_prop_int_combo_box_new(%struct._GObject*, i8*, %struct._GimpIntStore*) #1

declare %struct._GtkWidget* @gimp_prop_spin_button_new(%struct._GObject*, i8*, double, double, i32) #1

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #1

declare void @gtk_button_clicked(%struct._GtkButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare void @gimp_controller_info_set_event_snooper(%struct._GimpControllerInfo*, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)*, i8*) #1

declare i32 @gtk_toggle_button_get_active(%struct._GtkToggleButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_controller_editor_snooper(%struct._GimpControllerInfo* %info, %struct._GimpController* %controller, %union._GimpControllerEvent* %event, i8* %user_data) #3 {
entry:
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  %controller.addr = alloca %struct._GimpController*, align 8
  %event.addr = alloca %union._GimpControllerEvent*, align 8
  %user_data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpControllerEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %event_name = alloca i8*, align 8
  %list_name = alloca i8*, align 8
  %view = alloca %struct._GtkTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  store %struct._GimpController* %controller, %struct._GimpController** %controller.addr, align 8
  store %union._GimpControllerEvent* %event, %union._GimpControllerEvent** %event.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_editor_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerEditor*
  store %struct._GimpControllerEditor* %2, %struct._GimpControllerEditor** %editor, align 8
  %3 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %sel = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %3, i32 0, i32 3
  %4 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call2 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %4, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %5 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %controller3 = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %5, i32 0, i32 3
  %6 = load %struct._GimpController*, %struct._GimpController** %controller3, align 8
  %7 = load %union._GimpControllerEvent*, %union._GimpControllerEvent** %event.addr, align 8
  %any = bitcast %union._GimpControllerEvent* %7 to %struct._GimpControllerEventAny*
  %event_id = getelementptr inbounds %struct._GimpControllerEventAny, %struct._GimpControllerEventAny* %any, i32 0, i32 2
  %8 = load i32, i32* %event_id, align 4
  %call4 = call i8* @gimp_controller_get_event_name(%struct._GimpController* %6, i32 %8)
  store i8* %call4, i8** %event_name, align 8
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call5 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter)
  store i32 %call5, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %iter_valid, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %iter, i32 0, i8** %list_name, i32 -1)
  %12 = load i8*, i8** %list_name, align 8
  %13 = load i8*, i8** %event_name, align 8
  %call6 = call i32 @strcmp(i8* %12, i8* %13) #9
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %14 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %sel8 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %14, i32 0, i32 3
  %15 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel8, align 8
  %call9 = call %struct._GtkTreeView* @gtk_tree_selection_get_tree_view(%struct._GtkTreeSelection* %15)
  store %struct._GtkTreeView* %call9, %struct._GtkTreeView** %view, align 8
  %16 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %sel10 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %16, i32 0, i32 3
  %17 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel10, align 8
  call void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection* %17, %struct._GtkTreeIter* %iter)
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call11 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call11, %struct._GtkTreePath** %path, align 8
  %19 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %20 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView* %19, %struct._GtkTreePath* %20, %struct._GtkTreeViewColumn* null, i32 0, float 0.000000e+00, float 0.000000e+00)
  %21 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %22 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_view_set_cursor(%struct._GtkTreeView* %21, %struct._GtkTreePath* %22, %struct._GtkTreeViewColumn* null, i32 0)
  %23 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %23)
  %24 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %25 = bitcast %struct._GtkTreeView* %24 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call12)
  %26 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %26)
  %27 = load i8*, i8** %list_name, align 8
  call void @g_free(i8* %27)
  br label %for.end

if.end:                                           ; preds = %for.body
  %28 = load i8*, i8** %list_name, align 8
  call void @g_free(i8* %28)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call14 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %29, %struct._GtkTreeIter* %iter)
  store i32 %call14, i32* %iter_valid, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %30 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor, align 8
  %grab_button = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %30, i32 0, i32 4
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %grab_button, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_toggle_button_get_type() #8
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call15)
  %33 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkToggleButton*
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %33, i32 0)
  ret i32 1
}

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GtkTreeView* @gtk_tree_selection_get_tree_view(%struct._GtkTreeSelection*) #1

declare void @gtk_tree_selection_select_iter(%struct._GtkTreeSelection*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32, float, float) #1

declare void @gtk_tree_view_set_cursor(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #1

declare %struct._GtkWidget* @gimp_viewable_dialog_new(%struct._GimpViewable*, %struct._GimpContext*, i8*, i8*, i8*, i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory*, i8*, %struct._GtkWidget*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_edit_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpControllerEditor* %editor) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %editor.addr = alloca %struct._GimpControllerEditor*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %event_name = alloca i8*, align 8
  %stock_id = alloca i8*, align 8
  %action_name = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpControllerEditor* %editor, %struct._GimpControllerEditor** %editor.addr, align 8
  %0 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %1 = bitcast %struct._GimpControllerEditor* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %2, i32 1)
  %3 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %3, -5
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  store i8* null, i8** %event_name, align 8
  store i8* null, i8** %stock_id, align 8
  store i8* null, i8** %action_name, align 8
  %4 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_sel = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %4, i32 0, i32 8
  %5 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %edit_sel, align 8
  %call2 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %5, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %6, %struct._GtkTreeIter* %iter, i32 2, i8** %stock_id, i32 5, i8** %action_name, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %sel = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %7, i32 0, i32 3
  %8 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call4 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %8, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %iter, i32 0, i8** %event_name, i32 -1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %10 = load i8*, i8** %event_name, align 8
  %tobool8 = icmp ne i8* %10, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.7
  %11 = load i8*, i8** %action_name, align 8
  %tobool9 = icmp ne i8* %11, null
  br i1 %tobool9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %land.lhs.true
  %12 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %info = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %12, i32 0, i32 1
  %13 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %mapping = getelementptr inbounds %struct._GimpControllerInfo, %struct._GimpControllerInfo* %13, i32 0, i32 4
  %14 = load %struct._GHashTable*, %struct._GHashTable** %mapping, align 8
  %15 = load i8*, i8** %event_name, align 8
  %call11 = call noalias i8* @g_strdup(i8* %15)
  %16 = load i8*, i8** %action_name, align 8
  %call12 = call noalias i8* @g_strdup(i8* %16)
  %call13 = call i32 @g_hash_table_insert(%struct._GHashTable* %14, i8* %call11, i8* %call12)
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %18 = bitcast %struct._GtkTreeModel* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_list_store_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkListStore*
  %20 = load i8*, i8** %stock_id, align 8
  %21 = load i8*, i8** %action_name, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %19, %struct._GtkTreeIter* %iter, i32 2, i8* %20, i32 3, i8* %21, i32 -1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %land.lhs.true, %if.end.7
  %22 = load i8*, i8** %event_name, align 8
  call void @g_free(i8* %22)
  %23 = load i8*, i8** %stock_id, align 8
  call void @g_free(i8* %23)
  %24 = load i8*, i8** %action_name, align 8
  call void @g_free(i8* %24)
  %25 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %sel17 = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %25, i32 0, i32 3
  %26 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel17, align 8
  %27 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  call void @gimp_controller_editor_sel_changed(%struct._GtkTreeSelection* %26, %struct._GimpControllerEditor* %27)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %entry
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %28)
  ret void
}

declare %struct._GtkWidget* @gimp_action_editor_new(%struct._GimpUIManager*, i8*, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_action_editor_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_editor_edit_activated(%struct._GtkTreeView* %tv, %struct._GtkTreePath* %path, %struct._GtkTreeViewColumn* %column, %struct._GimpControllerEditor* %editor) #3 {
entry:
  %tv.addr = alloca %struct._GtkTreeView*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %editor.addr = alloca %struct._GimpControllerEditor*, align 8
  store %struct._GtkTreeView* %tv, %struct._GtkTreeView** %tv.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GimpControllerEditor* %editor, %struct._GimpControllerEditor** %editor.addr, align 8
  %0 = load %struct._GimpControllerEditor*, %struct._GimpControllerEditor** %editor.addr, align 8
  %edit_dialog = getelementptr inbounds %struct._GimpControllerEditor, %struct._GimpControllerEditor* %0, i32 0, i32 7
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %3, i32 -5)
  ret void
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #1

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare void @gtk_box_set_spacing(%struct._GtkBox*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
