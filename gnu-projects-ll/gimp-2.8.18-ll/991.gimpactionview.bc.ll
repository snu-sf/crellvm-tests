; ModuleID = './app/widgets/gimpactionview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpActionViewClass = type { %struct._GtkTreeViewClass }
%struct._GtkTreeViewClass = type { %struct._GtkContainerClass, void (%struct._GtkTreeView*, %struct._GtkAdjustment*, %struct._GtkAdjustment*)*, void (%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*)*, i32 (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, i32 (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*)*, void (%struct._GtkTreeView*)*, void (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*, i32, i32)*, i32 (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*, i32)*, i32 (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*, i32, i32, i32)*, i32 (%struct._GtkTreeView*)*, i32 (%struct._GtkTreeView*)*, void ()*, void ()*, void ()*, void ()*, void ()* }
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
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkTreePath = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpActionView = type { %struct._GtkTreeView, %struct._GimpUIManager*, i32, i8* }
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpActionGroup = type { %struct._GtkActionGroup, %struct._Gimp*, i8*, i8*, i8*, void (%struct._GimpActionGroup*, i8*)* }
%struct._GtkActionGroup = type { %struct._GObject, %struct._GtkActionGroupPrivate* }
%struct._GtkActionGroupPrivate = type opaque
%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GtkActionPrivate = type opaque
%struct._GtkTreeModelFilter = type { %struct._GObject, %struct._GtkTreeModelFilterPrivate* }
%struct._GtkTreeModelFilterPrivate = type opaque
%struct._GimpAction = type { %struct._GtkAction, %struct._GimpContext*, %struct._GimpRGB*, %struct._GimpViewable*, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpViewable = type opaque
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GtkCellRendererAccel = type { %struct._GtkCellRendererText, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkCellRendererText = type { %struct._GtkCellRenderer, i8*, %struct._PangoFontDescription*, double, %struct._PangoColor, %struct._PangoColor, %struct._PangoAttrList*, i32, i32, i32, i16 }
%struct._PangoColor = type { i16, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreeRowReference = type opaque
%struct.ConfirmData = type { %struct._GimpUIManager*, i8*, i32, i32 }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }

@gimp_action_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpActionView\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_action_view_new = private unnamed_addr constant [21 x i8] c"gimp_action_view_new\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"GIMP_IS_UI_MANAGER (manager)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-menu\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-popup\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"rules-hint\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"accel-changed\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Shortcut\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"accel-key\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"accel-mods\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"accel-edited\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"accel-cleared\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@__func__.gimp_action_view_set_filter = private unnamed_addr constant [28 x i8] c"gimp_action_view_set_filter\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"GIMP_IS_ACTION_VIEW (view)\00", align 1
@gimp_action_view_parent_class = internal global i8* null, align 8
@GimpActionView_private_offset = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"start-editing-path\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Invalid shortcut.\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Changing shortcut failed.\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"action-group\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Conflicting Shortcuts\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"_Reassign shortcut\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"Shortcut \22%s\22 is already taken by \22%s\22 from the \22%s\22 group.\00", align 1
@.str.31 = private unnamed_addr constant [64 x i8] c"Reassigning the shortcut will cause it to be removed from \22%s\22.\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Removing shortcut failed.\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_action_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_action_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_action_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gtk_tree_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 992, void (i8*, i8*)* bitcast (void (i8*)* @gimp_action_view_class_intern_init to void (i8*, i8*)*), i32 144, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpActionView*)* @gimp_action_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_action_view_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_action_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_action_view_parent_class, align 8
  %1 = load i32, i32* @GimpActionView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpActionView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpActionViewClass*
  call void @gimp_action_view_class_init(%struct._GimpActionViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_init(%struct._GimpActionView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpActionView*, align 8
  store %struct._GimpActionView* %view, %struct._GimpActionView** %view.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_action_view_new(%struct._GimpUIManager* %manager, i8* %select_action, i32 %show_shortcuts) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %select_action.addr = alloca i8*, align 8
  %show_shortcuts.addr = alloca i32, align 4
  %view = alloca %struct._GtkTreeView*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %cell = alloca %struct._GtkCellRenderer*, align 8
  %store = alloca %struct._GtkTreeStore*, align 8
  %filter = alloca %struct._GtkTreeModel*, align 8
  %accel_group = alloca %struct._GtkAccelGroup*, align 8
  %list = alloca %struct._GList*, align 8
  %select_path = alloca %struct._GtkTreePath*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %group = alloca %struct._GimpActionGroup*, align 8
  %actions = alloca %struct._GList*, align 8
  %list2 = alloca %struct._GList*, align 8
  %group_iter = alloca %struct._GtkTreeIter, align 8
  %action = alloca %struct._GtkAction*, align 8
  %name = alloca i8*, align 8
  %stock_id38 = alloca i8*, align 8
  %label41 = alloca i8*, align 8
  %label_casefold = alloca i8*, align 8
  %accel_key = alloca i32, align 4
  %accel_mask = alloca i32, align 4
  %accel_closure = alloca %struct._GClosure*, align 8
  %action_iter = alloca %struct._GtkTreeIter, align 8
  %key = alloca %struct._GtkAccelKey*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %select_action, i8** %select_action.addr, align 8
  store i32 %show_shortcuts, i32* %show_shortcuts.addr, align 4
  store %struct._GtkTreePath* null, %struct._GtkTreePath** %select_path, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %1 = bitcast %struct._GimpUIManager* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_ui_manager_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_action_view_new, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gtk_action_get_type() #6
  %call12 = call i64 @gdk_modifier_type_get_type() #6
  %call13 = call i64 @g_closure_get_type() #6
  %call14 = call %struct._GtkTreeStore* (i32, ...) @gtk_tree_store_new(i32 9, i64 20, i64 %call11, i64 64, i64 64, i64 64, i64 64, i64 28, i64 %call12, i64 %call13)
  store %struct._GtkTreeStore* %call14, %struct._GtkTreeStore** %store, align 8
  %13 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %14 = bitcast %struct._GimpUIManager* %13 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_ui_manager_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call15)
  %15 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkUIManager*
  %call17 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %15)
  store %struct._GtkAccelGroup* %call17, %struct._GtkAccelGroup** %accel_group, align 8
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %17 = bitcast %struct._GimpUIManager* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_ui_manager_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkUIManager*
  %call20 = call %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager* %18)
  store %struct._GList* %call20, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.99, %do.end
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %19, null
  br i1 %tobool21, label %for.body, label %for.end.101

for.body:                                         ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GimpActionGroup*
  store %struct._GimpActionGroup* %22, %struct._GimpActionGroup** %group, align 8
  %23 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %store, align 8
  call void @gtk_tree_store_append(%struct._GtkTreeStore* %23, %struct._GtkTreeIter* %group_iter, %struct._GtkTreeIter* null)
  %24 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %store, align 8
  %25 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %stock_id = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %25, i32 0, i32 3
  %26 = load i8*, i8** %stock_id, align 8
  %27 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %label = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %27, i32 0, i32 2
  %28 = load i8*, i8** %label, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %24, %struct._GtkTreeIter* %group_iter, i32 2, i8* %26, i32 3, i8* %28, i32 -1)
  %29 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %30 = bitcast %struct._GimpActionGroup* %29 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_action_group_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call26)
  %31 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkActionGroup*
  %call28 = call %struct._GList* @gtk_action_group_list_actions(%struct._GtkActionGroup* %31)
  store %struct._GList* %call28, %struct._GList** %actions, align 8
  %32 = load %struct._GList*, %struct._GList** %actions, align 8
  %call29 = call %struct._GList* @g_list_sort(%struct._GList* %32, i32 (i8*, i8*)* bitcast (i32 (%struct._GimpAction*, %struct._GimpAction*)* @gimp_action_name_compare to i32 (i8*, i8*)*))
  store %struct._GList* %call29, %struct._GList** %actions, align 8
  %33 = load %struct._GList*, %struct._GList** %actions, align 8
  store %struct._GList* %33, %struct._GList** %list2, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %cond.end, %for.body
  %34 = load %struct._GList*, %struct._GList** %list2, align 8
  %tobool31 = icmp ne %struct._GList* %34, null
  br i1 %tobool31, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.30
  %35 = load %struct._GList*, %struct._GList** %list2, align 8
  %data34 = getelementptr inbounds %struct._GList, %struct._GList* %35, i32 0, i32 0
  %36 = load i8*, i8** %data34, align 8
  %37 = bitcast i8* %36 to %struct._GtkAction*
  store %struct._GtkAction* %37, %struct._GtkAction** %action, align 8
  %38 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call36 = call i8* @gtk_action_get_name(%struct._GtkAction* %38)
  store i8* %call36, i8** %name, align 8
  %39 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call39 = call i8* @gtk_action_get_stock_id(%struct._GtkAction* %39)
  store i8* %call39, i8** %stock_id38, align 8
  store i32 0, i32* %accel_key, align 4
  store i32 0, i32* %accel_mask, align 4
  store %struct._GClosure* null, %struct._GClosure** %accel_closure, align 8
  %40 = load i8*, i8** %name, align 8
  %call47 = call i8* @strstr(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #7
  %tobool48 = icmp ne i8* %call47, null
  br i1 %tobool48, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.32
  %41 = load i8*, i8** %name, align 8
  %call49 = call i8* @strstr(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)) #7
  %tobool50 = icmp ne i8* %call49, null
  br i1 %tobool50, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false
  %42 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %43 to i32
  %cmp52 = icmp eq i32 %conv, 60
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false, %for.body.32
  br label %for.inc

