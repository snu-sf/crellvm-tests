; ModuleID = './app/widgets/gimpvectorstreeview.bc'
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
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
%struct._GimpVectorsTreeViewClass = type { %struct._GimpItemTreeViewClass }
%struct._GimpItemTreeViewClass = type { %struct._GimpContainerTreeViewClass, void (%struct._GimpItemTreeView*, %struct._GimpImage*)*, i64, i8*, %struct._GimpContainer* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)*, void (%struct._GimpImage*, %struct._GimpItem*)*, void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)*, void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpImage*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
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
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GtkTreePath = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpItemTreeView = type { %struct._GimpContainerTreeView, %struct._GimpItemTreeViewPriv* }
%struct._GimpItemTreeViewPriv = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpVectorsTreeView = type { %struct._GimpItemTreeView, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.1 }
%struct.anon.1 = type { double, double }
%struct._GError = type { i32, i32, i8* }

@gimp_vectors_tree_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpVectorsTreeView\00", align 1
@gimp_vectors_tree_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_vectors_tree_view_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_vectors_tree_view_parent_class = internal global i8* null, align 8
@GimpVectorsTreeView_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"active-vectors-changed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"vectors\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"vectors-path-tool\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"vectors-edit-attributes\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"vectors-new\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"vectors-new-last-values\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"vectors-raise\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"vectors-raise-to-top\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"vectors-lower\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"vectors-lower-to-bottom\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"vectors-duplicate\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"vectors-delete\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"gimp-tool-path\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Lock path strokes\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vectors-selection-replace\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"vectors-selection-add\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"vectors-selection-subtract\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"vectors-selection-intersect\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"vectors-selection-to-vectors\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"vectors-selection-to-vectors-advanced\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"vectors-stroke\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"vectors-stroke-last-values\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"%s: SVG dropped (len = %d)\0A\00", align 1
@__func__.gimp_vectors_tree_view_drop_svg = private unnamed_addr constant [32 x i8] c"gimp_vectors_tree_view_drop_svg\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@parent_view_iface = internal global %struct._GimpContainerViewInterface* null, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_vectors_tree_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_vectors_tree_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_vectors_tree_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_item_tree_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1072, void (i8*, i8*)* bitcast (void (i8*)* @gimp_vectors_tree_view_class_intern_init to void (i8*, i8*)*), i32 360, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpVectorsTreeView*)* @gimp_vectors_tree_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_vectors_tree_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_vectors_tree_view_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_vectors_tree_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_tree_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_tree_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_vectors_tree_view_parent_class, align 8
  %1 = load i32, i32* @GimpVectorsTreeView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpVectorsTreeView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpVectorsTreeViewClass*
  call void @gimp_vectors_tree_view_class_init(%struct._GimpVectorsTreeViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_tree_view_init(%struct._GimpVectorsTreeView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpVectorsTreeView*, align 8
  store %struct._GimpVectorsTreeView* %view, %struct._GimpVectorsTreeView** %view.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_tree_view_view_iface_init(%struct._GimpContainerViewInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerViewInterface* %iface, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %0 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %1 = bitcast %struct._GimpContainerViewInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %2, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 4
  store void (%struct._GimpContainerView*, %struct._GimpContainer*)* @gimp_vectors_tree_view_set_container, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_tree_view_class_init(%struct._GimpVectorsTreeViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpVectorsTreeViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %view_class = alloca %struct._GimpContainerTreeViewClass*, align 8
  %iv_class = alloca %struct._GimpItemTreeViewClass*, align 8
  store %struct._GimpVectorsTreeViewClass* %klass, %struct._GimpVectorsTreeViewClass** %klass.addr, align 8
  %0 = load %struct._GimpVectorsTreeViewClass*, %struct._GimpVectorsTreeViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpVectorsTreeViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpVectorsTreeViewClass*, %struct._GimpVectorsTreeViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpVectorsTreeViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_container_tree_view_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpContainerTreeViewClass*
  store %struct._GimpContainerTreeViewClass* %5, %struct._GimpContainerTreeViewClass** %view_class, align 8
  %6 = load %struct._GimpVectorsTreeViewClass*, %struct._GimpVectorsTreeViewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpVectorsTreeViewClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_item_tree_view_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %8, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_vectors_tree_view_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %view_class, align 8
  %drop_svg = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %10, i32 0, i32 6
  store void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)* @gimp_vectors_tree_view_drop_svg, void (%struct._GimpContainerTreeView*, i8*, i64, %struct._GimpViewable*, i32)** %drop_svg, align 8
  %call5 = call i64 @gimp_vectors_get_type() #6
  %11 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %11, i32 0, i32 2
  store i64 %call5, i64* %item_type, align 8
  %12 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %signal_name = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %12, i32 0, i32 3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8** %signal_name, align 8
  %13 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %get_container = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %13, i32 0, i32 4
  store %struct._GimpContainer* (%struct._GimpImage*)* @gimp_image_get_vectors, %struct._GimpContainer* (%struct._GimpImage*)** %get_container, align 8
  %14 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %14, i32 0, i32 5
  store %struct._GimpItem* (%struct._GimpImage*)* bitcast (%struct._GimpVectors* (%struct._GimpImage*)* @gimp_image_get_active_vectors to %struct._GimpItem* (%struct._GimpImage*)*), %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %15 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %set_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %15, i32 0, i32 6
  store void (%struct._GimpImage*, %struct._GimpItem*)* bitcast (%struct._GimpVectors* (%struct._GimpImage*, %struct._GimpVectors*)* @gimp_image_set_active_vectors to void (%struct._GimpImage*, %struct._GimpItem*)*), void (%struct._GimpImage*, %struct._GimpItem*)** %set_active_item, align 8
  %16 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %add_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %16, i32 0, i32 7
  store void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)* bitcast (i32 (%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32)* @gimp_image_add_vectors to void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)*), void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)** %add_item, align 8
  %17 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %remove_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %17, i32 0, i32 8
  store void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)* bitcast (void (%struct._GimpImage*, %struct._GimpVectors*, i32, %struct._GimpVectors*)* @gimp_image_remove_vectors to void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)*), void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)** %remove_item, align 8
  %18 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %new_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %18, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpImage*)* @gimp_vectors_tree_view_item_new, %struct._GimpItem* (%struct._GimpImage*)** %new_item, align 8
  %19 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %action_group = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %19, i32 0, i32 10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %action_group, align 8
  %20 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %activate_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %20, i32 0, i32 11
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8** %activate_action, align 8
  %21 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %edit_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %21, i32 0, i32 12
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8** %edit_action, align 8
  %22 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %new_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %22, i32 0, i32 13
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8** %new_action, align 8
  %23 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %new_default_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %23, i32 0, i32 14
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8** %new_default_action, align 8
  %24 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %raise_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %24, i32 0, i32 15
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8** %raise_action, align 8
  %25 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %raise_top_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %25, i32 0, i32 16
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8** %raise_top_action, align 8
  %26 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %lower_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %26, i32 0, i32 17
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8** %lower_action, align 8
  %27 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %lower_bottom_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %27, i32 0, i32 18
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8** %lower_bottom_action, align 8
  %28 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %duplicate_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %28, i32 0, i32 19
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8** %duplicate_action, align 8
  %29 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %delete_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %29, i32 0, i32 20
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8** %delete_action, align 8
  %30 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %lock_content_stock_id = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %30, i32 0, i32 21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8** %lock_content_stock_id, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0)) #7
  %31 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %lock_content_tooltip = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %31, i32 0, i32 22
  store i8* %call6, i8** %lock_content_tooltip, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_tree_view_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %editor = alloca %struct._GimpEditor*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %view = alloca %struct._GimpVectorsTreeView*, align 8
  %extend_mask = alloca i32, align 4
  %modify_mask = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_editor_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpEditor*
  store %struct._GimpEditor* %2, %struct._GimpEditor** %editor, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %5, %struct._GimpContainerTreeView** %tree_view, align 8
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %7 = bitcast %struct._GObject* %6 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_vectors_tree_view_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call4)
  %8 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpVectorsTreeView*
  store %struct._GimpVectorsTreeView* %8, %struct._GimpVectorsTreeView** %view, align 8
  %9 = load i8*, i8** @gimp_vectors_tree_view_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 9
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i8*, i8** @gimp_vectors_tree_view_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %constructed8 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 9
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed8, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call9)
  %20 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  %call11 = call i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget* %20, i32 2)
  store i32 %call11, i32* %extend_mask, align 4
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call12)
  %23 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  %call14 = call i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget* %23, i32 3)
  store i32 %call14, i32* %modify_mask, align 4
  %24 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %25 = bitcast %struct._GimpVectorsTreeView* %24 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_tree_view_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call15)
  %26 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItemTreeView*
  %call17 = call %struct._GtkWidget* @gimp_item_tree_view_get_edit_button(%struct._GimpItemTreeView* %26)
  call void @gtk_widget_hide(%struct._GtkWidget* %call17)
  %27 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %28 = load i32, i32* %extend_mask, align 4
  %29 = load i32, i32* %modify_mask, align 4
  %30 = load i32, i32* %extend_mask, align 4
  %31 = load i32, i32* %modify_mask, align 4
  %or = or i32 %30, %31
  %call18 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i32 %or, i8* null)
  %32 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %toselection_button = getelementptr inbounds %struct._GimpVectorsTreeView, %struct._GimpVectorsTreeView* %32, i32 0, i32 1
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %toselection_button, align 8
  %33 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %34 = bitcast %struct._GimpEditor* %33 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_container_view_interface_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call19)
  %35 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpContainerView*
  %36 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %toselection_button21 = getelementptr inbounds %struct._GimpVectorsTreeView, %struct._GimpVectorsTreeView* %36, i32 0, i32 1
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %toselection_button21, align 8
  %38 = bitcast %struct._GtkWidget* %37 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_button_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call22)
  %39 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkButton*
  %call24 = call i64 @gimp_vectors_get_type() #6
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %35, %struct._GtkButton* %39, i64 %call24)
  %40 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call25 = call %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor* %40)
  %41 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %toselection_button26 = getelementptr inbounds %struct._GimpVectorsTreeView, %struct._GimpVectorsTreeView* %41, i32 0, i32 1
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %toselection_button26, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %call25, %struct._GtkWidget* %42, i32 5)
  %43 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call27 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i32 0, i32 0), i32 1, i8* null)
  %44 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %tovectors_button = getelementptr inbounds %struct._GimpVectorsTreeView, %struct._GimpVectorsTreeView* %44, i32 0, i32 2
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %tovectors_button, align 8
  %45 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call28 = call %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor* %45)
  %46 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %tovectors_button29 = getelementptr inbounds %struct._GimpVectorsTreeView, %struct._GimpVectorsTreeView* %46, i32 0, i32 2
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %tovectors_button29, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %call28, %struct._GtkWidget* %47, i32 6)
  %48 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call30 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* null)
  %49 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %stroke_button = getelementptr inbounds %struct._GimpVectorsTreeView, %struct._GimpVectorsTreeView* %49, i32 0, i32 3
  store %struct._GtkWidget* %call30, %struct._GtkWidget** %stroke_button, align 8
  %50 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %51 = bitcast %struct._GimpEditor* %50 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_container_view_interface_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call31)
  %52 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpContainerView*
  %53 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %stroke_button33 = getelementptr inbounds %struct._GimpVectorsTreeView, %struct._GimpVectorsTreeView* %53, i32 0, i32 3
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_button33, align 8
  %55 = bitcast %struct._GtkWidget* %54 to %struct._GTypeInstance*
  %call34 = call i64 @gtk_button_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call34)
  %56 = bitcast %struct._GTypeInstance* %call35 to %struct._GtkButton*
  %call36 = call i64 @gimp_vectors_get_type() #6
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %52, %struct._GtkButton* %56, i64 %call36)
  %57 = load %struct._GimpEditor*, %struct._GimpEditor** %editor, align 8
  %call37 = call %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor* %57)
  %58 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %stroke_button38 = getelementptr inbounds %struct._GimpVectorsTreeView, %struct._GimpVectorsTreeView* %58, i32 0, i32 3
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %stroke_button38, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %call37, %struct._GtkWidget* %59, i32 7)
  %60 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view39 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %60, i32 0, i32 4
  %61 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view39, align 8
  %62 = bitcast %struct._GtkTreeView* %61 to %struct._GTypeInstance*
  %call40 = call i64 @gtk_widget_get_type() #6
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 %call40)
  %63 = bitcast %struct._GTypeInstance* %call41 to %struct._GtkWidget*
  %64 = load %struct._GimpVectorsTreeView*, %struct._GimpVectorsTreeView** %view, align 8
  %65 = bitcast %struct._GimpVectorsTreeView* %64 to i8*
  call void @gimp_dnd_svg_dest_add(%struct._GtkWidget* %63, void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)* null, i8* %65)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_tree_view_drop_svg(%struct._GimpContainerTreeView* %tree_view, i8* %svg_data, i64 %svg_data_len, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %svg_data.addr = alloca i8*, align 8
  %svg_data_len.addr = alloca i64, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %parent = alloca %struct._GimpVectors*, align 8
  %index = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store i8* %svg_data, i8** %svg_data.addr, align 8
  store i64 %svg_data_len, i64* %svg_data_len.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  %0 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %1 = bitcast %struct._GimpContainerTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call2 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %4, i32 0, i32 1
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %5, i32 0, i32 4
  %6 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %svg_data_len.addr, align 8
  %conv = trunc i64 %7 to i32
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_vectors_tree_view_drop_svg, i32 0, i32 0), i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %9 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %10 = load i32, i32* %drop_pos.addr, align 4
  %11 = bitcast %struct._GimpVectors** %parent to %struct._GimpViewable**
  %call3 = call i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView* %8, %struct._GimpViewable* %9, i32 %10, %struct._GimpViewable** %11)
  store i32 %call3, i32* %index, align 4
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load i8*, i8** %svg_data.addr, align 8
  %14 = load i64, i64* %svg_data_len.addr, align 8
  %15 = load %struct._GimpVectors*, %struct._GimpVectors** %parent, align 8
  %16 = load i32, i32* %index, align 4
  %call4 = call i32 @gimp_vectors_import_buffer(%struct._GimpImage* %12, i8* %13, i64 %14, i32 1, i32 0, %struct._GimpVectors* %15, i32 %16, %struct._GList** null, %struct._GError** %error)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp7 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp7, align 8
  %19 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %20 = bitcast %struct._GimpContainerTreeView* %19 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %22, i32 0, i32 2
  %23 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %18, %struct._GObject* %21, i32 2, i8* %23)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %24)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #2

