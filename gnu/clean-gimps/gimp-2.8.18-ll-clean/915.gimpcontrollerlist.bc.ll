; ModuleID = './app/widgets/gimpcontrollerlist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpControllerListClass = type { %struct._GtkBoxClass }
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
%struct._GimpControllerList = type { %struct._GtkBox, %struct._Gimp*, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkTreeSelection*, i64, %struct._GtkWidget*, %struct._GimpControllerInfo*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
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
%struct._GimpContext = type opaque
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreePath = type opaque
%struct._GimpControllerInfo = type { %struct._GimpViewable, i32, i32, %struct._GimpController*, %struct._GHashTable*, i32 (%struct._GimpControllerInfo*, %struct._GimpController*, %union._GimpControllerEvent*, i8*)*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpController = type { %struct._GObject, i8*, i8* }
%struct._GHashTable = type opaque
%union._GimpControllerEvent = type { %struct._GimpControllerEventValue }
%struct._GimpControllerEventValue = type { i32, %struct._GimpController*, i32, %struct._GValue }
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpControllerClass = type { %struct._GObjectClass, i8*, i8*, i8*, i32 (%struct._GimpController*)*, i8* (%struct._GimpController*, i32)*, i8* (%struct._GimpController*, i32)*, i32 (%struct._GimpController*, %union._GimpControllerEvent*)*, i8*, void ()*, void ()*, void ()* }
%struct._GtkOrientable = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkSettings = type { %struct._GObject, %struct._GData*, %struct._GtkSettingsPropertyValue*, %struct._GtkRcContext*, %struct._GdkScreen* }
%struct._GtkSettingsPropertyValue = type opaque
%struct._GtkRcContext = type opaque
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GimpEditorPrivate = type opaque
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GimpContainerView = type opaque
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque

@gimp_controller_list_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpControllerList\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_controller_list_new = private unnamed_addr constant [25 x i8] c"gimp_controller_list_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@gimp_controller_list_parent_class = internal global i8* null, align 8
@GimpControllerList_private_offset = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"gimpcontrollerlist.c\00", align 1
@__func__.gimp_controller_list_constructed = private unnamed_addr constant [33 x i8] c"gimp_controller_list_constructed\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"GIMP_IS_GIMP (list->gimp)\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Available Controllers\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"stock-size\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"row-activated\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"gtk-go-forward\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"gtk-go-back\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Active Controllers\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"select-item\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"activate-item\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"gtk-properties\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Configure the selected controller\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gtk-go-up\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Move the selected controller up\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"gtk-go-down\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Move the selected controller down\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"Add '%s' to the list of active controllers\00", align 1
@.str.27 = private unnamed_addr constant [126 x i8] c"There can only be one active keyboard controller.\0A\0AYou already have a keyboard controller in your list of active controllers.\00", align 1
@.str.28 = private unnamed_addr constant [120 x i8] c"There can only be one active wheel controller.\0A\0AYou already have a wheel controller in your list of active controllers.\00", align 1
@.str.29 = private unnamed_addr constant [120 x i8] c"There can only be one active mouse controller.\0A\0AYou already have a mouse controller in your list of active controllers.\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Remove Controller?\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Disable Controller\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Remove Controller\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Remove Controller '%s'?\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [206 x i8] c"Removing this controller from the list of active controllers will permanently delete all event mappings you have configured.\0A\0ASelecting \22Disable Controller\22 will disable the controller without removing it.\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"gimp-controller-editor-dialog\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"Remove '%s' from the list of active controllers\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"Configure Input Controller\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"gimp-prefs-input-controllers\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_controller_list_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_controller_list_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_controller_list_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 824, void (i8*, i8*)* bitcast (void (i8*)* @gimp_controller_list_class_intern_init to void (i8*, i8*)*), i32 224, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpControllerList*)* @gimp_controller_list_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_controller_list_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_controller_list_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_controller_list_parent_class, align 8
  %1 = load i32, i32* @GimpControllerList_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpControllerList_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpControllerListClass*
  call void @gimp_controller_list_class_init(%struct._GimpControllerListClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_init(%struct._GimpControllerList* %list) #3 {
entry:
  %list.addr = alloca %struct._GimpControllerList*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %sw = alloca %struct._GtkWidget*, align 8
  %tv = alloca %struct._GtkWidget*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GtkWidget*, align 8
  %icon_size = alloca i32, align 4
  %icon_width = alloca i32, align 4
  %icon_height = alloca i32, align 4
  %controller_types = alloca i64*, align 8
  %n_controller_types = alloca i32, align 4
  %i = alloca i32, align 4
  %controller_class = alloca %struct._GimpControllerClass*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  %0 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %1 = bitcast %struct._GimpControllerList* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_orientable_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkOrientable*
  call void @gtk_orientable_set_orientation(%struct._GtkOrientable* %2, i32 1)
  %3 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %3, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox, align 8
  %4 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %hbox3 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %4, i32 0, i32 2
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %hbox3, align 8
  %5 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %6 = bitcast %struct._GimpControllerList* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_box_get_type() #8
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkBox*
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %7, %struct._GtkWidget* %8, i32 1, i32 1, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %9)
  %call6 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %sw, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_scrolled_window_get_type() #8
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %12, i32 1)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_scrolled_window_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %15, i32 1, i32 1)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_box_get_type() #8
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call11)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkBox*
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %18, %struct._GtkWidget* %19, i32 1, i32 1, i32 0)
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %20)
  %call13 = call i64 @g_gtype_get_type()
  %call14 = call %struct._GtkListStore* (i32, ...) @gtk_list_store_new(i32 3, i64 64, i64 64, i64 %call13)
  %21 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %21, i32 0, i32 3
  store %struct._GtkListStore* %call14, %struct._GtkListStore** %src, align 8
  %22 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src15 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %22, i32 0, i32 3
  %23 = load %struct._GtkListStore*, %struct._GtkListStore** %src15, align 8
  %24 = bitcast %struct._GtkListStore* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_tree_model_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkTreeModel*
  %call18 = call %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel* %25)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %tv, align 8
  %26 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src19 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %26, i32 0, i32 3
  %27 = load %struct._GtkListStore*, %struct._GtkListStore** %src19, align 8
  %28 = bitcast %struct._GtkListStore* %27 to i8*
  call void @g_object_unref(i8* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_tree_view_get_type() #8
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call20)
  %31 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_headers_clickable(%struct._GtkTreeView* %31, i32 0)
  %call22 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call22, %struct._GtkTreeViewColumn** %column, align 8
  %32 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #6
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %32, i8* %call23)
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_tree_view_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkTreeView*
  %36 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call26 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %35, %struct._GtkTreeViewColumn* %36)
  %call27 = call %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new()
  store %struct._GtkCellRenderer* %call27, %struct._GtkCellRenderer** %cell, align 8
  %37 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %38 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %37, %struct._GtkCellRenderer* %38, i32 0)
  %39 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %40 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %39, %struct._GtkCellRenderer* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* null)
  %41 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %42 = bitcast %struct._GtkCellRenderer* %41 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32* %icon_size, i8* null)
  %call28 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call28, %struct._GtkCellRenderer** %cell, align 8
  %43 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %44 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %43, %struct._GtkCellRenderer* %44, i32 1)
  %45 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %46 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %45, %struct._GtkCellRenderer* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* null)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %sw, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_container_get_type() #8
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call29)
  %49 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkContainer*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_container_add(%struct._GtkContainer* %49, %struct._GtkWidget* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %53 = bitcast %struct._GtkWidget* %52 to i8*
  %54 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %55 = bitcast %struct._GimpControllerList* %54 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 80)
  %56 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  %57 = bitcast %struct._GObject* %56 to i8*
  %call32 = call i64 @g_signal_connect_object(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, %struct._GimpControllerList*)* @gimp_controller_list_row_activated to void ()*), i8* %57, i32 0)
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %tv, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_tree_view_get_type() #8
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call33)
  %60 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTreeView*
  %call35 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %60)
  %61 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src_sel = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %61, i32 0, i32 4
  store %struct._GtkTreeSelection* %call35, %struct._GtkTreeSelection** %src_sel, align 8
  %62 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src_sel36 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %62, i32 0, i32 4
  %63 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %src_sel36, align 8
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %63, i32 2)
  %64 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src_sel37 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %64, i32 0, i32 4
  %65 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %src_sel37, align 8
  %66 = bitcast %struct._GtkTreeSelection* %65 to i8*
  %67 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %68 = bitcast %struct._GimpControllerList* %67 to %struct._GTypeInstance*
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call38 to %struct._GObject*
  %70 = bitcast %struct._GObject* %69 to i8*
  %call39 = call i64 @g_signal_connect_object(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpControllerList*)* @gimp_controller_list_src_sel_changed to void ()*), i8* %70, i32 0)
  %call40 = call i64 @gimp_controller_get_type() #8
  %call41 = call i64* @g_type_children(i64 %call40, i32* %n_controller_types)
  store i64* %call41, i64** %controller_types, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %n_controller_types, align 4
  %cmp = icmp ult i32 %71, %72
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load i32, i32* %i, align 4
  %idxprom = sext i32 %73 to i64
  %74 = load i64*, i64** %controller_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %74, i64 %idxprom
  %75 = load i64, i64* %arrayidx, align 8
  %call42 = call i8* @g_type_class_ref(i64 %75)
  %76 = bitcast i8* %call42 to %struct._GimpControllerClass*
  store %struct._GimpControllerClass* %76, %struct._GimpControllerClass** %controller_class, align 8
  %77 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src43 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %77, i32 0, i32 3
  %78 = load %struct._GtkListStore*, %struct._GtkListStore** %src43, align 8
  call void @gtk_list_store_append(%struct._GtkListStore* %78, %struct._GtkTreeIter* %iter)
  %79 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src44 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %79, i32 0, i32 3
  %80 = load %struct._GtkListStore*, %struct._GtkListStore** %src44, align 8
  %81 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %stock_id = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %81, i32 0, i32 8
  %82 = load i8*, i8** %stock_id, align 8
  %83 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %name = getelementptr inbounds %struct._GimpControllerClass, %struct._GimpControllerClass* %83, i32 0, i32 1
  %84 = load i8*, i8** %name, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %85 to i64
  %86 = load i64*, i64** %controller_types, align 8
  %arrayidx46 = getelementptr inbounds i64, i64* %86, i64 %idxprom45
  %87 = load i64, i64* %arrayidx46, align 8
  call void (%struct._GtkListStore*, %struct._GtkTreeIter*, ...) @gtk_list_store_set(%struct._GtkListStore* %80, %struct._GtkTreeIter* %iter, i32 0, i8* %82, i32 1, i8* %84, i32 2, i64 %87, i32 -1)
  %88 = load %struct._GimpControllerClass*, %struct._GimpControllerClass** %controller_class, align 8
  %89 = bitcast %struct._GimpControllerClass* %88 to i8*
  call void @g_type_class_unref(i8* %89)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %90 = load i32, i32* %i, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %91 = load i64*, i64** %controller_types, align 8
  %92 = bitcast i64* %91 to i8*
  call void @g_free(i8* %92)
  %call47 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 0)
  store %struct._GtkWidget* %call47, %struct._GtkWidget** %vbox, align 8
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #8
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call48)
  %95 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  call void @gtk_box_set_homogeneous(%struct._GtkBox* %95, i32 1)
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_box_get_type() #8
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call50)
  %98 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkBox*
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %98, %struct._GtkWidget* %99, i32 0, i32 0, i32 0)
  %100 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %100)
  %call52 = call %struct._GtkWidget* @gtk_button_new()
  %101 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %101, i32 0, i32 8
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %add_button, align 8
  %102 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %103 = bitcast %struct._GtkWidget* %102 to %struct._GTypeInstance*
  %call53 = call i64 @gtk_box_get_type() #8
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call53)
  %104 = bitcast %struct._GTypeInstance* %call54 to %struct._GtkBox*
  %105 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button55 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %105, i32 0, i32 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button55, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %104, %struct._GtkWidget* %106, i32 1, i32 0, i32 0)
  %107 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button56 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %107, i32 0, i32 8
  %108 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button56, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %108, i32 0)
  %109 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button57 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %109, i32 0, i32 8
  %110 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button57, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %110)
  %call58 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call58, %struct._GtkWidget** %image, align 8
  %111 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button59 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %111, i32 0, i32 8
  %112 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button59, align 8
  %113 = bitcast %struct._GtkWidget* %112 to %struct._GTypeInstance*
  %call60 = call i64 @gtk_container_get_type() #8
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %113, i64 %call60)
  %114 = bitcast %struct._GTypeInstance* %call61 to %struct._GtkContainer*
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %114, %struct._GtkWidget* %115)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %116)
  %117 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button62 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %117, i32 0, i32 8
  %118 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button62, align 8
  %119 = bitcast %struct._GtkWidget* %118 to i8*
  %120 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %121 = bitcast %struct._GimpControllerList* %120 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpControllerList*)* @gimp_controller_list_add_clicked to void ()*), i8* %121, void (i8*, %struct._GClosure*)* null, i32 0)
  %122 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button64 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %122, i32 0, i32 8
  %123 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button64, align 8
  %124 = bitcast %struct._GtkWidget* %123 to %struct._GTypeInstance*
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %124, i64 80)
  %125 = bitcast %struct._GTypeInstance* %call65 to %struct._GObject*
  %126 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button66 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %126, i32 0, i32 8
  %127 = bitcast %struct._GtkWidget** %add_button66 to i8*
  %128 = bitcast i8* %127 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %125, i8** %128)
  %call67 = call %struct._GtkWidget* @gtk_button_new()
  %129 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %129, i32 0, i32 9
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %remove_button, align 8
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %131 = bitcast %struct._GtkWidget* %130 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #8
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %131, i64 %call68)
  %132 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %133 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button70 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %133, i32 0, i32 9
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button70, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %132, %struct._GtkWidget* %134, i32 1, i32 0, i32 0)
  %135 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button71 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %135, i32 0, i32 9
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button71, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %136, i32 0)
  %137 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button72 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %137, i32 0, i32 9
  %138 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button72, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %138)
  %call73 = call %struct._GtkWidget* @gtk_image_new_from_stock(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 4)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %image, align 8
  %139 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button74 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %139, i32 0, i32 9
  %140 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button74, align 8
  %141 = bitcast %struct._GtkWidget* %140 to %struct._GTypeInstance*
  %call75 = call i64 @gtk_container_get_type() #8
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %141, i64 %call75)
  %142 = bitcast %struct._GTypeInstance* %call76 to %struct._GtkContainer*
  %143 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_container_add(%struct._GtkContainer* %142, %struct._GtkWidget* %143)
  %144 = load %struct._GtkWidget*, %struct._GtkWidget** %image, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %144)
  %145 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button77 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %145, i32 0, i32 9
  %146 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button77, align 8
  %147 = bitcast %struct._GtkWidget* %146 to i8*
  %148 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %149 = bitcast %struct._GimpControllerList* %148 to i8*
  %call78 = call i64 @g_signal_connect_data(i8* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpControllerList*)* @gimp_controller_list_remove_clicked to void ()*), i8* %149, void (i8*, %struct._GClosure*)* null, i32 0)
  %150 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button79 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %150, i32 0, i32 9
  %151 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button79, align 8
  %152 = bitcast %struct._GtkWidget* %151 to %struct._GTypeInstance*
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %152, i64 80)
  %153 = bitcast %struct._GTypeInstance* %call80 to %struct._GObject*
  %154 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button81 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %154, i32 0, i32 9
  %155 = bitcast %struct._GtkWidget** %remove_button81 to i8*
  %156 = bitcast i8* %155 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %153, i8** %156)
  %157 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %158 = bitcast %struct._GimpControllerList* %157 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_widget_get_type() #8
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call82)
  %159 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkWidget*
  %call84 = call %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget* %159)
  %160 = load i32, i32* %icon_size, align 4
  %call85 = call i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings* %call84, i32 %160, i32* %icon_width, i32* %icon_height)
  %161 = load i32, i32* %icon_height, align 4
  %call86 = call %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer* null, %struct._GimpContext* null, i32 %161, i32 0)
  %162 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %162, i32 0, i32 6
  store %struct._GtkWidget* %call86, %struct._GtkWidget** %dest, align 8
  %163 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest87 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %163, i32 0, i32 6
  %164 = load %struct._GtkWidget*, %struct._GtkWidget** %dest87, align 8
  %165 = bitcast %struct._GtkWidget* %164 to %struct._GTypeInstance*
  %call88 = call i64 @gimp_container_tree_view_get_type() #8
  %call89 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %165, i64 %call88)
  %166 = bitcast %struct._GTypeInstance* %call89 to %struct._GimpContainerTreeView*
  %call90 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0)) #6
  call void @gimp_container_tree_view_set_main_column_title(%struct._GimpContainerTreeView* %166, i8* %call90)
  %167 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest91 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %167, i32 0, i32 6
  %168 = load %struct._GtkWidget*, %struct._GtkWidget** %dest91, align 8
  %169 = bitcast %struct._GtkWidget* %168 to %struct._GTypeInstance*
  %call92 = call i64 @gimp_container_tree_view_get_type() #8
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 %call92)
  %170 = bitcast %struct._GTypeInstance* %call93 to %struct._GimpContainerTreeView*
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %170, i32 0, i32 4
  %171 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  call void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView* %171, i32 1)
  %172 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %hbox94 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %172, i32 0, i32 2
  %173 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox94, align 8
  %174 = bitcast %struct._GtkWidget* %173 to %struct._GTypeInstance*
  %call95 = call i64 @gtk_box_get_type() #8
  %call96 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %174, i64 %call95)
  %175 = bitcast %struct._GTypeInstance* %call96 to %struct._GtkBox*
  %176 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest97 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %176, i32 0, i32 6
  %177 = load %struct._GtkWidget*, %struct._GtkWidget** %dest97, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %175, %struct._GtkWidget* %177, i32 1, i32 1, i32 0)
  %178 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest98 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %178, i32 0, i32 6
  %179 = load %struct._GtkWidget*, %struct._GtkWidget** %dest98, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %179)
  %180 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest99 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %180, i32 0, i32 6
  %181 = load %struct._GtkWidget*, %struct._GtkWidget** %dest99, align 8
  %182 = bitcast %struct._GtkWidget* %181 to i8*
  %183 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %184 = bitcast %struct._GimpControllerList* %183 to %struct._GTypeInstance*
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %184, i64 80)
  %185 = bitcast %struct._GTypeInstance* %call100 to %struct._GObject*
  %186 = bitcast %struct._GObject* %185 to i8*
  %call101 = call i64 @g_signal_connect_object(i8* %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, %struct._GimpControllerList*)* @gimp_controller_list_select_item to void ()*), i8* %186, i32 0)
  %187 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest102 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %187, i32 0, i32 6
  %188 = load %struct._GtkWidget*, %struct._GtkWidget** %dest102, align 8
  %189 = bitcast %struct._GtkWidget* %188 to i8*
  %190 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %191 = bitcast %struct._GimpControllerList* %190 to %struct._GTypeInstance*
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %191, i64 80)
  %192 = bitcast %struct._GTypeInstance* %call103 to %struct._GObject*
  %193 = bitcast %struct._GObject* %192 to i8*
  %call104 = call i64 @g_signal_connect_object(i8* %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, %struct._GimpControllerList*)* @gimp_controller_list_activate_item to void ()*), i8* %193, i32 0)
  %194 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest105 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %194, i32 0, i32 6
  %195 = load %struct._GtkWidget*, %struct._GtkWidget** %dest105, align 8
  %196 = bitcast %struct._GtkWidget* %195 to %struct._GTypeInstance*
  %call106 = call i64 @gimp_editor_get_type() #8
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %196, i64 %call106)
  %197 = bitcast %struct._GTypeInstance* %call107 to %struct._GimpEditor*
  %call108 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0)) #6
  %198 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %199 = bitcast %struct._GimpControllerList* %198 to i8*
  %call109 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* %call108, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpControllerList*)* @gimp_controller_list_edit_clicked to void ()*), void ()* null, i8* %199)
  %200 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %edit_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %200, i32 0, i32 10
  store %struct._GtkWidget* %call109, %struct._GtkWidget** %edit_button, align 8
  %201 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest110 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %201, i32 0, i32 6
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %dest110, align 8
  %203 = bitcast %struct._GtkWidget* %202 to %struct._GTypeInstance*
  %call111 = call i64 @gimp_editor_get_type() #8
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 %call111)
  %204 = bitcast %struct._GTypeInstance* %call112 to %struct._GimpEditor*
  %call113 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0)) #6
  %205 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %206 = bitcast %struct._GimpControllerList* %205 to i8*
  %call114 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* %call113, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpControllerList*)* @gimp_controller_list_up_clicked to void ()*), void ()* null, i8* %206)
  %207 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %up_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %207, i32 0, i32 11
  store %struct._GtkWidget* %call114, %struct._GtkWidget** %up_button, align 8
  %208 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest115 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %208, i32 0, i32 6
  %209 = load %struct._GtkWidget*, %struct._GtkWidget** %dest115, align 8
  %210 = bitcast %struct._GtkWidget* %209 to %struct._GTypeInstance*
  %call116 = call i64 @gimp_editor_get_type() #8
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %210, i64 %call116)
  %211 = bitcast %struct._GTypeInstance* %call117 to %struct._GimpEditor*
  %call118 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0)) #6
  %212 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %213 = bitcast %struct._GimpControllerList* %212 to i8*
  %call119 = call %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor* %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* %call118, i8* null, void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpControllerList*)* @gimp_controller_list_down_clicked to void ()*), void ()* null, i8* %213)
  %214 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %down_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %214, i32 0, i32 12
  store %struct._GtkWidget* %call119, %struct._GtkWidget** %down_button, align 8
  %215 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %edit_button120 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %215, i32 0, i32 10
  %216 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button120, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %216, i32 0)
  %217 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %up_button121 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %217, i32 0, i32 11
  %218 = load %struct._GtkWidget*, %struct._GtkWidget** %up_button121, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %218, i32 0)
  %219 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %down_button122 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %219, i32 0, i32 12
  %220 = load %struct._GtkWidget*, %struct._GtkWidget** %down_button122, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %220, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_controller_list_new(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_controller_list_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_controller_list_get_type() #8
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._Gimp* %13, i8* null)
  %14 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %14, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %15
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_class_init(%struct._GimpControllerListClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpControllerListClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpControllerListClass* %klass, %struct._GimpControllerListClass** %klass.addr, align 8
  %0 = load %struct._GimpControllerListClass*, %struct._GimpControllerListClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpControllerListClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_controller_list_constructed, void (%struct._GObject*)** %constructed, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_controller_list_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_controller_list_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_controller_list_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #8
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %list = alloca %struct._GimpControllerList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_list_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerList*
  store %struct._GimpControllerList* %2, %struct._GimpControllerList** %list, align 8
  %3 = load i8*, i8** @gimp_controller_list_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 9
  %6 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_controller_list_parent_class, align 8
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
  %12 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %14 = bitcast %struct._Gimp* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst, align 8
  %call5 = call i64 @gimp_get_type() #8
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
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 328, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_controller_list_constructed, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)) #10
  unreachable