if.end.55:                                        ; preds = %lor.lhs.false.51
  %44 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call56 = call i8* @gtk_action_get_label(%struct._GtkAction* %44)
  %call57 = call noalias i8* @gimp_strip_uline(i8* %call56)
  store i8* %call57, i8** %label41, align 8
  %45 = load i8*, i8** %label41, align 8
  %tobool58 = icmp ne i8* %45, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.then.62

land.lhs.true.59:                                 ; preds = %if.end.55
  %46 = load i8*, i8** %label41, align 8
  %call60 = call i64 @strlen(i8* %46) #7
  %tobool61 = icmp ne i64 %call60, 0
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.59, %if.end.55
  %47 = load i8*, i8** %label41, align 8
  call void @g_free(i8* %47)
  %48 = load i8*, i8** %name, align 8
  %call63 = call noalias i8* @g_strdup(i8* %48)
  store i8* %call63, i8** %label41, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %land.lhs.true.59
  %49 = load i8*, i8** %label41, align 8
  %call65 = call noalias i8* @g_utf8_casefold(i8* %49, i64 -1)
  store i8* %call65, i8** %label_casefold, align 8
  %50 = load i32, i32* %show_shortcuts.addr, align 4
  %tobool66 = icmp ne i32 %50, 0
  br i1 %tobool66, label %if.then.67, label %if.end.83

if.then.67:                                       ; preds = %if.end.64
  %51 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call68 = call %struct._GClosure* @gtk_action_get_accel_closure(%struct._GtkAction* %51)
  store %struct._GClosure* %call68, %struct._GClosure** %accel_closure, align 8
  %52 = load %struct._GClosure*, %struct._GClosure** %accel_closure, align 8
  %tobool69 = icmp ne %struct._GClosure* %52, null
  br i1 %tobool69, label %if.then.70, label %if.end.82

if.then.70:                                       ; preds = %if.then.67
  %53 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  %54 = load %struct._GClosure*, %struct._GClosure** %accel_closure, align 8
  %55 = bitcast %struct._GClosure* %54 to i8*
  %call72 = call %struct._GtkAccelKey* @gtk_accel_group_find(%struct._GtkAccelGroup* %53, i32 (%struct._GtkAccelKey*, %struct._GClosure*, i8*)* @gimp_action_view_accel_find_func, i8* %55)
  store %struct._GtkAccelKey* %call72, %struct._GtkAccelKey** %key, align 8
  %56 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %tobool73 = icmp ne %struct._GtkAccelKey* %56, null
  br i1 %tobool73, label %land.lhs.true.74, label %if.end.81

land.lhs.true.74:                                 ; preds = %if.then.70
  %57 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %accel_key75 = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %57, i32 0, i32 0
  %58 = load i32, i32* %accel_key75, align 4
  %tobool76 = icmp ne i32 %58, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.81

land.lhs.true.77:                                 ; preds = %land.lhs.true.74
  %59 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %accel_flags = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %59, i32 0, i32 2
  %bf.load = load i16, i16* %accel_flags, align 4
  %bf.cast = zext i16 %bf.load to i32
  %and = and i32 %bf.cast, 1
  %tobool78 = icmp ne i32 %and, 0
  br i1 %tobool78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %land.lhs.true.77
  %60 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %accel_key80 = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %60, i32 0, i32 0
  %61 = load i32, i32* %accel_key80, align 4
  store i32 %61, i32* %accel_key, align 4
  %62 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %accel_mods = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %62, i32 0, i32 1
  %63 = load i32, i32* %accel_mods, align 4
  store i32 %63, i32* %accel_mask, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %land.lhs.true.77, %land.lhs.true.74, %if.then.70
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.67
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.64
  %64 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %store, align 8
  call void @gtk_tree_store_append(%struct._GtkTreeStore* %64, %struct._GtkTreeIter* %action_iter, %struct._GtkTreeIter* %group_iter)
  %65 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %store, align 8
  %66 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %67 = load i8*, i8** %stock_id38, align 8
  %68 = load i8*, i8** %label41, align 8
  %69 = load i8*, i8** %label_casefold, align 8
  %70 = load i8*, i8** %name, align 8
  %71 = load i32, i32* %accel_key, align 4
  %72 = load i32, i32* %accel_mask, align 4
  %73 = load %struct._GClosure*, %struct._GClosure** %accel_closure, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %65, %struct._GtkTreeIter* %action_iter, i32 0, i32 1, i32 1, %struct._GtkAction* %66, i32 2, i8* %67, i32 3, i8* %68, i32 4, i8* %69, i32 5, i8* %70, i32 6, i32 %71, i32 7, i32 %72, i32 8, %struct._GClosure* %73, i32 -1)
  %74 = load i8*, i8** %label41, align 8
  call void @g_free(i8* %74)
  %75 = load i8*, i8** %label_casefold, align 8
  call void @g_free(i8* %75)
  %76 = load i8*, i8** %select_action.addr, align 8
  %tobool84 = icmp ne i8* %76, null
  br i1 %tobool84, label %land.lhs.true.85, label %if.end.92

land.lhs.true.85:                                 ; preds = %if.end.83
  %77 = load i8*, i8** %select_action.addr, align 8
  %78 = load i8*, i8** %name, align 8
  %call86 = call i32 @strcmp(i8* %77, i8* %78) #7
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.92, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.85
  %79 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %store, align 8
  %80 = bitcast %struct._GtkTreeStore* %79 to %struct._GTypeInstance*
  %call89 = call i64 @gtk_tree_model_get_type() #6
  %call90 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call89)
  %81 = bitcast %struct._GTypeInstance* %call90 to %struct._GtkTreeModel*
  %call91 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %81, %struct._GtkTreeIter* %action_iter)
  store %struct._GtkTreePath* %call91, %struct._GtkTreePath** %select_path, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.88, %land.lhs.true.85, %if.end.83
  br label %for.inc

for.inc:                                          ; preds = %if.end.92, %if.then.54
  %82 = load %struct._GList*, %struct._GList** %list2, align 8
  %tobool93 = icmp ne %struct._GList* %82, null
  br i1 %tobool93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %83 = load %struct._GList*, %struct._GList** %list2, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %83, i32 0, i32 1
  %84 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %84, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list2, align 8
  br label %for.cond.30

for.end:                                          ; preds = %for.cond.30
  %85 = load %struct._GList*, %struct._GList** %actions, align 8
  call void @g_list_free(%struct._GList* %85)
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end
  %86 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool95 = icmp ne %struct._GList* %86, null
  br i1 %tobool95, label %cond.true.96, label %cond.false.98

cond.true.96:                                     ; preds = %for.inc.94
  %87 = load %struct._GList*, %struct._GList** %list, align 8
  %next97 = getelementptr inbounds %struct._GList, %struct._GList* %87, i32 0, i32 1
  %88 = load %struct._GList*, %struct._GList** %next97, align 8
  br label %cond.end.99

cond.false.98:                                    ; preds = %for.inc.94
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.98, %cond.true.96
  %cond100 = phi %struct._GList* [ %88, %cond.true.96 ], [ null, %cond.false.98 ]
  store %struct._GList* %cond100, %struct._GList** %list, align 8
  br label %for.cond

