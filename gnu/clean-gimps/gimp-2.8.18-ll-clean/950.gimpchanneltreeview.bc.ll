; ModuleID = './app/widgets/gimpchanneltreeview.bc'
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
%struct._GimpContext = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpChannelTreeViewClass = type { %struct._GimpDrawableTreeViewClass }
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
%struct._Gimp = type opaque
%struct._GimpContainerTreeViewPriv = type opaque
%struct._GtkTreePath = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GdkPixbuf = type opaque
%struct._GimpItemTreeView = type { %struct._GimpContainerTreeView, %struct._GimpItemTreeViewPriv* }
%struct._GimpItemTreeViewPriv = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpChannelTreeView = type { %struct._GimpDrawableTreeView, %struct._GimpChannelTreeViewPriv* }
%struct._GimpDrawableTreeView = type { %struct._GimpItemTreeView }
%struct._GimpChannelTreeViewPriv = type { %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque
%struct._GimpItemClass = type { %struct._GimpViewableClass, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, void (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, i32 (%struct._GimpItem*)*, %struct._GimpItemTree* (%struct._GimpItem*)*, %struct._GimpItem* (%struct._GimpItem*, i64)*, void (%struct._GimpItem*, %struct._GimpImage*)*, i32 (%struct._GimpItem*, i8*, i8*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32)*, void (%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, i32, double, double, i32)*, void (%struct._GimpItem*, %struct._GimpContext*, %struct._GimpMatrix3*, i32, i32, i32, i32, %struct._GimpProgress*)*, i32 (%struct._GimpItem*, %struct._GimpDrawable*, %struct._GimpStrokeOptions*, i32, %struct._GimpProgress*, %struct._GError**)*, void (%struct._GimpItem*, i32, i32, i32, double, double)*, %struct._GeglNode* (%struct._GimpItem*)*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._TempBuf = type opaque
%struct._GimpItemTree = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpProgress = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._GimpStrokeOptions = type opaque
%struct._GimpMenuFactory = type opaque
%struct._GimpDocked = type opaque
%struct._GimpImageEditor = type { %struct._GimpEditor, %struct._GimpContext*, %struct._GimpImage* }
%struct._GimpComponentEditor = type { %struct._GimpImageEditor, i32, %struct._GtkTreeModel*, %struct._GtkTreeView*, %struct._GtkTreeSelection*, %struct._GtkTreeViewColumn*, %struct._GtkCellRenderer*, %struct._GtkCellRenderer*, i32 }
%struct._GtkTreeSelection = type { %struct._GObject, %struct._GtkTreeView*, i32, i32 (%struct._GtkTreeSelection*, %struct._GtkTreeModel*, %struct._GtkTreePath*, i32, i8*)*, i8*, void (i8*)* }

@gimp_channel_tree_view_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpChannelTreeView\00", align 1
@gimp_channel_tree_view_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpContainerViewInterface*)* @gimp_channel_tree_view_view_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_channel_tree_view_parent_class = internal global i8* null, align 8
@GimpChannelTreeView_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"active-channel-changed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"channels-edit-attributes\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"channels-new\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"channels-new-last-values\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"channels-raise\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"channels-raise-to-top\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"channels-lower\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"channels-lower-to-bottom\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"channels-duplicate\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"channels-delete\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"channels-selection-replace\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"channels-selection-add\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"channels-selection-subtract\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"channels-selection-intersect\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"%s Channel Copy\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"New Channel\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@parent_view_iface = internal global %struct._GimpContainerViewInterface* null, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_channel_tree_view_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_channel_tree_view_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_channel_tree_view_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_drawable_tree_view_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 1072, void (i8*, i8*)* bitcast (void (i8*)* @gimp_channel_tree_view_class_intern_init to void (i8*, i8*)*), i32 344, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpChannelTreeView*)* @gimp_channel_tree_view_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_container_view_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_channel_tree_view_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_channel_tree_view_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_channel_tree_view_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_tree_view_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_channel_tree_view_parent_class, align 8
  %1 = load i32, i32* @GimpChannelTreeView_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpChannelTreeView_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpChannelTreeViewClass*
  call void @gimp_channel_tree_view_class_init(%struct._GimpChannelTreeViewClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_init(%struct._GimpChannelTreeView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpChannelTreeView*, align 8
  store %struct._GimpChannelTreeView* %view, %struct._GimpChannelTreeView** %view.addr, align 8
  %0 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view.addr, align 8
  %1 = bitcast %struct._GimpChannelTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_tree_view_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpChannelTreeViewPriv*
  %3 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view.addr, align 8
  %priv = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %3, i32 0, i32 1
  store %struct._GimpChannelTreeViewPriv* %2, %struct._GimpChannelTreeViewPriv** %priv, align 8
  %4 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view.addr, align 8
  %priv2 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %4, i32 0, i32 1
  %5 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv2, align 8
  %component_editor = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %5, i32 0, i32 0
  store %struct._GtkWidget* null, %struct._GtkWidget** %component_editor, align 8
  %6 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view.addr, align 8
  %priv3 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %6, i32 0, i32 1
  %7 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv3, align 8
  %toselection_button = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %7, i32 0, i32 1
  store %struct._GtkWidget* null, %struct._GtkWidget** %toselection_button, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_view_iface_init(%struct._GimpContainerViewInterface* %view_iface) #3 {
entry:
  %view_iface.addr = alloca %struct._GimpContainerViewInterface*, align 8
  store %struct._GimpContainerViewInterface* %view_iface, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %0 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %1 = bitcast %struct._GimpContainerViewInterface* %0 to i8*
  %call = call i8* @g_type_interface_peek_parent(i8* %1)
  %2 = bitcast i8* %call to %struct._GimpContainerViewInterface*
  store %struct._GimpContainerViewInterface* %2, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 5
  store void (%struct._GimpContainerView*, %struct._GimpContext*)* @gimp_channel_tree_view_set_context, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %4 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** %view_iface.addr, align 8
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %4, i32 0, i32 13
  store void (%struct._GimpContainerView*)* @gimp_channel_tree_view_set_view_size, void (%struct._GimpContainerView*)** %set_view_size, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_view_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_class_init(%struct._GimpChannelTreeViewClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpChannelTreeViewClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %view_class = alloca %struct._GimpContainerTreeViewClass*, align 8
  %iv_class = alloca %struct._GimpItemTreeViewClass*, align 8
  store %struct._GimpChannelTreeViewClass* %klass, %struct._GimpChannelTreeViewClass** %klass.addr, align 8
  %0 = load %struct._GimpChannelTreeViewClass*, %struct._GimpChannelTreeViewClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpChannelTreeViewClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpChannelTreeViewClass*, %struct._GimpChannelTreeViewClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpChannelTreeViewClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_container_tree_view_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpContainerTreeViewClass*
  store %struct._GimpContainerTreeViewClass* %5, %struct._GimpContainerTreeViewClass** %view_class, align 8
  %6 = load %struct._GimpChannelTreeViewClass*, %struct._GimpChannelTreeViewClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpChannelTreeViewClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_item_tree_view_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %8, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 9
  store void (%struct._GObject*)* @gimp_channel_tree_view_constructed, void (%struct._GObject*)** %constructed, align 8
  %10 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %view_class, align 8
  %drop_viewable = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %10, i32 0, i32 3
  store void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)* @gimp_channel_tree_view_drop_viewable, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)** %drop_viewable, align 8
  %11 = load %struct._GimpContainerTreeViewClass*, %struct._GimpContainerTreeViewClass** %view_class, align 8
  %drop_component = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %11, i32 0, i32 7
  store void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)* @gimp_channel_tree_view_drop_component, void (%struct._GimpContainerTreeView*, %struct._GimpImage*, i32, %struct._GimpViewable*, i32)** %drop_component, align 8
  %12 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %set_image = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %12, i32 0, i32 1
  store void (%struct._GimpItemTreeView*, %struct._GimpImage*)* @gimp_channel_tree_view_set_image, void (%struct._GimpItemTreeView*, %struct._GimpImage*)** %set_image, align 8
  %call5 = call i64 @gimp_channel_get_type() #6
  %13 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %13, i32 0, i32 2
  store i64 %call5, i64* %item_type, align 8
  %14 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %signal_name = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %14, i32 0, i32 3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8** %signal_name, align 8
  %15 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %get_container = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %15, i32 0, i32 4
  store %struct._GimpContainer* (%struct._GimpImage*)* @gimp_image_get_channels, %struct._GimpContainer* (%struct._GimpImage*)** %get_container, align 8
  %16 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %get_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %16, i32 0, i32 5
  store %struct._GimpItem* (%struct._GimpImage*)* bitcast (%struct._GimpChannel* (%struct._GimpImage*)* @gimp_image_get_active_channel to %struct._GimpItem* (%struct._GimpImage*)*), %struct._GimpItem* (%struct._GimpImage*)** %get_active_item, align 8
  %17 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %set_active_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %17, i32 0, i32 6
  store void (%struct._GimpImage*, %struct._GimpItem*)* bitcast (%struct._GimpChannel* (%struct._GimpImage*, %struct._GimpChannel*)* @gimp_image_set_active_channel to void (%struct._GimpImage*, %struct._GimpItem*)*), void (%struct._GimpImage*, %struct._GimpItem*)** %set_active_item, align 8
  %18 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %add_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %18, i32 0, i32 7
  store void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)* bitcast (i32 (%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpChannel*, i32, i32)* @gimp_image_add_channel to void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)*), void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)** %add_item, align 8
  %19 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %remove_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %19, i32 0, i32 8
  store void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)* bitcast (void (%struct._GimpImage*, %struct._GimpChannel*, i32, %struct._GimpChannel*)* @gimp_image_remove_channel to void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)*), void (%struct._GimpImage*, %struct._GimpItem*, i32, %struct._GimpItem*)** %remove_item, align 8
  %20 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %new_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %20, i32 0, i32 9
  store %struct._GimpItem* (%struct._GimpImage*)* @gimp_channel_tree_view_item_new, %struct._GimpItem* (%struct._GimpImage*)** %new_item, align 8
  %21 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %action_group = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %21, i32 0, i32 10
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %action_group, align 8
  %22 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %activate_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %22, i32 0, i32 11
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8** %activate_action, align 8
  %23 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %edit_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %23, i32 0, i32 12
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i8** %edit_action, align 8
  %24 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %new_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %24, i32 0, i32 13
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8** %new_action, align 8
  %25 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %new_default_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %25, i32 0, i32 14
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i8** %new_default_action, align 8
  %26 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %raise_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %26, i32 0, i32 15
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8** %raise_action, align 8
  %27 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %raise_top_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %27, i32 0, i32 16
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8** %raise_top_action, align 8
  %28 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %lower_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %28, i32 0, i32 17
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8** %lower_action, align 8
  %29 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %lower_bottom_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %29, i32 0, i32 18
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8** %lower_bottom_action, align 8
  %30 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %duplicate_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %30, i32 0, i32 19
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8** %duplicate_action, align 8
  %31 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %iv_class, align 8
  %delete_action = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %31, i32 0, i32 20
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8** %delete_action, align 8
  %32 = load %struct._GimpChannelTreeViewClass*, %struct._GimpChannelTreeViewClass** %klass.addr, align 8
  %33 = bitcast %struct._GimpChannelTreeViewClass* %32 to i8*
  call void @g_type_class_add_private(i8* %33, i64 16)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_tree_view_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_item_tree_view_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_constructed(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %view = alloca %struct._GimpChannelTreeView*, align 8
  %tree_view = alloca %struct._GimpContainerTreeView*, align 8
  %extend_mask = alloca i32, align 4
  %modify_mask = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannelTreeView*
  store %struct._GimpChannelTreeView* %2, %struct._GimpChannelTreeView** %view, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_tree_view_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerTreeView*
  store %struct._GimpContainerTreeView* %5, %struct._GimpContainerTreeView** %tree_view, align 8
  %6 = load i8*, i8** @gimp_channel_tree_view_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %constructed = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 9
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed, align 8
  %tobool = icmp ne void (%struct._GObject*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** @gimp_channel_tree_view_parent_class, align 8
  %11 = bitcast i8* %10 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %11, i64 80)
  %12 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %constructed6 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 9
  %13 = load void (%struct._GObject*)*, void (%struct._GObject*)** %constructed6, align 8
  %14 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %13(%struct._GObject* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %16 = bitcast %struct._GObject* %15 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call7)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %call9 = call i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget* %17, i32 2)
  store i32 %call9, i32* %extend_mask, align 4
  %18 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call10)
  %20 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  %call12 = call i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget* %20, i32 3)
  store i32 %call12, i32* %modify_mask, align 4
  %21 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view13 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %21, i32 0, i32 4
  %22 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view13, align 8
  %23 = bitcast %struct._GtkTreeView* %22 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call14)
  %24 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call i64 @gimp_layer_get_type() #6
  %25 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %26 = bitcast %struct._GimpContainerTreeView* %25 to i8*
  %call17 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %24, i64 %call16, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* null, i8* %26)
  %27 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view18 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %27, i32 0, i32 4
  %28 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view18, align 8
  %29 = bitcast %struct._GtkTreeView* %28 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_widget_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call19)
  %30 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWidget*
  %call21 = call i64 @gimp_layer_mask_get_type() #6
  %31 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %32 = bitcast %struct._GimpContainerTreeView* %31 to i8*
  %call22 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %30, i64 %call21, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* null, i8* %32)
  %33 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %view23 = getelementptr inbounds %struct._GimpContainerTreeView, %struct._GimpContainerTreeView* %33, i32 0, i32 4
  %34 = load %struct._GtkTreeView*, %struct._GtkTreeView** %view23, align 8
  %35 = bitcast %struct._GtkTreeView* %34 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_widget_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call24)
  %36 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWidget*
  %37 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view, align 8
  %38 = bitcast %struct._GimpContainerTreeView* %37 to i8*
  call void @gimp_dnd_component_dest_add(%struct._GtkWidget* %36, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)* null, i8* %38)
  %39 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view, align 8
  %40 = bitcast %struct._GimpChannelTreeView* %39 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_editor_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call26)
  %41 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpEditor*
  %42 = load i32, i32* %extend_mask, align 4
  %43 = load i32, i32* %modify_mask, align 4
  %44 = load i32, i32* %extend_mask, align 4
  %45 = load i32, i32* %modify_mask, align 4
  %or = or i32 %44, %45
  %call28 = call %struct._GtkWidget* (%struct._GimpEditor*, i8*, i8*, ...) @gimp_editor_add_action_button(%struct._GimpEditor* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 %or, i8* null)
  %46 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view, align 8
  %priv = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %46, i32 0, i32 1
  %47 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv, align 8
  %toselection_button = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %47, i32 0, i32 1
  store %struct._GtkWidget* %call28, %struct._GtkWidget** %toselection_button, align 8
  %48 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view, align 8
  %49 = bitcast %struct._GimpChannelTreeView* %48 to %struct._GTypeInstance*
  %call29 = call i64 @gimp_container_view_interface_get_type() #6
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %49, i64 %call29)
  %50 = bitcast %struct._GTypeInstance* %call30 to %struct._GimpContainerView*
  %51 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view, align 8
  %priv31 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %51, i32 0, i32 1
  %52 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv31, align 8
  %toselection_button32 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %52, i32 0, i32 1
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %toselection_button32, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_button_get_type() #6
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call33)
  %55 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkButton*
  %call35 = call i64 @gimp_channel_get_type() #6
  call void @gimp_container_view_enable_dnd(%struct._GimpContainerView* %50, %struct._GtkButton* %55, i64 %call35)
  %56 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view, align 8
  %57 = bitcast %struct._GimpChannelTreeView* %56 to %struct._GTypeInstance*
  %call36 = call i64 @gimp_editor_get_type() #6
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call36)
  %58 = bitcast %struct._GTypeInstance* %call37 to %struct._GimpEditor*
  %call38 = call %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor* %58)
  %59 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %view, align 8
  %priv39 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %59, i32 0, i32 1
  %60 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv39, align 8
  %toselection_button40 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %60, i32 0, i32 1
  %61 = load %struct._GtkWidget*, %struct._GtkWidget** %toselection_button40, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %call38, %struct._GtkWidget* %61, i32 5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_drop_viewable(%struct._GimpContainerTreeView* %tree_view, %struct._GimpViewable* %src_viewable, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %src_viewable.addr = alloca %struct._GimpViewable*, align 8
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %item_view_class = alloca %struct._GimpItemTreeViewClass*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %new_item = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpItem*, align 8
  %index = alloca i32, align 4
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GimpViewable* %src_viewable, %struct._GimpViewable** %src_viewable.addr, align 8
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
  %4 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %5 = bitcast %struct._GimpItemTreeView* %4 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %7 = bitcast %struct._GTypeClass* %6 to %struct._GimpItemTreeViewClass*
  store %struct._GimpItemTreeViewClass* %7, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %8 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %9 = bitcast %struct._GimpViewable* %8 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %9, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_drawable_get_type() #6
  store i64 %call3, i64* %__t, align 8
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %10, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %11, i32 0, i32 0
  %12 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %12, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %13, i32 0, i32 0
  %14 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type, align 8
  %16 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %18 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %17, i64 %18) #7
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %19 = load i32, i32* %__r, align 4
  store i32 %19, i32* %tmp
  %20 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %20, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.30