if.end.18:                                        ; preds = %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %26 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %dest = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %26, i32 0, i32 6
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dest, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_container_view_interface_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpContainerView*
  %30 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %gimp21 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %30, i32 0, i32 1
  %31 = load %struct._Gimp*, %struct._Gimp** %gimp21, align 8
  %call22 = call %struct._GimpContainer* @gimp_controllers_get_list(%struct._Gimp* %31)
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %29, %struct._GimpContainer* %call22)
  %32 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %dest23 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %32, i32 0, i32 6
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dest23, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_container_view_interface_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call24)
  %35 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpContainerView*
  %36 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %gimp26 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %36, i32 0, i32 1
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %call27 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %37)
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %35, %struct._GimpContext* %call27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %list = alloca %struct._GimpControllerList*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_list_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerList*
  store %struct._GimpControllerList* %2, %struct._GimpControllerList** %list, align 8
  %3 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %gimp2 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp2, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %gimp3 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %8, i32 0, i32 1
  store %struct._Gimp* null, %struct._Gimp** %gimp3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_controller_list_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %list = alloca %struct._GimpControllerList*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_list_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerList*
  store %struct._GimpControllerList* %2, %struct._GimpControllerList** %list, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %6, i32 0, i32 1
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 366, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %10, i8* %12, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %list = alloca %struct._GimpControllerList*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_list_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerList*
  store %struct._GimpControllerList* %2, %struct._GimpControllerList** %list, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = bitcast %struct._Gimp* %6 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %7)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 386, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %11, i8* %13, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

