; ModuleID = './app/widgets/gimpcontainertreeview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpContainerViewInterface = type { %struct._GTypeInterface, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, i32)*, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)*, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)*, i32 (%struct._GimpContainerView*, %struct._GList**)*, void (i8*)*, i32 }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpContainerView = type opaque
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContainerTreeViewClass = type { %struct._GimpContainerBoxClass, void (%struct._GimpContainerTreeView*)*, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)*, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)* }
%struct._GimpContainerBoxClass = type { %struct._GimpEditorClass }
%struct._GimpEditorClass = type { %struct._GtkBoxClass }
%struct._GtkBoxClass = type { %struct._GtkContainerClass }
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
%struct.GdkKeyboardGrabInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, i64, i32, i32 }
%struct.GdkPointerWindowInfo = type { %struct._GdkDrawable*, %struct._GdkDrawable*, double, double, i32, i32, i64 }
%struct._GdkDragContext = type { %struct._GObject, i32, i32, %struct._GdkDrawable*, %struct._GdkDrawable*, %struct._GList*, i32, i32, i32, i32, i8* }
%struct._AtkObject = type { %struct._GObject, i8*, i8*, %struct._AtkObject*, i32, %struct._AtkRelationSet*, i32 }
%struct._AtkRelationSet = type { %struct._GObject, %struct._GPtrArray* }
%struct._GPtrArray = type { i8**, i32 }
%struct._GdkEventGrabBroken = type { i32, %struct._GdkDrawable*, i8, i32, i32, %struct._GdkDrawable* }
%struct._GtkTooltip = type opaque
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpContainerTreeView = type { %struct._GimpContainerBox, %struct._GtkTreeModel*, i32, [16 x i64], %struct._GtkTreeView*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._Gimp*, %struct._GimpContainerTreeViewPriv* }
%struct._GimpContainerBox = type { %struct._GimpEditor, %struct._GtkWidget* }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTreeModel = type opaque
%struct._GtkTreeView = type { %struct._GtkContainer, %struct._GtkTreeViewPrivate* }
%struct._GtkTreeViewPrivate = type opaque
%struct._GtkTreeViewColumn = type { %struct._GtkObject, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GdkDrawable*, %struct._GtkCellEditable*, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct._GList*, i32, i32, i32, i32, i16 }
%struct._GtkCellEditable = type opaque
%struct._GtkCellRenderer = type { %struct._GtkObject, float, float, i32, i32, i16, i16, i8 }
%struct._GimpContainerTreeViewPriv = type { %struct._GtkTreeSelection*, %struct._GtkCellRenderer*, %struct._GList*, %struct._GimpViewRenderer*, %struct._GList*, %struct._GList*, i32, i32, i32, i32 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }
%struct._GtkTreePath = type opaque
%struct._GimpViewRenderer = type { %struct._GObject, %struct._GimpContext*, i64, %struct._GimpViewable*, i32, i32, i32, i8, i32, %struct._GimpRGB, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GdkPixbuf*, i8*, i32, i32, i32 }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GdkPixbuf = type opaque
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpContainerTreeStore = type { %struct._GtkTreeStore }
%struct._GtkTreeStore = type { %struct._GObject, i32, i8*, i8*, i32, i32, %struct._GList*, i32, i64*, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBindingSet = type { i8*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, i8 }
%struct._GtkBindingEntry = type { i32, i32, %struct._GtkBindingSet*, i8, %struct._GtkBindingEntry*, %struct._GtkBindingEntry*, %struct._GtkBindingSignal* }
%struct._GtkBindingSignal = type { %struct._GtkBindingSignal*, i8*, i32, %struct._GtkBindingArg* }
%struct._GtkBindingArg = type { i64, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GtkCellRendererText = type { %struct._GtkCellRenderer, i8*, %struct._PangoFontDescription*, double, %struct._PangoColor, %struct._PangoColor, %struct._PangoAttrList*, i32, i32, i32, i16 }
%struct._PangoColor = type { i16, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._PangoLayout = type opaque
%struct._GtkMenu = type { %struct._GtkMenuShell, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAccelGroup*, i8*, void (%struct._GtkMenu*, i32*, i32*, i32*, i8*)*, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i32, i32, i32, %struct._GdkRegion*, i32, i8 }
%struct._GtkMenuShell = type { %struct._GtkContainer, %struct._GList*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32, i8 }
%struct._GtkAccelGroup = type { %struct._GObject, i32, i32, %struct._GSList*, i32, %struct._GtkAccelGroupEntry* }
%struct._GtkAccelGroupEntry = type { %struct._GtkAccelKey, %struct._GClosure*, i32 }
%struct._GtkAccelKey = type { i32, i32, i16 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._TempBuf = type opaque
%struct._GimpCellRendererToggle = type { %struct._GtkCellRendererToggle, i8*, i32, %struct._GdkPixbuf* }
%struct._GtkCellRendererToggle = type { %struct._GtkCellRenderer, i8 }
%struct._GimpCellRendererViewable = type { %struct._GtkCellRenderer, %struct._GimpViewRenderer* }
%struct._GtkCellLayout = type opaque

@gimp_container_tree_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"GimpContainerTreeView\00", align 1
@gimp_container_tree_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_container_tree_view_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_container_tree_view_new = private unnamed_addr constant [29 x i8] c"gimp_container_tree_view_new\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"container == NULL || GIMP_IS_CONTAINER (container)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"context == NULL || GIMP_IS_CONTEXT (context)\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH\00", align 1
@__func__.gimp_container_tree_view_get_name_cell = private unnamed_addr constant [39 x i8] c"gimp_container_tree_view_get_name_cell\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"GIMP_IS_CONTAINER_TREE_VIEW (tree_view)\00", align 1
@__func__.gimp_container_tree_view_set_main_column_title = private unnamed_addr constant [47 x i8] c"gimp_container_tree_view_set_main_column_title\00", align 1
@__func__.gimp_container_tree_view_add_toggle_cell = private unnamed_addr constant [41 x i8] c"gimp_container_tree_view_add_toggle_cell\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"GIMP_IS_CELL_RENDERER_TOGGLE (cell)\00", align 1
@__func__.gimp_container_tree_view_add_renderer_cell = private unnamed_addr constant [43 x i8] c"gimp_container_tree_view_add_renderer_cell\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"GIMP_IS_CELL_RENDERER_VIEWABLE (cell)\00", align 1
@__func__.gimp_container_tree_view_set_dnd_drop_to_empty = private unnamed_addr constant [47 x i8] c"gimp_container_tree_view_set_dnd_drop_to_empty\00", align 1
@__func__.gimp_container_tree_view_connect_name_edited = private unnamed_addr constant [45 x i8] c"gimp_container_tree_view_connect_name_edited\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"callback != NULL\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"editable\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"edited\00", align 1
@gimp_container_tree_view_parent_class = internal global i8* null, align 8
@GimpContainerTreeView_private_offset = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"edit-name\00", align 1
@tree_view_signals = internal global [1 x i32] zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"search-column\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"enable-search\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"headers-visible\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"has-tooltip\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"show-expanders\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"renderer\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sensitive\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"editing-started\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"editing-canceled\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"drag-failed\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"drag-leave\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"drag-motion\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"drag-drop\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"drag-data-received\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"query-tooltip\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"focus-out-event\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@parent_view_iface = internal global %struct._GimpContainerViewInterface* null, align 8
@.str.36 = private unnamed_addr constant [19 x i8] c"button-press-event\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"row-collapsed\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"row-expanded\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"stock-size\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_container_tree_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_container_tree_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_container_tree_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_container_box_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 888, void (i8*, i8*)* bitcast (void (i8*)* @gimp_container_tree_view_class_intern_init to void (i8*, i8*)*), i32 328, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpContainerTreeView*)* @gimp_container_tree_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_container_tree_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_container_tree_view_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_container_tree_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_box_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_container_tree_view_parent_class, align 8
  %1 = load i32, i32* @GimpContainerTreeView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpContainerTreeView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpContainerTreeViewClass*
  call void @gimp_container_tree_view_class_init(%struct._GimpContainerTreeViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_init(%struct._GimpContainerTreeView* %tree_view) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %box = alloca %struct._GimpContainerBox*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_box_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerBox*
  store %struct._GimpContainerBox* %2, %struct._GimpContainerBox** %box, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %4 = bitcast %struct._GimpContainerTreeView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_view_get_type() #5
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpContainerTreeViewPriv*
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %6, i32 0, i32 8
  store %struct._GimpContainerTreeViewPriv* %5, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model_columns = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %model_columns, i32 0, i32 0
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %n_model_columns = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 2
  call void @gimp_container_tree_store_columns_init(i64* %arraydecay, i32* %n_model_columns)
  %9 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %9, i32 0, i32 1
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_scrolled_window_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %12, i32 1)
  %13 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win6 = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %13, i32 0, i32 1
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win6, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_scrolled_window_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call7)
  %16 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %16, i32 1, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_view_iface_init(%struct._GimpContainerViewInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerViewInterface* %iface, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %0 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %1 = bitcast %struct._GimpContainerViewInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %2, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %tobool = icmp ne %struct._GimpContainerViewInterface* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i64 @gimp_container_view_interface_get_type() #5
  %call2 = call i8* @g_type_default_interface_peek(i64 %call1)
  %4 = bitcast i8* %call2 to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %4, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %5, i32 0, i32 4
  store void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_container_tree_view_set_container, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %6 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %6, i32 0, i32 5
  store void (%struct._GimpContainerView*, %struct._GimpContext*)* @gimp_container_tree_view_set_context, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %7 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_selection_mode = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %7, i32 0, i32 6
  store void (%struct._GimpContainerView*, i32)* @gimp_container_tree_view_set_selection_mode, void (%struct._GimpContainerView*, i32)** %set_selection_mode, align 8
  %8 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %8, i32 0, i32 7
  store i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)* @gimp_container_tree_view_insert_item, i8* (%struct._GimpContainerView*, %struct._GimpViewable*, i8*, i32)** %insert_item, align 8
  %9 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %remove_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %9, i32 0, i32 9
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_tree_view_remove_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %remove_item, align 8
  %10 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %reorder_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %10, i32 0, i32 10
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)* @gimp_container_tree_view_reorder_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i32, i8*)** %reorder_item, align 8
  %11 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %rename_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %11, i32 0, i32 11
  store void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_tree_view_rename_item, void (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %rename_item, align 8
  %12 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %12, i32 0, i32 1
  store i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_container_tree_view_select_item, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %13 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %13, i32 0, i32 12
  store void (%struct._GimpContainerView*)* @gimp_container_tree_view_clear_items, void (%struct._GimpContainerView*)** %clear_items, align 8
  %14 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %14, i32 0, i32 13
  store void (%struct._GimpContainerView*)* @gimp_container_tree_view_set_view_size, void (%struct._GimpContainerView*)** %set_view_size, align 8
  %15 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %get_selected = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %15, i32 0, i32 14
  store i32 (%struct._GimpContainerView*, %struct._GList**)* @gimp_container_tree_view_get_selected, i32 (%struct._GimpContainerView*, %struct._GList**)** %get_selected, align 8
  %16 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %insert_data_free = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %16, i32 0, i32 15
  store void (i8*)* bitcast (void (%struct._GtkTreeIter*)* @gtk_tree_iter_free to void (i8*)*), void (i8*)** %insert_data_free, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GtkWidget* @gimp_container_tree_view_new(%struct._GimpContainer* %container, %struct._GimpContext* %context, i32 %view_size, i32 %view_border_width) #3 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %view_size.addr = alloca i32, align 4
  %view_border_width.addr = alloca i32, align 4
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %view_size, i32* %view_size.addr, align 4
  store i32 %view_border_width, i32* %view_border_width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %cmp = icmp eq %struct._GimpContainer* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %2 = bitcast %struct._GimpContainer* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %cmp13 = icmp eq %struct._GimpContext* %14, null
  br i1 %cmp13, label %if.then.38, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %do.body.12
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %16 = bitcast %struct._GimpContext* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_context_get_type() #5
  store i64 %call19, i64* %__t18, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.14
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %lor.lhs.false.14
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type29, align 8
  %23 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %22, %23
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %25 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %26 = load i32, i32* %__r21, align 4
  store i32 %26, i32* %tmp36
  %27 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %27, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.35, %do.body.12
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.38
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %28 = load i32, i32* %view_size.addr, align 4
  %cmp43 = icmp sgt i32 %28, 0
  br i1 %cmp43, label %land.lhs.true.44, label %if.else.47

land.lhs.true.44:                                 ; preds = %do.body.42
  %29 = load i32, i32* %view_size.addr, align 4
  %cmp45 = icmp sle i32 %29, 2048
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %land.lhs.true.44
  br label %if.end.48

if.else.47:                                       ; preds = %land.lhs.true.44, %do.body.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.48:                                        ; preds = %if.then.46
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %30 = load i32, i32* %view_border_width.addr, align 4
  %cmp51 = icmp sge i32 %30, 0
  br i1 %cmp51, label %land.lhs.true.52, label %if.else.55

land.lhs.true.52:                                 ; preds = %do.body.50
  %31 = load i32, i32* %view_border_width.addr, align 4
  %cmp53 = icmp sle i32 %31, 16
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %land.lhs.true.52
  br label %if.end.56

if.else.55:                                       ; preds = %land.lhs.true.52, %do.body.50
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_container_tree_view_new, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.54
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %call58 = call i64 @gimp_container_tree_view_get_type() #5
  %call59 = call i8* (i64, i8*, ...) @g_object_new(i64 %call58, i8* null)
  %32 = bitcast i8* %call59 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %32, %struct._GimpContainerTreeView** %tree_view, align 8
  %33 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %34 = bitcast %struct._GimpContainerTreeView* %33 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_container_view_interface_get_type() #5
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call60)
  %35 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %35, %struct._GimpContainerView** %view, align 8
  %36 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %37 = load i32, i32* %view_size.addr, align 4
  %38 = load i32, i32* %view_border_width.addr, align 4
  call void @gimp_container_view_set_view_size(%struct._GimpContainerView* %36, i32 %37, i32 %38)
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool62 = icmp ne %struct._GimpContainer* %39, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %do.end.57
  %40 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %41 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void @gimp_container_view_set_container(%struct._GimpContainerView* %40, %struct._GimpContainer* %41)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %do.end.57
  %42 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %tobool65 = icmp ne %struct._GimpContext* %42, null
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  %43 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_view_set_context(%struct._GimpContainerView* %43, %struct._GimpContext* %44)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  %45 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %46 = bitcast %struct._GimpContainerTreeView* %45 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_widget_get_type() #5
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call68)
  %47 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkWidget*
  store %struct._GtkWidget* %47, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.67, %if.else.55, %if.else.47, %if.else.39, %if.else.10
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %48
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_container_view_set_view_size(%struct._GimpContainerView*, i32, i32) #1

declare void @gimp_container_view_set_container(%struct._GimpContainerView*, %struct._GimpContainer*) #1