for.end.101:                                      ; preds = %for.cond
  %89 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %store, align 8
  %90 = bitcast %struct._GtkTreeStore* %89 to %struct._GTypeInstance*
  %call102 = call i64 @gtk_tree_model_get_type() #6
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call102)
  %91 = bitcast %struct._GTypeInstance* %call103 to %struct._GtkTreeModel*
  %call104 = call %struct._GtkTreeModel* @gtk_tree_model_filter_new(%struct._GtkTreeModel* %91, %struct._GtkTreePath* null)
  store %struct._GtkTreeModel* %call104, %struct._GtkTreeModel** %filter, align 8
  %92 = load %struct._GtkTreeStore*, %struct._GtkTreeStore** %store, align 8
  %93 = bitcast %struct._GtkTreeStore* %92 to i8*
  call void @g_object_unref(i8* %93)
  %call105 = call i64 @gimp_action_view_get_type() #6
  %94 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %filter, align 8
  %call106 = call i8* (i64, i8*, ...) @g_object_new(i64 %call105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._GtkTreeModel* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 1, i8* null)
  %95 = bitcast i8* %call106 to %struct._GtkTreeView*
  store %struct._GtkTreeView* %95, %struct._GtkTreeView** %view, align 8
  %96 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %filter, align 8
  %97 = bitcast %struct._GtkTreeModel* %96 to i8*
  call void @g_object_unref(i8* %97)
  %98 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %filter, align 8
  %99 = bitcast %struct._GtkTreeModel* %98 to %struct._GTypeInstance*
  %call107 = call i64 @gtk_tree_model_filter_get_type() #6
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %99, i64 %call107)
  %100 = bitcast %struct._GTypeInstance* %call108 to %struct._GtkTreeModelFilter*
  call void @gtk_tree_model_filter_set_visible_column(%struct._GtkTreeModelFilter* %100, i32 0)
  %101 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %102 = bitcast %struct._GimpUIManager* %101 to i8*
  %call109 = call i8* @g_object_ref(i8* %102)
  %103 = bitcast i8* %call109 to %struct._GimpUIManager*
  %104 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %105 = bitcast %struct._GtkTreeView* %104 to %struct._GTypeInstance*
  %call110 = call i64 @gimp_action_view_get_type() #6
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %105, i64 %call110)
  %106 = bitcast %struct._GTypeInstance* %call111 to %struct._GimpActionView*
  %manager112 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %106, i32 0, i32 1
  store %struct._GimpUIManager* %103, %struct._GimpUIManager** %manager112, align 8
  %107 = load i32, i32* %show_shortcuts.addr, align 4
  %108 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %109 = bitcast %struct._GtkTreeView* %108 to %struct._GTypeInstance*
  %call113 = call i64 @gimp_action_view_get_type() #6
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %109, i64 %call113)
  %110 = bitcast %struct._GTypeInstance* %call114 to %struct._GimpActionView*
  %show_shortcuts115 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %110, i32 0, i32 2
  store i32 %107, i32* %show_shortcuts115, align 4
  %111 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %112 = bitcast %struct._GtkTreeView* %111 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_tree_view_get_type() #6
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call116)
  %113 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkTreeView*
  call void @gtk_tree_view_set_search_column(%struct._GtkTreeView* %113, i32 3)
  %call118 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call118, %struct._GtkTreeViewColumn** %column, align 8
  %114 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call119 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #8
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %114, i8* %call119)
  %call120 = call %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new()
  store %struct._GtkCellRenderer* %call120, %struct._GtkCellRenderer** %cell, align 8
  %115 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %116 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %115, %struct._GtkCellRenderer* %116, i32 0)
  %117 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %118 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %117, %struct._GtkCellRenderer* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 2, i8* null)
  %call121 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call121, %struct._GtkCellRenderer** %cell, align 8
  %119 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %120 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %119, %struct._GtkCellRenderer* %120, i32 1)
  %121 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %122 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %121, %struct._GtkCellRenderer* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 3, i8* null)
  %123 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %124 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call122 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %123, %struct._GtkTreeViewColumn* %124)
  %125 = load i32, i32* %show_shortcuts.addr, align 4
  %tobool123 = icmp ne i32 %125, 0
  br i1 %tobool123, label %if.then.124, label %if.end.133

if.then.124:                                      ; preds = %for.end.101
  %126 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %127 = bitcast %struct._GtkTreeView* %126 to i8*
  %call125 = call i64 @g_signal_connect_data(i8* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*)* @gimp_action_view_button_press to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %128 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group, align 8
  %129 = bitcast %struct._GtkAccelGroup* %128 to i8*
  %130 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %131 = bitcast %struct._GtkTreeView* %130 to i8*
  %call126 = call i64 @g_signal_connect_data(i8* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAccelGroup*, i32, i32, %struct._GClosure*, %struct._GimpActionView*)* @gimp_action_view_accel_changed to void ()*), i8* %131, void (i8*, %struct._GClosure*)* null, i32 0)
  %call127 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call127, %struct._GtkTreeViewColumn** %column, align 8
  %132 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #8
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %132, i8* %call128)
  %call129 = call %struct._GtkCellRenderer* @gtk_cell_renderer_accel_new()
  store %struct._GtkCellRenderer* %call129, %struct._GtkCellRenderer** %cell, align 8
  %133 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %134 = bitcast %struct._GtkCellRenderer* %133 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 1, i8* null)
  %135 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %136 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %135, %struct._GtkCellRenderer* %136, i32 1)
  %137 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %138 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %137, %struct._GtkCellRenderer* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 7, i8* null)
  %139 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %140 = bitcast %struct._GtkCellRenderer* %139 to i8*
  %141 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %142 = bitcast %struct._GtkTreeView* %141 to i8*
  %call130 = call i64 @g_signal_connect_data(i8* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererAccel*, i8*, i32, i32, i32, %struct._GimpActionView*)* @gimp_action_view_accel_edited to void ()*), i8* %142, void (i8*, %struct._GClosure*)* null, i32 0)
  %143 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  %144 = bitcast %struct._GtkCellRenderer* %143 to i8*
  %145 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %146 = bitcast %struct._GtkTreeView* %145 to i8*
  %call131 = call i64 @g_signal_connect_data(i8* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererAccel*, i8*, %struct._GimpActionView*)* @gimp_action_view_accel_cleared to void ()*), i8* %146, void (i8*, %struct._GClosure*)* null, i32 0)
  %147 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %148 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call132 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %147, %struct._GtkTreeViewColumn* %148)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.124, %for.end.101
  %call134 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  store %struct._GtkTreeViewColumn* %call134, %struct._GtkTreeViewColumn** %column, align 8
  %149 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call135 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)) #8
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %149, i8* %call135)
  %call136 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  store %struct._GtkCellRenderer* %call136, %struct._GtkCellRenderer** %cell, align 8
  %150 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %151 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %150, %struct._GtkCellRenderer* %151, i32 1)
  %152 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %153 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %152, %struct._GtkCellRenderer* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 5, i8* null)
  %154 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %155 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %call137 = call i32 @gtk_tree_view_append_column(%struct._GtkTreeView* %154, %struct._GtkTreeViewColumn* %155)
  %156 = load %struct._GtkTreePath*, %struct._GtkTreePath** %select_path, align 8
  %tobool138 = icmp ne %struct._GtkTreePath* %156, null
  br i1 %tobool138, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %if.end.133
  %157 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %158 = bitcast %struct._GtkTreeView* %157 to %struct._GTypeInstance*
  %call140 = call i64 @gimp_action_view_get_type() #6
  %call141 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %158, i64 %call140)
  %159 = bitcast %struct._GTypeInstance* %call141 to %struct._GimpActionView*
  %160 = load %struct._GtkTreePath*, %struct._GtkTreePath** %select_path, align 8
  call void @gimp_action_view_select_path(%struct._GimpActionView* %159, %struct._GtkTreePath* %160)
  %161 = load %struct._GtkTreePath*, %struct._GtkTreePath** %select_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %161)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.139, %if.end.133
  %162 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %163 = bitcast %struct._GtkTreeView* %162 to %struct._GTypeInstance*
  %call143 = call i64 @gtk_widget_get_type() #6
  %call144 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %163, i64 %call143)
  %164 = bitcast %struct._GTypeInstance* %call144 to %struct._GtkWidget*
  store %struct._GtkWidget* %164, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.142, %if.else.9
  %165 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %165
}