declare void @gimp_container_view_set_container(%struct._GimpContainerView*, %struct._GimpContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare %struct._GimpContainer* @gimp_controllers_get_list(%struct._Gimp*) #1

declare void @gimp_container_view_set_context(%struct._GimpContainerView*, %struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @g_object_unref(i8*) #1

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
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare void @gtk_orientable_set_orientation(%struct._GtkOrientable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_orientable_get_type() #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

declare %struct._GtkListStore* @gtk_list_store_new(i32, ...) #1

declare i64 @g_gtype_get_type() #1

declare %struct._GtkWidget* @gtk_tree_view_new_with_model(%struct._GtkTreeModel*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @gtk_tree_view_set_headers_clickable(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #7

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new() #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_row_activated(%struct._GtkTreeView* %tv, %struct._GtkTreePath* %path, %struct._GtkTreeViewColumn* %column, %struct._GimpControllerList* %list) #3 {
entry:
  %tv.addr = alloca %struct._GtkTreeView*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %list.addr = alloca %struct._GimpControllerList*, align 8
  store %struct._GtkTreeView* %tv, %struct._GtkTreeView** %tv.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  %0 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %0, i32 0, i32 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button, align 8
  %call = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button1 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %2, i32 0, i32 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button1, align 8
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

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_src_sel_changed(%struct._GtkTreeSelection* %sel, %struct._GimpControllerList* %list) #3 {
entry:
  %sel.addr = alloca %struct._GtkTreeSelection*, align 8
  %list.addr = alloca %struct._GimpControllerList*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %tip = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkTreeSelection* %sel, %struct._GtkTreeSelection** %sel.addr, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  store i8* null, i8** %tip, align 8
  %0 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel.addr, align 8
  %call = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %0, %struct._GtkTreeModel** %model, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src_gtype = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %2, i32 0, i32 5
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %iter, i32 1, i8** %name, i32 2, i64* %src_gtype, i32 -1)
  %3 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %3, i32 0, i32 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button, align 8
  %tobool1 = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i32 0, i32 0)) #6
  %5 = load i8*, i8** %name, align 8
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call3, i8* %5)
  store i8* %call4, i8** %tip, align 8
  %6 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button5 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %6, i32 0, i32 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button5, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %7, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %8 = load i8*, i8** %name, align 8
  call void @g_free(i8* %8)
  br label %if.end.11

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button6 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %9, i32 0, i32 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button6, align 8
  %tobool7 = icmp ne %struct._GtkWidget* %10, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %11 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button9 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %11, i32 0, i32 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button9, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %12, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %13 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button12 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %13, i32 0, i32 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button12, align 8
  %tobool13 = icmp ne %struct._GtkWidget* %14, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %15 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %add_button15 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %15, i32 0, i32 8
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %add_button15, align 8
  %17 = load i8*, i8** %tip, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %16, i8* %17, i8* null)
  %18 = load i8*, i8** %tip, align 8
  call void @g_free(i8* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  ret void
}