declare void @gimp_container_view_set_context(%struct._GimpContainerView*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GtkCellRenderer* @gimp_container_tree_view_get_name_cell(%struct._GimpContainerTreeView* %tree_view) #3 {
entry:
  %retval = alloca %struct._GtkCellRenderer*, align 8
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_container_tree_view_get_name_cell, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GtkCellRenderer* null, %struct._GtkCellRenderer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %13, i32 0, i32 8
  %14 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %name_cell = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %14, i32 0, i32 1
  %15 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell, align 8
  store %struct._GtkCellRenderer* %15, %struct._GtkCellRenderer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %retval
  ret %struct._GtkCellRenderer* %16
}

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_view_set_main_column_title(%struct._GimpContainerTreeView* %tree_view, i8* %title) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %title.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_container_tree_view_set_main_column_title, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %main_column = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %13, i32 0, i32 5
  %14 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column, align 8
  %15 = load i8*, i8** %title.addr, align 8
  call void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn* %14, i8* %15)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare void @gtk_tree_view_column_set_title(%struct._GtkTreeViewColumn*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_view_add_toggle_cell(%struct._GimpContainerTreeView* %tree_view, %struct._GtkCellRenderer* %cell) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_container_tree_view_add_toggle_cell, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %14 = bitcast %struct._GtkCellRenderer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_cell_renderer_toggle_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_container_tree_view_add_toggle_cell, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %26, i32 0, i32 8
  %27 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %toggle_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %27, i32 0, i32 4
  %28 = load %struct._GList*, %struct._GList** %toggle_cells, align 8
  %29 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %30 = bitcast %struct._GtkCellRenderer* %29 to i8*
  %call39 = call %struct._GList* @g_list_prepend(%struct._GList* %28, i8* %30)
  %31 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv40 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %31, i32 0, i32 8
  %32 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv40, align 8
  %toggle_cells41 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %32, i32 0, i32 4
  store %struct._GList* %call39, %struct._GList** %toggle_cells41, align 8
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_cell_renderer_toggle_get_type() #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_view_add_renderer_cell(%struct._GimpContainerTreeView* %tree_view, %struct._GtkCellRenderer* %cell) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %cell.addr = alloca %struct._GtkCellRenderer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GtkCellRenderer* %cell, %struct._GtkCellRenderer** %cell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_container_tree_view_add_renderer_cell, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %14 = bitcast %struct._GtkCellRenderer* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_cell_renderer_viewable_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_container_tree_view_add_renderer_cell, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %26, i32 0, i32 8
  %27 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %renderer_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %27, i32 0, i32 5
  %28 = load %struct._GList*, %struct._GList** %renderer_cells, align 8
  %29 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  %30 = bitcast %struct._GtkCellRenderer* %29 to i8*
  %call39 = call %struct._GList* @g_list_prepend(%struct._GList* %28, i8* %30)
  %31 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv40 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %31, i32 0, i32 8
  %32 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv40, align 8
  %renderer_cells41 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %32, i32 0, i32 5
  store %struct._GList* %call39, %struct._GList** %renderer_cells41, align 8
  %33 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %33, i32 0, i32 1
  %34 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %35 = bitcast %struct._GtkTreeModel* %34 to %struct._GTypeInstance*
  %call42 = call i64 @gimp_container_tree_store_get_type() #5
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call42)
  %36 = bitcast %struct._GTypeInstance* %call43 to %struct._GimpContainerTreeStore*
  %37 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %cell.addr, align 8
  call void @gimp_container_tree_store_add_renderer_cell(%struct._GimpContainerTreeStore* %36, %struct._GtkCellRenderer* %37)
  br label %return

return:                                           ; preds = %do.end.38, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_cell_renderer_viewable_get_type() #2

declare void @gimp_container_tree_store_add_renderer_cell(%struct._GimpContainerTreeStore*, %struct._GtkCellRenderer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_store_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_view_set_dnd_drop_to_empty(%struct._GimpContainerTreeView* %tree_view, i32 %dnd_drop_to_empty) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %dnd_drop_to_empty.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store i32 %dnd_drop_to_empty, i32* %dnd_drop_to_empty.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__func__.gimp_container_tree_view_set_dnd_drop_to_empty, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %dnd_drop_to_empty.addr, align 4
  %14 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %14, i32 0, i32 8
  %15 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %dnd_drop_to_empty11 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %15, i32 0, i32 9
  store i32 %13, i32* %dnd_drop_to_empty11, align 4
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_container_tree_view_connect_name_edited(%struct._GimpContainerTreeView* %tree_view, void ()* %callback, i8* %data) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %callback.addr = alloca void ()*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store void ()* %callback, void ()** %callback.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_container_tree_view_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__func__.gimp_container_tree_view_connect_name_edited, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load void ()*, void ()** %callback.addr, align 8
  %cmp12 = icmp ne void ()* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__func__.gimp_container_tree_view_connect_name_edited, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %14, i32 0, i32 8
  %15 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %name_cell = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %15, i32 0, i32 1
  %16 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell, align 8
  %17 = bitcast %struct._GtkCellRenderer* %16 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 1, i8* null)
  %18 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv17 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %18, i32 0, i32 8
  %19 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv17, align 8
  %editable_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %19, i32 0, i32 2
  %20 = load %struct._GList*, %struct._GList** %editable_cells, align 8
  %21 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv18 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %21, i32 0, i32 8
  %22 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv18, align 8
  %name_cell19 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %22, i32 0, i32 1
  %23 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell19, align 8
  %24 = bitcast %struct._GtkCellRenderer* %23 to i8*
  %call20 = call %struct._GList* @g_list_find(%struct._GList* %20, i8* %24)
  %tobool21 = icmp ne %struct._GList* %call20, null
  br i1 %tobool21, label %if.end.30, label %if.then.22

if.then.22:                                       ; preds = %do.end.16
  %25 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv23 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %25, i32 0, i32 8
  %26 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv23, align 8
  %editable_cells24 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %26, i32 0, i32 2
  %27 = load %struct._GList*, %struct._GList** %editable_cells24, align 8
  %28 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv25 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %28, i32 0, i32 8
  %29 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv25, align 8
  %name_cell26 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %29, i32 0, i32 1
  %30 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell26, align 8
  %31 = bitcast %struct._GtkCellRenderer* %30 to i8*
  %call27 = call %struct._GList* @g_list_prepend(%struct._GList* %27, i8* %31)
  %32 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv28 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %32, i32 0, i32 8
  %33 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv28, align 8
  %editable_cells29 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %33, i32 0, i32 2
  store %struct._GList* %call27, %struct._GList** %editable_cells29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.22, %do.end.16
  %34 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv31 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %34, i32 0, i32 8
  %35 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv31, align 8
  %name_cell32 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %35, i32 0, i32 1
  %36 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell32, align 8
  %37 = bitcast %struct._GtkCellRenderer* %36 to i8*
  %38 = load void ()*, void ()** %callback.addr, align 8
  %39 = load i8*, i8** %data.addr, align 8
  %call33 = call i64 @g_signal_connect_data(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), void ()* %38, i8* %39, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %return

return:                                           ; preds = %if.end.30, %if.else.14, %if.else.9
  ret void
}

declare void @g_object_set(i8*, i8*, ...) #1

