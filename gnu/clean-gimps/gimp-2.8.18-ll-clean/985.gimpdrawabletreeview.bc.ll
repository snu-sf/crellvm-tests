; ModuleID = './app/widgets/gimpdrawabletreeview.bc'
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
%struct._GimpContainer = type opaque
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
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpDrawableTreeViewClass = type { %struct._GimpItemTreeViewClass }
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
%struct._GimpDrawableTreeView = type { %struct._GimpItemTreeView }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct._GimpLayer = type opaque

@gimp_drawable_tree_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GimpDrawableTreeView\00", align 1
@gimp_drawable_tree_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_drawable_tree_view_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_drawable_tree_view_parent_class = internal global i8* null, align 8
@GimpDrawableTreeView_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"gimp-tool-paintbrush\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Lock pixels\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"New Layer\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"gimp-bucket-fill-tool\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"floating-selection-changed\00", align 1
@parent_view_iface = internal global %struct._GimpContainerViewInterface* null, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_drawable_tree_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_drawable_tree_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_drawable_tree_view_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1072, void (i8*, i8*)* bitcast (void (i8*)* @gimp_drawable_tree_view_class_intern_init to void (i8*, i8*)*), i32 336, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDrawableTreeView*)* @gimp_drawable_tree_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_drawable_tree_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_drawable_tree_view_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_drawable_tree_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_tree_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_drawable_tree_view_parent_class, align 8
  %1 = load i32, i32* @GimpDrawableTreeView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDrawableTreeView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDrawableTreeViewClass*
  call void @gimp_drawable_tree_view_class_init(%struct._GimpDrawableTreeViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_init(%struct._GimpDrawableTreeView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpDrawableTreeView*, align 8
  store %struct._GimpDrawableTreeView* %view, %struct._GimpDrawableTreeView** %view.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_view_iface_init(%struct._GimpContainerViewInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerViewInterface* %iface, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %0 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %1 = bitcast %struct._GimpContainerViewInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %2, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %iface.addr, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 1
  store i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)* @gimp_drawable_tree_view_select_item, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_class_init(%struct._GimpDrawableTreeViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDrawableTreeViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %tree_view_class = alloca %struct._GimpContainerTreeViewClass*, align 8
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  store %struct._GimpDrawableTreeViewClass* %klass, %struct._GimpDrawableTreeViewClass** %klass.addr, align 8
  %0 = load %struct._GimpDrawableTreeViewClass*, %struct._GimpDrawableTreeViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDrawableTreeViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpDrawableTreeViewClass*, %struct._GimpDrawableTreeViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpDrawableTreeViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_container_tree_view_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpContainerTreeViewClass*
  store %struct._GimpContainerTreeViewClass* %5, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %6 = load %struct._GimpDrawableTreeViewClass*, %struct._GimpDrawableTreeViewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpDrawableTreeViewClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_item_tree_view_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %8, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_drawable_tree_view_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_possible = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %10, i32 0, i32 2
  store i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)* @gimp_drawable_tree_view_drop_possible, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)** %drop_possible, align 8
  %11 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_viewable = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %11, i32 0, i32 3
  store void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)* @gimp_drawable_tree_view_drop_viewable, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)** %drop_viewable, align 8
  %12 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %tree_view_class, align 8
  %drop_color = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %12, i32 0, i32 4
  store void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)* @gimp_drawable_tree_view_drop_color, void (%struct._GimpContainerTreeView*, %struct._GimpRGB*, %struct._GimpViewable*, i32)** %drop_color, align 8
  %13 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %set_image = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %13, i32 0, i32 1
  store void (%struct._GimpItemTreeView*, %struct._GimpImage*)* @gimp_drawable_tree_view_set_image, void (%struct._GimpItemTreeView*, %struct._GimpImage*)** %set_image, align 8
  %14 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %lock_content_stock_id = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %14, i32 0, i32 21
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8** %lock_content_stock_id, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  %15 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %lock_content_tooltip = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %15, i32 0, i32 22
  store i8* %call5, i8** %lock_content_tooltip, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %2, %struct._GimpContainerTreeView** %tree_view, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %5, %struct._GimpItemTreeView** %item_view, align 8
  %6 = load i8*, i8** @gimp_drawable_tree_view_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_drawable_tree_view_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call7 = call %struct._GtkWidget* @gimp_item_tree_view_get_new_button(%struct._GimpItemTreeView* %15)
  %call8 = call i64 @gimp_pattern_get_type() #6
  %16 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %17 = bitcast %struct._GimpItemTreeView* %16 to i8*
  %call9 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %call7, i64 %call8, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_drawable_tree_view_new_pattern_dropped, i8* %17)
  %18 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call10 = call %struct._GtkWidget* @gimp_item_tree_view_get_new_button(%struct._GimpItemTreeView* %18)
  %19 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %20 = bitcast %struct._GimpItemTreeView* %19 to i8*
  call void @gimp_dnd_color_dest_add(%struct._GtkWidget* %call10, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* @gimp_drawable_tree_view_new_color_dropped, i8* %20)
  %21 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %21, i32 0, i32 4
  %22 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view, align 8
  %23 = bitcast %struct._GtkTreeView* %22 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call11)
  %24 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  %25 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %26 = bitcast %struct._GimpContainerTreeView* %25 to i8*
  call void @gimp_dnd_color_dest_add(%struct._GtkWidget* %24, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* null, i8* %26)
  %27 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view13 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %27, i32 0, i32 4
  %28 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view13, align 8
  %29 = bitcast %struct._GtkTreeView* %28 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call14)
  %30 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call i64 @gimp_pattern_get_type() #6
  %31 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %32 = bitcast %struct._GimpContainerTreeView* %31 to i8*
  %call17 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %30, i64 %call16, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* null, i8* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_drawable_tree_view_drop_possible(%struct._GimpContainerTreeView* %tree_view, i32 %src_type, %struct._GimpViewable* %src_viewable, %struct._GimpViewable* %dest_viewable, %struct._GtkTreePath* %drop_path, i32 %drop_pos, i32* %return_drop_pos, i32* %return_drag_action) #3 {