declare i64* @g_type_children(i64, i32*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_get_type() #2

declare i8* @g_type_class_ref(i64) #1

declare void @gtk_list_store_append(%struct._GtkListStore*, %struct._GtkTreeIter*) #1

declare void @gtk_list_store_set(%struct._GtkListStore*, %struct._GtkTreeIter*, ...) #1

declare void @g_type_class_unref(i8*) #1

declare void @g_free(i8*) #1

declare void @gtk_box_set_homogeneous(%struct._GtkBox*, i32) #1

declare %struct._GtkWidget* @gtk_button_new() #1

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #1

declare %struct._GtkWidget* @gtk_image_new_from_stock(i8*, i32) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_add_clicked(%struct._GtkWidget* %button, %struct._GimpControllerList* %list) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %list.addr = alloca %struct._GimpControllerList*, align 8
  %info = alloca %struct._GimpControllerInfo*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  %0 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src_gtype = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %0, i32 0, i32 5
  %1 = load i64, i64* %src_gtype, align 8
  %call = call i64 @gimp_controller_keyboard_get_type() #8
  %cmp = icmp eq i64 %1, %call
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpController* @gimp_controllers_get_keyboard(%struct._Gimp* %3)
  %cmp2 = icmp ne %struct._GimpController* %call1, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp3 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.27, i32 0, i32 0)) #6
  call void @gimp_message_literal(%struct._Gimp* %5, %struct._GObject* %8, i32 1, i8* %call5)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src_gtype6 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %9, i32 0, i32 5
  %10 = load i64, i64* %src_gtype6, align 8
  %call7 = call i64 @gimp_controller_wheel_get_type() #8
  %cmp8 = icmp eq i64 %10, %call7
  br i1 %cmp8, label %land.lhs.true.9, label %if.else.17