declare %struct._GList* @g_list_find(%struct._GList*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_class_init(%struct._GimpContainerTreeViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpContainerTreeViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %widget_class = alloca %struct._GtkWidgetClass*, align 8
  %binding_set = alloca %struct._GtkBindingSet*, align 8
  store %struct._GimpContainerTreeViewClass* %klass, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %0 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpContainerTreeViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gtk_widget_get_type() #5
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GtkWidgetClass*
  store %struct._GtkWidgetClass* %5, %struct._GtkWidgetClass** %widget_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_container_tree_view_constructed, void (%struct._GObject*)** %constructed, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_container_tree_view_finalize, void (%struct._GObject*)** %finalize, align 8
  %8 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %8, i32 0, i32 9
  store void (%struct._GtkWidget*)* @gimp_container_tree_view_unmap, void (%struct._GtkWidget*)** %unmap, align 8
  %9 = load %struct._GtkWidgetClass*, %struct._GtkWidgetClass** %widget_class, align 8
  %popup_menu = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %9, i32 0, i32 61
  store i32 (%struct._GtkWidget*)* @gimp_container_tree_view_popup_menu, i32 (%struct._GtkWidget*)** %popup_menu, align 8
  %10 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %edit_name = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %10, i32 0, i32 1
  store void (%struct._GimpContainerTreeView*)* @gimp_container_tree_view_real_edit_name, void (%struct._GimpContainerTreeView*)** %edit_name, align 8
  %11 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %drop_possible = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %11, i32 0, i32 2
  store i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)* @gimp_container_tree_view_real_drop_possible, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)** %drop_possible, align 8
  %12 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %drop_viewable = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %12, i32 0, i32 3
  store void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)* @gimp_container_tree_view_real_drop_viewable, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)** %drop_viewable, align 8
  %13 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %drop_color = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %13, i32 0, i32 4
  store void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)* null, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)** %drop_color, align 8
  %14 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %drop_uri_list = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %14, i32 0, i32 5
  store void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)* null, void (%struct._GimpContainerTreeView*, %struct._GList*, %struct._GimpViewable*, i32)** %drop_uri_list, align 8
  %15 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %drop_svg = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %15, i32 0, i32 6
  store void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)* null, void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)** %drop_svg, align 8
  %16 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %drop_component = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %16, i32 0, i32 7
  store void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)* null, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)** %drop_component, align 8
  %17 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %drop_pixbuf = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %17, i32 0, i32 8
  store void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)* null, void (%struct._GimpContainerTreeView*, %struct._GdkPixbuf*, %struct._GimpViewable*, i32)** %drop_pixbuf, align 8
  %18 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %19 = bitcast %struct._GimpContainerTreeViewClass* %18 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type, align 8
  %call3 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i64 %20, i32 34, i32 824, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @g_cclosure_marshal_VOID__VOID, i64 4, i32 0)
  store i32 %call3, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @tree_view_signals, i32 0, i64 0), align 4
  %21 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpContainerTreeViewClass* %21 to i8*
  %call4 = call %struct._GtkBindingSet* @gtk_binding_set_by_class(i8* %22)
  store %struct._GtkBindingSet* %call4, %struct._GtkBindingSet** %binding_set, align 8
  %23 = load %struct._GtkBindingSet*, %struct._GtkBindingSet** %binding_set, align 8
  call void (%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) @gtk_binding_entry_add_signal(%struct._GtkBindingSet* %23, i32 65471, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 0)
  %24 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %klass.addr, align 8
  %25 = bitcast %struct._GimpContainerTreeViewClass* %24 to i8*
  call void @g_type_class_add_private(i8* %25, i64 64)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %box = alloca %struct._GimpContainerBox*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %5, %struct._GimpContainerView** %view, align 8
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %7 = bitcast %struct._GObject* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_container_box_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpContainerBox*
  store %struct._GimpContainerBox* %8, %struct._GimpContainerBox** %box, align 8
  %9 = load i8*, i8** @gimp_container_tree_view_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 9
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** @gimp_container_tree_view_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %constructed8 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 9
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed8, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %19 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %n_model_columns = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %19, i32 0, i32 2
  %20 = load i32, i32* %n_model_columns, align 4
  %21 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model_columns = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %21, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %model_columns, i32 0, i32 0
  %call9 = call %struct._GtkTreeModel* @gimp_container_tree_store_new(%struct._GimpContainerView* %18, i32 %20, i64* %arraydecay)
  %22 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %22, i32 0, i32 1
  store %struct._GtkTreeModel* %call9, %struct._GtkTreeModel** %model, align 8
  %call10 = call i64 @gtk_tree_view_get_type() #5
  %23 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model11 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %23, i32 0, i32 1
  %24 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model11, align 8
  %25 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %26 = bitcast %struct._GimpContainerView* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %28 = bitcast %struct._GTypeClass* %27 to i8*
  %call12 = call i64 @gimp_container_view_interface_get_type() #5
  %call13 = call i8* @g_type_interface_peek(i8* %28, i64 %call12)
  %29 = bitcast i8* %call13 to %struct._GimpContainerViewInterface*
  %model_is_tree = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %29, i32 0, i32 16
  %30 = load i32, i32* %model_is_tree, align 4
  %call14 = call i8* (i64, i8*, ...) @g_object_new(i64 %call10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %struct._GtkTreeModel* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %30, i8* null)
  %31 = bitcast i8* %call14 to %struct._GtkTreeView*
  %32 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view15 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %32, i32 0, i32 4
  store %struct._GtkTreeView* %31, %struct._GtkTreeView** %view15, align 8
  %33 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model16 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %33, i32 0, i32 1
  %34 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model16, align 8
  %35 = bitcast %struct._GtkTreeModel* %34 to i8*
  call void @g_object_unref(i8* %35)
  %36 = load %struct._GimpContainerBox*, %struct._GimpContainerBox** %box, align 8
  %scrolled_win = getelementptr inbounds %struct._GimpContainerBox, %struct._GimpContainerBox* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_win, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_container_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call17)
  %39 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkContainer*
  %40 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view19 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %40, i32 0, i32 4
  %41 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view19, align 8
  %42 = bitcast %struct._GtkTreeView* %41 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_widget_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call20)
  %43 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWidget*
  call void @gtk_container_add(%struct._GtkContainer* %39, %struct._GtkWidget* %43)
  %44 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view22 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %44, i32 0, i32 4
  %45 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view22, align 8
  %46 = bitcast %struct._GtkTreeView* %45 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_widget_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call23)
  %47 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %49 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view25 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %49, i32 0, i32 4
  %50 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view25, align 8
  %51 = bitcast %struct._GtkTreeView* %50 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_widget_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call26)
  %52 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWidget*
  call void @gimp_container_view_set_dnd_widget(%struct._GimpContainerView* %48, %struct._GtkWidget* %52)
  %call28 = call %struct._GtkTreeViewColumn* @gtk_tree_view_column_new()
  %53 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %53, i32 0, i32 5
  store %struct._GtkTreeViewColumn* %call28, %struct._GtkTreeViewColumn** %main_column, align 8
  %54 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view29 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %54, i32 0, i32 4
  %55 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view29, align 8
  %56 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column30 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %56, i32 0, i32 5
  %57 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column30, align 8
  %call31 = call i32 @gtk_tree_view_insert_column(%struct._GtkTreeView* %55, %struct._GtkTreeViewColumn* %57, i32 0)
  %58 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view32 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %58, i32 0, i32 4
  %59 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view32, align 8
  %60 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column33 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %60, i32 0, i32 5
  %61 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column33, align 8
  call void @gtk_tree_view_set_expander_column(%struct._GtkTreeView* %59, %struct._GtkTreeViewColumn* %61)
  %62 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view34 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %62, i32 0, i32 4
  %63 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view34, align 8
  call void @gtk_tree_view_set_enable_tree_lines(%struct._GtkTreeView* %63, i32 1)
  %call35 = call %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new()
  %64 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %renderer_cell = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %64, i32 0, i32 6
  store %struct._GtkCellRenderer* %call35, %struct._GtkCellRenderer** %renderer_cell, align 8
  %65 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column36 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %65, i32 0, i32 5
  %66 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column36, align 8
  %67 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %renderer_cell37 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %67, i32 0, i32 6
  %68 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell37, align 8
  call void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn* %66, %struct._GtkCellRenderer* %68, i32 0)
  %69 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column38 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %69, i32 0, i32 5
  %70 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column38, align 8
  %71 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %renderer_cell39 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %71, i32 0, i32 6
  %72 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell39, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %70, %struct._GtkCellRenderer* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* null)
  %call40 = call %struct._GtkCellRenderer* @gtk_cell_renderer_text_new()
  %73 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %73, i32 0, i32 8
  %74 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %name_cell = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %74, i32 0, i32 1
  store %struct._GtkCellRenderer* %call40, %struct._GtkCellRenderer** %name_cell, align 8
  %75 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv41 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %75, i32 0, i32 8
  %76 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv41, align 8
  %name_cell42 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %76, i32 0, i32 1
  %77 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell42, align 8
  %78 = bitcast %struct._GtkCellRenderer* %77 to i8*
  call void (i8*, i8*, ...) @g_object_set(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), double 0.000000e+00, i8* null)
  %79 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column43 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %79, i32 0, i32 5
  %80 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column43, align 8
  %81 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv44 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %81, i32 0, i32 8
  %82 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv44, align 8
  %name_cell45 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %82, i32 0, i32 1
  %83 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell45, align 8
  call void @gtk_tree_view_column_pack_end(%struct._GtkTreeViewColumn* %80, %struct._GtkCellRenderer* %83, i32 0)
  %84 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column46 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %84, i32 0, i32 5
  %85 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column46, align 8
  %86 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv47 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %86, i32 0, i32 8
  %87 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv47, align 8
  %name_cell48 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %87, i32 0, i32 1
  %88 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell48, align 8
  call void (%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn* %85, %struct._GtkCellRenderer* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 3, i8* null)
  %89 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv49 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %89, i32 0, i32 8
  %90 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv49, align 8
  %name_cell50 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %90, i32 0, i32 1
  %91 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell50, align 8
  %92 = bitcast %struct._GtkCellRenderer* %91 to i8*
  %93 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %94 = bitcast %struct._GimpContainerTreeView* %93 to i8*
  %call51 = call i64 @g_signal_connect_data(i8* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererText*, %struct._GtkCellEditable*, i8*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_name_started to void ()*), i8* %94, void (i8*, %struct._GClosure*)* null, i32 0)
  %95 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv52 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %95, i32 0, i32 8
  %96 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv52, align 8
  %name_cell53 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %96, i32 0, i32 1
  %97 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell53, align 8
  %98 = bitcast %struct._GtkCellRenderer* %97 to i8*
  %99 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %100 = bitcast %struct._GimpContainerTreeView* %99 to i8*
  %call54 = call i64 @g_signal_connect_data(i8* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkCellRendererText*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_name_canceled to void ()*), i8* %100, void (i8*, %struct._GClosure*)* null, i32 0)
  %101 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %102 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %renderer_cell55 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %102, i32 0, i32 6
  %103 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer_cell55, align 8
  call void @gimp_container_tree_view_add_renderer_cell(%struct._GimpContainerTreeView* %101, %struct._GtkCellRenderer* %103)
  %104 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view56 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %104, i32 0, i32 4
  %105 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view56, align 8
  %call57 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %105)
  %106 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv58 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %106, i32 0, i32 8
  %107 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv58, align 8
  %selection = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %107, i32 0, i32 0
  store %struct._GtkTreeSelection* %call57, %struct._GtkTreeSelection** %selection, align 8
  %108 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv59 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %108, i32 0, i32 8
  %109 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv59, align 8
  %selection60 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %109, i32 0, i32 0
  %110 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection60, align 8
  %111 = bitcast %struct._GtkTreeSelection* %110 to i8*
  %112 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %113 = bitcast %struct._GimpContainerTreeView* %112 to i8*
  %call61 = call i64 @g_signal_connect_data(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_selection_changed to void ()*), i8* %113, void (i8*, %struct._GClosure*)* null, i32 0)
  %114 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view62 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %114, i32 0, i32 4
  %115 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view62, align 8
  %116 = bitcast %struct._GtkTreeView* %115 to i8*
  %117 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %118 = bitcast %struct._GimpContainerTreeView* %117 to i8*
  %call63 = call i64 @g_signal_connect_data(i8* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_drag_failed to void ()*), i8* %118, void (i8*, %struct._GClosure*)* null, i32 0)
  %119 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view64 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %119, i32 0, i32 4
  %120 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view64, align 8
  %121 = bitcast %struct._GtkTreeView* %120 to i8*
  %122 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %123 = bitcast %struct._GimpContainerTreeView* %122 to i8*
  %call65 = call i64 @g_signal_connect_data(i8* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_drag_leave to void ()*), i8* %123, void (i8*, %struct._GClosure*)* null, i32 0)
  %124 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view66 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %124, i32 0, i32 4
  %125 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view66, align 8
  %126 = bitcast %struct._GtkTreeView* %125 to i8*
  %127 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %128 = bitcast %struct._GimpContainerTreeView* %127 to i8*
  %call67 = call i64 @g_signal_connect_data(i8* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_drag_motion to void ()*), i8* %128, void (i8*, %struct._GClosure*)* null, i32 0)
  %129 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view68 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %129, i32 0, i32 4
  %130 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view68, align 8
  %131 = bitcast %struct._GtkTreeView* %130 to i8*
  %132 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %133 = bitcast %struct._GimpContainerTreeView* %132 to i8*
  %call69 = call i64 @g_signal_connect_data(i8* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_drag_drop to void ()*), i8* %133, void (i8*, %struct._GClosure*)* null, i32 0)
  %134 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view70 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %134, i32 0, i32 4
  %135 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view70, align 8
  %136 = bitcast %struct._GtkTreeView* %135 to i8*
  %137 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %138 = bitcast %struct._GimpContainerTreeView* %137 to i8*
  %call71 = call i64 @g_signal_connect_data(i8* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_drag_data_received to void ()*), i8* %138, void (i8*, %struct._GClosure*)* null, i32 0)
  %139 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view72 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %139, i32 0, i32 4
  %140 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view72, align 8
  %141 = bitcast %struct._GtkTreeView* %140 to i8*
  %142 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %143 = bitcast %struct._GimpContainerTreeView* %142 to i8*
  %call73 = call i64 @g_signal_connect_data(i8* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, i32, i32, i32, %struct._GtkTooltip*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_tooltip to void ()*), i8* %143, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 8
  %4 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %toggle_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %4, i32 0, i32 4
  %5 = load %struct._GList*, %struct._GList** %toggle_cells, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv2 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %6, i32 0, i32 8
  %7 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv2, align 8
  %toggle_cells3 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %7, i32 0, i32 4
  %8 = load %struct._GList*, %struct._GList** %toggle_cells3, align 8
  call void @g_list_free(%struct._GList* %8)
  %9 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv4 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %9, i32 0, i32 8
  %10 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv4, align 8
  %toggle_cells5 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %10, i32 0, i32 4
  store %struct._GList* null, %struct._GList** %toggle_cells5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv6 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 8
  %12 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv6, align 8
  %renderer_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %12, i32 0, i32 5
  %13 = load %struct._GList*, %struct._GList** %renderer_cells, align 8
  %tobool7 = icmp ne %struct._GList* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %14 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv9 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %14, i32 0, i32 8
  %15 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv9, align 8
  %renderer_cells10 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %15, i32 0, i32 5
  %16 = load %struct._GList*, %struct._GList** %renderer_cells10, align 8
  call void @g_list_free(%struct._GList* %16)
  %17 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv11 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %17, i32 0, i32 8
  %18 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv11, align 8
  %renderer_cells12 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %18, i32 0, i32 5
  store %struct._GList* null, %struct._GList** %renderer_cells12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %19 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv14 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %19, i32 0, i32 8
  %20 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv14, align 8
  %editable_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %20, i32 0, i32 2
  %21 = load %struct._GList*, %struct._GList** %editable_cells, align 8
  %tobool15 = icmp ne %struct._GList* %21, null
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.13
  %22 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv17 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %22, i32 0, i32 8
  %23 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv17, align 8
  %editable_cells18 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %23, i32 0, i32 2
  %24 = load %struct._GList*, %struct._GList** %editable_cells18, align 8
  call void @g_list_free(%struct._GList* %24)
  %25 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv19 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %25, i32 0, i32 8
  %26 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv19, align 8
  %editable_cells20 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %26, i32 0, i32 2
  store %struct._GList* null, %struct._GList** %editable_cells20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.end.13
  %27 = load i8*, i8** @gimp_container_tree_view_parent_class, align 8
  %28 = bitcast i8* %27 to %struct._GTypeClass*
  %call22 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %28, i64 80)
  %29 = bitcast %struct._GTypeClass* %call22 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %29, i32 0, i32 6
  %30 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %30(%struct._GObject* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_unmap(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 8
  %4 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %scroll_timeout_id = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %4, i32 0, i32 6
  %5 = load i32, i32* %scroll_timeout_id, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv2 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %6, i32 0, i32 8
  %7 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv2, align 8
  %scroll_timeout_id3 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %7, i32 0, i32 6
  %8 = load i32, i32* %scroll_timeout_id3, align 4
  %call4 = call i32 @g_source_remove(i32 %8)
  %9 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv5 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %9, i32 0, i32 8
  %10 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv5, align 8
  %scroll_timeout_id6 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %10, i32 0, i32 6
  store i32 0, i32* %scroll_timeout_id6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i8*, i8** @gimp_container_tree_view_parent_class, align 8
  %12 = bitcast i8* %11 to %struct._GTypeClass*
  %call7 = call i64 @gtk_widget_get_type() #5
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %12, i64 %call7)
  %13 = bitcast %struct._GTypeClass* %call8 to %struct._GtkWidgetClass*
  %unmap = getelementptr inbounds %struct._GtkWidgetClass, %struct._GtkWidgetClass* %13, i32 0, i32 9
  %14 = load void (%struct._GtkWidget*)*, void (%struct._GtkWidget*)** %unmap, align 8
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void %14(%struct._GtkWidget* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_view_popup_menu(%struct._GtkWidget* %widget) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %4 = bitcast %struct._GtkWidget* %3 to i8*
  %call2 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %2, void (%struct._GtkMenu*, i32*, i32*, i8*)* @gimp_container_tree_view_menu_position, i8* %4)
  ret i32 %call2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_real_edit_name(%struct._GimpContainerTreeView* %tree_view) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %selected_iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %0, i32 0, i32 8
  %1 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %editable_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %1, i32 0, i32 2
  %2 = load %struct._GList*, %struct._GList** %editable_cells, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv1 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 8
  %4 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv1, align 8
  %name_cell = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %4, i32 0, i32 1
  %5 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell, align 8
  %6 = bitcast %struct._GtkCellRenderer* %5 to i8*
  %call = call %struct._GList* @g_list_find(%struct._GList* %2, i8* %6)
  %tobool = icmp ne %struct._GList* %call, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %call2 = call i32 @gimp_container_tree_view_get_selected_single(%struct._GimpContainerTreeView* %7, %struct._GtkTreeIter* %selected_iter)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 1
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call4 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %selected_iter)
  store %struct._GtkTreePath* %call4, %struct._GtkTreePath** %path, align 8
  %10 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %10, i32 0, i32 4
  %11 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %12 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %13 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %main_column = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %13, i32 0, i32 5
  %14 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column, align 8
  %15 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv5 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %15, i32 0, i32 8
  %16 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv5, align 8
  %name_cell6 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %16, i32 0, i32 1
  %17 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %name_cell6, align 8
  call void @gtk_tree_view_set_cursor_on_cell(%struct._GtkTreeView* %11, %struct._GtkTreePath* %12, %struct._GtkTreeViewColumn* %14, %struct._GtkCellRenderer* %17, i32 1)
  %18 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_container_tree_view_real_drop_possible(%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*) #1

declare void @gimp_container_tree_view_real_drop_viewable(%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @g_cclosure_marshal_VOID__VOID(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

declare %struct._GtkBindingSet* @gtk_binding_set_by_class(i8*) #1

declare void @gtk_binding_entry_add_signal(%struct._GtkBindingSet*, i32, i32, i8*, i32, ...) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GtkTreeModel* @gimp_container_tree_store_new(%struct._GimpContainerView*, i32, i64*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_view_get_type() #2

declare i8* @g_type_interface_peek(i8*, i64) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_container_view_set_dnd_widget(%struct._GimpContainerView*, %struct._GtkWidget*) #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_column_new() #1

declare i32 @gtk_tree_view_insert_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*, i32) #1

declare void @gtk_tree_view_set_expander_column(%struct._GtkTreeView*, %struct._GtkTreeViewColumn*) #1

declare void @gtk_tree_view_set_enable_tree_lines(%struct._GtkTreeView*, i32) #1

declare %struct._GtkCellRenderer* @gimp_cell_renderer_viewable_new() #1

declare void @gtk_tree_view_column_pack_start(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare void @gtk_tree_view_column_set_attributes(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, ...) #1

declare %struct._GtkCellRenderer* @gtk_cell_renderer_text_new() #1

declare void @gtk_tree_view_column_pack_end(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_name_started(%struct._GtkCellRendererText* %cell, %struct._GtkCellEditable* %editable, i8* %path_str, %struct._GimpContainerTreeView* %tree_view) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRendererText*, align 8
  %editable.addr = alloca %struct._GtkCellEditable*, align 8
  %path_str.addr = alloca i8*, align 8
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %real_name = alloca i8*, align 8
  store %struct._GtkCellRendererText* %cell, %struct._GtkCellRendererText** %cell.addr, align 8
  store %struct._GtkCellEditable* %editable, %struct._GtkCellEditable** %editable.addr, align 8
  store i8* %path_str, i8** %path_str.addr, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load i8*, i8** %path_str.addr, align 8
  %call = call %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8* %0)
  store %struct._GtkTreePath* %call, %struct._GtkTreePath** %path, align 8
  %1 = load %struct._GtkCellEditable*, %struct._GtkCellEditable** %editable.addr, align 8
  %2 = bitcast %struct._GtkCellEditable* %1 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_entry_get_type() #5
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkEntry*
  %4 = bitcast %struct._GtkEntry* %3 to i8*
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %6 = bitcast %struct._GimpContainerTreeView* %5 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %union._GdkEvent*, i8*)* @gimp_container_tree_view_edit_focus_out to void ()*), i8* %6, void (i8*, %struct._GClosure*)* null, i32 0)
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %7, i32 0, i32 1
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %9 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call4 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %9)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model5 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %10, i32 0, i32 1
  %11 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model5, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %11, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %12 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %12, i32 0, i32 3
  %13 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %14 = bitcast %struct._GimpViewable* %13 to i8*
  %call6 = call i8* @gimp_object_get_name(i8* %14)
  store i8* %call6, i8** %real_name, align 8
  %15 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %16 = bitcast %struct._GimpViewRenderer* %15 to i8*
  call void @g_object_unref(i8* %16)
  %17 = load %struct._GtkCellEditable*, %struct._GtkCellEditable** %editable.addr, align 8
  %18 = bitcast %struct._GtkCellEditable* %17 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_entry_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call7)
  %19 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkEntry*
  %20 = load i8*, i8** %real_name, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %19, i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_name_canceled(%struct._GtkCellRendererText* %cell, %struct._GimpContainerTreeView* %tree_view) #3 {