; Function Attrs: nounwind readnone
declare i64 @gimp_ui_manager_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkTreeStore* @gtk_tree_store_new(i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gdk_modifier_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @g_closure_get_type() #2

declare %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_ui_manager_get_type() #2

declare %struct._GList* @gtk_ui_manager_get_action_groups(%struct._GtkUIManager*) #1

declare void @gtk_tree_store_append(%struct._GtkTreeStore*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #1

declare %struct._GList* @gtk_action_group_list_actions(%struct._GtkActionGroup*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_action_group_get_type() #2

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #1

declare i32 @gimp_action_name_compare(%struct._GimpAction*, %struct._GimpAction*) #1

declare i8* @gtk_action_get_name(%struct._GtkAction*) #1

declare i8* @gtk_action_get_stock_id(%struct._GtkAction*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

declare noalias i8* @gimp_strip_uline(i8*) #1

declare i8* @gtk_action_get_label(%struct._GtkAction*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_utf8_casefold(i8*, i64) #1

declare %struct._GClosure* @gtk_action_get_accel_closure(%struct._GtkAction*) #1

declare %struct._GtkAccelKey* @gtk_accel_group_find(%struct._GtkAccelGroup*, i32 (%struct._GtkAccelKey*, %struct._GClosure*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_action_view_accel_find_func(%struct._GtkAccelKey* %key, %struct._GClosure* %closure, i8* %data) #3 {
entry:
  %key.addr = alloca %struct._GtkAccelKey*, align 8
  %closure.addr = alloca %struct._GClosure*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAccelKey* %key, %struct._GtkAccelKey** %key.addr, align 8
  store %struct._GClosure* %closure, %struct._GClosure** %closure.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GClosure*
  %2 = load %struct._GClosure*, %struct._GClosure** %closure.addr, align 8
  %cmp = icmp eq %struct._GClosure* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_list_free(%struct._GList*) #1

declare %struct._GtkTreeModel* @gtk_tree_model_filter_new(%struct._GtkTreeModel*, %struct._GtkTreePath*) #1

declare void @g_object_unref(i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare void @gtk_tree_model_filter_set_visible_column(%struct._GtkTreeModelFilter*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_filter_get_type() #2

declare i8* @g_object_ref(i8*) #1

declare void @gtk_tree_view_set_search_column(%struct._GtkTreeView*, i32) #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GtkCellRenderer* @gtk_cell_renderer_pixbuf_new() #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare i32 @gtk_tree_view_append_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_action_view_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %event) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventButton*, align 8
  %tree_view = alloca %struct._GtkTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %closure = alloca %struct._GClosure*, align 8
  %source = alloca %struct._GSource*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %event, %struct._GdkEventButton** %event.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  store %struct._GtkTreeView* %2, %struct._GtkTreeView** %tree_view, align 8
  %3 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %window = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %3, i32 0, i32 1
  %4 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %5 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view, align 8
  %call2 = call %struct._GdkDrawable* @gtk_tree_view_get_bin_window(%struct._GtkTreeView* %5)
  %cmp = icmp ne %struct._GdkDrawable* %4, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view, align 8
  %7 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %7, i32 0, i32 4
  %8 = load double, double* %x, align 8
  %conv = fptosi double %8 to i32
  %9 = load %struct._GdkEventButton*, %struct._GdkEventButton** %event.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %9, i32 0, i32 5
  %10 = load double, double* %y, align 8
  %conv3 = fptosi double %10 to i32
  %call4 = call i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView* %6, i32 %conv, i32 %conv3, %struct._GtkTreePath** %path, %struct._GtkTreeViewColumn** null, i32* null, i32* null)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call6 = call i32 @gtk_tree_path_get_depth(%struct._GtkTreePath* %11)
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  %12 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %12)
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.5
  %13 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view, align 8
  %14 = bitcast %struct._GtkTreeView* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %16 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %17 = bitcast %struct._GtkTreePath* %16 to i8*
  call void @g_object_set_data_full(%struct._GObject* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* %17, void (i8*)* bitcast (void (%struct._GtkTreePath*)* @gtk_tree_path_free to void (i8*)*))
  %18 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view, align 8
  %19 = bitcast %struct._GtkTreeView* %18 to i8*
  call void @g_signal_stop_emission_by_name(i8* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  %20 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view, align 8
  %21 = bitcast %struct._GtkTreeView* %20 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call %struct._GClosure* @g_cclosure_new_object(void ()* bitcast (i32 (%struct._GtkTreeView*)* @idle_start_editing to void ()*), %struct._GObject* %22)
  store %struct._GClosure* %call13, %struct._GClosure** %closure, align 8
  %call14 = call %struct._GSource* @g_idle_source_new()
  store %struct._GSource* %call14, %struct._GSource** %source, align 8
  %23 = load %struct._GSource*, %struct._GSource** %source, align 8
  %24 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @g_source_set_closure(%struct._GSource* %23, %struct._GClosure* %24)
  %25 = load %struct._GSource*, %struct._GSource** %source, align 8
  %call15 = call i32 @g_source_attach(%struct._GSource* %25, %struct._GMainContext* null)
  %26 = load %struct._GSource*, %struct._GSource** %source, align 8
  call void @g_source_unref(%struct._GSource* %26)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.10, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.9, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_accel_changed(%struct._GtkAccelGroup* %accel_group, i32 %unused1, i32 %unused2, %struct._GClosure* %accel_closure, %struct._GimpActionView* %view) #3 {
entry:
  %accel_group.addr = alloca %struct._GtkAccelGroup*, align 8
  %unused1.addr = alloca i32, align 4
  %unused2.addr = alloca i32, align 4
  %accel_closure.addr = alloca %struct._GClosure*, align 8
  %view.addr = alloca %struct._GimpActionView*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %child_iter = alloca %struct._GtkTreeIter, align 8
  %child_valid = alloca i32, align 4
  %closure = alloca %struct._GClosure*, align 8
  %key = alloca %struct._GtkAccelKey*, align 8
  %accel_key = alloca i32, align 4
  %accel_mask = alloca i32, align 4
  store %struct._GtkAccelGroup* %accel_group, %struct._GtkAccelGroup** %accel_group.addr, align 8
  store i32 %unused1, i32* %unused1.addr, align 4
  store i32 %unused2, i32* %unused2.addr, align 4
  store %struct._GClosure* %accel_closure, %struct._GClosure** %accel_closure.addr, align 8
  store %struct._GimpActionView* %view, %struct._GimpActionView** %view.addr, align 8
  %0 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %1 = bitcast %struct._GimpActionView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %call2 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %2)
  store %struct._GtkTreeModel* %call2, %struct._GtkTreeModel** %model, align 8
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.34

if.end:                                           ; preds = %entry
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = bitcast %struct._GtkTreeModel* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_model_filter_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeModelFilter*
  %call5 = call %struct._GtkTreeModel* @gtk_tree_model_filter_get_model(%struct._GtkTreeModelFilter* %6)
  store %struct._GtkTreeModel* %call5, %struct._GtkTreeModel** %model, align 8
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool6 = icmp ne %struct._GtkTreeModel* %7, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  br label %for.end.34

if.end.8:                                         ; preds = %if.end
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call9 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter)
  store i32 %call9, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end.8
  %9 = load i32, i32* %iter_valid, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %10 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call11 = call i32 @gtk_tree_model_iter_children(%struct._GtkTreeModel* %10, %struct._GtkTreeIter* %child_iter, %struct._GtkTreeIter* %iter)
  store i32 %call11, i32* %child_valid, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body
  %11 = load i32, i32* %child_valid, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %12 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %12, %struct._GtkTreeIter* %child_iter, i32 8, %struct._GClosure** %closure, i32 -1)
  %13 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  %tobool15 = icmp ne %struct._GClosure* %13, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body.14
  %14 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  call void @g_closure_unref(%struct._GClosure* %14)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.body.14
  %15 = load %struct._GClosure*, %struct._GClosure** %accel_closure.addr, align 8
  %16 = load %struct._GClosure*, %struct._GClosure** %closure, align 8
  %cmp = icmp eq %struct._GClosure* %15, %16
  br i1 %cmp, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.17
  store i32 0, i32* %accel_key, align 4
  store i32 0, i32* %accel_mask, align 4
  %17 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %accel_group.addr, align 8
  %18 = load %struct._GClosure*, %struct._GClosure** %accel_closure.addr, align 8
  %19 = bitcast %struct._GClosure* %18 to i8*
  %call19 = call %struct._GtkAccelKey* @gtk_accel_group_find(%struct._GtkAccelGroup* %17, i32 (%struct._GtkAccelKey*, %struct._GClosure*, i8*)* @gimp_action_view_accel_find_func, i8* %19)
  store %struct._GtkAccelKey* %call19, %struct._GtkAccelKey** %key, align 8
  %20 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %tobool20 = icmp ne %struct._GtkAccelKey* %20, null
  br i1 %tobool20, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.then.18
  %21 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %accel_key21 = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %21, i32 0, i32 0
  %22 = load i32, i32* %accel_key21, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.27

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %23 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %accel_flags = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %23, i32 0, i32 2
  %bf.load = load i16, i16* %accel_flags, align 4
  %bf.cast = zext i16 %bf.load to i32
  %and = and i32 %bf.cast, 1
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true.23
  %24 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %accel_key26 = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %24, i32 0, i32 0
  %25 = load i32, i32* %accel_key26, align 4
  store i32 %25, i32* %accel_key, align 4
  %26 = load %struct._GtkAccelKey*, %struct._GtkAccelKey** %key, align 8
  %accel_mods = getelementptr inbounds %struct._GtkAccelKey, %struct._GtkAccelKey* %26, i32 0, i32 1
  %27 = load i32, i32* %accel_mods, align 4
  store i32 %27, i32* %accel_mask, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %land.lhs.true.23, %land.lhs.true, %if.then.18
  %28 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %29 = bitcast %struct._GtkTreeModel* %28 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_tree_store_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call28)
  %30 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkTreeStore*
  %31 = load i32, i32* %accel_key, align 4
  %32 = load i32, i32* %accel_mask, align 4
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %30, %struct._GtkTreeIter* %child_iter, i32 6, i32 %31, i32 7, i32 %32, i32 -1)
  br label %for.end.34

if.end.30:                                        ; preds = %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %33 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call31 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %33, %struct._GtkTreeIter* %child_iter)
  store i32 %call31, i32* %child_valid, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %34 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call33 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %34, %struct._GtkTreeIter* %iter)
  store i32 %call33, i32* %iter_valid, align 4
  br label %for.cond

for.end.34:                                       ; preds = %if.then, %if.then.7, %if.end.27, %for.cond
  ret void
}

declare %struct._GtkCellRenderer* @gtk_cell_renderer_accel_new() #1