entry:
  %retval = alloca i32, align 4
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %src_type.addr = alloca i32, align 4
  %src_viewable.addr = alloca %struct._GimpViewable*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_path.addr = alloca %struct._GtkTreePath*, align 8
  %drop_pos.addr = alloca i32, align 4
  %return_drop_pos.addr = alloca i32*, align 8
  %return_drag_action.addr = alloca i32*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store i32 %src_type, i32* %src_type.addr, align 4
  store %struct._GimpViewable* %src_viewable, %struct._GimpViewable** %src_viewable.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store %struct._GtkTreePath* %drop_path, %struct._GtkTreePath** %drop_path.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  store i32* %return_drop_pos, i32** %return_drop_pos.addr, align 8
  store i32* %return_drag_action, i32** %return_drag_action.addr, align 8
  %0 = load i8*, i8** @gimp_drawable_tree_view_parent_class, align 8
  %1 = bitcast i8* %0 to %struct._GTypeClass*
  %call = call i64 @gimp_container_tree_view_get_type() #6
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 %call)
  %2 = bitcast %struct._GTypeClass* %call1 to %struct._GimpContainerTreeViewClass*
  %drop_possible = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %2, i32 0, i32 2
  %3 = load i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)*, i32 (%struct._GimpContainerTreeView*, i32, %struct._GimpViewable*, %struct._GimpViewable*, %struct._GtkTreePath*, i32, i32*, i32*)** %drop_possible, align 8
  %4 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %5 = load i32, i32* %src_type.addr, align 4
  %6 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %8 = load %struct._GtkTreePath*, %struct._GtkTreePath** %drop_path.addr, align 8
  %9 = load i32, i32* %drop_pos.addr, align 4
  %10 = load i32*, i32** %return_drop_pos.addr, align 8
  %11 = load i32*, i32** %return_drag_action.addr, align 8
  %call2 = call i32 %3(%struct._GimpContainerTreeView* %4, i32 %5, %struct._GimpViewable* %6, %struct._GimpViewable* %7, %struct._GtkTreePath* %8, i32 %9, i32* %10, i32* %11)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %src_type.addr, align 4
  %cmp = icmp eq i32 %12, 5
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %13 = load i32, i32* %src_type.addr, align 4
  %cmp3 = icmp eq i32 %13, 16
  br i1 %cmp3, label %if.then.4, label %if.end.20

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %tobool5 = icmp ne %struct._GimpViewable* %14, null
  br i1 %tobool5, label %lor.lhs.false.6, label %if.then.16