entry:
  %cell.addr = alloca %struct._GtkCellRendererText*, align 8
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkCellRendererText* %cell, %struct._GtkCellRendererText** %cell.addr, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %call = call i32 @gimp_container_tree_view_get_selected_single(%struct._GimpContainerTreeView* %0, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %1, i32 0, i32 1
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %3, i32 0, i32 3
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call1 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %4, i8** null)
  store i8* %call1, i8** %name, align 8
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model2 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %5, i32 0, i32 1
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model2, align 8
  %7 = bitcast %struct._GtkTreeModel* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_store_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeStore*
  %9 = load i8*, i8** %name, align 8
  call void (%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) @gtk_tree_store_set(%struct._GtkTreeStore* %8, %struct._GtkTreeIter* %iter, i32 1, i8* %9, i32 -1)
  %10 = load i8*, i8** %name, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %12 = bitcast %struct._GimpViewRenderer* %11 to i8*
  call void @g_object_unref(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_selection_changed(%struct._GtkTreeSelection* %selection, %struct._GimpContainerTreeView* %tree_view) #3 {
entry:
  %selection.addr = alloca %struct._GtkTreeSelection*, align 8
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %items = alloca %struct._GList*, align 8
  store %struct._GtkTreeSelection* %selection, %struct._GtkTreeSelection** %selection.addr, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call i32 @gimp_container_tree_view_get_selected(%struct._GimpContainerView* %3, %struct._GList** %items)
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %5 = load %struct._GList*, %struct._GList** %items, align 8
  %call3 = call i32 @gimp_container_view_multi_selected(%struct._GimpContainerView* %4, %struct._GList* %5)
  %6 = load %struct._GList*, %struct._GList** %items, align 8
  call void @g_list_free(%struct._GList* %6)
  ret void
}

declare void @gimp_container_tree_view_drag_failed(%struct._GtkWidget*, %struct._GdkDragContext*, i32, %struct._GimpContainerTreeView*) #1

declare void @gimp_container_tree_view_drag_leave(%struct._GtkWidget*, %struct._GdkDragContext*, i32, %struct._GimpContainerTreeView*) #1

declare i32 @gimp_container_tree_view_drag_motion(%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32, %struct._GimpContainerTreeView*) #1

declare i32 @gimp_container_tree_view_drag_drop(%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, i32, %struct._GimpContainerTreeView*) #1

declare void @gimp_container_tree_view_drag_data_received(%struct._GtkWidget*, %struct._GdkDragContext*, i32, i32, %struct._GtkSelectionData*, i32, i32, %struct._GimpContainerTreeView*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_view_tooltip(%struct._GtkWidget* %widget, i32 %x, i32 %y, i32 %keyboard_tip, %struct._GtkTooltip* %tooltip, %struct._GimpContainerTreeView* %tree_view) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %keyboard_tip.addr = alloca i32, align 4
  %tooltip.addr = alloca %struct._GtkTooltip*, align 8
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %show_tip = alloca i32, align 4
  %desc = alloca i8*, align 8
  %tip = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %keyboard_tip, i32* %keyboard_tip.addr, align 4
  store %struct._GtkTooltip* %tooltip, %struct._GtkTooltip** %tooltip.addr, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store i32 0, i32* %show_tip, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %3 = load i32, i32* %keyboard_tip.addr, align 4
  %call2 = call i32 @gtk_tree_view_get_tooltip_context(%struct._GtkTreeView* %2, i32* %x.addr, i32* %y.addr, i32 %3, %struct._GtkTreeModel** null, %struct._GtkTreePath** %path, %struct._GtkTreeIter* %iter)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %4, i32 0, i32 1
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %5, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool3 = icmp ne %struct._GimpViewRenderer* %6, null
  br i1 %tobool3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 3
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call5 = call i8* @gimp_viewable_get_description(%struct._GimpViewable* %8, i8** %tip)
  store i8* %call5, i8** %desc, align 8
  %9 = load i8*, i8** %tip, align 8
  %tobool6 = icmp ne i8* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.4
  %10 = load %struct._GtkTooltip*, %struct._GtkTooltip** %tooltip.addr, align 8
  %11 = load i8*, i8** %tip, align 8
  call void @gtk_tooltip_set_text(%struct._GtkTooltip* %10, i8* %11)
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_tree_view_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTreeView*
  %15 = load %struct._GtkTooltip*, %struct._GtkTooltip** %tooltip.addr, align 8
  %16 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_view_set_tooltip_row(%struct._GtkTreeView* %14, %struct._GtkTooltip* %15, %struct._GtkTreePath* %16)
  store i32 1, i32* %show_tip, align 4
  %17 = load i8*, i8** %tip, align 8
  call void @g_free(i8* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.then.4
  %18 = load i8*, i8** %desc, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %20 = bitcast %struct._GimpViewRenderer* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %21 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %21)
  %22 = load i32, i32* %show_tip, align 4
  store i32 %22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare %struct._GtkTreePath* @gtk_tree_path_new_from_string(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_view_edit_focus_out(%struct._GtkWidget* %widget, %union._GdkEvent* %event, i8* %user_data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %union._GdkEvent*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %union._GdkEvent* %event, %union._GdkEvent** %event.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to i8*
  call void (i8*, i8*, ...) @g_signal_emit_by_name(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 0)
  ret i32 1
}

declare i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreePath*) #1

declare void @gtk_tree_model_get(%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare void @gtk_tree_path_free(%struct._GtkTreePath*) #1

declare void @g_signal_emit_by_name(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_view_get_selected_single(%struct._GimpContainerTreeView* %tree_view, %struct._GtkTreeIter* %iter) #3 {
entry:
  %retval = alloca i32, align 4
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %selected_rows = alloca %struct._GList*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %0, i32 0, i32 4
  %1 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %2 = bitcast %struct._GtkTreeView* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkTreeView*
  %call2 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %3)
  store %struct._GtkTreeSelection* %call2, %struct._GtkTreeSelection** %selection, align 8
  %4 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call3 = call i32 @gtk_tree_selection_count_selected_rows(%struct._GtkTreeSelection* %4)
  %cmp = icmp eq i32 %call3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call4 = call %struct._GList* @gtk_tree_selection_get_selected_rows(%struct._GtkTreeSelection* %5, %struct._GtkTreeModel** null)
  store %struct._GList* %call4, %struct._GList** %selected_rows, align 8
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %6, i32 0, i32 1
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %8 = bitcast %struct._GtkTreeModel* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_tree_model_get_type() #5
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkTreeModel*
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  %11 = load %struct._GList*, %struct._GList** %selected_rows, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GtkTreePath*
  %call7 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %10, %struct._GtkTreePath* %13)
  %14 = load %struct._GList*, %struct._GList** %selected_rows, align 8
  call void @g_list_free_full(%struct._GList* %14, void (i8*)* bitcast (void (%struct._GtkTreePath*)* @gtk_tree_path_free to void (i8*)*))
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i8* @gimp_viewable_get_description(%struct._GimpViewable*, i8**) #1

declare void @gtk_tree_store_set(%struct._GtkTreeStore*, %struct._GtkTreeIter*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_store_get_type() #2

declare void @g_free(i8*) #1

declare i32 @gtk_tree_selection_count_selected_rows(%struct._GtkTreeSelection*) #1

declare %struct._GList* @gtk_tree_selection_get_selected_rows(%struct._GtkTreeSelection*, %struct._GtkTreeModel**) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_tree_model_get_type() #2

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_view_get_selected(%struct._GimpContainerView* %view, %struct._GList** %items) #3 {
entry:
  %retval = alloca i32, align 4
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %items.addr = alloca %struct._GList**, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %selection = alloca %struct._GtkTreeSelection*, align 8
  %selected_count = alloca i32, align 4
  %selected_rows = alloca %struct._GList*, align 8
  %current_row = alloca %struct._GList*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GList** %items, %struct._GList*** %items.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view2 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 4
  %4 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view2, align 8
  %5 = bitcast %struct._GtkTreeView* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_view_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeView*
  %call5 = call %struct._GtkTreeSelection* @gtk_tree_view_get_selection(%struct._GtkTreeView* %6)
  store %struct._GtkTreeSelection* %call5, %struct._GtkTreeSelection** %selection, align 8
  %7 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call6 = call i32 @gtk_tree_selection_count_selected_rows(%struct._GtkTreeSelection* %7)
  store i32 %call6, i32* %selected_count, align 4
  %8 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  %cmp = icmp eq %struct._GList** %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %selected_count, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call7 = call %struct._GList* @gtk_tree_selection_get_selected_rows(%struct._GtkTreeSelection* %10, %struct._GtkTreeModel** null)
  store %struct._GList* %call7, %struct._GList** %selected_rows, align 8
  %11 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  store %struct._GList* null, %struct._GList** %11, align 8
  %12 = load %struct._GList*, %struct._GList** %selected_rows, align 8
  store %struct._GList* %12, %struct._GList** %current_row, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end
  %13 = load %struct._GList*, %struct._GList** %current_row, align 8
  %tobool = icmp ne %struct._GList* %13, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %14, i32 0, i32 1
  %15 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %16 = bitcast %struct._GtkTreeModel* %15 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_tree_model_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call8)
  %17 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkTreeModel*
  %18 = load %struct._GList*, %struct._GList** %current_row, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = bitcast i8* %19 to %struct._GtkTreePath*
  %call10 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %20)
  %21 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model11 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %21, i32 0, i32 1
  %22 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model11, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %22, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %23 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %23, i32 0, i32 3
  %24 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %tobool12 = icmp ne %struct._GimpViewable* %24, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %for.body
  %25 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  %26 = load %struct._GList*, %struct._GList** %25, align 8
  %27 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable14 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %27, i32 0, i32 3
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable14, align 8
  %29 = bitcast %struct._GimpViewable* %28 to i8*
  %call15 = call %struct._GList* @g_list_prepend(%struct._GList* %26, i8* %29)
  %30 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  store %struct._GList* %call15, %struct._GList** %30, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %for.body
  %31 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %32 = bitcast %struct._GimpViewRenderer* %31 to i8*
  call void @g_object_unref(i8* %32)
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %33 = load %struct._GList*, %struct._GList** %current_row, align 8
  %tobool17 = icmp ne %struct._GList* %33, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %34 = load %struct._GList*, %struct._GList** %current_row, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 1
  %35 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %35, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %current_row, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct._GList*, %struct._GList** %selected_rows, align 8
  call void @g_list_free_full(%struct._GList* %36, void (i8*)* bitcast (void (%struct._GtkTreePath*)* @gtk_tree_path_free to void (i8*)*))
  %37 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  %38 = load %struct._GList*, %struct._GList** %37, align 8
  %call18 = call %struct._GList* @g_list_reverse(%struct._GList* %38)
  %39 = load %struct._GList**, %struct._GList*** %items.addr, align 8
  store %struct._GList* %call18, %struct._GList** %39, align 8
  %40 = load i32, i32* %selected_count, align 4
  store i32 %40, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @gimp_container_view_multi_selected(%struct._GimpContainerView*, %struct._GList*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

declare i32 @gtk_tree_view_get_tooltip_context(%struct._GtkTreeView*, i32*, i32*, i32, %struct._GtkTreeModel**, %struct._GtkTreePath**, %struct._GtkTreeIter*) #1

declare void @gtk_tooltip_set_text(%struct._GtkTooltip*, i8*) #1

declare void @gtk_tree_view_set_tooltip_row(%struct._GtkTreeView*, %struct._GtkTooltip*, %struct._GtkTreePath*) #1

declare i32 @g_source_remove(i32) #1

declare i32 @gimp_editor_popup_menu(%struct._GimpEditor*, void (%struct._GtkMenu*, i32*, i32*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_menu_position(%struct._GtkMenu* %menu, i32* %x, i32* %y, i8* %data) #3 {
entry:
  %menu.addr = alloca %struct._GtkMenu*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %allocation = alloca %struct._GdkRectangle, align 4
  %selected_iter = alloca %struct._GtkTreeIter, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %cell_rect = alloca %struct._GdkRectangle, align 4
  %center = alloca i32, align 4
  %style = alloca %struct._GtkStyle*, align 8
  store %struct._GtkMenu* %menu, %struct._GtkMenu** %menu.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 4
  %4 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %5 = bitcast %struct._GtkTreeView* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_widget_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %6, %struct._GtkWidget** %widget, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %7, %struct._GdkRectangle* %allocation)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call4 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %8)
  %9 = load i32*, i32** %x.addr, align 8
  %10 = load i32*, i32** %y.addr, align 8
  %call5 = call i32 @gdk_window_get_origin(%struct._GdkDrawable* %call4, i32* %9, i32* %10)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i32 @gtk_widget_get_has_window(%struct._GtkWidget* %11)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %x7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 0
  %12 = load i32, i32* %x7, align 4
  %13 = load i32*, i32** %x.addr, align 8
  %14 = load i32, i32* %13, align 4
  %add = add nsw i32 %14, %12
  store i32 %add, i32* %13, align 4
  %y8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 1
  %15 = load i32, i32* %y8, align 4
  %16 = load i32*, i32** %y.addr, align 8
  %17 = load i32, i32* %16, align 4
  %add9 = add nsw i32 %17, %15
  store i32 %add9, i32* %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %call10 = call i32 @gimp_container_tree_view_get_selected_single(%struct._GimpContainerTreeView* %18, %struct._GtkTreeIter* %selected_iter)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end
  %19 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %19, i32 0, i32 1
  %20 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %call13 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %20, %struct._GtkTreeIter* %selected_iter)
  store %struct._GtkTreePath* %call13, %struct._GtkTreePath** %path, align 8
  %21 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view14 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %21, i32 0, i32 4
  %22 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view14, align 8
  %23 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %24 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %main_column = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %24, i32 0, i32 5
  %25 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %main_column, align 8
  call void @gtk_tree_view_get_cell_area(%struct._GtkTreeView* %22, %struct._GtkTreePath* %23, %struct._GtkTreeViewColumn* %25, %struct._GdkRectangle* %cell_rect)
  %26 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %26)
  %y15 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_rect, i32 0, i32 1
  %27 = load i32, i32* %y15, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %cell_rect, i32 0, i32 3
  %28 = load i32, i32* %height, align 4
  %div = sdiv i32 %28, 2
  %add16 = add nsw i32 %27, %div
  store i32 %add16, i32* %center, align 4
  %29 = load i32, i32* %center, align 4
  %height17 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %30 = load i32, i32* %height17, align 4
  %cmp = icmp sgt i32 %29, %30
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %height18 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 3
  %31 = load i32, i32* %height18, align 4
  br label %cond.end.22

cond.false:                                       ; preds = %if.then.12
  %32 = load i32, i32* %center, align 4
  %cmp19 = icmp slt i32 %32, 0
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false
  br label %cond.end