land.lhs.true.12:                                 ; preds = %if.end.10
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %23 = bitcast %struct._GimpViewable* %22 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_item_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call13)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpItem*
  %call15 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %24)
  %cmp16 = icmp ne %struct._GimpImage* %21, %call15
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.12
  %25 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %26 = bitcast %struct._GimpViewable* %25 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type18 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type18, align 8
  %29 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %29, i32 0, i32 2
  %30 = load i64, i64* %item_type, align 8
  %cmp19 = icmp ne i64 %28, %30
  br i1 %cmp19, label %if.then.20, label %if.end.30

if.then.20:                                       ; preds = %lor.lhs.false, %land.lhs.true.12
  %31 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %32 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %33 = load i32, i32* %drop_pos.addr, align 4
  %34 = bitcast %struct._GimpItem** %parent to %struct._GimpViewable**
  %call24 = call i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView* %31, %struct._GimpViewable* %32, i32 %33, %struct._GimpViewable** %34)
  store i32 %call24, i32* %index, align 4
  %35 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %36 = bitcast %struct._GimpViewable* %35 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_item_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call25)
  %37 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpItem*
  %38 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %call27 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %38)
  %39 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %item_type28 = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %39, i32 0, i32 2
  %40 = load i64, i64* %item_type28, align 8
  %call29 = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %37, %struct._GimpImage* %call27, i64 %40)
  store %struct._GimpItem* %call29, %struct._GimpItem** %new_item, align 8
  %41 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  call void @gimp_item_set_linked(%struct._GimpItem* %41, i32 0, i32 0)
  %42 = load %struct._GimpItemTreeViewClass*, %struct._GimpItemTreeViewClass** %item_view_class, align 8
  %add_item = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %42, i32 0, i32 7
  %43 = load void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)*, void (%struct._GimpImage*, %struct._GimpItem*, %struct._GimpItem*, i32, i32)** %add_item, align 8
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %45 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %46 = load %struct._GimpItem*, %struct._GimpItem** %parent, align 8
  %47 = load i32, i32* %index, align 4
  call void %43(%struct._GimpImage* %44, %struct._GimpItem* %45, %struct._GimpItem* %46, i32 %47, i32 1)
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %48)
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false, %if.end.10
  %49 = load i8*, i8** @gimp_channel_tree_view_parent_class, align 8
  %50 = bitcast i8* %49 to %struct._GTypeClass*
  %call31 = call i64 @gimp_container_tree_view_get_type() #6
  %call32 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %50, i64 %call31)
  %51 = bitcast %struct._GTypeClass* %call32 to %struct._GimpContainerTreeViewClass*
  %drop_viewable = getelementptr inbounds %struct._GimpContainerTreeViewClass, %struct._GimpContainerTreeViewClass* %51, i32 0, i32 3
  %52 = load void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)*, void (%struct._GimpContainerTreeView*, %struct._GimpViewable*, %struct._GimpViewable*, i32)** %drop_viewable, align 8
  %53 = load %struct._GimpContainerTreeView*, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  %54 = load %struct._GimpViewable*, %struct._GimpViewable** %src_viewable.addr, align 8
  %55 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %56 = load i32, i32* %drop_pos.addr, align 4
  call void %52(%struct._GimpContainerTreeView* %53, %struct._GimpViewable* %54, %struct._GimpViewable* %55, i32 %56)
  br label %return