lor.lhs.false.6:                                  ; preds = %if.then.4
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %16 = bitcast %struct._GimpViewable* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_item_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpItem*
  %call9 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %17)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.16, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.6
  %18 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %19 = bitcast %struct._GimpViewable* %18 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_viewable_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call12)
  %20 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpViewable*
  %call14 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %20)
  %tobool15 = icmp ne %struct._GimpContainer* %call14, null
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false.6, %if.then.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  %21 = load i32*, i32** %return_drop_pos.addr, align 8
  %tobool17 = icmp ne i32* %21, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  %22 = load i32*, i32** %return_drop_pos.addr, align 8
  store i32 3, i32* %22, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %lor.lhs.false
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.end.20, %if.then.16
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_drop_viewable(%struct._GimpContainerTreeView* %view, %struct._GimpViewable* %src_viewable, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %src_viewable.addr = alloca %struct._GimpViewable*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpContainerTreeView* %view, %struct._GimpContainerTreeView** %view.addr, align 8
  store %struct._GimpViewable* %src_viewable, %struct._GimpViewable** %src_viewable.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pattern_get_type() #6
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.else.6

land.lhs.true.3:                                  ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true.3
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.6:                                        ; preds = %land.lhs.true.3, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #8
  store i32 %call7, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.8
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_drawable_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawable*
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %18 = bitcast %struct._GimpViewable* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_pattern_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpPattern*
  call void @gimp_drawable_bucket_fill_full(%struct._GimpDrawable* %16, i32 2, i32 0, double 1.000000e+00, i32 0, i32 0, i32 0, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, %struct._GimpRGB* null, %struct._GimpPattern* %19)
  %20 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %21 = bitcast %struct._GimpContainerTreeView* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_tree_view_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItemTreeView*
  %call17 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %22)
  call void @gimp_image_flush(%struct._GimpImage* %call17)
  br label %return

if.end.18:                                        ; preds = %if.end.8, %entry
  %23 = load i8*, i8** @gimp_drawable_tree_view_parent_class, align 8
  %24 = bitcast i8* %23 to %struct._GTypeClass*
  %call19 = call i64 @gimp_container_tree_view_get_type() #6
  %call20 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 %call19)
  %25 = bitcast %struct._GTypeClass* %call20 to %struct._GimpContainerTreeViewClass*
  %drop_viewable = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %25, i32 0, i32 3
  %26 = load void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)** %drop_viewable, align 8
  %27 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %28 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %29 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %30 = load i32, i32* %drop_pos.addr, align 4
  call void %26(%struct._GimpContainerTreeView* %27, %struct._GimpViewable* %28, %struct._GimpViewable* %29, i32 %30)
  br label %return

return:                                           ; preds = %if.end.18, %if.then.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_drop_color(%struct._GimpContainerTreeView* %view, %struct._GimpRGB* %color, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  store %struct._GimpContainerTreeView* %view, %struct._GimpContainerTreeView** %view.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpViewable* %dest_viewable, %struct._GimpViewable** %dest_viewable.addr, align 8
  store i32 %drop_pos, i32* %drop_pos.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %tobool = icmp ne %struct._GimpViewable* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_drawable_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDrawable*
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_drawable_bucket_fill_full(%struct._GimpDrawable* %3, i32 0, i32 0, double 1.000000e+00, i32 0, i32 0, i32 0, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, %struct._GimpRGB* %4, %struct._GimpPattern* null)
  %5 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %view.addr, align 8
  %6 = bitcast %struct._GimpContainerTreeView* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItemTreeView*
  %call4 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %7)
  call void @gimp_image_flush(%struct._GimpImage* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_set_image(%struct._GimpItemTreeView* %view, %struct._GimpImage* %image) #3 {
entry:
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %0)
  %tobool = icmp ne %struct._GimpImage* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call1 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %1)
  %2 = bitcast %struct._GimpImage* %call1 to i8*
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %4 = bitcast %struct._GimpItemTreeView* %3 to i8*
  %call2 = call i32 @g_signal_handlers_disconnect_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpImage*, %struct._GimpDrawableTreeView*)* @gimp_drawable_tree_view_floating_selection_changed to i8*), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** @gimp_drawable_tree_view_parent_class, align 8
  %6 = bitcast i8* %5 to %struct._GTypeClass*
  %call3 = call i64 @gimp_item_tree_view_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %6, i64 %call3)
  %7 = bitcast %struct._GTypeClass* %call4 to %struct._GimpItemTreeViewClass*
  %set_image = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %7, i32 0, i32 1
  %8 = load void (%struct._GimpItemTreeView*, %struct._GimpImage*)*, void (%struct._GimpItemTreeView*, %struct._GimpImage*)** %set_image, align 8
  %9 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void %8(%struct._GimpItemTreeView* %9, %struct._GimpImage* %10)
  %11 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %11)
  %tobool6 = icmp ne %struct._GimpImage* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %12 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call8 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %12)
  %13 = bitcast %struct._GimpImage* %call8 to i8*
  %14 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %15 = bitcast %struct._GimpItemTreeView* %14 to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpImage*, %struct._GimpDrawableTreeView*)* @gimp_drawable_tree_view_floating_selection_changed to void ()*), i8* %15, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #1