declare %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage*) #1

declare %struct._GimpVectors* @gimp_image_get_active_vectors(%struct._GimpImage*) #1

declare %struct._GimpVectors* @gimp_image_set_active_vectors(%struct._GimpImage*, %struct._GimpVectors*) #1

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #1

declare void @gimp_image_remove_vectors(%struct._GimpImage*, %struct._GimpVectors*, i32, %struct._GimpVectors*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_vectors_tree_view_item_new(%struct._GimpImage* %image) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #7
  %call1 = call %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage* %0, i8* %call)
  store %struct._GimpVectors* %call1, %struct._GimpVectors** %new_vectors, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %call2 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %1, %struct._GimpVectors* %2, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, i32 1)
  %3 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %4 = bitcast %struct._GimpVectors* %3 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_item_get_type() #6
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call3)
  %5 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpItem*
  ret %struct._GimpItem* %5
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gimp_item_tree_view_get_edit_button(%struct._GimpItemTreeView*) #1

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

declare void @gimp_container_view_enable_dnd(%struct._GimpContainerView*, %struct._GtkButton*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

declare %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor*) #1

declare void @gimp_dnd_svg_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)*, i8*) #1

declare %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView*) #1

declare void @g_print(i8*, ...) #1

declare i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView*, %struct._GimpViewable*, i32, %struct._GimpViewable**) #1