declare void @g_object_set(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_accel_edited(%struct._GtkCellRendererAccel* %accel, i8* %path_string, i32 %accel_key, i32 %accel_mask, i32 %hardware_keycode, %struct._GimpActionView* %view) #3 {
entry:
  %accel.addr = alloca %struct._GtkCellRendererAccel*, align 8
  %path_string.addr = alloca i8*, align 8
  %accel_key.addr = alloca i32, align 4
  %accel_mask.addr = alloca i32, align 4
  %hardware_keycode.addr = alloca i32, align 4
  %view.addr = alloca %struct._GimpActionView*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %accel_path = alloca i8*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %conflict_action = alloca %struct._GtkAction*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %child_iter = alloca %struct._GtkTreeIter, align 8
  %child_valid = alloca i32, align 4
  %child_accel_key = alloca i32, align 4
  %child_accel_mask = alloca i32, align 4
  store %struct._GtkCellRendererAccel* %accel, %struct._GtkCellRendererAccel** %accel.addr, align 8
  store i8* %path_string, i8** %path_string.addr, align 8
  store i32 %accel_key, i32* %accel_key.addr, align 4
  store i32 %accel_mask, i32* %accel_mask.addr, align 4
  store i32 %hardware_keycode, i32* %hardware_keycode.addr, align 4
  store %struct._GimpActionView* %view, %struct._GimpActionView** %view.addr, align 8
  %0 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %1 = load i8*, i8** %path_string.addr, align 8
  %call = call i8* @gimp_action_view_get_accel_action(%struct._GimpActionView* %0, i8* %1, %struct._GtkAction** %action)
  store i8* %call, i8** %accel_path, align 8
  %2 = load i8*, i8** %accel_path, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.53

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %accel_key.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %accel_key.addr, align 4
  %cmp = icmp eq i32 %4, 65361
  br i1 %cmp, label %if.then.12, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %accel_key.addr, align 4
  %cmp3 = icmp eq i32 %5, 65363
  br i1 %cmp3, label %if.then.12, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %6 = load i32, i32* %accel_key.addr, align 4
  %cmp5 = icmp eq i32 %6, 65362
  br i1 %cmp5, label %if.then.12, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %7 = load i32, i32* %accel_key.addr, align 4
  %cmp7 = icmp eq i32 %7, 65364
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %8 = load i32, i32* %accel_key.addr, align 4
  %cmp9 = icmp eq i32 %8, 32
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %9 = load i32, i32* %accel_key.addr, align 4
  %cmp11 = icmp eq i32 %9, 65408
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %if.end
  %10 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %manager = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %10, i32 0, i32 1
  %11 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %11, i32 0, i32 2
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %13 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %14 = bitcast %struct._GimpActionView* %13 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0)) #8
  call void @gimp_message_literal(%struct._Gimp* %12, %struct._GObject* %15, i32 2, i8* %call14)
  br label %if.end.53

if.else:                                          ; preds = %lor.lhs.false.10
  %16 = load i8*, i8** %accel_path, align 8
  %17 = load i32, i32* %accel_key.addr, align 4
  %18 = load i32, i32* %accel_mask.addr, align 4
  %call15 = call i32 @gtk_accel_map_change_entry(i8* %16, i32 %17, i32 %18, i32 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.52, label %if.then.17

if.then.17:                                       ; preds = %if.else
  store %struct._GtkAction* null, %struct._GtkAction** %conflict_action, align 8
  %19 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %20 = bitcast %struct._GimpActionView* %19 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_tree_view_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call18)
  %21 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkTreeView*
  %call20 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %21)
  store %struct._GtkTreeModel* %call20, %struct._GtkTreeModel** %model, align 8
  %22 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %23 = bitcast %struct._GtkTreeModel* %22 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_tree_model_filter_get_type() #6
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call21)
  %24 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkTreeModelFilter*
  %call23 = call %struct._GtkTreeModel* @gtk_tree_model_filter_get_model(%struct._GtkTreeModelFilter* %24)
  store %struct._GtkTreeModel* %call23, %struct._GtkTreeModel** %model, align 8
  %25 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call24 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %25, %struct._GtkTreeIter* %iter)
  store i32 %call24, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.then.17
  %26 = load i32, i32* %iter_valid, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %27 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call26 = call i32 @gtk_tree_model_iter_children(%struct._GtkTreeModel* %27, %struct._GtkTreeIter* %child_iter, %struct._GtkTreeIter* %iter)
  store i32 %call26, i32* %child_valid, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %for.body
  %28 = load i32, i32* %child_valid, align 4
  %tobool28 = icmp ne i32 %28, 0
  br i1 %tobool28, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.27
  %29 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %29, %struct._GtkTreeIter* %child_iter, i32 6, i32* %child_accel_key, i32 7, i32* %child_accel_mask, i32 -1)
  %30 = load i32, i32* %accel_key.addr, align 4
  %31 = load i32, i32* %child_accel_key, align 4
  %cmp30 = icmp eq i32 %30, %31
  br i1 %cmp30, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %for.body.29
  %32 = load i32, i32* %accel_mask.addr, align 4
  %33 = load i32, i32* %child_accel_mask, align 4
  %cmp31 = icmp eq i32 %32, %33
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true
  %34 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %34, %struct._GtkTreeIter* %child_iter, i32 1, %struct._GtkAction** %conflict_action, i32 -1)
  br label %for.end

if.end.33:                                        ; preds = %land.lhs.true, %for.body.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %35 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call34 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %35, %struct._GtkTreeIter* %child_iter)
  store i32 %call34, i32* %child_valid, align 4
  br label %for.cond.27

for.end:                                          ; preds = %if.then.32, %for.cond.27
  %36 = load %struct._GtkAction*, %struct._GtkAction** %conflict_action, align 8
  %tobool35 = icmp ne %struct._GtkAction* %36, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.end
  br label %for.end.40

if.end.37:                                        ; preds = %for.end
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %37 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call39 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %37, %struct._GtkTreeIter* %iter)
  store i32 %call39, i32* %iter_valid, align 4
  br label %for.cond

for.end.40:                                       ; preds = %if.then.36, %for.cond
  %38 = load %struct._GtkAction*, %struct._GtkAction** %conflict_action, align 8
  %39 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %cmp41 = icmp ne %struct._GtkAction* %38, %39
  br i1 %cmp41, label %if.then.42, label %if.end.51

if.then.42:                                       ; preds = %for.end.40
  %40 = load %struct._GtkAction*, %struct._GtkAction** %conflict_action, align 8
  %tobool43 = icmp ne %struct._GtkAction* %40, null
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.then.42
  %41 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %42 = load %struct._GtkAction*, %struct._GtkAction** %conflict_action, align 8
  %43 = load i32, i32* %accel_key.addr, align 4
  %44 = load i32, i32* %accel_mask.addr, align 4
  %45 = load i8*, i8** %accel_path, align 8
  call void @gimp_action_view_conflict_confirm(%struct._GimpActionView* %41, %struct._GtkAction* %42, i32 %43, i32 %44, i8* %45)
  %46 = load %struct._GtkAction*, %struct._GtkAction** %conflict_action, align 8
  %47 = bitcast %struct._GtkAction* %46 to i8*
  call void @g_object_unref(i8* %47)
  br label %if.end.50