cond.false.21:                                    ; preds = %cond.false
  %33 = load i32, i32* %center, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.21, %cond.true.20
  %cond = phi i32 [ 0, %cond.true.20 ], [ %33, %cond.false.21 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end, %cond.true
  %cond23 = phi i32 [ %31, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond23, i32* %center, align 4
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %allocation, i32 0, i32 2
  %34 = load i32, i32* %width, align 4
  %div24 = sdiv i32 %34, 2
  %35 = load i32*, i32** %x.addr, align 8
  %36 = load i32, i32* %35, align 4
  %add25 = add nsw i32 %36, %div24
  store i32 %add25, i32* %35, align 4
  %37 = load i32, i32* %center, align 4
  %38 = load i32*, i32** %y.addr, align 8
  %39 = load i32, i32* %38, align 4
  %add26 = add nsw i32 %39, %37
  store i32 %add26, i32* %38, align 4
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call27 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %40)
  store %struct._GtkStyle* %call27, %struct._GtkStyle** %style, align 8
  %41 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %41, i32 0, i32 12
  %42 = load i32, i32* %xthickness, align 4
  %43 = load i32*, i32** %x.addr, align 8
  %44 = load i32, i32* %43, align 4
  %add28 = add nsw i32 %44, %42
  store i32 %add28, i32* %43, align 4
  %45 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %45, i32 0, i32 13
  %46 = load i32, i32* %ythickness, align 4
  %47 = load i32*, i32** %y.addr, align 8
  %48 = load i32, i32* %47, align 4
  %add29 = add nsw i32 %48, %46
  store i32 %add29, i32* %47, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %cond.end.22
  %49 = load %struct._GtkMenu*, %struct._GtkMenu** %menu.addr, align 8
  %50 = load i32*, i32** %x.addr, align 8
  %51 = load i32*, i32** %y.addr, align 8
  call void @gimp_menu_position(%struct._GtkMenu* %49, i32* %50, i32* %51)
  ret void
}

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

declare i32 @gdk_window_get_origin(%struct._GdkDrawable*, i32*, i32*) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

declare i32 @gtk_widget_get_has_window(%struct._GtkWidget*) #1

declare %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gtk_tree_view_get_cell_area(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, %struct._GdkRectangle*) #1

declare %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget*) #1

declare void @gimp_menu_position(%struct._GtkMenu*, i32*, i32*) #1

declare void @gtk_tree_view_set_cursor_on_cell(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

declare i8* @g_type_default_interface_peek(i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_set_container(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %old_container = alloca %struct._GimpContainer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %3)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %old_container, align 8
  %4 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %tobool = icmp ne %struct._GimpContainer* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %5, i32 0, i32 8
  %6 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %dnd_renderer = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %6, i32 0, i32 3
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %dnd_renderer, align 8
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %7, i32 0, i32 4
  %8 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view3, align 8
  %9 = bitcast %struct._GtkTreeView* %8 to i8*
  %10 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %11 = bitcast %struct._GimpContainerTreeView* %10 to i8*
  %call4 = call i32 @g_signal_handlers_disconnect_matched(i8* %9, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_row_expanded to i8*), i8* %11)
  %12 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool5 = icmp ne %struct._GimpContainer* %12, null
  br i1 %tobool5, label %if.end.29, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %13 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view7 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %13, i32 0, i32 4
  %14 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view7, align 8
  %15 = bitcast %struct._GtkTreeView* %14 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_widget_get_type() #5
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call8)
  %16 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkWidget*
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %call10 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %17)
  %call11 = call i32 @gimp_dnd_viewable_source_remove(%struct._GtkWidget* %16, i64 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %if.then.6
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %call14 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %18)
  %call15 = call i8* @g_type_class_peek(i64 %call14)
  %19 = bitcast i8* %call15 to %struct._GTypeClass*
  %call16 = call i64 @gimp_viewable_get_type() #5
  %call17 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %19, i64 %call16)
  %20 = bitcast %struct._GTypeClass* %call17 to %struct._GimpViewableClass*
  %get_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %20, i32 0, i32 5
  %21 = load i32 (%struct._GimpViewable*, i32*, i32*)*, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size, align 8
  %tobool18 = icmp ne i32 (%struct._GimpViewable*, i32*, i32*)* %21, null
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then.13
  %22 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view20 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %22, i32 0, i32 4
  %23 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view20, align 8
  %24 = bitcast %struct._GtkTreeView* %23 to %struct._GTypeInstance*
  %call21 = call i64 @gtk_widget_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call21)
  %25 = bitcast %struct._GTypeInstance* %call22 to %struct._GtkWidget*
  call void @gimp_dnd_pixbuf_source_remove(%struct._GtkWidget* %25)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then.13
  %26 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view23 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %26, i32 0, i32 4
  %27 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view23, align 8
  %28 = bitcast %struct._GtkTreeView* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_widget_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWidget*
  call void @gtk_drag_source_unset(%struct._GtkWidget* %29)
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.6
  %30 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view27 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %30, i32 0, i32 4
  %31 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view27, align 8
  %32 = bitcast %struct._GtkTreeView* %31 to i8*
  %33 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %34 = bitcast %struct._GimpContainerTreeView* %33 to i8*
  %call28 = call i32 @g_signal_handlers_disconnect_matched(i8* %32, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_button_press to i8*), i8* %34)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.26, %if.then
  br label %if.end.59

if.else:                                          ; preds = %entry
  %35 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool30 = icmp ne %struct._GimpContainer* %35, null
  br i1 %tobool30, label %if.then.31, label %if.end.58

if.then.31:                                       ; preds = %if.else
  %36 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view32 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %36, i32 0, i32 4
  %37 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view32, align 8
  %38 = bitcast %struct._GtkTreeView* %37 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_widget_get_type() #5
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call33)
  %39 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkWidget*
  %40 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call35 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %40)
  %call36 = call i32 @gimp_dnd_drag_source_set_by_type(%struct._GtkWidget* %39, i32 768, i64 %call35, i32 2)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.55

if.then.38:                                       ; preds = %if.then.31
  %41 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view39 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %41, i32 0, i32 4
  %42 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view39, align 8
  %43 = bitcast %struct._GtkTreeView* %42 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_widget_get_type() #5
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call40)
  %44 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkWidget*
  %45 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call42 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %45)
  %46 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %47 = bitcast %struct._GimpContainerTreeView* %46 to i8*
  %call43 = call i32 @gimp_dnd_viewable_source_add(%struct._GtkWidget* %44, i64 %call42, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)* @gimp_container_tree_view_drag_viewable, i8* %47)
  %48 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %call44 = call i64 @gimp_container_get_children_type(%struct._GimpContainer* %48)
  %call45 = call i8* @g_type_class_peek(i64 %call44)
  %49 = bitcast i8* %call45 to %struct._GTypeClass*
  %call46 = call i64 @gimp_viewable_get_type() #5
  %call47 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %49, i64 %call46)
  %50 = bitcast %struct._GTypeClass* %call47 to %struct._GimpViewableClass*
  %get_size48 = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %50, i32 0, i32 5
  %51 = load i32 (%struct._GimpViewable*, i32*, i32*)*, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size48, align 8
  %tobool49 = icmp ne i32 (%struct._GimpViewable*, i32*, i32*)* %51, null
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.then.38
  %52 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view51 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %52, i32 0, i32 4
  %53 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view51, align 8
  %54 = bitcast %struct._GtkTreeView* %53 to %struct._GTypeInstance*
  %call52 = call i64 @gtk_widget_get_type() #5
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call52)
  %55 = bitcast %struct._GTypeInstance* %call53 to %struct._GtkWidget*
  %56 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %57 = bitcast %struct._GimpContainerTreeView* %56 to i8*
  call void @gimp_dnd_pixbuf_source_add(%struct._GtkWidget* %55, %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)* @gimp_container_tree_view_drag_pixbuf, i8* %57)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.then.38
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.31
  %58 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view56 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %58, i32 0, i32 4
  %59 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view56, align 8
  %60 = bitcast %struct._GtkTreeView* %59 to i8*
  %61 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %62 = bitcast %struct._GimpContainerTreeView* %61 to i8*
  %call57 = call i64 @g_signal_connect_data(i8* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventButton*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_button_press to void ()*), i8* %62, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.55, %if.else
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.29
  %63 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %63, i32 0, i32 4
  %64 = load void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %65 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %66 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void %64(%struct._GimpContainerView* %65, %struct._GimpContainer* %66)
  %67 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool60 = icmp ne %struct._GimpContainer* %67, null
  br i1 %tobool60, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %if.end.59
  %68 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %68, i32 0, i32 1
  %69 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %70 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view62 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %70, i32 0, i32 4
  %71 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view62, align 8
  call void @gimp_container_tree_view_expand_rows(%struct._GtkTreeModel* %69, %struct._GtkTreeView* %71, %struct._GtkTreeIter* null)
  %72 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view63 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %72, i32 0, i32 4
  %73 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view63, align 8
  %74 = bitcast %struct._GtkTreeView* %73 to i8*
  %75 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %76 = bitcast %struct._GimpContainerTreeView* %75 to i8*
  %call64 = call i64 @g_signal_connect_data(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_row_expanded to void ()*), i8* %76, void (i8*, %struct._GClosure*)* null, i32 0)
  %77 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view65 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %77, i32 0, i32 4
  %78 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view65, align 8
  %79 = bitcast %struct._GtkTreeView* %78 to i8*
  %80 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %81 = bitcast %struct._GimpContainerTreeView* %80 to i8*
  %call66 = call i64 @g_signal_connect_data(i8* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), void ()* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_row_expanded to void ()*), i8* %81, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.61, %if.end.59
  %82 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view68 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %82, i32 0, i32 4
  %83 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view68, align 8
  call void @gtk_tree_view_columns_autosize(%struct._GtkTreeView* %83)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_set_context(%struct._GimpContainerView* %view, %struct._GimpContext* %context) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model2 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %5, i32 0, i32 1
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model2, align 8
  %7 = bitcast %struct._GtkTreeModel* %6 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_container_tree_store_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call3)
  %8 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpContainerTreeStore*
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_container_tree_store_set_context(%struct._GimpContainerTreeStore* %8, %struct._GimpContext* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %10, i32 0, i32 5
  %11 = load void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %12 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %11(%struct._GimpContainerView* %12, %struct._GimpContext* %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_set_selection_mode(%struct._GimpContainerView* %view, i32 %mode) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %mode.addr = alloca i32, align 4
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 8
  %4 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %selection = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %4, i32 0, i32 0
  %5 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %6 = load i32, i32* %mode.addr, align 4
  call void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection* %5, i32 %6)
  %7 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_selection_mode = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %7, i32 0, i32 6
  %8 = load void (%struct._GimpContainerView*, i32)*, void (%struct._GimpContainerView*, i32)** %set_selection_mode, align 8
  %9 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %10 = load i32, i32* %mode.addr, align 4
  call void %8(%struct._GimpContainerView* %9, i32 %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_container_tree_view_insert_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %parent_insert_data, i32 %index) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %parent_insert_data.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %parent_insert_data, i8** %parent_insert_data.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = bitcast %struct._GtkTreeModel* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_store_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeStore*
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %8 = load i8*, i8** %parent_insert_data.addr, align 8
  %9 = bitcast i8* %8 to %struct._GtkTreeIter*
  %10 = load i32, i32* %index.addr, align 4
  %call4 = call %struct._GtkTreeIter* @gimp_container_tree_store_insert_item(%struct._GimpContainerTreeStore* %6, %struct._GimpViewable* %7, %struct._GtkTreeIter* %9, i32 %10)
  store %struct._GtkTreeIter* %call4, %struct._GtkTreeIter** %iter, align 8
  %11 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %12 = bitcast %struct._GtkTreeIter* %11 to i8*
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_remove_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load i8*, i8** %insert_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %4, %struct._GtkTreeIter** %iter, align 8
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %5, i32 0, i32 1
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %7 = bitcast %struct._GtkTreeModel* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_store_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeStore*
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  call void @gimp_container_tree_store_remove_item(%struct._GimpContainerTreeStore* %8, %struct._GimpViewable* %9, %struct._GtkTreeIter* %10)
  %11 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view4 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %12, i32 0, i32 4
  %13 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view4, align 8
  call void @gtk_tree_view_columns_autosize(%struct._GtkTreeView* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_reorder_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i32 %new_index, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %new_index.addr = alloca i32, align 4
  %insert_data.addr = alloca i8*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  %selected = alloca i32, align 4
  %selected_iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %new_index, i32* %new_index.addr, align 4
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load i8*, i8** %insert_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %4, %struct._GtkTreeIter** %iter, align 8
  store i32 0, i32* %selected, align 4
  %5 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %tobool = icmp ne %struct._GtkTreeIter* %5, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %call2 = call i32 @gimp_container_tree_view_get_selected_single(%struct._GimpContainerTreeView* %6, %struct._GtkTreeIter* %selected_iter)
  store i32 %call2, i32* %selected, align 4
  %7 = load i32, i32* %selected, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 1
  %9 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %9, %struct._GtkTreeIter* %selected_iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable5 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %10, i32 0, i32 3
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable5, align 8
  %12 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %cmp = icmp ne %struct._GimpViewable* %11, %12
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.4
  store i32 0, i32* %selected, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %14 = bitcast %struct._GimpViewRenderer* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %15 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model9 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %15, i32 0, i32 1
  %16 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model9, align 8
  %17 = bitcast %struct._GtkTreeModel* %16 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_container_tree_store_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call10)
  %18 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpContainerTreeStore*
  %19 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %20 = load i32, i32* %new_index.addr, align 4
  %21 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  call void @gimp_container_tree_store_reorder_item(%struct._GimpContainerTreeStore* %18, %struct._GimpViewable* %19, i32 %20, %struct._GtkTreeIter* %21)
  %22 = load i32, i32* %selected, align 4
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.8
  %23 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %24 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %call14 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %23, %struct._GimpViewable* %24)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_rename_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load i8*, i8** %insert_data.addr, align 8
  %4 = bitcast i8* %3 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %4, %struct._GtkTreeIter** %iter, align 8
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %5, i32 0, i32 1
  %6 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %7 = bitcast %struct._GtkTreeModel* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_store_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeStore*
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %10 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %call4 = call i32 @gimp_container_tree_store_rename_item(%struct._GimpContainerTreeStore* %8, %struct._GimpViewable* %9, %struct._GtkTreeIter* %10)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view5 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 4
  %12 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view5, align 8
  call void @gtk_tree_view_columns_autosize(%struct._GtkTreeView* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_view_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %viewable, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %parent_path = alloca %struct._GtkTreePath*, align 8
  %iter = alloca %struct._GtkTreeIter*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %insert_data.addr, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %insert_data.addr, align 8
  %6 = bitcast i8* %5 to %struct._GtkTreeIter*
  store %struct._GtkTreeIter* %6, %struct._GtkTreeIter** %iter, align 8
  %7 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %7, i32 0, i32 1
  %8 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %9 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter, align 8
  %call3 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %8, %struct._GtkTreeIter* %9)
  store %struct._GtkTreePath* %call3, %struct._GtkTreePath** %path, align 8
  %10 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call4 = call %struct._GtkTreePath* @gtk_tree_path_copy(%struct._GtkTreePath* %10)
  store %struct._GtkTreePath* %call4, %struct._GtkTreePath** %parent_path, align 8
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %parent_path, align 8
  %call5 = call i32 @gtk_tree_path_up(%struct._GtkTreePath* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %12 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view8 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %12, i32 0, i32 4
  %13 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view8, align 8
  %14 = load %struct._GtkTreePath*, %struct._GtkTreePath** %parent_path, align 8
  call void @gtk_tree_view_expand_to_path(%struct._GtkTreeView* %13, %struct._GtkTreePath* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %15 = load %struct._GtkTreePath*, %struct._GtkTreePath** %parent_path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %15)
  %16 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %16, i32 0, i32 8
  %17 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %selection = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %17, i32 0, i32 0
  %18 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %19 = bitcast %struct._GtkTreeSelection* %18 to i8*
  %20 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %21 = bitcast %struct._GimpContainerTreeView* %20 to i8*
  %call9 = call i32 @g_signal_handlers_block_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_selection_changed to i8*), i8* %21)
  %22 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view10 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %22, i32 0, i32 4
  %23 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view10, align 8
  %24 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_view_set_cursor(%struct._GtkTreeView* %23, %struct._GtkTreePath* %24, %struct._GtkTreeViewColumn* null, i32 0)
  %25 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv11 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %25, i32 0, i32 8
  %26 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv11, align 8
  %selection12 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %26, i32 0, i32 0
  %27 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection12, align 8
  %28 = bitcast %struct._GtkTreeSelection* %27 to i8*
  %29 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %30 = bitcast %struct._GimpContainerTreeView* %29 to i8*
  %call13 = call i32 @g_signal_handlers_unblock_matched(i8* %28, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeSelection*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_selection_changed to i8*), i8* %30)
  %31 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view14 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %31, i32 0, i32 4
  %32 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view14, align 8
  %33 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView* %32, %struct._GtkTreePath* %33, %struct._GtkTreeViewColumn* null, i32 0, float 0.000000e+00, float 0.000000e+00)
  %34 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %34)
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %entry
  %35 = load i8*, i8** %insert_data.addr, align 8
  %cmp = icmp eq i8* %35, null
  br i1 %cmp, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.else
  %36 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv16 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %36, i32 0, i32 8
  %37 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv16, align 8
  %selection17 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %37, i32 0, i32 0
  %38 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection17, align 8
  call void @gtk_tree_selection_unselect_all(%struct._GtkTreeSelection* %38)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_clear_items(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 1
  %4 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %5 = bitcast %struct._GtkTreeModel* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_store_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeStore*
  call void @gimp_container_tree_store_clear_items(%struct._GimpContainerTreeStore* %6)
  %7 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %clear_items = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %7, i32 0, i32 12
  %8 = load void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)** %clear_items, align 8
  %9 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void %8(%struct._GimpContainerView* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_set_view_size(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %tree_widget = alloca %struct._GtkWidget*, align 8
  %list = alloca %struct._GList*, align 8
  %view_size = alloca i32, align 4
  %border_width = alloca i32, align 4
  %stock_id = alloca i8*, align 8
  %icon_size = alloca i32, align 4
  %style = alloca %struct._GtkStyle*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call2 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %3, i32* %border_width)
  store i32 %call2, i32* %view_size, align 4
  %4 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %4, i32 0, i32 1
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %tobool = icmp ne %struct._GtkTreeModel* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %model3 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %6, i32 0, i32 1
  %7 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model3, align 8
  %8 = bitcast %struct._GtkTreeModel* %7 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_container_tree_store_get_type() #5
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call4)
  %9 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpContainerTreeStore*
  call void @gimp_container_tree_store_set_view_size(%struct._GimpContainerTreeStore* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view6 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %10, i32 0, i32 4
  %11 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view6, align 8
  %12 = bitcast %struct._GtkTreeView* %11 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #5
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call7)
  %13 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  store %struct._GtkWidget* %13, %struct._GtkWidget** %tree_widget, align 8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_widget, align 8
  %tobool9 = icmp ne %struct._GtkWidget* %14, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  br label %return