land.lhs.true.9:                                  ; preds = %if.else
  %11 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp10 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %call11 = call %struct._GimpController* @gimp_controllers_get_wheel(%struct._Gimp* %12)
  %cmp12 = icmp ne %struct._GimpController* %call11, null
  br i1 %cmp12, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %land.lhs.true.9
  %13 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp14 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 80)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.28, i32 0, i32 0)) #6
  call void @gimp_message_literal(%struct._Gimp* %14, %struct._GObject* %17, i32 1, i8* %call16)
  br label %return

if.else.17:                                       ; preds = %land.lhs.true.9, %if.else
  %18 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src_gtype18 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %18, i32 0, i32 5
  %19 = load i64, i64* %src_gtype18, align 8
  %call19 = call i64 @gimp_controller_mouse_get_type() #8
  %cmp20 = icmp eq i64 %19, %call19
  br i1 %cmp20, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %if.else.17
  %20 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp22 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  %call23 = call %struct._GimpController* @gimp_controllers_get_mouse(%struct._Gimp* %21)
  %cmp24 = icmp ne %struct._GimpController* %call23, null
  br i1 %cmp24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %land.lhs.true.21
  %22 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp26 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %22, i32 0, i32 1
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %button.addr, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.29, i32 0, i32 0)) #6
  call void @gimp_message_literal(%struct._Gimp* %23, %struct._GObject* %26, i32 1, i8* %call28)
  br label %return