if.else.45:                                       ; preds = %if.then.42
  %48 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %manager46 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %48, i32 0, i32 1
  %49 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager46, align 8
  %gimp47 = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %49, i32 0, i32 2
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp47, align 8
  %51 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %52 = bitcast %struct._GimpActionView* %51 to %struct._GTypeInstance*
  %call48 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call48 to %struct._GObject*
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0)) #8
  call void @gimp_message_literal(%struct._Gimp* %50, %struct._GObject* %53, i32 2, i8* %call49)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.45, %if.then.44
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.end.40
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.then, %if.end.52, %if.then.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_accel_cleared(%struct._GtkCellRendererAccel* %accel, i8* %path_string, %struct._GimpActionView* %view) #3 {
entry:
  %accel.addr = alloca %struct._GtkCellRendererAccel*, align 8
  %path_string.addr = alloca i8*, align 8
  %view.addr = alloca %struct._GimpActionView*, align 8
  %action = alloca %struct._GtkAction*, align 8
  %accel_path = alloca i8*, align 8
  store %struct._GtkCellRendererAccel* %accel, %struct._GtkCellRendererAccel** %accel.addr, align 8
  store i8* %path_string, i8** %path_string.addr, align 8
  store %struct._GimpActionView* %view, %struct._GimpActionView** %view.addr, align 8
  %0 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %1 = load i8*, i8** %path_string.addr, align 8
  %call = call i8* @gimp_action_view_get_accel_action(%struct._GimpActionView* %0, i8* %1, %struct._GtkAction** %action)
  store i8* %call, i8** %accel_path, align 8
  %2 = load i8*, i8** %accel_path, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.6

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %accel_path, align 8
  %call1 = call i32 @gtk_accel_map_change_entry(i8* %3, i32 0, i32 0, i32 0)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %manager = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %4, i32 0, i32 1
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %5, i32 0, i32 2
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %7 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %8 = bitcast %struct._GimpActionView* %7 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0)) #8
  call void @gimp_message_literal(%struct._Gimp* %6, %struct._GObject* %9, i32 2, i8* %call5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then, %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_select_path(%struct._GimpActionView* %view, %struct._GtkTreePath* %path) #3 {
entry:
  %view.addr = alloca %struct._GimpActionView*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %tv = alloca %struct._GtkTreeView*, align 8
  %expand = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpActionView* %view, %struct._GimpActionView** %view.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  %0 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %1 = bitcast %struct._GimpActionView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  store %struct._GtkTreeView* %2, %struct._GtkTreeView** %tv, align 8
  %3 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %call2 = call %struct._GtkTreePath* @gtk_tree_path_copy(%struct._GtkTreePath* %3)
  store %struct._GtkTreePath* %call2, %struct._GtkTreePath** %expand, align 8
  %4 = load %struct._GtkTreePath*, %struct._GtkTreePath** %expand, align 8
  %call3 = call i32 @gtk_tree_path_up(%struct._GtkTreePath* %4)
  %5 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv, align 8
  %6 = load %struct._GtkTreePath*, %struct._GtkTreePath** %expand, align 8
  %call4 = call i32 @gtk_tree_view_expand_row(%struct._GtkTreeView* %5, %struct._GtkTreePath* %6, i32 0)
  %7 = load %struct._GtkTreePath*, %struct._GtkTreePath** %expand, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %7)
  %8 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv, align 8
  %9 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  call void @gtk_tree_view_set_cursor(%struct._GtkTreeView* %8, %struct._GtkTreePath* %9, %struct._GtkTreeViewColumn* null, i32 0)
  %10 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tv, align 8
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  call void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView* %10, %struct._GtkTreePath* %11, %struct._GtkTreeViewColumn* null, i32 1, float 5.000000e-01, float 0.000000e+00)
  ret void
}

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_action_view_set_filter(%struct._GimpActionView* %view, i8* %filter) #3 {
entry:
  %view.addr = alloca %struct._GimpActionView*, align 8
  %filter.addr = alloca i8*, align 8
  %sel = alloca %struct._GtkTreeSelection*, align 8
  %filtered_model = alloca %struct._GtkTreeModel*, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %iter_valid = alloca i32, align 4
  %selected_row = alloca %struct._GtkTreeRowReference*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %path = alloca %struct._GtkTreePath*, align 8
  %child_iter = alloca %struct._GtkTreeIter, align 8
  %child_valid = alloca i32, align 4
  %n_children = alloca i32, align 4
  %visible = alloca i32, align 4
  %label = alloca i8*, align 8
  %name = alloca i8*, align 8
  %path94 = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpActionView* %view, %struct._GimpActionView** %view.addr, align 8
  store i8* %filter, i8** %filter.addr, align 8
  store %struct._GtkTreeRowReference* null, %struct._GtkTreeRowReference** %selected_row, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %1 = bitcast %struct._GimpActionView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_action_view_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_action_view_set_filter, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.97

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %14 = bitcast %struct._GimpActionView* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_tree_view_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkTreeView*
  %call13 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %15)
  store %struct._GtkTreeModel* %call13, %struct._GtkTreeModel** %filtered_model, align 8
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %filtered_model, align 8
  %17 = bitcast %struct._GtkTreeModel* %16 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_tree_model_filter_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call14)
  %18 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkTreeModelFilter*
  %call16 = call %struct._GtkTreeModel* @gtk_tree_model_filter_get_model(%struct._GtkTreeModelFilter* %18)
  store %struct._GtkTreeModel* %call16, %struct._GtkTreeModel** %model, align 8
  %19 = load i8*, i8** %filter.addr, align 8
  %tobool17 = icmp ne i8* %19, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %do.end
  %20 = load i8*, i8** %filter.addr, align 8
  %call19 = call i64 @strlen(i8* %20) #7
  %tobool20 = icmp ne i64 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.18
  store i8* null, i8** %filter.addr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.18, %do.end
  %21 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %filter23 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %21, i32 0, i32 3
  %22 = load i8*, i8** %filter23, align 8
  call void @g_free(i8* %22)
  %23 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %filter24 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %23, i32 0, i32 3
  store i8* null, i8** %filter24, align 8
  %24 = load i8*, i8** %filter.addr, align 8
  %tobool25 = icmp ne i8* %24, null
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.22
  %25 = load i8*, i8** %filter.addr, align 8
  %call27 = call noalias i8* @g_utf8_casefold(i8* %25, i64 -1)
  %26 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %filter28 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %26, i32 0, i32 3
  store i8* %call27, i8** %filter28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.22
  %27 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %28 = bitcast %struct._GimpActionView* %27 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_tree_view_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call30)
  %29 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTreeView*
  %call32 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %29)
  store %struct._GtkTreeSelection* %call32, %struct._GtkTreeSelection** %sel, align 8
  %30 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %sel, align 8
  %call33 = call i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection* %30, %struct._GtkTreeModel** null, %struct._GtkTreeIter* %iter)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.29
  %31 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %filtered_model, align 8
  %call37 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %31, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call37, %struct._GtkTreePath** %path, align 8
  %32 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %filtered_model, align 8
  %33 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call38 = call %struct._GtkTreeRowReference* @gtk_tree_row_reference_new(%struct._GtkTreeModel* %32, %struct._GtkTreePath* %33)
  store %struct._GtkTreeRowReference* %call38, %struct._GtkTreeRowReference** %selected_row, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end.29
  %34 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call40 = call i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel* %34, %struct._GtkTreeIter* %iter)
  store i32 %call40, i32* %iter_valid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %if.end.39
  %35 = load i32, i32* %iter_valid, align 4
  %tobool41 = icmp ne i32 %35, 0
  br i1 %tobool41, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n_children, align 4
  %36 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call45 = call i32 @gtk_tree_model_iter_children(%struct._GtkTreeModel* %36, %struct._GtkTreeIter* %child_iter, %struct._GtkTreeIter* %iter)
  store i32 %call45, i32* %child_valid, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %for.body
  %37 = load i32, i32* %child_valid, align 4
  %tobool47 = icmp ne i32 %37, 0
  br i1 %tobool47, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.46
  store i32 1, i32* %visible, align 4
  %38 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %filter50 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %38, i32 0, i32 3
  %39 = load i8*, i8** %filter50, align 8
  %tobool51 = icmp ne i8* %39, null
  br i1 %tobool51, label %if.then.52, label %if.end.64

if.then.52:                                       ; preds = %for.body.48
  %40 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %40, %struct._GtkTreeIter* %child_iter, i32 4, i8** %label, i32 5, i8** %name, i32 -1)
  %41 = load i8*, i8** %label, align 8
  %tobool55 = icmp ne i8* %41, null
  br i1 %tobool55, label %land.lhs.true.56, label %land.end

land.lhs.true.56:                                 ; preds = %if.then.52
  %42 = load i8*, i8** %name, align 8
  %tobool57 = icmp ne i8* %42, null
  br i1 %tobool57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.56
  %43 = load i8*, i8** %label, align 8
  %44 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %filter58 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %44, i32 0, i32 3
  %45 = load i8*, i8** %filter58, align 8
  %call59 = call i8* @strstr(i8* %43, i8* %45) #7
  %cmp60 = icmp ne i8* %call59, null
  br i1 %cmp60, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %46 = load i8*, i8** %name, align 8
  %47 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %filter61 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %47, i32 0, i32 3
  %48 = load i8*, i8** %filter61, align 8
  %call62 = call i8* @strstr(i8* %46, i8* %48) #7
  %cmp63 = icmp ne i8* %call62, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %49 = phi i1 [ true, %land.rhs ], [ %cmp63, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.56, %if.then.52
  %50 = phi i1 [ false, %land.lhs.true.56 ], [ false, %if.then.52 ], [ %49, %lor.end ]
  %land.ext = zext i1 %50 to i32
  store i32 %land.ext, i32* %visible, align 4
  %51 = load i8*, i8** %label, align 8
  call void @g_free(i8* %51)
  %52 = load i8*, i8** %name, align 8
  call void @g_free(i8* %52)
  br label %if.end.64

if.end.64:                                        ; preds = %land.end, %for.body.48
  %53 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %54 = bitcast %struct._GtkTreeModel* %53 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_tree_store_get_type() #6
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call65)
  %55 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkTreeStore*
  %56 = load i32, i32* %visible, align 4
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %55, %struct._GtkTreeIter* %child_iter, i32 0, i32 %56, i32 -1)
  %57 = load i32, i32* %visible, align 4
  %tobool67 = icmp ne i32 %57, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.64
  %58 = load i32, i32* %n_children, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %n_children, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.64
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %59 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call70 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %59, %struct._GtkTreeIter* %child_iter)
  store i32 %call70, i32* %child_valid, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  %60 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %61 = bitcast %struct._GtkTreeModel* %60 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_tree_store_get_type() #6
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call71)
  %62 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkTreeStore*
  %63 = load i32, i32* %n_children, align 4
  %cmp73 = icmp sgt i32 %63, 0
  %conv = zext i1 %cmp73 to i32
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %62, %struct._GtkTreeIter* %iter, i32 0, i32 %conv, i32 -1)
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end
  %64 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call75 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %64, %struct._GtkTreeIter* %iter)
  store i32 %call75, i32* %iter_valid, align 4
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  %65 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %filter77 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %65, i32 0, i32 3
  %66 = load i8*, i8** %filter77, align 8
  %tobool78 = icmp ne i8* %66, null
  br i1 %tobool78, label %if.then.79, label %if.else.82

if.then.79:                                       ; preds = %for.end.76
  %67 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %68 = bitcast %struct._GimpActionView* %67 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_tree_view_get_type() #6
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call80)
  %69 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkTreeView*
  call void @gtk_tree_view_expand_all(%struct._GtkTreeView* %69)
  br label %if.end.85