declare %struct._GtkWidget* @gimp_item_tree_view_get_new_button(%struct._GimpItemTreeView*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_new_pattern_dropped(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %6 = bitcast %struct._GimpViewable* %5 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_pattern_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call2)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPattern*
  call void @gimp_drawable_tree_view_new_dropped(%struct._GimpItemTreeView* %2, i32 %3, i32 %4, i32 2, %struct._GimpRGB* null, %struct._GimpPattern* %7)
  ret void
}

declare void @gimp_dnd_color_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_new_color_dropped(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpRGB* %color, i8* %data) #3 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_drawable_tree_view_new_dropped(%struct._GimpItemTreeView* %2, i32 %3, i32 %4, i32 0, %struct._GimpRGB* %5, %struct._GimpPattern* null)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_new_dropped(%struct._GimpItemTreeView* %view, i32 %x, i32 %y, i32 %fill_mode, %struct._GimpRGB* %color, %struct._GimpPattern* %pattern) #3 {
entry:
  %view.addr = alloca %struct._GimpItemTreeView*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %fill_mode.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %tool_info = alloca %struct._GimpToolInfo*, align 8
  store %struct._GimpItemTreeView* %view, %struct._GimpItemTreeView** %view.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %fill_mode, i32* %fill_mode.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %0)
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #7
  %call2 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %call, i32 29, i8* %call1)
  %1 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %2 = bitcast %struct._GimpItemTreeView* %1 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %2, i32 0, i32 0
  %3 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %4 = bitcast %struct._GTypeClass* %3 to %struct._GimpItemTreeViewClass*
  %new_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %4, i32 0, i32 9
  %5 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %new_item, align 8
  %6 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call3 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %6)
  %call4 = call %struct._GimpItem* %5(%struct._GimpImage* %call3)
  store %struct._GimpItem* %call4, %struct._GimpItem** %item, align 8
  %7 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %tobool = icmp ne %struct._GimpItem* %7, null
  br i1 %tobool, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call5 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %8)
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call5, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call6 = call %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpToolInfo* %call6, %struct._GimpToolInfo** %tool_info, align 8
  %10 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tobool7 = icmp ne %struct._GimpToolInfo* %10, null
  br i1 %tobool7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %11 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %11, i32 0, i32 12
  %12 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options, align 8
  %tobool8 = icmp ne %struct._GimpToolOptions* %12, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %13 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %tool_options10 = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %13, i32 0, i32 12
  %14 = load %struct._GimpToolOptions*, %struct._GimpToolOptions** %tool_options10, align 8
  %15 = bitcast %struct._GimpToolOptions* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_context_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContext*
  store %struct._GimpContext* %16, %struct._GimpContext** %context, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %17 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %18 = bitcast %struct._GimpItemTreeView* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_container_view_interface_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpContainerView*
  %call15 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %19)
  store %struct._GimpContext* %call15, %struct._GimpContext** %context, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %20 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_drawable_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call16)
  %22 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpDrawable*
  %23 = load i32, i32* %fill_mode.addr, align 4
  %24 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call18 = call i32 @gimp_context_get_paint_mode(%struct._GimpContext* %24)
  %25 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call19 = call double @gimp_context_get_opacity(%struct._GimpContext* %25)
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %27 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  call void @gimp_drawable_bucket_fill_full(%struct._GimpDrawable* %22, i32 %23, i32 %call18, double %call19, i32 0, i32 0, i32 0, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, %struct._GimpRGB* %26, %struct._GimpPattern* %27)
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  %28 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call21 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %28)
  %call22 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %call21)
  %29 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %view.addr, align 8
  %call23 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %29)
  call void @gimp_image_flush(%struct._GimpImage* %call23)
  ret void
}

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView*) #1