if.end:                                           ; preds = %land.lhs.true.21, %if.else.17
  br label %if.end.29

if.end.29:                                        ; preds = %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  %27 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %src_gtype31 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %27, i32 0, i32 5
  %28 = load i64, i64* %src_gtype31, align 8
  %call32 = call %struct._GimpControllerInfo* @gimp_controller_info_new(i64 %28)
  store %struct._GimpControllerInfo* %call32, %struct._GimpControllerInfo** %info, align 8
  %29 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp33 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp33, align 8
  %call34 = call %struct._GimpContainer* @gimp_controllers_get_list(%struct._Gimp* %30)
  store %struct._GimpContainer* %call34, %struct._GimpContainer** %container, align 8
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %32 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %33 = bitcast %struct._GimpControllerInfo* %32 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_object_get_type() #8
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call35)
  %34 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpObject*
  %call37 = call i32 @gimp_container_add(%struct._GimpContainer* %31, %struct._GimpObject* %34)
  %35 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %36 = bitcast %struct._GimpControllerInfo* %35 to i8*
  call void @g_object_unref(i8* %36)
  %37 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %37, i32 0, i32 6
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %dest, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call38 = call i64 @gimp_container_view_interface_get_type() #8
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call38)
  %40 = bitcast %struct._GTypeInstance* %call39 to %struct._GimpContainerView*
  %41 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info, align 8
  %42 = bitcast %struct._GimpControllerInfo* %41 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_viewable_get_type() #8
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call40)
  %43 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpViewable*
  %call42 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %40, %struct._GimpViewable* %43)
  %44 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  call void @gimp_controller_list_edit_clicked(%struct._GtkWidget* null, %struct._GimpControllerList* %44)
  br label %return

return:                                           ; preds = %if.end.30, %if.then.25, %if.then.13, %if.then
  ret void
}

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_remove_clicked(%struct._GtkWidget* %button, %struct._GimpControllerList* %list) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %list.addr = alloca %struct._GimpControllerList*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %name = alloca i8*, align 8
  %editor_dialog = alloca %struct._GtkWidget*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0)) #6
  %0 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %1 = bitcast %struct._GimpControllerList* %0 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_widget_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWidget*
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0)) #6
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0)) #6
  %call5 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), %struct._GtkWidget* %2, i32 1, void (i8*, i8*)* null, i8* null, i8* %call3, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 -6, i8* %call4, i32 -5, i8* null)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dialog, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call6)
  %5 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %5, i32 -5, i32 -6, i32 1, i32 -1)
  %6 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %6, i32 0, i32 7
  %7 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info, align 8
  %8 = bitcast %struct._GimpControllerInfo* %7 to i8*
  %call8 = call i8* @gimp_object_get_name(i8* %8)
  store i8* %call8, i8** %name, align 8
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_message_dialog_get_type() #8
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %11, i32 0, i32 1
  %12 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0)) #6
  %13 = load i8*, i8** %name, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %12, i8* %call11, i8* %13)
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_message_dialog_get_type() #8
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpMessageDialog*
  %box14 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %16, i32 0, i32 1
  %17 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box14, align 8
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.37, i32 0, i32 0)) #6
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* %call15)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_dialog_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDialog*
  %call18 = call i32 @gimp_dialog_run(%struct._GimpDialog* %20)
  switch i32 %call18, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry
  %21 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info19 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %21, i32 0, i32 7
  %22 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info19, align 8
  call void @gimp_controller_info_set_enabled(%struct._GimpControllerInfo* %22, i32 0)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %23 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info21 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %23, i32 0, i32 7
  %24 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info21, align 8
  %25 = bitcast %struct._GimpControllerInfo* %24 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 80)
  %26 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %call23 = call i8* @g_object_get_data(%struct._GObject* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0))
  %27 = bitcast i8* %call23 to %struct._GtkWidget*
  store %struct._GtkWidget* %27, %struct._GtkWidget** %editor_dialog, align 8
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %28, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.20
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %editor_dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_dialog_get_type() #8
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call24)
  %31 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkDialog*
  call void @gtk_dialog_response(%struct._GtkDialog* %31, i32 -4)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.20
  %32 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %32, i32 0, i32 1
  %33 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call26 = call %struct._GimpContainer* @gimp_controllers_get_list(%struct._Gimp* %33)
  store %struct._GimpContainer* %call26, %struct._GimpContainer** %container, align 8
  %34 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %35 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info27 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %35, i32 0, i32 7
  %36 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info27, align 8
  %37 = bitcast %struct._GimpControllerInfo* %36 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_object_get_type() #8
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call28)
  %38 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpObject*
  %call30 = call i32 @gimp_container_remove(%struct._GimpContainer* %34, %struct._GimpObject* %38)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %39)
  ret void
}