return:                                           ; preds = %if.end.30, %if.then.20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_drop_component(%struct._GimpContainerTreeView* %tree_view, %struct._GimpImage* %src_image, i32 %component, %struct._GimpViewable* %dest_viewable, i32 %drop_pos) #3 {
entry:
  %tree_view.addr = alloca %struct._GimpContainerTreeView*, align 8
  %src_image.addr = alloca %struct._GimpImage*, align 8
  %component.addr = alloca i32, align 4
  %dest_viewable.addr = alloca %struct._GimpViewable*, align 8
  %drop_pos.addr = alloca i32, align 4
  %item_view = alloca %struct._GimpItemTreeView*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %parent = alloca %struct._GimpChannel*, align 8
  %index = alloca i32, align 4
  %desc = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpContainerTreeView* %tree_view, %struct._GimpContainerTreeView** %tree_view.addr, align 8
  store %struct._GimpImage* %src_image, %struct._GimpImage** %src_image.addr, align 8
  store i32 %component, i32* %component.addr, align 4
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
  %4 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view, align 8
  %5 = load %struct._GimpViewable*, %struct._GimpViewable** %dest_viewable.addr, align 8
  %6 = load i32, i32* %drop_pos.addr, align 4
  %7 = bitcast %struct._GimpChannel** %parent to %struct._GimpViewable**
  %call3 = call i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView* %4, %struct._GimpViewable* %5, i32 %6, %struct._GimpViewable** %7)
  store i32 %call3, i32* %index, align 4
  %call4 = call i64 @gimp_channel_type_get_type() #6
  %8 = load i32, i32* %component.addr, align 4
  %call5 = call i32 @gimp_enum_get_value(i64 %call4, i32 %8, i8** null, i8** null, i8** %desc, i8** null)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0)) #8
  %9 = load i8*, i8** %desc, align 8
  %call7 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call6, i8* %9)
  store i8* %call7, i8** %name, align 8
  %10 = load %struct._GimpImage*, %struct._GimpImage** %src_image.addr, align 8
  %11 = load i32, i32* %component.addr, align 4
  %12 = load i8*, i8** %name, align 8
  %call8 = call %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage* %10, i32 %11, i8* %12, %struct._GimpRGB* null)
  %13 = bitcast %struct._GimpChannel* %call8 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_item_get_type() #6
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpItem*
  store %struct._GimpItem* %14, %struct._GimpItem** %new_item, align 8
  %15 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  call void @gimp_item_set_visible(%struct._GimpItem* %15, i32 0, i32 0)
  %16 = load i8*, i8** %name, align 8
  call void @g_free(i8* %16)
  %17 = load %struct._GimpImage*, %struct._GimpImage** %src_image.addr, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %17, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %20 = bitcast %struct._GimpItem* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %22 = bitcast %struct._GTypeClass* %21 to %struct._GimpItemClass*
  %convert = getelementptr inbounds %struct._GimpItemClass, %struct._GimpItemClass* %22, i32 0, i32 10
  %23 = load void (%struct._GimpItem*, %struct._GimpImage*)*, void (%struct._GimpItem*, %struct._GimpImage*)** %convert, align 8
  %24 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void %23(%struct._GimpItem* %24, %struct._GimpImage* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %27 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %28 = bitcast %struct._GimpItem* %27 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_channel_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call11)
  %29 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpChannel*
  %30 = load %struct._GimpChannel*, %struct._GimpChannel** %parent, align 8
  %31 = load i32, i32* %index, align 4
  %call13 = call i32 @gimp_image_add_channel(%struct._GimpImage* %26, %struct._GimpChannel* %29, %struct._GimpChannel* %30, i32 %31, i32 1)
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_set_image(%struct._GimpItemTreeView* %item_view, %struct._GimpImage* %image) #3 {
entry:
  %item_view.addr = alloca %struct._GimpItemTreeView*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %channel_view = alloca %struct._GimpChannelTreeView*, align 8
  %view = alloca %struct._GimpContainerView*, align 8
  %view_size = alloca i32, align 4
  store %struct._GimpItemTreeView* %item_view, %struct._GimpItemTreeView** %item_view.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %1 = bitcast %struct._GimpItemTreeView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannelTreeView*
  store %struct._GimpChannelTreeView* %2, %struct._GimpChannelTreeView** %channel_view, align 8
  %3 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %3, i32 0, i32 1
  %4 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv, align 8
  %component_editor = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %4, i32 0, i32 0
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor, align 8
  %tobool = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %7 = bitcast %struct._GimpItemTreeView* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_container_view_interface_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpContainerView*
  store %struct._GimpContainerView* %8, %struct._GimpContainerView** %view, align 8
  %9 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call4 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %9, i32* null)
  store i32 %call4, i32* %view_size, align 4
  %10 = load i32, i32* %view_size, align 4
  %11 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %12 = bitcast %struct._GimpItemTreeView* %11 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_editor_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call5)
  %13 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpEditor*
  %call7 = call %struct._GimpMenuFactory* @gimp_editor_get_menu_factory(%struct._GimpEditor* %13)
  %call8 = call %struct._GtkWidget* @gimp_component_editor_new(i32 %10, %struct._GimpMenuFactory* %call7)
  %14 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv9 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %14, i32 0, i32 1
  %15 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv9, align 8
  %component_editor10 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %15, i32 0, i32 0
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %component_editor10, align 8
  %16 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv11 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %16, i32 0, i32 1
  %17 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv11, align 8
  %component_editor12 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %17, i32 0, i32 0
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor12, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_docked_interface_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call13)
  %20 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDocked*
  %21 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call15 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %21)
  call void @gimp_docked_set_context(%struct._GimpDocked* %20, %struct._GimpContext* %call15)
  %22 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %23 = bitcast %struct._GimpItemTreeView* %22 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_box_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call16)
  %24 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBox*
  %25 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv18 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %25, i32 0, i32 1
  %26 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv18, align 8
  %component_editor19 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %26, i32 0, i32 0
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor19, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %24, %struct._GtkWidget* %27, i32 0, i32 0, i32 0)
  %28 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %29 = bitcast %struct._GimpItemTreeView* %28 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_box_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call20)
  %30 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkBox*
  %31 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv22 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %31, i32 0, i32 1
  %32 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv22, align 8
  %component_editor23 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %32, i32 0, i32 0
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor23, align 8
  call void @gtk_box_reorder_child(%struct._GtkBox* %30, %struct._GtkWidget* %33, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool24 = icmp ne %struct._GimpImage* %34, null
  br i1 %tobool24, label %if.end.28, label %if.then.25

if.then.25:                                       ; preds = %if.end
  %35 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv26 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %35, i32 0, i32 1
  %36 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv26, align 8
  %component_editor27 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %36, i32 0, i32 0
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor27, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %37)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end
  %38 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv29 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %38, i32 0, i32 1
  %39 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv29, align 8
  %component_editor30 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %39, i32 0, i32 0
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor30, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_image_editor_get_type() #6
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call31)
  %42 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpImageEditor*
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_editor_set_image(%struct._GimpImageEditor* %42, %struct._GimpImage* %43)
  %44 = load i8*, i8** @gimp_channel_tree_view_parent_class, align 8
  %45 = bitcast i8* %44 to %struct._GTypeClass*
  %call33 = call i64 @gimp_item_tree_view_get_type() #6
  %call34 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %45, i64 %call33)
  %46 = bitcast %struct._GTypeClass* %call34 to %struct._GimpItemTreeViewClass*
  %set_image = getelementptr inbounds %struct._GimpItemTreeViewClass, %struct._GimpItemTreeViewClass* %46, i32 0, i32 1
  %47 = load void (%struct._GimpItemTreeView*, %struct._GimpImage*)*, void (%struct._GimpItemTreeView*, %struct._GimpImage*)** %set_image, align 8
  %48 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void %47(%struct._GimpItemTreeView* %48, %struct._GimpImage* %49)
  %50 = load %struct._GimpItemTreeView*, %struct._GimpItemTreeView** %item_view.addr, align 8
  %call35 = call %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView* %50)
  %tobool36 = icmp ne %struct._GimpImage* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.28
  %51 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv38 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %51, i32 0, i32 1
  %52 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv38, align 8
  %component_editor39 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %52, i32 0, i32 0
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor39, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %53)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.28
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #2