declare i32 @gimp_vectors_import_buffer(%struct._GimpImage*, i8*, i64, i32, i32, %struct._GimpVectors*, i32, %struct._GList**, %struct._GError**) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare %struct._GimpVectors* @gimp_vectors_new(%struct._GimpImage*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i8* @g_type_interface_peek_parent(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_tree_view_set_container(%struct._GimpContainerView* %view, %struct._GimpContainer* %container) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %old_container = alloca %struct._GimpContainer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %4 = bitcast %struct._GimpContainerView* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  %call4 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %5)
  store %struct._GimpContainer* %call4, %struct._GimpContainer** %old_container, align 8
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %tobool = icmp ne %struct._GimpContainer* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool5 = icmp ne %struct._GimpContainer* %7, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view6 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %8, i32 0, i32 4
  %9 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view6, align 8
  %10 = bitcast %struct._GtkTreeView* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  call void @gimp_dnd_svg_source_remove(%struct._GtkWidget* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_container = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %12, i32 0, i32 4
  %13 = load void (%struct._GimpContainerView*, %struct._GimpContainer*)*, void (%struct._GimpContainerView*, %struct._GimpContainer*)** %set_container, align 8
  %14 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  call void %13(%struct._GimpContainerView* %14, %struct._GimpContainer* %15)
  %16 = load %struct._GimpContainer*, %struct._GimpContainer** %old_container, align 8
  %tobool9 = icmp ne %struct._GimpContainer* %16, null
  br i1 %tobool9, label %if.end.16, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %if.end
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %tobool11 = icmp ne %struct._GimpContainer* %17, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %land.lhs.true.10
  %18 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view13 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %18, i32 0, i32 4
  %19 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view13, align 8
  %20 = bitcast %struct._GtkTreeView* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %22 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %23 = bitcast %struct._GimpContainerTreeView* %22 to i8*
  call void @gimp_dnd_svg_source_add(%struct._GtkWidget* %21, i8* (%struct._GtkWidget*, i64*, i8*)* @gimp_vectors_tree_view_drag_svg, i8* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %land.lhs.true.10, %if.end
  ret void
}

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare void @gimp_dnd_svg_source_remove(%struct._GtkWidget*) #1

declare void @gimp_dnd_svg_source_add(%struct._GtkWidget*, i8* (%struct._GtkWidget*, i64*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_vectors_tree_view_drag_svg(%struct._GtkWidget* %widget, i64* %svg_data_len, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %svg_data_len.addr = alloca i64*, align 8
  %data.addr = alloca i8*, align 8
  %view = alloca %struct._GimpItemTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %svg_data = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i64* %svg_data_len, i64** %svg_data_len.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %view, align 8
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  %call2 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  store i8* null, i8** %svg_data, align 8
  %4 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view, align 8
  %5 = bitcast %struct._GimpItemTreeView* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %7 = bitcast %struct._GTypeClass* %6 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %7, i32 0, i32 5
  %8 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpItem* %8(%struct._GimpImage* %9)
  store %struct._GimpItem* %call3, %struct._GimpItem** %item, align 8
  %10 = load i64*, i64** %svg_data_len.addr, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool = icmp ne %struct._GimpItem* %11, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %14 = bitcast %struct._GimpItem* %13 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_vectors_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call4)
  %15 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpVectors*
  %call6 = call i8* @gimp_vectors_export_string(%struct._GimpImage* %12, %struct._GimpVectors* %15)
  store i8* %call6, i8** %svg_data, align 8
  %16 = load i8*, i8** %svg_data, align 8
  %tobool7 = icmp ne i8* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %17 = load i8*, i8** %svg_data, align 8
  %call9 = call i64 @strlen(i8* %17) #8
  %18 = load i64*, i64** %svg_data_len.addr, align 8
  store i64 %call9, i64* %18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %19 = load i8*, i8** %svg_data, align 8
  ret i8* %19
}

declare i8* @gimp_vectors_export_string(%struct._GimpImage*, %struct._GimpVectors*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