declare i32 @gtk_icon_size_lookup_for_settings(%struct._GtkSettings*, i32, i32*, i32*) #1

declare %struct._GtkSettings* @gtk_widget_get_settings(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer*, %struct._GimpContext*, i32, i32) #1

declare void @gimp_container_tree_view_set_main_column_title(%struct._GimpContainerTreeView*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

declare void @gtk_tree_view_set_headers_visible(%struct._GtkTreeView*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data, %struct._GimpControllerList* %list) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %list.addr = alloca %struct._GimpControllerList*, align 8
  %selected = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %object = alloca %struct._GimpObject*, align 8
  %tip = alloca i8*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_controller_info_get_type() #8
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpControllerInfo*
  %3 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %3, i32 0, i32 7
  store %struct._GimpControllerInfo* %2, %struct._GimpControllerInfo** %dest_info, align 8
  %4 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info2 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %4, i32 0, i32 7
  %5 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info2, align 8
  %6 = bitcast %struct._GimpControllerInfo* %5 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %6, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_controller_info_get_type() #8
  store i64 %call3, i64* %__t, align 8
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %entry
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %9, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %10, i32 0, i32 0
  %11 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %11, i32 0, i32 0
  %12 = load i64, i64* %g_type, align 8
  %13 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %12, %13
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.7:                                        ; preds = %land.lhs.true, %if.else
  %14 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %15 = load i64, i64* %__t, align 8
  %call8 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %14, i64 %15) #9
  store i32 %call8, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %16 = load i32, i32* %__r, align 4
  store i32 %16, i32* %tmp
  %17 = load i32, i32* %tmp
  store i32 %17, i32* %selected, align 4
  %18 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %18, i32 0, i32 9
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button, align 8
  %tobool10 = icmp ne %struct._GtkWidget* %19, null
  br i1 %tobool10, label %if.then.11, label %if.end.25

if.then.11:                                       ; preds = %if.end.9
  %20 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info13 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %20, i32 0, i32 7
  %21 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info13, align 8
  %22 = bitcast %struct._GimpControllerInfo* %21 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_object_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call14)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpObject*
  store %struct._GimpObject* %23, %struct._GimpObject** %object, align 8
  store i8* null, i8** %tip, align 8
  %24 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button17 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %24, i32 0, i32 9
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button17, align 8
  %26 = load i32, i32* %selected, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %25, i32 %26)
  %27 = load i32, i32* %selected, align 4
  %tobool18 = icmp ne i32 %27, 0
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.then.11
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.39, i32 0, i32 0)) #6
  %28 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %29 = bitcast %struct._GimpObject* %28 to i8*
  %call21 = call i8* @gimp_object_get_name(i8* %29)
  %call22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call20, i8* %call21)
  store i8* %call22, i8** %tip, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.then.11
  %30 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %remove_button24 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %30, i32 0, i32 9
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %remove_button24, align 8
  %32 = load i8*, i8** %tip, align 8
  call void @gimp_help_set_help_data(%struct._GtkWidget* %31, i8* %32, i8* null)
  %33 = load i8*, i8** %tip, align 8
  call void @g_free(i8* %33)
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.23, %if.end.9
  %34 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %edit_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %34, i32 0, i32 10
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  %36 = load i32, i32* %selected, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %35, i32 %36)
  %37 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %up_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %37, i32 0, i32 11
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %up_button, align 8
  %39 = load i32, i32* %selected, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %38, i32 %39)
  %40 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %down_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %40, i32 0, i32 12
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %down_button, align 8
  %42 = load i32, i32* %selected, align 4
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %41, i32 %42)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_activate_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data, %struct._GimpControllerList* %list) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %list.addr = alloca %struct._GimpControllerList*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  %0 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %edit_button = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %0, i32 0, i32 10
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %edit_button, align 8
  %call = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %edit_button1 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %2, i32 0, i32 10
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

declare %struct._GtkWidget* @gimp_editor_add_button(%struct._GimpEditor*, i8*, i8*, i8*, void ()*, void ()*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_edit_clicked(%struct._GtkWidget* %button, %struct._GimpControllerList* %list) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %list.addr = alloca %struct._GimpControllerList*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %editor = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  %0 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %0, i32 0, i32 7
  %1 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info, align 8
  %2 = bitcast %struct._GimpControllerInfo* %1 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0))
  %4 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %4, %struct._GtkWidget** %dialog, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #8
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %8)
  br label %return