declare %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage*) #1

declare %struct._GimpChannel* @gimp_image_get_active_channel(%struct._GimpImage*) #1

declare %struct._GimpChannel* @gimp_image_set_active_channel(%struct._GimpImage*, %struct._GimpChannel*) #1

declare i32 @gimp_image_add_channel(%struct._GimpImage*, %struct._GimpChannel*, %struct._GimpChannel*, i32, i32) #1

declare void @gimp_image_remove_channel(%struct._GimpImage*, %struct._GimpChannel*, i32, %struct._GimpChannel*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpItem* @gimp_channel_tree_view_item_new(%struct._GimpImage* %image) #3 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_channel = alloca %struct._GimpChannel*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %color, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01)
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0)) #8
  %call1 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %0, i32 29, i8* %call)
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_get_width(%struct._GimpImage* %2)
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i32 @gimp_image_get_height(%struct._GimpImage* %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0)) #8
  %call5 = call %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage* %1, i32 %call2, i32 %call3, i8* %call4, %struct._GimpRGB* %color)
  store %struct._GimpChannel* %call5, %struct._GimpChannel** %new_channel, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %5 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %call6 = call i32 @gimp_image_add_channel(%struct._GimpImage* %4, %struct._GimpChannel* %5, %struct._GimpChannel* inttoptr (i64 1 to %struct._GimpChannel*), i32 -1, i32 1)
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call7 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %6)
  %7 = load %struct._GimpChannel*, %struct._GimpChannel** %new_channel, align 8
  %8 = bitcast %struct._GimpChannel* %7 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_item_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call8)
  %9 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpItem*
  ret %struct._GimpItem* %9
}

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @gtk_widget_get_modifier_mask(%struct._GtkWidget*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #2

declare void @gimp_dnd_component_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)*, i8*) #1