if.end.11:                                        ; preds = %if.end
  %15 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %15, i32 0, i32 8
  %16 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %toggle_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %16, i32 0, i32 4
  %17 = load %struct._GList*, %struct._GList** %toggle_cells, align 8
  store %struct._GList* %17, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.end.11
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %18, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  call void (i8*, i8*, ...) @g_object_get(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8** %stock_id, i8* null)
  %21 = load i8*, i8** %stock_id, align 8
  %tobool13 = icmp ne i8* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %for.body
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_widget, align 8
  %call15 = call %struct._GtkStyle* @gtk_widget_get_style(%struct._GtkWidget* %22)
  store %struct._GtkStyle* %call15, %struct._GtkStyle** %style, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %tree_widget, align 8
  %24 = load i8*, i8** %stock_id, align 8
  %25 = load i32, i32* %view_size, align 4
  %26 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %xthickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %26, i32 0, i32 12
  %27 = load i32, i32* %xthickness, align 4
  %mul = mul nsw i32 2, %27
  %sub = sub nsw i32 %25, %mul
  %28 = load i32, i32* %view_size, align 4
  %29 = load %struct._GtkStyle*, %struct._GtkStyle** %style, align 8
  %ythickness = getelementptr inbounds %struct._GtkStyle, %struct._GtkStyle* %29, i32 0, i32 13
  %30 = load i32, i32* %ythickness, align 4
  %mul16 = mul nsw i32 2, %30
  %sub17 = sub nsw i32 %28, %mul16
  %call18 = call i32 @gimp_get_icon_size(%struct._GtkWidget* %23, i8* %24, i32 4, i32 %sub, i32 %sub17)
  store i32 %call18, i32* %icon_size, align 4
  %31 = load %struct._GList*, %struct._GList** %list, align 8
  %data19 = getelementptr inbounds %struct._GList, %struct._GList* %31, i32 0, i32 0
  %32 = load i8*, i8** %data19, align 8
  %33 = load i32, i32* %icon_size, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 %33, i8* null)
  %34 = load i8*, i8** %stock_id, align 8
  call void @g_free(i8* %34)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %35 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool21 = icmp ne %struct._GList* %35, null
  br i1 %tobool21, label %cond.true, label %cond.false

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
  %38 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view22 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %38, i32 0, i32 4
  %39 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view22, align 8
  call void @gtk_tree_view_columns_autosize(%struct._GtkTreeView* %39)
  br label %return

return:                                           ; preds = %for.end, %if.then.10
  ret void
}

declare void @gtk_tree_iter_free(%struct._GtkTreeIter*) #1

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_row_expanded(%struct._GtkTreeView* %tree_view, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %path, %struct._GimpContainerTreeView* %view) #3 {
entry:
  %tree_view.addr = alloca %struct._GtkTreeView*, align 8
  %iter.addr = alloca %struct._GtkTreeIter*, align 8
  %path.addr = alloca %struct._GtkTreePath*, align 8
  %view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %expanded = alloca i32, align 4
  store %struct._GtkTreeView* %tree_view, %struct._GtkTreeView** %tree_view.addr, align 8
  store %struct._GtkTreeIter* %iter, %struct._GtkTreeIter** %iter.addr, align 8
  store %struct._GtkTreePath* %path, %struct._GtkTreePath** %path.addr, align 8
  store %struct._GimpContainerTreeView* %view, %struct._GimpContainerTreeView** %view.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %0, i32 0, i32 1
  %1 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %2 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %1, %struct._GtkTreeIter* %2, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %3 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %3, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view.addr, align 8
  %5 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path.addr, align 8
  %call = call i32 @gtk_tree_view_row_expanded(%struct._GtkTreeView* %4, %struct._GtkTreePath* %5)
  store i32 %call, i32* %expanded, align 4
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 3
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %8 = load i32, i32* %expanded, align 4
  call void @gimp_viewable_set_expanded(%struct._GimpViewable* %7, i32 %8)
  %9 = load i32, i32* %expanded, align 4
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %10 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view.addr, align 8
  %11 = bitcast %struct._GtkTreeView* %10 to i8*
  %12 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %13 = bitcast %struct._GimpContainerTreeView* %12 to i8*
  %call3 = call i32 @g_signal_handlers_block_matched(i8* %11, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_row_expanded to i8*), i8* %13)
  %14 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %model4 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %14, i32 0, i32 1
  %15 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model4, align 8
  %16 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view.addr, align 8
  %17 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %iter.addr, align 8
  call void @gimp_container_tree_view_expand_rows(%struct._GtkTreeModel* %15, %struct._GtkTreeView* %16, %struct._GtkTreeIter* %17)
  %18 = load %struct._GtkTreeView*, %struct._GtkTreeView** %tree_view.addr, align 8
  %19 = bitcast %struct._GtkTreeView* %18 to i8*
  %20 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %21 = bitcast %struct._GimpContainerTreeView* %20 to i8*
  %call5 = call i32 @g_signal_handlers_unblock_matched(i8* %19, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GtkTreeView*, %struct._GtkTreeIter*, %struct._GtkTreePath*, %struct._GimpContainerTreeView*)* @gimp_container_tree_view_row_expanded to i8*), i8* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %23 = bitcast %struct._GimpViewRenderer* %22 to i8*
  call void @g_object_unref(i8* %23)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  ret void
}

declare i32 @gimp_dnd_viewable_source_remove(%struct._GtkWidget*, i64) #1

declare i64 @gimp_container_get_children_type(%struct._GimpContainer*) #1

declare i8* @g_type_class_peek(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare void @gimp_dnd_pixbuf_source_remove(%struct._GtkWidget*) #1

declare void @gtk_drag_source_unset(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_container_tree_view_button_press(%struct._GtkWidget* %widget, %struct._GdkEventButton* %bevent, %struct._GimpContainerTreeView* %tree_view) #3 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %bevent.addr = alloca %struct._GdkEventButton*, align 8
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %container_view = alloca %struct._GimpContainerView*, align 8
  %column = alloca %struct._GtkTreeViewColumn*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %toggled_cell = alloca %struct._GimpCellRendererToggle*, align 8
  %clicked_cell = alloca %struct._GimpCellRendererViewable*, align 8
  %edit_cell = alloca %struct._GtkCellRenderer*, align 8
  %column_area = alloca %struct._GdkRectangle, align 4
  %iter = alloca %struct._GtkTreeIter, align 8
  %handled = alloca i32, align 4
  %multisel_mode = alloca i32, align 4
  %cells = alloca %struct._GList*, align 8
  %path_str = alloca i8*, align 8
  %path_str110 = alloca i8*, align 8
  %success = alloca i32, align 4
  %path_str162 = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventButton* %bevent, %struct._GdkEventButton** %bevent.addr, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_view_interface_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %2, %struct._GimpContainerView** %container_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 8
  %4 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %dnd_renderer = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %4, i32 0, i32 3
  store %struct._GimpViewRenderer* null, %struct._GimpViewRenderer** %dnd_renderer, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call i32 @gtk_widget_has_focus(%struct._GtkWidget* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_tree_view_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call3)
  %9 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTreeView*
  %10 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %10, i32 0, i32 4
  %11 = load double, double* %x, align 8
  %conv = fptosi double %11 to i32
  %12 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %12, i32 0, i32 5
  %13 = load double, double* %y, align 8
  %conv5 = fptosi double %13 to i32
  %call6 = call i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView* %9, i32 %conv, i32 %conv5, %struct._GtkTreePath** %path, %struct._GtkTreeViewColumn** %column, i32* null, i32* null)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.171

if.then.8:                                        ; preds = %if.end
  store %struct._GimpCellRendererToggle* null, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  store %struct._GimpCellRendererViewable* null, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  store %struct._GtkCellRenderer* null, %struct._GtkCellRenderer** %edit_cell, align 8
  store i32 1, i32* %handled, align 4
  %14 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv9 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %14, i32 0, i32 8
  %15 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv9, align 8
  %selection = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %15, i32 0, i32 0
  %16 = load %struct._GtkTreeSelection*, %struct._GtkTreeSelection** %selection, align 8
  %call10 = call i32 @gtk_tree_selection_get_mode(%struct._GtkTreeSelection* %16)
  %cmp = icmp eq i32 %call10, 3
  %conv11 = zext i1 %cmp to i32
  store i32 %conv11, i32* %multisel_mode, align 4
  %17 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %17, i32 0, i32 1
  %18 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model, align 8
  %19 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call12 = call i32 @gtk_tree_model_get_iter(%struct._GtkTreeModel* %18, %struct._GtkTreeIter* %iter, %struct._GtkTreePath* %19)
  %20 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model13 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %20, i32 0, i32 1
  %21 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model13, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %21, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %22 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %23 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv14 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %23, i32 0, i32 8
  %24 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv14, align 8
  %dnd_renderer15 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %24, i32 0, i32 3
  store %struct._GimpViewRenderer* %22, %struct._GimpViewRenderer** %dnd_renderer15, align 8
  %25 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %25, i32 0, i32 4
  %26 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %27 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %28 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  call void @gtk_tree_view_get_cell_area(%struct._GtkTreeView* %26, %struct._GtkTreePath* %27, %struct._GtkTreeViewColumn* %28, %struct._GdkRectangle* %column_area)
  %29 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %30 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model16 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %30, i32 0, i32 1
  %31 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model16, align 8
  call void @gtk_tree_view_column_cell_set_cell_data(%struct._GtkTreeViewColumn* %29, %struct._GtkTreeModel* %31, %struct._GtkTreeIter* %iter, i32 0, i32 0)
  %32 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %32, i32 0, i32 8
  %33 = load i32, i32* %button, align 4
  %cmp17 = icmp eq i32 %33, 1
  br i1 %cmp17, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.then.8
  %34 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model19 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %34, i32 0, i32 1
  %35 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model19, align 8
  %call20 = call i32 @gtk_tree_model_iter_has_child(%struct._GtkTreeModel* %35, %struct._GtkTreeIter* %iter)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.39

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %36 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %37 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view23 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %37, i32 0, i32 4
  %38 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view23, align 8
  %call24 = call %struct._GtkTreeViewColumn* @gtk_tree_view_get_expander_column(%struct._GtkTreeView* %38)
  %cmp25 = icmp eq %struct._GtkTreeViewColumn* %36, %call24
  br i1 %cmp25, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %land.lhs.true.22
  %39 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %40 = bitcast %struct._GtkTreeViewColumn* %39 to %struct._GTypeInstance*
  %call28 = call i64 @gtk_cell_layout_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call28)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GtkCellLayout*
  %call30 = call %struct._GList* @gtk_cell_layout_get_cells(%struct._GtkCellLayout* %41)
  store %struct._GList* %call30, %struct._GList** %cells, align 8
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %43 = load %struct._GList*, %struct._GList** %cells, align 8
  %44 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %45 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x31 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %45, i32 0, i32 4
  %46 = load double, double* %x31, align 8
  %conv32 = fptosi double %46 to i32
  %47 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y33 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %47, i32 0, i32 5
  %48 = load double, double* %y33, align 8
  %conv34 = fptosi double %48 to i32
  %call35 = call %struct._GtkCellRenderer* @gimp_container_tree_view_find_click_cell(%struct._GtkWidget* %42, %struct._GList* %43, %struct._GtkTreeViewColumn* %44, %struct._GdkRectangle* %column_area, i32 %conv32, i32 %conv34)
  %tobool36 = icmp ne %struct._GtkCellRenderer* %call35, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.27
  %49 = load %struct._GList*, %struct._GList** %cells, align 8
  call void @g_list_free(%struct._GList* %49)
  %50 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %50)
  %51 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %52 = bitcast %struct._GimpViewRenderer* %51 to i8*
  call void @g_object_unref(i8* %52)
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.27
  %53 = load %struct._GList*, %struct._GList** %cells, align 8
  call void @g_list_free(%struct._GList* %53)
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.22, %land.lhs.true, %if.then.8
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %55 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv40 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %55, i32 0, i32 8
  %56 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv40, align 8
  %toggle_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %56, i32 0, i32 4
  %57 = load %struct._GList*, %struct._GList** %toggle_cells, align 8
  %58 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %59 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x41 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %59, i32 0, i32 4
  %60 = load double, double* %x41, align 8
  %conv42 = fptosi double %60 to i32
  %61 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y43 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %61, i32 0, i32 5
  %62 = load double, double* %y43, align 8
  %conv44 = fptosi double %62 to i32
  %call45 = call %struct._GtkCellRenderer* @gimp_container_tree_view_find_click_cell(%struct._GtkWidget* %54, %struct._GList* %57, %struct._GtkTreeViewColumn* %58, %struct._GdkRectangle* %column_area, i32 %conv42, i32 %conv44)
  %63 = bitcast %struct._GtkCellRenderer* %call45 to %struct._GimpCellRendererToggle*
  store %struct._GimpCellRendererToggle* %63, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  %64 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  %tobool46 = icmp ne %struct._GimpCellRendererToggle* %64, null
  br i1 %tobool46, label %if.end.54, label %if.then.47