if.end:                                           ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0)) #6
  %9 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %10 = bitcast %struct._GimpControllerList* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  %call7 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %11)
  %call8 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0), %struct._GtkWidget* %call7, i32 2, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 -7, i8* null)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %dialog, align 8
  %call9 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory* %call9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0), %struct._GtkWidget* %12)
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %14 = bitcast %struct._GtkWidget* %13 to i8*
  %call10 = call i64 @g_signal_connect_data(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %15 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info11 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %15, i32 0, i32 7
  %16 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info11, align 8
  %17 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call12 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %18)
  %call13 = call %struct._GtkWidget* @gimp_controller_editor_new(%struct._GimpControllerInfo* %16, %struct._GimpContext* %call12)
  store %struct._GtkWidget* %call13, %struct._GtkWidget** %editor, align 8
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_container_get_type() #8
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %21, i32 12)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_dialog_get_type() #8
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkDialog*
  %call18 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %24)
  %25 = bitcast %struct._GtkWidget* %call18 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_box_get_type() #8
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call19)
  %26 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkBox*
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %26, %struct._GtkWidget* %27, i32 1, i32 1, i32 0)
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %editor, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %28)
  %29 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info21 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %29, i32 0, i32 7
  %30 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info21, align 8
  %31 = bitcast %struct._GimpControllerInfo* %30 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 80)
  %32 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %34 = bitcast %struct._GtkWidget* %33 to i8*
  call void @g_object_set_data(%struct._GObject* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0), i8* %34)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  %37 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info23 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %37, i32 0, i32 7
  %38 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info23, align 8
  %39 = bitcast %struct._GimpControllerInfo* %38 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  %41 = bitcast %struct._GObject* %40 to i8*
  %call25 = call i64 @g_signal_connect_object(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpControllerInfo*)* @gimp_controller_list_edit_destroy to void ()*), i8* %41, i32 0)
  %42 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %43 = bitcast %struct._GimpControllerList* %42 to i8*
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %45 = bitcast %struct._GtkWidget* %44 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %47 = bitcast %struct._GObject* %46 to i8*
  %call27 = call i64 @g_signal_connect_object(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %47, i32 2)
  %48 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %49 = bitcast %struct._GimpControllerList* %48 to i8*
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %51 = bitcast %struct._GtkWidget* %50 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  %53 = bitcast %struct._GObject* %52 to i8*
  %call29 = call i64 @g_signal_connect_object(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %53, i32 2)
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %54)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_up_clicked(%struct._GtkWidget* %button, %struct._GimpControllerList* %list) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %list.addr = alloca %struct._GimpControllerList*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %index = alloca i32, align 4
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  %0 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpContainer* @gimp_controllers_get_list(%struct._Gimp* %1)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container, align 8
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %3 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %3, i32 0, i32 7
  %4 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info, align 8
  %5 = bitcast %struct._GimpControllerInfo* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  %call3 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %2, %struct._GimpObject* %6)
  store i32 %call3, i32* %index, align 4
  %7 = load i32, i32* %index, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %9 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info4 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %9, i32 0, i32 7
  %10 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info4, align 8
  %11 = bitcast %struct._GimpControllerInfo* %10 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #8
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call5)
  %12 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %13 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %13, 1
  %call7 = call i32 @gimp_container_reorder(%struct._GimpContainer* %8, %struct._GimpObject* %12, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_down_clicked(%struct._GtkWidget* %button, %struct._GimpControllerList* %list) #3 {
entry:
  %button.addr = alloca %struct._GtkWidget*, align 8
  %list.addr = alloca %struct._GimpControllerList*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %index = alloca i32, align 4
  store %struct._GtkWidget* %button, %struct._GtkWidget** %button.addr, align 8
  store %struct._GimpControllerList* %list, %struct._GimpControllerList** %list.addr, align 8
  %0 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %0, i32 0, i32 1
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpContainer* @gimp_controllers_get_list(%struct._Gimp* %1)
  store %struct._GimpContainer* %call, %struct._GimpContainer** %container, align 8
  %2 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %3 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %3, i32 0, i32 7
  %4 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info, align 8
  %5 = bitcast %struct._GimpControllerInfo* %4 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_object_get_type() #8
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call1)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpObject*
  %call3 = call i32 @gimp_container_get_child_index(%struct._GimpContainer* %2, %struct._GimpObject* %6)
  store i32 %call3, i32* %index, align 4
  %7 = load i32, i32* %index, align 4
  %8 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %call4 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %8)
  %sub = sub nsw i32 %call4, 1
  %cmp = icmp slt i32 %7, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpControllerList*, %struct._GimpControllerList** %list.addr, align 8
  %dest_info5 = getelementptr inbounds %struct._GimpControllerList, %struct._GimpControllerList* %10, i32 0, i32 7
  %11 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %dest_info5, align 8
  %12 = bitcast %struct._GimpControllerInfo* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #8
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %14 = load i32, i32* %index, align 4
  %add = add nsw i32 %14, 1
  %call8 = call i32 @gimp_container_reorder(%struct._GimpContainer* %9, %struct._GimpObject* %13, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #1

declare void @gtk_button_clicked(%struct._GtkButton*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @gimp_help_set_help_data(%struct._GtkWidget*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_keyboard_get_type() #2

declare %struct._GimpController* @gimp_controllers_get_keyboard(%struct._Gimp*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_wheel_get_type() #2

declare %struct._GimpController* @gimp_controllers_get_wheel(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_mouse_get_type() #2

declare %struct._GimpController* @gimp_controllers_get_mouse(%struct._Gimp*) #1

declare %struct._GimpControllerInfo* @gimp_controller_info_new(i64) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i8* @gimp_object_get_name(i8*) #1

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #2

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #2

declare void @gimp_controller_info_set_enabled(%struct._GimpControllerInfo*, i32) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_controller_info_get_type() #2

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gimp_dialog_factory_add_foreign(%struct._GimpDialogFactory*, i8*, %struct._GtkWidget*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GtkWidget* @gimp_controller_editor_new(%struct._GimpControllerInfo*, %struct._GimpContext*) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_controller_list_edit_destroy(%struct._GtkWidget* %widget, %struct._GimpControllerInfo* %info) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %info.addr = alloca %struct._GimpControllerInfo*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpControllerInfo* %info, %struct._GimpControllerInfo** %info.addr, align 8
  %0 = load %struct._GimpControllerInfo*, %struct._GimpControllerInfo** %info.addr, align 8
  %1 = bitcast %struct._GimpControllerInfo* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i32 0, i32 0), i8* null)
  ret void
}

declare i32 @gimp_container_get_child_index(%struct._GimpContainer*, %struct._GimpObject*) #1

declare i32 @gimp_container_reorder(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

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