declare %struct._GtkWidget* @gimp_editor_add_action_button(%struct._GimpEditor*, i8*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_editor_get_type() #2

declare void @gimp_container_view_enable_dnd(%struct._GimpContainerView*, %struct._GtkButton*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_button_get_type() #2

declare void @gtk_box_reorder_child(%struct._GtkBox*, %struct._GtkWidget*, i32) #1

declare %struct._GtkBox* @gimp_editor_get_button_box(%struct._GimpEditor*) #1

declare %struct._GimpImage* @gimp_item_tree_view_get_image(%struct._GimpItemTreeView*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare i32 @gimp_item_tree_view_get_drop_index(%struct._GimpItemTreeView*, %struct._GimpViewable*, i32, %struct._GimpViewable**) #1

declare %struct._GimpItem* @gimp_item_convert(%struct._GimpItem*, %struct._GimpImage*, i64) #1

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #2

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage*, i32, i8*, %struct._GimpRGB*) #1

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #1

declare void @g_free(i8*) #1

declare i32 @gimp_container_view_get_view_size(%struct._GimpContainerView*, i32*) #1

declare %struct._GtkWidget* @gimp_component_editor_new(i32, %struct._GimpMenuFactory*) #1

declare %struct._GimpMenuFactory* @gimp_editor_get_menu_factory(%struct._GimpEditor*) #1

declare void @gimp_docked_set_context(%struct._GimpDocked*, %struct._GimpContext*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_docked_interface_get_type() #2

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #2

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

declare void @gimp_image_editor_set_image(%struct._GimpImageEditor*, %struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_editor_get_type() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #1

declare %struct._GimpChannel* @gimp_channel_new(%struct._GimpImage*, i32, i32, i8*, %struct._GimpRGB*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #1

declare i8* @g_type_interface_peek_parent(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_set_context(%struct._GimpContainerView* %view, %struct._GimpContext* %context) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %channel_view = alloca %struct._GimpChannelTreeView*, align 8
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannelTreeView*
  store %struct._GimpChannelTreeView* %2, %struct._GimpChannelTreeView** %channel_view, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_context = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 5
  %4 = load void (%struct._GimpContainerView*, %struct._GimpContext*)*, void (%struct._GimpContainerView*, %struct._GimpContext*)** %set_context, align 8
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %6 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void %4(%struct._GimpContainerView* %5, %struct._GimpContext* %6)
  %7 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %7, i32 0, i32 1
  %8 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv, align 8
  %component_editor = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %8, i32 0, i32 0
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor, align 8
  %tobool = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv2 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %10, i32 0, i32 1
  %11 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv2, align 8
  %component_editor3 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %11, i32 0, i32 0
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor3, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_docked_interface_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call4)
  %14 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDocked*
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  call void @gimp_docked_set_context(%struct._GimpDocked* %14, %struct._GimpContext* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_channel_tree_view_set_view_size(%struct._GimpContainerView* %view) #3 {
entry:
  %view.addr = alloca %struct._GimpContainerView*, align 8
  %channel_view = alloca %struct._GimpChannelTreeView*, align 8
  %view_size = alloca i32, align 4
  store %struct._GimpContainerView* %view, %struct._GimpContainerView** %view.addr, align 8
  %0 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %1 = bitcast %struct._GimpContainerView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_channel_tree_view_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpChannelTreeView*
  store %struct._GimpChannelTreeView* %2, %struct._GimpChannelTreeView** %channel_view, align 8
  %3 = load %struct._GimpContainerViewInterface*, %struct._GimpContainerViewInterface** @parent_view_iface, align 8
  %set_view_size = getelementptr inbounds %struct._GimpContainerViewInterface, %struct._GimpContainerViewInterface* %3, i32 0, i32 13
  %4 = load void (%struct._GimpContainerView*)*, void (%struct._GimpContainerView*)** %set_view_size, align 8
  %5 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  call void %4(%struct._GimpContainerView* %5)
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view.addr, align 8
  %call2 = call i32 @gimp_container_view_get_view_size(%struct._GimpContainerView* %6, i32* null)
  store i32 %call2, i32* %view_size, align 4
  %7 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %7, i32 0, i32 1
  %8 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv, align 8
  %component_editor = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %8, i32 0, i32 0
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor, align 8
  %tobool = icmp ne %struct._GtkWidget* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct._GimpChannelTreeView*, %struct._GimpChannelTreeView** %channel_view, align 8
  %priv3 = getelementptr inbounds %struct._GimpChannelTreeView, %struct._GimpChannelTreeView* %10, i32 0, i32 1
  %11 = load %struct._GimpChannelTreeViewPriv*, %struct._GimpChannelTreeViewPriv** %priv3, align 8
  %component_editor4 = getelementptr inbounds %struct._GimpChannelTreeViewPriv, %struct._GimpChannelTreeViewPriv* %11, i32 0, i32 0
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %component_editor4, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_component_editor_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call5)
  %14 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpComponentEditor*
  %15 = load i32, i32* %view_size, align 4
  call void @gimp_component_editor_set_view_size(%struct._GimpComponentEditor* %14, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_component_editor_set_view_size(%struct._GimpComponentEditor*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_component_editor_get_type() #2

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

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