declare %struct._GimpToolInfo* @gimp_get_tool_info(%struct._Gimp*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #2

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare void @gimp_drawable_bucket_fill_full(%struct._GimpDrawable*, i32, i32, double, i32, i32, i32, double, i32, double, double, %struct._GimpRGB*, %struct._GimpPattern*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

declare i32 @gimp_context_get_paint_mode(%struct._GimpContext*) #1

declare double @gimp_context_get_opacity(%struct._GimpContext*) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_drawable_tree_view_floating_selection_changed(%struct._GimpImage* %image, %struct._GimpDrawableTreeView* %view) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %view.addr = alloca %struct._GimpDrawableTreeView*, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawableTreeView* %view, %struct._GimpDrawableTreeView** %view.addr, align 8
  %0 = load %struct._GimpDrawableTreeView*, %struct._GimpDrawableTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpDrawableTreeView* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GimpItemTreeViewClass*
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %3, i32 0, i32 5
  %4 = load %struct._GimpItem* (%struct._GimpImage*)*, %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpItem* %4(%struct._GimpImage* %5)
  store %struct._GimpItem* %call, %struct._GimpItem** %item, align 8
  %6 = load %struct._GimpDrawableTreeView*, %struct._GimpDrawableTreeView** %view.addr, align 8
  %7 = bitcast %struct._GimpDrawableTreeView* %6 to %struct._GTypeInstance*
  %call1 = call i64 @gimp_container_view_interface_get_type() #6
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call1)
  %8 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpContainerView*
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %10 = bitcast %struct._GimpItem* %9 to %struct._GimpViewable*
  %call3 = call i32 @gimp_container_view_select_item(%struct._GimpContainerView* %8, %struct._GimpViewable* %10)
  ret void
}

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare i32 @gimp_container_view_select_item(%struct._GimpContainerView*, %struct._GimpViewable*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_drawable_tree_view_select_item(%struct._GimpContainerView* %view, %struct._GimpViewable* %item, i8* %insert_data) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %item.addr = alloca %struct._GimpViewable*, align 8
  %insert_data.addr = alloca i8*, align 8
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %success = alloca i32, align 4
  %floating_sel = alloca %struct._GimpLayer*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpViewable* %item, %struct._GimpViewable** %item.addr, align 8
  store i8* %insert_data, i8** %insert_data.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItemTreeView*
  store %struct._GimpItemTreeView* %2, %struct._GimpItemTreeView** %item_view, align 8
  store i32 1, i32* %success, align 4
  %3 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call2 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %3)
  %tobool = icmp ne %struct._GimpImage* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call3 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %4)
  %call4 = call %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage* %call3)
  store %struct._GimpLayer* %call4, %struct._GimpLayer** %floating_sel, align 8
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %cmp = icmp eq %struct._GimpViewable* %5, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %cmp5 = icmp eq %struct._GimpLayer* %6, null
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %7 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %8 = load %struct._GimpLayer*, %struct._GimpLayer** %floating_sel, align 8
  %9 = bitcast %struct._GimpLayer* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_viewable_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpViewable*
  %cmp8 = icmp eq %struct._GimpViewable* %7, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.then
  %11 = phi i1 [ true, %lor.lhs.false ], [ true, %if.then ], [ %cmp8, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32
  store i32 %lor.ext, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  %12 = load i32, i32* %success, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %13 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %select_item = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %13, i32 0, i32 1
  %14 = load i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)*, i32 (%struct._GimpContainerView*, %struct._GimpViewable*, i8*)** %select_item, align 8
  %15 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %16 = load %struct._GimpViewable*, %struct._GimpViewable** %item.addr, align 8
  %17 = load i8*, i8** %insert_data.addr, align 8
  %call11 = call i32 %14(%struct._GimpContainerView* %15, %struct._GimpViewable* %16, i8* %17)
  store i32 %call11, i32* %success, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %18 = load i32, i32* %success, align 4
  ret i32 %18
}

declare %struct._GimpLayer* @gimp_image_get_floating_selection(%struct._GimpImage*) #1

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