if.then.47:                                       ; preds = %if.end.39
  %65 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %66 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv48 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %66, i32 0, i32 8
  %67 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv48, align 8
  %renderer_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %67, i32 0, i32 5
  %68 = load %struct._GList*, %struct._GList** %renderer_cells, align 8
  %69 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %70 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x49 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %70, i32 0, i32 4
  %71 = load double, double* %x49, align 8
  %conv50 = fptosi double %71 to i32
  %72 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y51 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %72, i32 0, i32 5
  %73 = load double, double* %y51, align 8
  %conv52 = fptosi double %73 to i32
  %call53 = call %struct._GtkCellRenderer* @gimp_container_tree_view_find_click_cell(%struct._GtkWidget* %65, %struct._GList* %68, %struct._GtkTreeViewColumn* %69, %struct._GdkRectangle* %column_area, i32 %conv50, i32 %conv52)
  %74 = bitcast %struct._GtkCellRenderer* %call53 to %struct._GimpCellRendererViewable*
  store %struct._GimpCellRendererViewable* %74, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.47, %if.end.39
  %75 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  %tobool55 = icmp ne %struct._GimpCellRendererToggle* %75, null
  br i1 %tobool55, label %if.end.65, label %land.lhs.true.56

land.lhs.true.56:                                 ; preds = %if.end.54
  %76 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  %tobool57 = icmp ne %struct._GimpCellRendererViewable* %76, null
  br i1 %tobool57, label %if.end.65, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true.56
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %78 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %priv59 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %78, i32 0, i32 8
  %79 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv59, align 8
  %editable_cells = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %79, i32 0, i32 2
  %80 = load %struct._GList*, %struct._GList** %editable_cells, align 8
  %81 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %82 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %x60 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %82, i32 0, i32 4
  %83 = load double, double* %x60, align 8
  %conv61 = fptosi double %83 to i32
  %84 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %y62 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %84, i32 0, i32 5
  %85 = load double, double* %y62, align 8
  %conv63 = fptosi double %85 to i32
  %call64 = call %struct._GtkCellRenderer* @gimp_container_tree_view_find_click_cell(%struct._GtkWidget* %77, %struct._GList* %80, %struct._GtkTreeViewColumn* %81, %struct._GdkRectangle* %column_area, i32 %conv61, i32 %conv63)
  store %struct._GtkCellRenderer* %call64, %struct._GtkCellRenderer** %edit_cell, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.58, %land.lhs.true.56, %if.end.54
  %86 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %87 = bitcast %struct._GimpContainerTreeView* %86 to i8*
  %call66 = call i8* @g_object_ref(i8* %87)
  %88 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %89 = bitcast %struct._GdkEventButton* %88 to %union._GdkEvent*
  %call67 = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %89)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.end.65
  %90 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %91 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %91, i32 0, i32 3
  %92 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call70 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %90, %struct._GimpViewable* %92)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %if.then.69
  %93 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %call73 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %93)
  %tobool74 = icmp ne %struct._GimpContainer* %call73, null
  br i1 %tobool74, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.then.72
  %94 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %95 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable76 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %95, i32 0, i32 3
  %96 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable76, align 8
  call void @gimp_container_view_item_context(%struct._GimpContainerView* %94, %struct._GimpViewable* %96)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.then.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.69
  br label %if.end.169

if.else:                                          ; preds = %if.end.65
  %97 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button79 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %97, i32 0, i32 8
  %98 = load i32, i32* %button79, align 4
  %cmp80 = icmp eq i32 %98, 1
  br i1 %cmp80, label %if.then.82, label %if.else.151

if.then.82:                                       ; preds = %if.else
  %99 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %99, i32 0, i32 0
  %100 = load i32, i32* %type, align 4
  %cmp83 = icmp eq i32 %100, 4
  br i1 %cmp83, label %if.then.85, label %if.else.123

if.then.85:                                       ; preds = %if.then.82
  %101 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  %tobool86 = icmp ne %struct._GimpCellRendererToggle* %101, null
  br i1 %tobool86, label %if.end.102, label %if.then.87

if.then.87:                                       ; preds = %if.then.85
  %102 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call88 = call i8* @gtk_tree_path_to_string(%struct._GtkTreePath* %102)
  store i8* %call88, i8** %path_str, align 8
  store i32 0, i32* %handled, align 4
  %103 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  %tobool89 = icmp ne %struct._GimpCellRendererViewable* %103, null
  br i1 %tobool89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.then.87
  %104 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  %105 = load i8*, i8** %path_str, align 8
  %106 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %106, i32 0, i32 7
  %107 = load i32, i32* %state, align 4
  %call91 = call i32 @gimp_cell_renderer_viewable_pre_clicked(%struct._GimpCellRendererViewable* %104, i8* %105, i32 %107)
  store i32 %call91, i32* %handled, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.then.87
  %108 = load i32, i32* %handled, align 4
  %tobool93 = icmp ne i32 %108, 0
  br i1 %tobool93, label %if.end.101, label %if.then.94

if.then.94:                                       ; preds = %if.end.92
  %109 = load i32, i32* %multisel_mode, align 4
  %tobool95 = icmp ne i32 %109, 0
  br i1 %tobool95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.then.94
  br label %if.end.100

if.else.97:                                       ; preds = %if.then.94
  %110 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %111 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable98 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %111, i32 0, i32 3
  %112 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable98, align 8
  %call99 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %110, %struct._GimpViewable* %112)
  store i32 %call99, i32* %handled, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.92
  %113 = load i8*, i8** %path_str, align 8
  call void @g_free(i8* %113)
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.85
  %114 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %call103 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %114)
  %tobool104 = icmp ne %struct._GimpContainer* %call103, null
  br i1 %tobool104, label %if.then.105, label %if.end.122

if.then.105:                                      ; preds = %if.end.102
  %115 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %116 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %model106 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %116, i32 0, i32 1
  %117 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model106, align 8
  call void @gtk_tree_view_column_cell_set_cell_data(%struct._GtkTreeViewColumn* %115, %struct._GtkTreeModel* %117, %struct._GtkTreeIter* %iter, i32 0, i32 0)
  %118 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  %tobool107 = icmp ne %struct._GimpCellRendererToggle* %118, null
  br i1 %tobool107, label %if.then.109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.105
  %119 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  %tobool108 = icmp ne %struct._GimpCellRendererViewable* %119, null
  br i1 %tobool108, label %if.then.109, label %if.end.121

if.then.109:                                      ; preds = %lor.lhs.false, %if.then.105
  %120 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call111 = call i8* @gtk_tree_path_to_string(%struct._GtkTreePath* %120)
  store i8* %call111, i8** %path_str110, align 8
  %121 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  %tobool112 = icmp ne %struct._GimpCellRendererToggle* %121, null
  br i1 %tobool112, label %if.then.113, label %if.else.115

if.then.113:                                      ; preds = %if.then.109
  %122 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  %123 = load i8*, i8** %path_str110, align 8
  %124 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %state114 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %124, i32 0, i32 7
  %125 = load i32, i32* %state114, align 4
  call void @gimp_cell_renderer_toggle_clicked(%struct._GimpCellRendererToggle* %122, i8* %123, i32 %125)
  br label %if.end.120

if.else.115:                                      ; preds = %if.then.109
  %126 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  %tobool116 = icmp ne %struct._GimpCellRendererViewable* %126, null
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.else.115
  %127 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  %128 = load i8*, i8** %path_str110, align 8
  %129 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %state118 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %129, i32 0, i32 7
  %130 = load i32, i32* %state118, align 4
  call void @gimp_cell_renderer_viewable_clicked(%struct._GimpCellRendererViewable* %127, i8* %128, i32 %130)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.else.115
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.113
  %131 = load i8*, i8** %path_str110, align 8
  call void @g_free(i8* %131)
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %lor.lhs.false
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.102
  br label %if.end.150

if.else.123:                                      ; preds = %if.then.82
  %132 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type124 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %132, i32 0, i32 0
  %133 = load i32, i32* %type124, align 4
  %cmp125 = icmp eq i32 %133, 5
  br i1 %cmp125, label %if.then.127, label %if.end.149

if.then.127:                                      ; preds = %if.else.123
  store i32 1, i32* %success, align 4
  %134 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  %tobool128 = icmp ne %struct._GimpCellRendererToggle* %134, null
  br i1 %tobool128, label %if.end.132, label %if.then.129

if.then.129:                                      ; preds = %if.then.127
  %135 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %136 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable130 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %136, i32 0, i32 3
  %137 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable130, align 8
  %call131 = call i32 @gimp_container_view_item_selected(%struct._GimpContainerView* %135, %struct._GimpViewable* %137)
  store i32 %call131, i32* %success, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %if.then.127
  %138 = load i32, i32* %success, align 4
  %tobool133 = icmp ne i32 %138, 0
  br i1 %tobool133, label %if.then.134, label %if.end.148

if.then.134:                                      ; preds = %if.end.132
  %139 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %edit_cell, align 8
  %tobool135 = icmp ne %struct._GtkCellRenderer* %139, null
  br i1 %tobool135, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %if.then.134
  %140 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %view137 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %140, i32 0, i32 4
  %141 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view137, align 8
  %142 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %143 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column, align 8
  %144 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %edit_cell, align 8
  call void @gtk_tree_view_set_cursor_on_cell(%struct._GtkTreeView* %141, %struct._GtkTreePath* %142, %struct._GtkTreeViewColumn* %143, %struct._GtkCellRenderer* %144, i32 1)
  br label %if.end.147

if.else.138:                                      ; preds = %if.then.134
  %145 = load %struct._GimpCellRendererToggle*, %struct._GimpCellRendererToggle** %toggled_cell, align 8
  %tobool139 = icmp ne %struct._GimpCellRendererToggle* %145, null
  br i1 %tobool139, label %if.end.146, label %land.lhs.true.140

land.lhs.true.140:                                ; preds = %if.else.138
  %146 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %state141 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %146, i32 0, i32 7
  %147 = load i32, i32* %state141, align 4
  %call142 = call i32 @gimp_get_all_modifiers_mask()
  %and = and i32 %147, %call142
  %tobool143 = icmp ne i32 %and, 0
  br i1 %tobool143, label %if.end.146, label %if.then.144

if.then.144:                                      ; preds = %land.lhs.true.140
  %148 = load %struct._GimpContainerView*, %struct._GimpContainerView** %container_view, align 8
  %149 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable145 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %149, i32 0, i32 3
  %150 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable145, align 8
  call void @gimp_container_view_item_activated(%struct._GimpContainerView* %148, %struct._GimpViewable* %150)
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.144, %land.lhs.true.140, %if.else.138
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.136
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.132
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.else.123
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.122
  br label %if.end.168

if.else.151:                                      ; preds = %if.else
  %151 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %button152 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %151, i32 0, i32 8
  %152 = load i32, i32* %button152, align 4
  %cmp153 = icmp eq i32 %152, 2
  br i1 %cmp153, label %if.then.155, label %if.end.167

if.then.155:                                      ; preds = %if.else.151
  %153 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %type156 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %153, i32 0, i32 0
  %154 = load i32, i32* %type156, align 4
  %cmp157 = icmp eq i32 %154, 4
  br i1 %cmp157, label %if.then.159, label %if.end.166

if.then.159:                                      ; preds = %if.then.155
  %155 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  %tobool160 = icmp ne %struct._GimpCellRendererViewable* %155, null
  br i1 %tobool160, label %if.then.161, label %if.end.165

if.then.161:                                      ; preds = %if.then.159
  %156 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call163 = call i8* @gtk_tree_path_to_string(%struct._GtkTreePath* %156)
  store i8* %call163, i8** %path_str162, align 8
  %157 = load %struct._GimpCellRendererViewable*, %struct._GimpCellRendererViewable** %clicked_cell, align 8
  %158 = load i8*, i8** %path_str162, align 8
  %159 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %state164 = getelementptr inbounds %struct._GdkEventButton, %struct._GdkEventButton* %159, i32 0, i32 7
  %160 = load i32, i32* %state164, align 4
  call void @gimp_cell_renderer_viewable_clicked(%struct._GimpCellRendererViewable* %157, i8* %158, i32 %160)
  %161 = load i8*, i8** %path_str162, align 8
  call void @g_free(i8* %161)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.161, %if.then.159
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.155
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.else.151
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.150
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.78
  %162 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %163 = bitcast %struct._GimpContainerTreeView* %162 to i8*
  call void @g_object_unref(i8* %163)
  %164 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %164)
  %165 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %166 = bitcast %struct._GimpViewRenderer* %165 to i8*
  call void @g_object_unref(i8* %166)
  %167 = load i32, i32* %multisel_mode, align 4
  %tobool170 = icmp ne i32 %167, 0
  br i1 %tobool170, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.169
  %168 = load i32, i32* %handled, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.169
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %168, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.else.171:                                      ; preds = %if.end
  %169 = load %struct._GdkEventButton*, %struct._GdkEventButton** %bevent.addr, align 8
  %170 = bitcast %struct._GdkEventButton* %169 to %union._GdkEvent*
  %call172 = call i32 @gdk_event_triggers_context_menu(%union._GdkEvent* %170)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.178

if.then.174:                                      ; preds = %if.else.171
  %171 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %172 = bitcast %struct._GimpContainerTreeView* %171 to %struct._GTypeInstance*
  %call175 = call i64 @gimp_editor_get_type() #5
  %call176 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %172, i64 %call175)
  %173 = bitcast %struct._GTypeInstance* %call176 to %struct._GimpEditor*
  %call177 = call i32 @gimp_editor_popup_menu(%struct._GimpEditor* %173, void (%struct._GtkMenu*, i32*, i32*, i8*)* null, i8* null)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.174, %if.else.171
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.178, %cond.end, %if.then.37
  %174 = load i32, i32* %retval
  ret i32 %174
}

declare i32 @gimp_dnd_drag_source_set_by_type(%struct._GtkWidget*, i32, i64, i32) #1