if.else.82:                                       ; preds = %for.end.76
  %70 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %71 = bitcast %struct._GimpActionView* %70 to %struct._GTypeInstance*
  %call83 = call i64 @gtk_tree_view_get_type() #6
  %call84 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 %call83)
  %72 = bitcast %struct._GTypeInstance* %call84 to %struct._GtkTreeView*
  call void @gtk_tree_view_collapse_all(%struct._GtkTreeView* %72)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.79
  %73 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %74 = bitcast %struct._GimpActionView* %73 to %struct._GTypeInstance*
  %call86 = call i64 @gtk_tree_view_get_type() #6
  %call87 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 %call86)
  %75 = bitcast %struct._GTypeInstance* %call87 to %struct._GtkTreeView*
  call void @gtk_tree_view_columns_autosize(%struct._GtkTreeView* %75)
  %76 = load %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %selected_row, align 8
  %tobool88 = icmp ne %struct._GtkTreeRowReference* %76, null
  br i1 %tobool88, label %if.then.89, label %if.end.97

if.then.89:                                       ; preds = %if.end.85
  %77 = load %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %selected_row, align 8
  %call90 = call i32 @gtk_tree_row_reference_valid(%struct._GtkTreeRowReference* %77)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %if.then.89
  %78 = load %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %selected_row, align 8
  %call95 = call %struct._GtkTreePath* @gtk_tree_row_reference_get_path(%struct._GtkTreeRowReference* %78)
  store %struct._GtkTreePath* %call95, %struct._GtkTreePath** %path94, align 8
  %79 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %80 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path94, align 8
  call void @gimp_action_view_select_path(%struct._GimpActionView* %79, %struct._GtkTreePath* %80)
  %81 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path94, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %81)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %if.then.89
  %82 = load %struct._GtkTreeRowReference*, %struct._GtkTreeRowReference** %selected_row, align 8
  call void @gtk_tree_row_reference_free(%struct._GtkTreeRowReference* %82)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.9, %if.end.96, %if.end.85
  ret void
}

declare %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView*) #1

declare %struct._GtkTreeModel* @gtk_tree_model_filter_get_model(%struct._GtkTreeModelFilter*) #1

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

declare i32 @gtk_tree_selection_get_selected(%struct._GtkTreeSelection*, %struct._GtkTreeModel**, %struct._GtkTreeIter*) #1

declare %struct._GtkTreeRowReference* @gtk_tree_row_reference_new(%struct._GtkTreeModel*, %struct._GtkTreePath*) #1

declare i32 @gtk_tree_model_get_iter_first(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare i32 @gtk_tree_model_iter_children(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #2

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_view_expand_all(%struct._GtkTreeView*) #1

declare void @gtk_tree_view_collapse_all(%struct._GtkTreeView*) #1

declare void @gtk_tree_view_columns_autosize(%struct._GtkTreeView*) #1

declare i32 @gtk_tree_row_reference_valid(%struct._GtkTreeRowReference*) #1

declare %struct._GtkTreePath* @gtk_tree_row_reference_get_path(%struct._GtkTreeRowReference*) #1

declare void @gtk_tree_row_reference_free(%struct._GtkTreeRowReference*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_class_init(%struct._GimpActionViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpActionViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpActionViewClass* %klass, %struct._GimpActionViewClass** %klass.addr, align 8
  %0 = load %struct._GimpActionViewClass*, %struct._GimpActionViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpActionViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_action_view_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_action_view_finalize, void (%struct._GObject*)** %finalize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpActionView*, align 8
  %group = alloca %struct._GtkAccelGroup*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpActionView*
  store %struct._GimpActionView* %2, %struct._GimpActionView** %view, align 8
  %3 = load %struct._GimpActionView*, %struct._GimpActionView** %view, align 8
  %manager = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %3, i32 0, i32 1
  %4 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %tobool = icmp ne %struct._GimpUIManager* %4, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpActionView*, %struct._GimpActionView** %view, align 8
  %show_shortcuts = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %5, i32 0, i32 2
  %6 = load i32, i32* %show_shortcuts, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._GimpActionView*, %struct._GimpActionView** %view, align 8
  %manager4 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %7, i32 0, i32 1
  %8 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager4, align 8
  %9 = bitcast %struct._GimpUIManager* %8 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_ui_manager_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call5)
  %10 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkUIManager*
  %call7 = call %struct._GtkAccelGroup* @gtk_ui_manager_get_accel_group(%struct._GtkUIManager* %10)
  store %struct._GtkAccelGroup* %call7, %struct._GtkAccelGroup** %group, align 8
  %11 = load %struct._GtkAccelGroup*, %struct._GtkAccelGroup** %group, align 8
  %12 = bitcast %struct._GtkAccelGroup* %11 to i8*
  %13 = load %struct._GimpActionView*, %struct._GimpActionView** %view, align 8
  %14 = bitcast %struct._GimpActionView* %13 to i8*
  %call8 = call i32 @g_signal_handlers_disconnect_matched(i8* %12, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkAccelGroup*, i32, i32, %struct._GClosure*, %struct._GimpActionView*)* @gimp_action_view_accel_changed to i8*), i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %15 = load %struct._GimpActionView*, %struct._GimpActionView** %view, align 8
  %manager9 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %15, i32 0, i32 1
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager9, align 8
  %17 = bitcast %struct._GimpUIManager* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpActionView*, %struct._GimpActionView** %view, align 8
  %manager10 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %18, i32 0, i32 1
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %manager10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %19 = load i8*, i8** @gimp_action_view_parent_class, align 8
  %20 = bitcast i8* %19 to %struct._GTypeClass*
  %call12 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 80)
  %21 = bitcast %struct._GTypeClass* %call12 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %21, i32 0, i32 5
  %22 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %23 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %22(%struct._GObject* %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpActionView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_action_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpActionView*
  store %struct._GimpActionView* %2, %struct._GimpActionView** %view, align 8
  %3 = load %struct._GimpActionView*, %struct._GimpActionView** %view, align 8
  %filter = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %3, i32 0, i32 3
  %4 = load i8*, i8** %filter, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpActionView*, %struct._GimpActionView** %view, align 8
  %filter2 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %5, i32 0, i32 3
  %6 = load i8*, i8** %filter2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpActionView*, %struct._GimpActionView** %view, align 8
  %filter3 = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %7, i32 0, i32 3
  store i8* null, i8** %filter3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_action_view_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare %struct._GdkDrawable* @gtk_tree_view_get_bin_window(%struct._GtkTreeView*) #1

declare i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView*, i32, i32, %struct._GtkTreePath**, %struct._GtkTreeViewColumn**, i32*, i32*) #1

declare i32 @gtk_tree_path_get_depth(%struct._GtkTreePath*) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

declare void @g_signal_stop_emission_by_name(i8*, i8*) #1

declare %struct._GClosure* @g_cclosure_new_object(void ()*, %struct._GObject*) #1

; Function Attrs: nounwind uwtable
define internal i32 @idle_start_editing(%struct._GtkTreeView* %tree_view) #3 {
entry:
  %tree_view.addr = alloca %struct._GtkTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GtkTreeView* %tree_view, %struct._GtkTreeView** %tree_view.addr, align 8
  %0 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GtkTreeView* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkTreePath*
  store %struct._GtkTreePath* %3, %struct._GtkTreePath** %path, align 8
  %4 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %tobool = icmp ne %struct._GtkTreePath* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view.addr, align 8
  %6 = bitcast %struct._GtkTreeView* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %7)
  %8 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view.addr, align 8
  %9 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %10 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view.addr, align 8
  %call4 = call %struct._GtkTreeViewColumn* @gtk_tree_view_get_column(%struct._GtkTreeView* %10, i32 1)
  call void @gtk_tree_view_set_cursor(%struct._GtkTreeView* %8, %struct._GtkTreePath* %9, %struct._GtkTreeViewColumn* %call4, i32 1)
  %11 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view.addr, align 8
  %12 = bitcast %struct._GtkTreeView* %11 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare %struct._GSource* @g_idle_source_new() #1

declare void @g_source_set_closure(%struct._GSource*, %struct._GClosure*) #1

declare i32 @g_source_attach(%struct._GSource*, %struct._GMainContext*) #1

declare void @g_source_unref(%struct._GSource*) #1

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare void @gtk_tree_view_set_cursor(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32) #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_get_column(%struct._GtkTreeView*, i32) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare %struct._GtkTreePath* @gtk_tree_path_copy(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_path_up(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_view_expand_row(%struct._GtkTreeView*, %struct._GtkTreePath*, i32) #1

declare void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32, float, float) #1