declare i32 @gimp_dnd_viewable_source_add(%struct._GtkWidget*, i64, %struct._GimpViewable* (%struct._GtkWidget*, %struct._GimpContext**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpViewable* @gimp_container_tree_view_drag_viewable(%struct._GtkWidget* %widget, %struct._GimpContext** %context, i8* %data) #3 {
entry:
  %retval = alloca %struct._GimpViewable*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext**, align 8
  %data.addr = alloca i8*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GimpContext** %context, %struct._GimpContext*** %context.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContext**, %struct._GimpContext*** %context.addr, align 8
  %tobool = icmp ne %struct._GimpContext** %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast i8* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #5
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %call4 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  %7 = load %struct._GimpContext**, %struct._GimpContext*** %context.addr, align 8
  store %struct._GimpContext* %call4, %struct._GimpContext** %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 8
  %9 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %dnd_renderer = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %9, i32 0, i32 3
  %10 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %dnd_renderer, align 8
  %tobool5 = icmp ne %struct._GimpViewRenderer* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv7 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %11, i32 0, i32 8
  %12 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv7, align 8
  %dnd_renderer8 = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %12, i32 0, i32 3
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %dnd_renderer8, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %13, i32 0, i32 3
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  store %struct._GimpViewable* %14, %struct._GimpViewable** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  store %struct._GimpViewable* null, %struct._GimpViewable** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.6
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %retval
  ret %struct._GimpViewable* %15
}

declare void @gimp_dnd_pixbuf_source_add(%struct._GtkWidget*, %struct._GdkPixbuf* (%struct._GtkWidget*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GdkPixbuf* @gimp_container_tree_view_drag_pixbuf(%struct._GtkWidget* %widget, i8* %data) #3 {
entry:
  %retval = alloca %struct._GdkPixbuf*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %data.addr = alloca i8*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %priv = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %3, i32 0, i32 8
  %4 = load %struct._GimpContainerTreeViewPriv*, %struct._GimpContainerTreeViewPriv** %priv, align 8
  %dnd_renderer = getelementptr inbounds %struct._GimpContainerTreeViewPriv, %struct._GimpContainerTreeViewPriv* %4, i32 0, i32 3
  %5 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %dnd_renderer, align 8
  store %struct._GimpViewRenderer* %5, %struct._GimpViewRenderer** %renderer, align 8
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool = icmp ne %struct._GimpViewRenderer* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %7, i32 0, i32 3
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call2 = call i32 @gimp_viewable_get_size(%struct._GimpViewable* %8, i32* %width, i32* %height)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable4 = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %9, i32 0, i32 3
  %10 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable4, align 8
  %11 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %context = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %11, i32 0, i32 1
  %12 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %13 = load i32, i32* %width, align 4
  %14 = load i32, i32* %height, align 4
  %call5 = call %struct._GdkPixbuf* @gimp_viewable_get_new_pixbuf(%struct._GimpViewable* %10, %struct._GimpContext* %12, i32 %13, i32 %14)
  store %struct._GdkPixbuf* %call5, %struct._GdkPixbuf** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store %struct._GdkPixbuf* null, %struct._GdkPixbuf** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %retval
  ret %struct._GdkPixbuf* %15
}

; Function Attrs: nounwind uwtable
define internal void @gimp_container_tree_view_expand_rows(%struct._GtkTreeModel* %model, %struct._GtkTreeView* %view, %struct._GtkTreeIter* %parent) #3 {
entry:
  %model.addr = alloca %struct._GtkTreeModel*, align 8
  %view.addr = alloca %struct._GtkTreeView*, align 8
  %parent.addr = alloca %struct._GtkTreeIter*, align 8
  %iter = alloca %struct._GtkTreeIter, align 8
  %renderer = alloca %struct._GimpViewRenderer*, align 8
  %path = alloca %struct._GtkTreePath*, align 8
  store %struct._GtkTreeModel* %model, %struct._GtkTreeModel** %model.addr, align 8
  store %struct._GtkTreeView* %view, %struct._GtkTreeView** %view.addr, align 8
  store %struct._GtkTreeIter* %parent, %struct._GtkTreeIter** %parent.addr, align 8
  %0 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %1 = load %struct._GtkTreeIter*, %struct._GtkTreeIter** %parent.addr, align 8
  %call = call i32 @gtk_tree_model_iter_children(%struct._GtkTreeModel* %0, %struct._GtkTreeIter* %iter, %struct._GtkTreeIter* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %2 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %call1 = call i32 @gtk_tree_model_iter_has_child(%struct._GtkTreeModel* %2, %struct._GtkTreeIter* %iter)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %do.body
  %3 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  call void (%struct._GtkTreeModel*, %struct._GtkTreeIter*, ...) @gtk_tree_model_get(%struct._GtkTreeModel* %3, %struct._GtkTreeIter* %iter, i32 0, %struct._GimpViewRenderer** %renderer, i32 -1)
  %4 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %tobool4 = icmp ne %struct._GimpViewRenderer* %4, null
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.then.3
  %5 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %call6 = call %struct._GtkTreePath* @gtk_tree_model_get_path(%struct._GtkTreeModel* %5, %struct._GtkTreeIter* %iter)
  store %struct._GtkTreePath* %call6, %struct._GtkTreePath** %path, align 8
  %6 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %viewable = getelementptr inbounds %struct._GimpViewRenderer, %struct._GimpViewRenderer* %6, i32 0, i32 3
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable, align 8
  %call7 = call i32 @gimp_viewable_get_expanded(%struct._GimpViewable* %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  %8 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view.addr, align 8
  %9 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call10 = call i32 @gtk_tree_view_expand_row(%struct._GtkTreeView* %8, %struct._GtkTreePath* %9, i32 0)
  br label %if.end

if.else:                                          ; preds = %if.then.5
  %10 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view.addr, align 8
  %11 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  %call11 = call i32 @gtk_tree_view_collapse_row(%struct._GtkTreeView* %10, %struct._GtkTreePath* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %12 = load %struct._GtkTreePath*, %struct._GtkTreePath** %path, align 8
  call void @gtk_tree_path_free(%struct._GtkTreePath* %12)
  %13 = load %struct._GimpViewRenderer*, %struct._GimpViewRenderer** %renderer, align 8
  %14 = bitcast %struct._GimpViewRenderer* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.3
  %15 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %16 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view.addr, align 8
  call void @gimp_container_tree_view_expand_rows(%struct._GtkTreeModel* %15, %struct._GtkTreeView* %16, %struct._GtkTreeIter* %iter)
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  %17 = load %struct._GtkTreeModel*, %struct._GtkTreeModel** %model.addr, align 8
  %call14 = call i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel* %17, %struct._GtkTreeIter* %iter)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.16

if.end.16:                                        ; preds = %do.end, %entry
  ret void
}

declare void @gtk_tree_view_columns_autosize(%struct._GtkTreeView*) #1

declare i32 @gtk_tree_view_row_expanded(%struct._GtkTreeView*, %struct._GtkTreePath*) #1

declare void @gimp_viewable_set_expanded(%struct._GimpViewable*, i32) #1

declare i32 @g_signal_handlers_block_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @g_signal_handlers_unblock_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

declare i32 @gtk_widget_has_focus(%struct._GtkWidget*) #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

declare i32 @gtk_tree_view_get_path_at_pos(%struct._GtkTreeView*, i32, i32, %struct._GtkTreePath**, %struct._GtkTreeViewColumn**, i32*, i32*) #1

declare i32 @gtk_tree_selection_get_mode(%struct._GtkTreeSelection*) #1

declare void @gtk_tree_view_column_cell_set_cell_data(%struct._GtkTreeViewColumn*, %struct._GtkTreeModel*, %struct._GtkTreeIter*, i32, i32) #1

declare i32 @gtk_tree_model_iter_has_child(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreeViewColumn* @gtk_tree_view_get_expander_column(%struct._GtkTreeView*) #1

declare %struct._GList* @gtk_cell_layout_get_cells(%struct._GtkCellLayout*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_cell_layout_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkCellRenderer* @gimp_container_tree_view_find_click_cell(%struct._GtkWidget* %widget, %struct._GList* %cells, %struct._GtkTreeViewColumn* %column, %struct._GdkRectangle* %column_area, i32 %tree_x, i32 %tree_y) #3 {
entry:
  %retval = alloca %struct._GtkCellRenderer*, align 8
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %cells.addr = alloca %struct._GList*, align 8
  %column.addr = alloca %struct._GtkTreeViewColumn*, align 8
  %column_area.addr = alloca %struct._GdkRectangle*, align 8
  %tree_x.addr = alloca i32, align 4
  %tree_y.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %rtl = alloca i32, align 4
  %renderer = alloca %struct._GtkCellRenderer*, align 8
  %start = alloca i32, align 4
  %width = alloca i32, align 4
  %xpad = alloca i32, align 4
  %ypad = alloca i32, align 4
  %x = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GList* %cells, %struct._GList** %cells.addr, align 8
  store %struct._GtkTreeViewColumn* %column, %struct._GtkTreeViewColumn** %column.addr, align 8
  store %struct._GdkRectangle* %column_area, %struct._GdkRectangle** %column_area.addr, align 8
  store i32 %tree_x, i32* %tree_x.addr, align 4
  store i32 %tree_y, i32* %tree_y.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call i32 @gtk_widget_get_direction(%struct._GtkWidget* %0)
  %cmp = icmp eq i32 %call, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %rtl, align 4
  %1 = load %struct._GList*, %struct._GList** %cells.addr, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GtkCellRenderer*
  store %struct._GtkCellRenderer* %5, %struct._GtkCellRenderer** %renderer, align 8
  %6 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call1 = call i32 @gtk_cell_renderer_get_visible(%struct._GtkCellRenderer* %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct._GtkTreeViewColumn*, %struct._GtkTreeViewColumn** %column.addr, align 8
  %8 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  %call3 = call i32 @gtk_tree_view_column_cell_get_position(%struct._GtkTreeViewColumn* %7, %struct._GtkCellRenderer* %8, i32* %start, i32* %width)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  call void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer* %9, i32* %xpad, i32* %ypad)
  %10 = load i32, i32* %rtl, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %11 = load %struct._GdkRectangle*, %struct._GdkRectangle** %column_area.addr, align 8
  %x7 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %11, i32 0, i32 0
  %12 = load i32, i32* %x7, align 4
  %13 = load %struct._GdkRectangle*, %struct._GdkRectangle** %column_area.addr, align 8
  %width8 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %13, i32 0, i32 2
  %14 = load i32, i32* %width8, align 4
  %add = add nsw i32 %12, %14
  %15 = load i32, i32* %start, align 4
  %sub = sub nsw i32 %add, %15
  %16 = load i32, i32* %width, align 4
  %sub9 = sub nsw i32 %sub, %16
  store i32 %sub9, i32* %x, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load i32, i32* %start, align 4
  %18 = load %struct._GdkRectangle*, %struct._GdkRectangle** %column_area.addr, align 8
  %x10 = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %18, i32 0, i32 0
  %19 = load i32, i32* %x10, align 4
  %add11 = add nsw i32 %17, %19
  store i32 %add11, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %20 = load i32, i32* %tree_x.addr, align 4
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %xpad, align 4
  %add12 = add nsw i32 %21, %22
  %cmp13 = icmp sge i32 %20, %add12
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %if.end
  %23 = load i32, i32* %tree_x.addr, align 4
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %width, align 4
  %add16 = add nsw i32 %24, %25
  %26 = load i32, i32* %xpad, align 4
  %sub17 = sub nsw i32 %add16, %26
  %cmp18 = icmp slt i32 %23, %sub17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.15
  %27 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %renderer, align 8
  store %struct._GtkCellRenderer* %27, %struct._GtkCellRenderer** %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.15, %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %28 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool23 = icmp ne %struct._GList* %28, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %29 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %29, i32 0, i32 1
  %30 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %30, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GtkCellRenderer* null, %struct._GtkCellRenderer** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.20
  %31 = load %struct._GtkCellRenderer*, %struct._GtkCellRenderer** %retval
  ret %struct._GtkCellRenderer* %31
}

declare i8* @g_object_ref(i8*) #1

declare i32 @gdk_event_triggers_context_menu(%union._GdkEvent*) #1

declare i32 @gimp_container_view_item_selected(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare void @gimp_container_view_item_context(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare i8* @gtk_tree_path_to_string(%struct._GtkTreePath*) #1

declare i32 @gimp_cell_renderer_viewable_pre_clicked(%struct._GimpCellRendererViewable*, i8*, i32) #1

declare void @gimp_cell_renderer_toggle_clicked(%struct._GimpCellRendererToggle*, i8*, i32) #1

declare void @gimp_cell_renderer_viewable_clicked(%struct._GimpCellRendererViewable*, i8*, i32) #1

declare i32 @gimp_get_all_modifiers_mask() #1

declare void @gimp_container_view_item_activated(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare i32 @gtk_widget_get_direction(%struct._GtkWidget*) #1

declare i32 @gtk_cell_renderer_get_visible(%struct._GtkCellRenderer*) #1

declare i32 @gtk_tree_view_column_cell_get_position(%struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, i32*, i32*) #1

declare void @gtk_cell_renderer_get_padding(%struct._GtkCellRenderer*, i32*, i32*) #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare i32 @gimp_viewable_get_size(%struct._GimpViewable*, i32*, i32*) #1

declare %struct._GdkPixbuf* @gimp_viewable_get_new_pixbuf(%struct._GimpViewable*, %struct._GimpContext*, i32, i32) #1

declare i32 @gtk_tree_model_iter_children(%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*) #1

declare i32 @gimp_viewable_get_expanded(%struct._GimpViewable*) #1

declare i32 @gtk_tree_view_expand_row(%struct._GtkTreeView*, %struct._GtkTreePath*, i32) #1

declare i32 @gtk_tree_view_collapse_row(%struct._GtkTreeView*, %struct._GtkTreePath*) #1

declare i32 @gtk_tree_model_iter_next(%struct._GtkTreeModel*, %struct._GtkTreeIter*) #1

declare void @gimp_container_tree_store_set_context(%struct._GimpContainerTreeStore*, %struct._GimpContext*) #1

declare void @gtk_tree_selection_set_mode(%struct._GtkTreeSelection*, i32) #1

declare %struct._GtkTreeIter* @gimp_container_tree_store_insert_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, %struct._GtkTreeIter*, i32) #1

declare void @gimp_container_tree_store_remove_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, %struct._GtkTreeIter*) #1

declare void @gimp_container_tree_store_reorder_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, i32, %struct._GtkTreeIter*) #1

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare i32 @gimp_container_tree_store_rename_item(%struct._GimpContainerTreeStore*, %struct._GimpViewable*, %struct._GtkTreeIter*) #1

declare %struct._GtkTreePath* @gtk_tree_path_copy(%struct._GtkTreePath*) #1

declare i32 @gtk_tree_path_up(%struct._GtkTreePath*) #1

declare void @gtk_tree_view_expand_to_path(%struct._GtkTreeView*, %struct._GtkTreePath*) #1

declare void @gtk_tree_view_set_cursor(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32) #1

declare void @gtk_tree_view_scroll_to_cell(%struct._GtkTreeView*, %struct._GtkTreePath*, %struct._GtkTreeViewColumn*, i32, float, float) #1

declare void @gtk_tree_selection_unselect_all(%struct._GtkTreeSelection*) #1

declare void @gimp_container_tree_store_clear_items(%struct._GimpContainerTreeStore*) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare void @gimp_container_tree_store_set_view_size(%struct._GimpContainerTreeStore*) #1

declare void @g_object_get(i8*, i8*, ...) #1

declare i32 @gimp_get_icon_size(%struct._GtkWidget*, i8*, i32, i32, i32) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @gimp_container_tree_store_columns_init(i64*, i32*) #1

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #2

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