declare void @g_closure_unref(%struct._GClosure*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_action_view_get_accel_action(%struct._GimpActionView* %view, i8* %path_string, %struct._GtkAction** %action_return) #3 {
entry:
  %retval = alloca i8*, align 8
  %view.addr = alloca %struct._GimpActionView*, align 8
  %path_string.addr = alloca i8*, align 8
  %action_return.addr = alloca %struct._GtkAction**, align 8
  %model = alloca %struct._GtkTreeModel*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %action = alloca %struct._GtkAction*, align 8
  store %struct._GimpActionView* %view, %struct._GimpActionView** %view.addr, align 8
  store i8* %path_string, i8** %path_string.addr, align 8
  store %struct._GtkAction** %action_return, %struct._GtkAction*** %action_return.addr, align 8
  %0 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %1 = bitcast %struct._GimpActionView* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %call2 = call %struct._GtkTreeModel* @gtk_tree_view_get_model(%struct._GtkTreeView* %2)
  store %struct._GtkTreeModel* %call2, %struct._GtkTreeModel** %model, align 8
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %path_string.addr, align 8
  %call3 = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %4)
  store %struct._GtkTreePath* %call3, %struct._GtkTreePath** %path, align 8
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %6 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call4 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %5, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %7, %struct._GtkTreeIter* %iter, i32 1, %struct._GtkAction** %action, i32 -1)
  %8 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %tobool7 = icmp ne %struct._GtkAction* %8, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  br label %done

if.end.9:                                         ; preds = %if.then.6
  %9 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %9)
  %10 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %11 = bitcast %struct._GtkAction* %10 to i8*
  call void @g_object_unref(i8* %11)
  %12 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %13 = load %struct._GtkAction**, %struct._GtkAction*** %action_return.addr, align 8
  store %struct._GtkAction* %12, %struct._GtkAction** %13, align 8
  %14 = load %struct._GtkAction*, %struct._GtkAction** %action, align 8
  %call10 = call i8* @gtk_action_get_accel_path(%struct._GtkAction* %14)
  store i8* %call10, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  br label %done

done:                                             ; preds = %if.end.11, %if.then.8
  %15 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %15)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %done, %if.end.9, %if.then
  %16 = load i8*, i8** %retval
  ret i8* %16
}

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare i32 @gtk_accel_map_change_entry(i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_conflict_confirm(%struct._GimpActionView* %view, %struct._GtkAction* %action, i32 %accel_key, i32 %accel_mask, i8* %accel_path) #3 {
entry:
  %view.addr = alloca %struct._GimpActionView*, align 8
  %action.addr = alloca %struct._GtkAction*, align 8
  %accel_key.addr = alloca i32, align 4
  %accel_mask.addr = alloca i32, align 4
  %accel_path.addr = alloca i8*, align 8
  %group = alloca %struct._GimpActionGroup*, align 8
  %label = alloca i8*, align 8
  %accel_string = alloca i8*, align 8
  %confirm_data = alloca %struct.ConfirmData*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %box = alloca %struct._GimpMessageBox*, align 8
  store %struct._GimpActionView* %view, %struct._GimpActionView** %view.addr, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %accel_key, i32* %accel_key.addr, align 4
  store i32 %accel_mask, i32* %accel_mask.addr, align 4
  store i8* %accel_path, i8** %accel_path.addr, align 8
  %0 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %1 = bitcast %struct._GtkAction* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), %struct._GimpActionGroup** %group, i8* null)
  %2 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %call = call i8* @gtk_action_get_label(%struct._GtkAction* %2)
  %call1 = call noalias i8* @gimp_strip_uline(i8* %call)
  store i8* %call1, i8** %label, align 8
  %3 = load i32, i32* %accel_key.addr, align 4
  %4 = load i32, i32* %accel_mask.addr, align 4
  %call2 = call i8* @gtk_accelerator_get_label(i32 %3, i32 %4)
  store i8* %call2, i8** %accel_string, align 8
  %call3 = call noalias i8* @g_slice_alloc(i64 24)
  %5 = bitcast i8* %call3 to %struct.ConfirmData*
  store %struct.ConfirmData* %5, %struct.ConfirmData** %confirm_data, align 8
  %6 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %manager = getelementptr inbounds %struct._GimpActionView, %struct._GimpActionView* %6, i32 0, i32 1
  %7 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %8 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data, align 8
  %manager4 = getelementptr inbounds %struct.ConfirmData, %struct.ConfirmData* %8, i32 0, i32 0
  store %struct._GimpUIManager* %7, %struct._GimpUIManager** %manager4, align 8
  %9 = load i8*, i8** %accel_path.addr, align 8
  %call5 = call noalias i8* @g_strdup(i8* %9)
  %10 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data, align 8
  %accel_path6 = getelementptr inbounds %struct.ConfirmData, %struct.ConfirmData* %10, i32 0, i32 1
  store i8* %call5, i8** %accel_path6, align 8
  %11 = load i32, i32* %accel_key.addr, align 4
  %12 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data, align 8
  %accel_key7 = getelementptr inbounds %struct.ConfirmData, %struct.ConfirmData* %12, i32 0, i32 2
  store i32 %11, i32* %accel_key7, align 4
  %13 = load i32, i32* %accel_mask.addr, align 4
  %14 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data, align 8
  %accel_mask8 = getelementptr inbounds %struct.ConfirmData, %struct.ConfirmData* %14, i32 0, i32 3
  store i32 %13, i32* %accel_mask8, align 4
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0)) #8
  %15 = load %struct._GimpActionView*, %struct._GimpActionView** %view.addr, align 8
  %16 = bitcast %struct._GimpActionView* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  %call12 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %17)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0)) #8
  %call14 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), %struct._GtkWidget* %call12, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i32 -6, i8* %call13, i32 -5, i8* null)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %dialog, align 8
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_dialog_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call15)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %20, i32 -5, i32 -6, i32 -1)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  %23 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data, align 8
  %24 = bitcast %struct.ConfirmData* %23 to i8*
  %call17 = call i64 @g_signal_connect_data(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ConfirmData*)* @gimp_action_view_conflict_response to void ()*), i8* %24, void (i8*, %struct._GClosure*)* null, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_message_dialog_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpMessageDialog*
  %box20 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %27, i32 0, i32 1
  %28 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box20, align 8
  store %struct._GimpMessageBox* %28, %struct._GimpMessageBox** %box, align 8
  %29 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.30, i32 0, i32 0)) #8
  %30 = load i8*, i8** %accel_string, align 8
  %31 = load i8*, i8** %label, align 8
  %32 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %label22 = getelementptr inbounds %struct._GimpActionGroup, %struct._GimpActionGroup* %32, i32 0, i32 2
  %33 = load i8*, i8** %label22, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %29, i8* %call21, i8* %30, i8* %31, i8* %33)
  %34 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.31, i32 0, i32 0)) #8
  %35 = load i8*, i8** %label, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %34, i8* %call23, i8* %35)
  %36 = load i8*, i8** %label, align 8
  call void @g_free(i8* %36)
  %37 = load i8*, i8** %accel_string, align 8
  call void @g_free(i8* %37)
  %38 = load %struct._GimpActionGroup*, %struct._GimpActionGroup** %group, align 8
  %39 = bitcast %struct._GimpActionGroup* %38 to i8*
  call void @g_object_unref(i8* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %40)
  ret void
}

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare i8* @gtk_action_get_accel_path(%struct._GtkAction*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare i8* @gtk_accelerator_get_label(i32, i32) #1

declare noalias i8* @g_slice_alloc(i64) #1

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_action_view_conflict_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct.ConfirmData* %confirm_data) #3 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %confirm_data.addr = alloca %struct.ConfirmData*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ConfirmData* %confirm_data, %struct.ConfirmData** %confirm_data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %0)
  %1 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %1, -5
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data.addr, align 8
  %accel_path = getelementptr inbounds %struct.ConfirmData, %struct.ConfirmData* %2, i32 0, i32 1
  %3 = load i8*, i8** %accel_path, align 8
  %4 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data.addr, align 8
  %accel_key = getelementptr inbounds %struct.ConfirmData, %struct.ConfirmData* %4, i32 0, i32 2
  %5 = load i32, i32* %accel_key, align 4
  %6 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data.addr, align 8
  %accel_mask = getelementptr inbounds %struct.ConfirmData, %struct.ConfirmData* %6, i32 0, i32 3
  %7 = load i32, i32* %accel_mask, align 4
  %call = call i32 @gtk_accel_map_change_entry(i8* %3, i32 %5, i32 %7, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %8 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data.addr, align 8
  %manager = getelementptr inbounds %struct.ConfirmData, %struct.ConfirmData* %8, i32 0, i32 0
  %9 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager, align 8
  %gimp = getelementptr inbounds %struct._GimpUIManager, %struct._GimpUIManager* %9, i32 0, i32 2
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0)) #8
  call void @gimp_message_literal(%struct._Gimp* %10, %struct._GObject* %13, i32 2, i8* %call3)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %14 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data.addr, align 8
  %accel_path5 = getelementptr inbounds %struct.ConfirmData, %struct.ConfirmData* %14, i32 0, i32 1
  %15 = load i8*, i8** %accel_path5, align 8
  call void @g_free(i8* %15)
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %16 = load %struct.ConfirmData*, %struct.ConfirmData** %confirm_data.addr, align 8
  %17 = bitcast %struct.ConfirmData* %16 to i8*
  call void @g_slice_free1(i64 24, i8* %17)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #2

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @g_slice_free1(i64, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
